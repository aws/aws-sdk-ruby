# frozen_string_literal: true

# This is generated code!

module Aws::EMRServerless
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Application = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#Application", name: "Application")
    ApplicationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#ApplicationArn", name: "ApplicationArn", traits: {"smithy.api#length" => {"min" => 60, "max" => 1024}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):emr-serverless:.+:(\\d{12}):\\/applications\\/[0-9a-zA-Z]+$"})
    ApplicationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#ApplicationId", name: "ApplicationId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[0-9a-z]+$"})
    ApplicationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emrserverless#ApplicationList", name: "ApplicationList")
    ApplicationName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#ApplicationName", name: "ApplicationName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9._/#-]+$"})
    ApplicationState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#ApplicationState", name: "ApplicationState", traits: {"smithy.api#enum" => [{"value" => "CREATING", "name" => "CREATING"}, {"value" => "CREATED", "name" => "CREATED"}, {"value" => "STARTING", "name" => "STARTING"}, {"value" => "STARTED", "name" => "STARTED"}, {"value" => "STOPPING", "name" => "STOPPING"}, {"value" => "STOPPED", "name" => "STOPPED"}, {"value" => "TERMINATED", "name" => "TERMINATED"}]})
    ApplicationStateSet = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emrserverless#ApplicationStateSet", name: "ApplicationStateSet", traits: {"smithy.api#length" => {"min" => 1, "max" => 7}, "smithy.api#uniqueItems" => {}})
    ApplicationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#ApplicationSummary", name: "ApplicationSummary")
    Architecture = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#Architecture", name: "Architecture", traits: {"smithy.api#enum" => [{"value" => "ARM64", "name" => "ARM64"}, {"value" => "X86_64", "name" => "X86_64"}]})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^([\t\n\r -~\u0085 -\uD7FF-�က0-ჿFF]+)$"})
    AttemptNumber = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.emrserverless#AttemptNumber", name: "AttemptNumber", traits: {"smithy.api#range" => {"min" => 1}})
    AutoStartConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#AutoStartConfig", name: "AutoStartConfig")
    AutoStopConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#AutoStopConfig", name: "AutoStopConfig")
    CancelJobRunInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#CancelJobRunInput", name: "CancelJobRunInput")
    CancelJobRunOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#CancelJobRunOutput", name: "CancelJobRunOutput")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9._-]+$"})
    CloudWatchLoggingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#CloudWatchLoggingConfiguration", name: "CloudWatchLoggingConfiguration")
    Configuration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#Configuration", name: "Configuration")
    ConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emrserverless#ConfigurationList", name: "ConfigurationList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    ConfigurationOverrides = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#ConfigurationOverrides", name: "ConfigurationOverrides")
    ConfigurationPropertyKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#ConfigurationPropertyKey", name: "ConfigurationPropertyKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^.*\\S.*$"})
    ConfigurationPropertyValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#ConfigurationPropertyValue", name: "ConfigurationPropertyValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^.*\\S.*$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CpuSize = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#CpuSize", name: "CpuSize", traits: {"smithy.api#length" => {"min" => 1, "max" => 15}, "smithy.api#pattern" => "^[1-9][0-9]*(\\s)?(vCPU|vcpu|VCPU)?$"})
    CreateApplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#CreateApplicationInput", name: "CreateApplicationInput")
    CreateApplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#CreateApplicationOutput", name: "CreateApplicationOutput")
    Date = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.emrserverless#Date", name: "Date")
    DeleteApplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#DeleteApplicationInput", name: "DeleteApplicationInput")
    DeleteApplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#DeleteApplicationOutput", name: "DeleteApplicationOutput")
    DiskSize = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#DiskSize", name: "DiskSize", traits: {"smithy.api#length" => {"min" => 1, "max" => 15}, "smithy.api#pattern" => "^[1-9][0-9]*(\\s)?(GB|gb|gB|Gb)$"})
    DiskType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#DiskType", name: "DiskType", traits: {"smithy.api#pattern" => "^(SHUFFLE_OPTIMIZED|[Ss]huffle_[Oo]ptimized|STANDARD|[Ss]tandard)$"})
    Duration = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.emrserverless#Duration", name: "Duration", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 1000000}})
    EncryptionKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#EncryptionKeyArn", name: "EncryptionKeyArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):kms:[a-zA-Z0-9\\-]*:([0-9]{12}):key\\/[a-zA-Z0-9-]+$"})
    EngineType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#EngineType", name: "EngineType", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    EntryPointArgument = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#EntryPointArgument", name: "EntryPointArgument", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => ".*\\S.*", "smithy.api#sensitive" => {}})
    EntryPointArguments = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emrserverless#EntryPointArguments", name: "EntryPointArguments", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    EntryPointPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#EntryPointPath", name: "EntryPointPath", traits: {"smithy.api#length" => {"min" => 1, "max" => 4096}, "smithy.api#pattern" => ".*\\S.*", "smithy.api#sensitive" => {}})
    GetApplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#GetApplicationInput", name: "GetApplicationInput")
    GetApplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#GetApplicationOutput", name: "GetApplicationOutput")
    GetDashboardForJobRunInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#GetDashboardForJobRunInput", name: "GetDashboardForJobRunInput")
    GetDashboardForJobRunOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#GetDashboardForJobRunOutput", name: "GetDashboardForJobRunOutput")
    GetJobRunInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#GetJobRunInput", name: "GetJobRunInput")
    GetJobRunOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#GetJobRunOutput", name: "GetJobRunOutput")
    Hive = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#Hive", name: "Hive")
    HiveCliParameters = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#HiveCliParameters", name: "HiveCliParameters", traits: {"smithy.api#length" => {"min" => 1, "max" => 102400}, "smithy.api#pattern" => ".*\\S.*", "smithy.api#sensitive" => {}})
    IAMRoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#IAMRoleArn", name: "IAMRoleArn", traits: {"aws.api#arnReference" => {"type" => "AWS::IAM::Role"}, "smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):iam::([0-9]{12}):(role((\\u002F)|(\\u002F[\\u0021-\\u007F]+\\u002F))[\\w+=,.@-]+)$"})
    IdentityCenterApplicationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#IdentityCenterApplicationArn", name: "IdentityCenterApplicationArn", traits: {"smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):sso::\\d{12}:application/(sso)?ins-[a-zA-Z0-9-.]{16}/apl-[a-zA-Z0-9]{16}$"})
    IdentityCenterConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#IdentityCenterConfiguration", name: "IdentityCenterConfiguration")
    IdentityCenterConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#IdentityCenterConfigurationInput", name: "IdentityCenterConfigurationInput")
    IdentityCenterInstanceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#IdentityCenterInstanceArn", name: "IdentityCenterInstanceArn", traits: {"smithy.api#length" => {"min" => 10, "max" => 1024}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):sso:::instance/(sso)?ins-[a-zA-Z0-9-.]{16}$"})
    ImageConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#ImageConfiguration", name: "ImageConfiguration")
    ImageConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#ImageConfigurationInput", name: "ImageConfigurationInput")
    ImageDigest = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#ImageDigest", name: "ImageDigest", traits: {"smithy.api#pattern" => "^sha256:[0-9a-f]{64}$"})
    ImageUri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#ImageUri", name: "ImageUri", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^([0-9]{12})\\.dkr\\.ecr\\.([a-z0-9-]+).([a-z0-9._-]+)\\/((?:[a-z0-9]+(?:[-._][a-z0-9]+)*/)*[a-z0-9]+(?:[-._][a-z0-9]+)*)(?::([a-zA-Z0-9_]+[a-zA-Z0-9-._]*)|@(sha256:[0-9a-f]{64}))$"})
    InitScriptPath = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#InitScriptPath", name: "InitScriptPath", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => ".*\\S.*", "smithy.api#sensitive" => {}})
    InitialCapacityConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#InitialCapacityConfig", name: "InitialCapacityConfig")
    InitialCapacityConfigMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.emrserverless#InitialCapacityConfigMap", name: "InitialCapacityConfigMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    InteractiveConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#InteractiveConfiguration", name: "InteractiveConfiguration")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    JobArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#JobArn", name: "JobArn", traits: {"smithy.api#length" => {"min" => 60, "max" => 1024}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):emr-serverless:.+:(\\d{12}):\\/applications\\/[0-9a-zA-Z]+\\/jobruns\\/[0-9a-zA-Z]+$"})
    JobDriver = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.emrserverless#JobDriver", name: "JobDriver")
    JobRun = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#JobRun", name: "JobRun")
    JobRunAttemptSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#JobRunAttemptSummary", name: "JobRunAttemptSummary")
    JobRunAttempts = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emrserverless#JobRunAttempts", name: "JobRunAttempts")
    JobRunExecutionIamPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#JobRunExecutionIamPolicy", name: "JobRunExecutionIamPolicy")
    JobRunId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#JobRunId", name: "JobRunId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[0-9a-z]+$"})
    JobRunMode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#JobRunMode", name: "JobRunMode", traits: {"smithy.api#enum" => [{"value" => "BATCH", "name" => "BATCH"}, {"value" => "STREAMING", "name" => "STREAMING"}]})
    JobRunState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#JobRunState", name: "JobRunState", traits: {"smithy.api#enum" => [{"value" => "SUBMITTED", "name" => "SUBMITTED"}, {"value" => "PENDING", "name" => "PENDING"}, {"value" => "SCHEDULED", "name" => "SCHEDULED"}, {"value" => "RUNNING", "name" => "RUNNING"}, {"value" => "SUCCESS", "name" => "SUCCESS"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "CANCELLING", "name" => "CANCELLING"}, {"value" => "CANCELLED", "name" => "CANCELLED"}, {"value" => "QUEUED", "name" => "QUEUED"}]})
    JobRunStateSet = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emrserverless#JobRunStateSet", name: "JobRunStateSet", traits: {"smithy.api#length" => {"min" => 0, "max" => 8}, "smithy.api#uniqueItems" => {}})
    JobRunSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#JobRunSummary", name: "JobRunSummary")
    JobRunType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#JobRunType", name: "JobRunType")
    JobRuns = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emrserverless#JobRuns", name: "JobRuns")
    ListApplicationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#ListApplicationsInput", name: "ListApplicationsInput")
    ListApplicationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#ListApplicationsOutput", name: "ListApplicationsOutput")
    ListJobRunAttemptsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#ListJobRunAttemptsRequest", name: "ListJobRunAttemptsRequest")
    ListJobRunAttemptsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#ListJobRunAttemptsResponse", name: "ListJobRunAttemptsResponse")
    ListJobRunsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#ListJobRunsInput", name: "ListJobRunsInput")
    ListJobRunsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#ListJobRunsOutput", name: "ListJobRunsOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    LogGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#LogGroupName", name: "LogGroupName", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[\\.\\-_/#A-Za-z0-9]+$"})
    LogStreamNamePrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#LogStreamNamePrefix", name: "LogStreamNamePrefix", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^[^:*]*$"})
    LogTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emrserverless#LogTypeList", name: "LogTypeList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    LogTypeMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.emrserverless#LogTypeMap", name: "LogTypeMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 4}})
    LogTypeString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#LogTypeString", name: "LogTypeString", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[a-zA-Z]+[-_]*[a-zA-Z]+$"})
    ManagedPersistenceMonitoringConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#ManagedPersistenceMonitoringConfiguration", name: "ManagedPersistenceMonitoringConfiguration")
    MaximumAllowedResources = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#MaximumAllowedResources", name: "MaximumAllowedResources")
    MemorySize = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#MemorySize", name: "MemorySize", traits: {"smithy.api#length" => {"min" => 1, "max" => 15}, "smithy.api#pattern" => "^[1-9][0-9]*(\\s)?(GB|gb|gB|Gb)?$"})
    MonitoringConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#MonitoringConfiguration", name: "MonitoringConfiguration")
    NetworkConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#NetworkConfiguration", name: "NetworkConfiguration")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^[A-Za-z0-9_=-]+$"})
    PolicyArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emrserverless#PolicyArnList", name: "PolicyArnList", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    PolicyDocument = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#PolicyDocument", name: "PolicyDocument", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^([\t\n\r -ÿ]+)$"})
    PrometheusMonitoringConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#PrometheusMonitoringConfiguration", name: "PrometheusMonitoringConfiguration")
    PrometheusUrlString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#PrometheusUrlString", name: "PrometheusUrlString", traits: {"smithy.api#length" => {"min" => 1, "max" => 10280}, "smithy.api#pattern" => "^https://aps-workspaces.([a-z]{2}-[a-z-]{1,20}-[1-9]).amazonaws(.[0-9A-Za-z]{2,4})+/workspaces/[-_.0-9A-Za-z]{1,100}/api/v1/remote_write$"})
    Query = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#Query", name: "Query", traits: {"smithy.api#length" => {"min" => 1, "max" => 10280}, "smithy.api#pattern" => ".*\\S.*", "smithy.api#sensitive" => {}})
    ReleaseLabel = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#ReleaseLabel", name: "ReleaseLabel", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9._/-]+$"})
    RequestIdentityUserArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#RequestIdentityUserArn", name: "RequestIdentityUserArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):(iam|sts)::(\\d{12})?:[\\w/+=,.@-]+$"})
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 60, "max" => 1024}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z0-9-]*):emr-serverless:.+:(\\d{12}):\\/applications\\/[0-9a-zA-Z]+(\\/jobruns\\/[0-9a-zA-Z]+)?$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceUtilization = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#ResourceUtilization", name: "ResourceUtilization")
    RetryPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#RetryPolicy", name: "RetryPolicy")
    S3MonitoringConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#S3MonitoringConfiguration", name: "S3MonitoringConfiguration")
    SchedulerConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#SchedulerConfiguration", name: "SchedulerConfiguration")
    SecurityGroupIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emrserverless#SecurityGroupIds", name: "SecurityGroupIds", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    SecurityGroupString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#SecurityGroupString", name: "SecurityGroupString", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[-0-9a-zA-Z]+"})
    SensitivePropertiesMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.emrserverless#SensitivePropertiesMap", name: "SensitivePropertiesMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#sensitive" => {}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ShutdownGracePeriodInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.emrserverless#ShutdownGracePeriodInSeconds", name: "ShutdownGracePeriodInSeconds")
    SparkSubmit = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#SparkSubmit", name: "SparkSubmit")
    SparkSubmitParameters = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#SparkSubmitParameters", name: "SparkSubmitParameters", traits: {"smithy.api#length" => {"min" => 1, "max" => 102400}, "smithy.api#pattern" => ".*\\S.*", "smithy.api#sensitive" => {}})
    StartApplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#StartApplicationInput", name: "StartApplicationInput")
    StartApplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#StartApplicationOutput", name: "StartApplicationOutput")
    StartJobRunInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#StartJobRunInput", name: "StartJobRunInput")
    StartJobRunOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#StartJobRunOutput", name: "StartJobRunOutput")
    StopApplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#StopApplicationInput", name: "StopApplicationInput")
    StopApplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#StopApplicationOutput", name: "StopApplicationOutput")
    String1024 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#String1024", name: "String1024", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => ".*\\S.*"})
    String256 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#String256", name: "String256", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => ".*\\S.*"})
    SubnetIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emrserverless#SubnetIds", name: "SubnetIds", traits: {"smithy.api#length" => {"min" => 0, "max" => 16}})
    SubnetString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#SubnetString", name: "SubnetString", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[-0-9a-zA-Z]+"})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[A-Za-z0-9 /_.:=+@-]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.emrserverless#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.emrserverless#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#TagResourceInput", name: "TagResourceInput")
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#TagResourceOutput", name: "TagResourceOutput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9 /_.:=+@-]*$"})
    TotalResourceUtilization = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#TotalResourceUtilization", name: "TotalResourceUtilization")
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#UntagResourceInput", name: "UntagResourceInput")
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#UntagResourceOutput", name: "UntagResourceOutput")
    UpdateApplicationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#UpdateApplicationInput", name: "UpdateApplicationInput")
    UpdateApplicationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#UpdateApplicationOutput", name: "UpdateApplicationOutput")
    UriString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#UriString", name: "UriString", traits: {"smithy.api#length" => {"min" => 1, "max" => 10280}, "smithy.api#pattern" => "[\\u0020-\\uD7FF\\uE000-\\uFFFD\\uD800\\uDBFF-\\uDC00\\uDFFF\\r\\n\\t]*"})
    Url = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#Url", name: "Url", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    WorkerCounts = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.emrserverless#WorkerCounts", name: "WorkerCounts", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 1, "max" => 1000000}})
    WorkerResourceConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#WorkerResourceConfig", name: "WorkerResourceConfig")
    WorkerTypeSpecification = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#WorkerTypeSpecification", name: "WorkerTypeSpecification")
    WorkerTypeSpecificationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.emrserverless#WorkerTypeSpecificationInput", name: "WorkerTypeSpecificationInput")
    WorkerTypeSpecificationInputMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.emrserverless#WorkerTypeSpecificationInputMap", name: "WorkerTypeSpecificationInputMap")
    WorkerTypeSpecificationMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.emrserverless#WorkerTypeSpecificationMap", name: "WorkerTypeSpecificationMap")
    WorkerTypeString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.emrserverless#WorkerTypeString", name: "WorkerTypeString", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[a-zA-Z]+[-_]*[a-zA-Z]+$"})

    Application.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "applicationId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "applicationId"}))
    Application.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "name"))
    Application.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "arn", traits: {"smithy.api#required" => {}}))
    Application.add_member(:release_label, ::Smithy::Schema::Shapes::MemberShape.new(target: ReleaseLabel, name: "releaseLabel", traits: {"smithy.api#required" => {}}))
    Application.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineType, name: "type", traits: {"smithy.api#required" => {}}))
    Application.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationState, name: "state", traits: {"smithy.api#required" => {}}))
    Application.add_member(:state_details, ::Smithy::Schema::Shapes::MemberShape.new(target: String256, name: "stateDetails"))
    Application.add_member(:initial_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: InitialCapacityConfigMap, name: "initialCapacity"))
    Application.add_member(:maximum_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumAllowedResources, name: "maximumCapacity"))
    Application.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "createdAt", traits: {"smithy.api#required" => {}}))
    Application.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    Application.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    Application.add_member(:auto_start_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoStartConfig, name: "autoStartConfiguration"))
    Application.add_member(:auto_stop_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoStopConfig, name: "autoStopConfiguration"))
    Application.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConfiguration, name: "networkConfiguration"))
    Application.add_member(:architecture, ::Smithy::Schema::Shapes::MemberShape.new(target: Architecture, name: "architecture"))
    Application.add_member(:image_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageConfiguration, name: "imageConfiguration"))
    Application.add_member(:worker_type_specifications, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerTypeSpecificationMap, name: "workerTypeSpecifications"))
    Application.add_member(:runtime_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationList, name: "runtimeConfiguration"))
    Application.add_member(:monitoring_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitoringConfiguration, name: "monitoringConfiguration"))
    Application.add_member(:interactive_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InteractiveConfiguration, name: "interactiveConfiguration"))
    Application.add_member(:scheduler_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SchedulerConfiguration, name: "schedulerConfiguration"))
    Application.add_member(:identity_center_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterConfiguration, name: "identityCenterConfiguration"))
    Application.type = Types::Application
    ApplicationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSummary, name: "member"))
    ApplicationStateSet.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationState, name: "member"))
    ApplicationSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "applicationId"}))
    ApplicationSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "name"))
    ApplicationSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "arn", traits: {"smithy.api#required" => {}}))
    ApplicationSummary.add_member(:release_label, ::Smithy::Schema::Shapes::MemberShape.new(target: ReleaseLabel, name: "releaseLabel", traits: {"smithy.api#required" => {}}))
    ApplicationSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineType, name: "type", traits: {"smithy.api#required" => {}}))
    ApplicationSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationState, name: "state", traits: {"smithy.api#required" => {}}))
    ApplicationSummary.add_member(:state_details, ::Smithy::Schema::Shapes::MemberShape.new(target: String256, name: "stateDetails"))
    ApplicationSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "createdAt", traits: {"smithy.api#required" => {}}))
    ApplicationSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    ApplicationSummary.add_member(:architecture, ::Smithy::Schema::Shapes::MemberShape.new(target: Architecture, name: "architecture"))
    ApplicationSummary.type = Types::ApplicationSummary
    AutoStartConfig.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enabled"))
    AutoStartConfig.type = Types::AutoStartConfig
    AutoStopConfig.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enabled"))
    AutoStopConfig.add_member(:idle_timeout_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "idleTimeoutMinutes", traits: {"smithy.api#default" => nil, "smithy.api#range" => {"min" => 1, "max" => 10080}}))
    AutoStopConfig.type = Types::AutoStopConfig
    CancelJobRunInput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "applicationId"}))
    CancelJobRunInput.add_member(:job_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRunId, name: "jobRunId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "jobRunId"}))
    CancelJobRunInput.add_member(:shutdown_grace_period_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ShutdownGracePeriodInSeconds, name: "shutdownGracePeriodInSeconds", traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "shutdownGracePeriodInSeconds"}))
    CancelJobRunInput.type = Types::CancelJobRunInput
    CancelJobRunOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "applicationId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "applicationId"}))
    CancelJobRunOutput.add_member(:job_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRunId, name: "jobRunId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "jobRunId"}))
    CancelJobRunOutput.type = Types::CancelJobRunOutput
    CloudWatchLoggingConfiguration.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enabled", traits: {"smithy.api#required" => {}}))
    CloudWatchLoggingConfiguration.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, name: "logGroupName"))
    CloudWatchLoggingConfiguration.add_member(:log_stream_name_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: LogStreamNamePrefix, name: "logStreamNamePrefix"))
    CloudWatchLoggingConfiguration.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionKeyArn, name: "encryptionKeyArn"))
    CloudWatchLoggingConfiguration.add_member(:log_types, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypeMap, name: "logTypes"))
    CloudWatchLoggingConfiguration.type = Types::CloudWatchLoggingConfiguration
    Configuration.add_member(:classification, ::Smithy::Schema::Shapes::MemberShape.new(target: String1024, name: "classification", traits: {"smithy.api#required" => {}}))
    Configuration.add_member(:properties, ::Smithy::Schema::Shapes::MemberShape.new(target: SensitivePropertiesMap, name: "properties"))
    Configuration.add_member(:configurations, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationList, name: "configurations"))
    Configuration.type = Types::Configuration
    ConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Configuration, name: "member"))
    ConfigurationOverrides.add_member(:application_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationList, name: "applicationConfiguration"))
    ConfigurationOverrides.add_member(:monitoring_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitoringConfiguration, name: "monitoringConfiguration"))
    ConfigurationOverrides.type = Types::ConfigurationOverrides
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String1024, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateApplicationInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "name"))
    CreateApplicationInput.add_member(:release_label, ::Smithy::Schema::Shapes::MemberShape.new(target: ReleaseLabel, name: "releaseLabel", traits: {"smithy.api#required" => {}}))
    CreateApplicationInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: EngineType, name: "type", traits: {"smithy.api#required" => {}}))
    CreateApplicationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateApplicationInput.add_member(:initial_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: InitialCapacityConfigMap, name: "initialCapacity"))
    CreateApplicationInput.add_member(:maximum_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumAllowedResources, name: "maximumCapacity"))
    CreateApplicationInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateApplicationInput.add_member(:auto_start_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoStartConfig, name: "autoStartConfiguration"))
    CreateApplicationInput.add_member(:auto_stop_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoStopConfig, name: "autoStopConfiguration"))
    CreateApplicationInput.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConfiguration, name: "networkConfiguration"))
    CreateApplicationInput.add_member(:architecture, ::Smithy::Schema::Shapes::MemberShape.new(target: Architecture, name: "architecture"))
    CreateApplicationInput.add_member(:image_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageConfigurationInput, name: "imageConfiguration"))
    CreateApplicationInput.add_member(:worker_type_specifications, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerTypeSpecificationInputMap, name: "workerTypeSpecifications"))
    CreateApplicationInput.add_member(:runtime_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationList, name: "runtimeConfiguration"))
    CreateApplicationInput.add_member(:monitoring_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitoringConfiguration, name: "monitoringConfiguration"))
    CreateApplicationInput.add_member(:interactive_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InteractiveConfiguration, name: "interactiveConfiguration"))
    CreateApplicationInput.add_member(:scheduler_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SchedulerConfiguration, name: "schedulerConfiguration"))
    CreateApplicationInput.add_member(:identity_center_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterConfigurationInput, name: "identityCenterConfiguration"))
    CreateApplicationInput.type = Types::CreateApplicationInput
    CreateApplicationOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "applicationId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "applicationId"}))
    CreateApplicationOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationName, name: "name"))
    CreateApplicationOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn, name: "arn", traits: {"smithy.api#required" => {}}))
    CreateApplicationOutput.type = Types::CreateApplicationOutput
    DeleteApplicationInput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "applicationId"}))
    DeleteApplicationInput.type = Types::DeleteApplicationInput
    DeleteApplicationOutput.type = Types::DeleteApplicationOutput
    EntryPointArguments.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EntryPointArgument, name: "member"))
    GetApplicationInput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "applicationId"}))
    GetApplicationInput.type = Types::GetApplicationInput
    GetApplicationOutput.add_member(:application, ::Smithy::Schema::Shapes::MemberShape.new(target: Application, name: "application", traits: {"aws.cloudformation#cfnExcludeProperty" => {}, "smithy.api#required" => {}}))
    GetApplicationOutput.type = Types::GetApplicationOutput
    GetDashboardForJobRunInput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "applicationId"}))
    GetDashboardForJobRunInput.add_member(:job_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRunId, name: "jobRunId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "jobRunId"}))
    GetDashboardForJobRunInput.add_member(:attempt, ::Smithy::Schema::Shapes::MemberShape.new(target: AttemptNumber, name: "attempt", traits: {"smithy.api#httpQuery" => "attempt"}))
    GetDashboardForJobRunInput.add_member(:access_system_profile_logs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "accessSystemProfileLogs", traits: {"smithy.api#httpQuery" => "accessSystemProfileLogs"}))
    GetDashboardForJobRunInput.type = Types::GetDashboardForJobRunInput
    GetDashboardForJobRunOutput.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "url"))
    GetDashboardForJobRunOutput.type = Types::GetDashboardForJobRunOutput
    GetJobRunInput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "applicationId"}))
    GetJobRunInput.add_member(:job_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRunId, name: "jobRunId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "jobRunId"}))
    GetJobRunInput.add_member(:attempt, ::Smithy::Schema::Shapes::MemberShape.new(target: AttemptNumber, name: "attempt", traits: {"smithy.api#httpQuery" => "attempt"}))
    GetJobRunInput.type = Types::GetJobRunInput
    GetJobRunOutput.add_member(:job_run, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRun, name: "jobRun", traits: {"smithy.api#required" => {}}))
    GetJobRunOutput.type = Types::GetJobRunOutput
    Hive.add_member(:query, ::Smithy::Schema::Shapes::MemberShape.new(target: Query, name: "query", traits: {"smithy.api#required" => {}}))
    Hive.add_member(:init_query_file, ::Smithy::Schema::Shapes::MemberShape.new(target: InitScriptPath, name: "initQueryFile"))
    Hive.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: HiveCliParameters, name: "parameters"))
    Hive.type = Types::Hive
    IdentityCenterConfiguration.add_member(:identity_center_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterInstanceArn, name: "identityCenterInstanceArn"))
    IdentityCenterConfiguration.add_member(:identity_center_application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterApplicationArn, name: "identityCenterApplicationArn"))
    IdentityCenterConfiguration.type = Types::IdentityCenterConfiguration
    IdentityCenterConfigurationInput.add_member(:identity_center_instance_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterInstanceArn, name: "identityCenterInstanceArn"))
    IdentityCenterConfigurationInput.type = Types::IdentityCenterConfigurationInput
    ImageConfiguration.add_member(:image_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageUri, name: "imageUri", traits: {"smithy.api#required" => {}}))
    ImageConfiguration.add_member(:resolved_image_digest, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageDigest, name: "resolvedImageDigest"))
    ImageConfiguration.type = Types::ImageConfiguration
    ImageConfigurationInput.add_member(:image_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageUri, name: "imageUri"))
    ImageConfigurationInput.type = Types::ImageConfigurationInput
    InitialCapacityConfig.add_member(:worker_count, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerCounts, name: "workerCount", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    InitialCapacityConfig.add_member(:worker_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerResourceConfig, name: "workerConfiguration", traits: {"smithy.api#recommended" => {}}))
    InitialCapacityConfig.type = Types::InitialCapacityConfig
    InitialCapacityConfigMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerTypeString, name: "key"))
    InitialCapacityConfigMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: InitialCapacityConfig, name: "value"))
    InteractiveConfiguration.add_member(:studio_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "studioEnabled"))
    InteractiveConfiguration.add_member(:livy_endpoint_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "livyEndpointEnabled"))
    InteractiveConfiguration.type = Types::InteractiveConfiguration
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String1024, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    JobDriver.add_member(:spark_submit, Types::JobDriver::SparkSubmit, ::Smithy::Schema::Shapes::MemberShape.new(target: SparkSubmit, name: "sparkSubmit"))
    JobDriver.add_member(:hive, Types::JobDriver::Hive, ::Smithy::Schema::Shapes::MemberShape.new(target: Hive, name: "hive"))
    JobDriver.add_member(:unknown, Types::JobDriver::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    JobDriver.type = Types::JobDriver
    JobRun.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "applicationId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "applicationId"}))
    JobRun.add_member(:job_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRunId, name: "jobRunId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "jobRunId"}))
    JobRun.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String256, name: "name"))
    JobRun.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: JobArn, name: "arn", traits: {"smithy.api#required" => {}}))
    JobRun.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestIdentityUserArn, name: "createdBy", traits: {"smithy.api#required" => {}}))
    JobRun.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "createdAt", traits: {"smithy.api#required" => {}}))
    JobRun.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    JobRun.add_member(:execution_role, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "executionRole", traits: {"smithy.api#required" => {}}))
    JobRun.add_member(:execution_iam_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRunExecutionIamPolicy, name: "executionIamPolicy"))
    JobRun.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRunState, name: "state", traits: {"smithy.api#required" => {}}))
    JobRun.add_member(:state_details, ::Smithy::Schema::Shapes::MemberShape.new(target: String256, name: "stateDetails", traits: {"smithy.api#required" => {}}))
    JobRun.add_member(:release_label, ::Smithy::Schema::Shapes::MemberShape.new(target: ReleaseLabel, name: "releaseLabel", traits: {"smithy.api#required" => {}}))
    JobRun.add_member(:configuration_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationOverrides, name: "configurationOverrides"))
    JobRun.add_member(:job_driver, ::Smithy::Schema::Shapes::MemberShape.new(target: JobDriver, name: "jobDriver", traits: {"smithy.api#required" => {}}))
    JobRun.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    JobRun.add_member(:total_resource_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: TotalResourceUtilization, name: "totalResourceUtilization"))
    JobRun.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConfiguration, name: "networkConfiguration"))
    JobRun.add_member(:total_execution_duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalExecutionDurationSeconds"))
    JobRun.add_member(:execution_timeout_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "executionTimeoutMinutes", traits: {"smithy.api#default" => nil}))
    JobRun.add_member(:billed_resource_utilization, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceUtilization, name: "billedResourceUtilization"))
    JobRun.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRunMode, name: "mode"))
    JobRun.add_member(:retry_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryPolicy, name: "retryPolicy"))
    JobRun.add_member(:attempt, ::Smithy::Schema::Shapes::MemberShape.new(target: AttemptNumber, name: "attempt"))
    JobRun.add_member(:attempt_created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "attemptCreatedAt"))
    JobRun.add_member(:attempt_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "attemptUpdatedAt"))
    JobRun.add_member(:started_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "startedAt"))
    JobRun.add_member(:ended_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "endedAt"))
    JobRun.add_member(:queued_duration_milliseconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Long, name: "queuedDurationMilliseconds"))
    JobRun.type = Types::JobRun
    JobRunAttemptSummary.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "applicationId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "applicationId"}))
    JobRunAttemptSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRunId, name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "jobRunId"}))
    JobRunAttemptSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String256, name: "name"))
    JobRunAttemptSummary.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRunMode, name: "mode"))
    JobRunAttemptSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: JobArn, name: "arn", traits: {"smithy.api#required" => {}}))
    JobRunAttemptSummary.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestIdentityUserArn, name: "createdBy", traits: {"smithy.api#required" => {}}))
    JobRunAttemptSummary.add_member(:job_created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "jobCreatedAt", traits: {"smithy.api#required" => {}}))
    JobRunAttemptSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "createdAt", traits: {"smithy.api#required" => {}}))
    JobRunAttemptSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    JobRunAttemptSummary.add_member(:execution_role, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "executionRole", traits: {"smithy.api#required" => {}}))
    JobRunAttemptSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRunState, name: "state", traits: {"smithy.api#required" => {}}))
    JobRunAttemptSummary.add_member(:state_details, ::Smithy::Schema::Shapes::MemberShape.new(target: String256, name: "stateDetails", traits: {"smithy.api#required" => {}}))
    JobRunAttemptSummary.add_member(:release_label, ::Smithy::Schema::Shapes::MemberShape.new(target: ReleaseLabel, name: "releaseLabel", traits: {"smithy.api#required" => {}}))
    JobRunAttemptSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRunType, name: "type"))
    JobRunAttemptSummary.add_member(:attempt, ::Smithy::Schema::Shapes::MemberShape.new(target: AttemptNumber, name: "attempt"))
    JobRunAttemptSummary.type = Types::JobRunAttemptSummary
    JobRunAttempts.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRunAttemptSummary, name: "member"))
    JobRunExecutionIamPolicy.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocument, name: "policy"))
    JobRunExecutionIamPolicy.add_member(:policy_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyArnList, name: "policyArns"))
    JobRunExecutionIamPolicy.type = Types::JobRunExecutionIamPolicy
    JobRunStateSet.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRunState, name: "member"))
    JobRunSummary.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "applicationId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "applicationId"}))
    JobRunSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRunId, name: "id", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "jobRunId"}))
    JobRunSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String256, name: "name"))
    JobRunSummary.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRunMode, name: "mode"))
    JobRunSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: JobArn, name: "arn", traits: {"smithy.api#required" => {}}))
    JobRunSummary.add_member(:created_by, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestIdentityUserArn, name: "createdBy", traits: {"smithy.api#required" => {}}))
    JobRunSummary.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "createdAt", traits: {"smithy.api#required" => {}}))
    JobRunSummary.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "updatedAt", traits: {"smithy.api#required" => {}}))
    JobRunSummary.add_member(:execution_role, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "executionRole", traits: {"smithy.api#required" => {}}))
    JobRunSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRunState, name: "state", traits: {"smithy.api#required" => {}}))
    JobRunSummary.add_member(:state_details, ::Smithy::Schema::Shapes::MemberShape.new(target: String256, name: "stateDetails", traits: {"smithy.api#required" => {}}))
    JobRunSummary.add_member(:release_label, ::Smithy::Schema::Shapes::MemberShape.new(target: ReleaseLabel, name: "releaseLabel", traits: {"smithy.api#required" => {}}))
    JobRunSummary.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRunType, name: "type"))
    JobRunSummary.add_member(:attempt, ::Smithy::Schema::Shapes::MemberShape.new(target: AttemptNumber, name: "attempt"))
    JobRunSummary.add_member(:attempt_created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "attemptCreatedAt"))
    JobRunSummary.add_member(:attempt_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "attemptUpdatedAt"))
    JobRunSummary.type = Types::JobRunSummary
    JobRuns.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRunSummary, name: "member"))
    ListApplicationsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListApplicationsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 50}}))
    ListApplicationsInput.add_member(:states, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationStateSet, name: "states", traits: {"smithy.api#httpQuery" => "states"}))
    ListApplicationsInput.type = Types::ListApplicationsInput
    ListApplicationsOutput.add_member(:applications, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationList, name: "applications", traits: {"smithy.api#required" => {}}))
    ListApplicationsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListApplicationsOutput.type = Types::ListApplicationsOutput
    ListJobRunAttemptsRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "applicationId"}))
    ListJobRunAttemptsRequest.add_member(:job_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRunId, name: "jobRunId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "jobRunId"}))
    ListJobRunAttemptsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListJobRunAttemptsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 50}}))
    ListJobRunAttemptsRequest.type = Types::ListJobRunAttemptsRequest
    ListJobRunAttemptsResponse.add_member(:job_run_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRunAttempts, name: "jobRunAttempts", traits: {"smithy.api#required" => {}}))
    ListJobRunAttemptsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListJobRunAttemptsResponse.type = Types::ListJobRunAttemptsResponse
    ListJobRunsInput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "applicationId"}))
    ListJobRunsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListJobRunsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxResults", traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 50}}))
    ListJobRunsInput.add_member(:created_at_after, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "createdAtAfter", traits: {"smithy.api#httpQuery" => "createdAtAfter"}))
    ListJobRunsInput.add_member(:created_at_before, ::Smithy::Schema::Shapes::MemberShape.new(target: Date, name: "createdAtBefore", traits: {"smithy.api#httpQuery" => "createdAtBefore"}))
    ListJobRunsInput.add_member(:states, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRunStateSet, name: "states", traits: {"smithy.api#httpQuery" => "states"}))
    ListJobRunsInput.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRunMode, name: "mode", traits: {"smithy.api#httpQuery" => "mode"}))
    ListJobRunsInput.type = Types::ListJobRunsInput
    ListJobRunsOutput.add_member(:job_runs, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRuns, name: "jobRuns", traits: {"smithy.api#required" => {}}))
    ListJobRunsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListJobRunsOutput.type = Types::ListJobRunsOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    LogTypeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypeString, name: "member"))
    LogTypeMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerTypeString, name: "key"))
    LogTypeMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: LogTypeList, name: "value"))
    ManagedPersistenceMonitoringConfiguration.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "enabled"))
    ManagedPersistenceMonitoringConfiguration.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionKeyArn, name: "encryptionKeyArn"))
    ManagedPersistenceMonitoringConfiguration.type = Types::ManagedPersistenceMonitoringConfiguration
    MaximumAllowedResources.add_member(:cpu, ::Smithy::Schema::Shapes::MemberShape.new(target: CpuSize, name: "cpu", traits: {"smithy.api#required" => {}}))
    MaximumAllowedResources.add_member(:memory, ::Smithy::Schema::Shapes::MemberShape.new(target: MemorySize, name: "memory", traits: {"smithy.api#required" => {}}))
    MaximumAllowedResources.add_member(:disk, ::Smithy::Schema::Shapes::MemberShape.new(target: DiskSize, name: "disk"))
    MaximumAllowedResources.type = Types::MaximumAllowedResources
    MonitoringConfiguration.add_member(:s3_monitoring_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3MonitoringConfiguration, name: "s3MonitoringConfiguration"))
    MonitoringConfiguration.add_member(:managed_persistence_monitoring_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagedPersistenceMonitoringConfiguration, name: "managedPersistenceMonitoringConfiguration"))
    MonitoringConfiguration.add_member(:cloud_watch_logging_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLoggingConfiguration, name: "cloudWatchLoggingConfiguration"))
    MonitoringConfiguration.add_member(:prometheus_monitoring_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PrometheusMonitoringConfiguration, name: "prometheusMonitoringConfiguration"))
    MonitoringConfiguration.type = Types::MonitoringConfiguration
    NetworkConfiguration.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIds, name: "subnetIds"))
    NetworkConfiguration.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIds, name: "securityGroupIds"))
    NetworkConfiguration.type = Types::NetworkConfiguration
    PolicyArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "member"))
    PrometheusMonitoringConfiguration.add_member(:remote_write_url, ::Smithy::Schema::Shapes::MemberShape.new(target: PrometheusUrlString, name: "remoteWriteUrl"))
    PrometheusMonitoringConfiguration.type = Types::PrometheusMonitoringConfiguration
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String1024, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceUtilization.add_member(:v_cpu_hour, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "vCPUHour"))
    ResourceUtilization.add_member(:memory_gb_hour, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "memoryGBHour"))
    ResourceUtilization.add_member(:storage_gb_hour, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "storageGBHour"))
    ResourceUtilization.type = Types::ResourceUtilization
    RetryPolicy.add_member(:max_attempts, ::Smithy::Schema::Shapes::MemberShape.new(target: AttemptNumber, name: "maxAttempts"))
    RetryPolicy.add_member(:max_failed_attempts_per_hour, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxFailedAttemptsPerHour", traits: {"smithy.api#default" => nil, "smithy.api#range" => {"min" => 1}}))
    RetryPolicy.type = Types::RetryPolicy
    S3MonitoringConfiguration.add_member(:log_uri, ::Smithy::Schema::Shapes::MemberShape.new(target: UriString, name: "logUri"))
    S3MonitoringConfiguration.add_member(:encryption_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionKeyArn, name: "encryptionKeyArn"))
    S3MonitoringConfiguration.type = Types::S3MonitoringConfiguration
    SchedulerConfiguration.add_member(:queue_timeout_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "queueTimeoutMinutes"))
    SchedulerConfiguration.add_member(:max_concurrent_runs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "maxConcurrentRuns"))
    SchedulerConfiguration.type = Types::SchedulerConfiguration
    SecurityGroupIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupString, name: "member"))
    SensitivePropertiesMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationPropertyKey, name: "key"))
    SensitivePropertiesMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationPropertyValue, name: "value"))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String1024, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SparkSubmit.add_member(:entry_point, ::Smithy::Schema::Shapes::MemberShape.new(target: EntryPointPath, name: "entryPoint", traits: {"smithy.api#required" => {}}))
    SparkSubmit.add_member(:entry_point_arguments, ::Smithy::Schema::Shapes::MemberShape.new(target: EntryPointArguments, name: "entryPointArguments"))
    SparkSubmit.add_member(:spark_submit_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: SparkSubmitParameters, name: "sparkSubmitParameters"))
    SparkSubmit.type = Types::SparkSubmit
    StartApplicationInput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "applicationId"}))
    StartApplicationInput.type = Types::StartApplicationInput
    StartApplicationOutput.type = Types::StartApplicationOutput
    StartJobRunInput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "applicationId"}))
    StartJobRunInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    StartJobRunInput.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: IAMRoleArn, name: "executionRoleArn", traits: {"smithy.api#required" => {}}))
    StartJobRunInput.add_member(:execution_iam_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRunExecutionIamPolicy, name: "executionIamPolicy"))
    StartJobRunInput.add_member(:job_driver, ::Smithy::Schema::Shapes::MemberShape.new(target: JobDriver, name: "jobDriver"))
    StartJobRunInput.add_member(:configuration_overrides, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationOverrides, name: "configurationOverrides"))
    StartJobRunInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    StartJobRunInput.add_member(:execution_timeout_minutes, ::Smithy::Schema::Shapes::MemberShape.new(target: Duration, name: "executionTimeoutMinutes", traits: {"smithy.api#default" => nil}))
    StartJobRunInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String256, name: "name"))
    StartJobRunInput.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRunMode, name: "mode"))
    StartJobRunInput.add_member(:retry_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryPolicy, name: "retryPolicy"))
    StartJobRunInput.type = Types::StartJobRunInput
    StartJobRunOutput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "applicationId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "applicationId"}))
    StartJobRunOutput.add_member(:job_run_id, ::Smithy::Schema::Shapes::MemberShape.new(target: JobRunId, name: "jobRunId", traits: {"smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "jobRunId"}))
    StartJobRunOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: JobArn, name: "arn", traits: {"smithy.api#required" => {}}))
    StartJobRunOutput.type = Types::StartJobRunOutput
    StopApplicationInput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "applicationId"}))
    StopApplicationInput.type = Types::StopApplicationInput
    StopApplicationOutput.type = Types::StopApplicationOutput
    SubnetIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetString, name: "member"))
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TotalResourceUtilization.add_member(:v_cpu_hour, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "vCPUHour"))
    TotalResourceUtilization.add_member(:memory_gb_hour, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "memoryGBHour"))
    TotalResourceUtilization.add_member(:storage_gb_hour, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "storageGBHour"))
    TotalResourceUtilization.type = Types::TotalResourceUtilization
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateApplicationInput.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationId, name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}, "smithy.api#resourceIdentifier" => "applicationId"}))
    UpdateApplicationInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    UpdateApplicationInput.add_member(:initial_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: InitialCapacityConfigMap, name: "initialCapacity"))
    UpdateApplicationInput.add_member(:maximum_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumAllowedResources, name: "maximumCapacity"))
    UpdateApplicationInput.add_member(:auto_start_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoStartConfig, name: "autoStartConfiguration"))
    UpdateApplicationInput.add_member(:auto_stop_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoStopConfig, name: "autoStopConfiguration"))
    UpdateApplicationInput.add_member(:network_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkConfiguration, name: "networkConfiguration"))
    UpdateApplicationInput.add_member(:architecture, ::Smithy::Schema::Shapes::MemberShape.new(target: Architecture, name: "architecture"))
    UpdateApplicationInput.add_member(:image_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageConfigurationInput, name: "imageConfiguration"))
    UpdateApplicationInput.add_member(:worker_type_specifications, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerTypeSpecificationInputMap, name: "workerTypeSpecifications"))
    UpdateApplicationInput.add_member(:interactive_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InteractiveConfiguration, name: "interactiveConfiguration"))
    UpdateApplicationInput.add_member(:release_label, ::Smithy::Schema::Shapes::MemberShape.new(target: ReleaseLabel, name: "releaseLabel"))
    UpdateApplicationInput.add_member(:runtime_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationList, name: "runtimeConfiguration"))
    UpdateApplicationInput.add_member(:monitoring_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MonitoringConfiguration, name: "monitoringConfiguration"))
    UpdateApplicationInput.add_member(:scheduler_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SchedulerConfiguration, name: "schedulerConfiguration"))
    UpdateApplicationInput.add_member(:identity_center_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IdentityCenterConfigurationInput, name: "identityCenterConfiguration"))
    UpdateApplicationInput.type = Types::UpdateApplicationInput
    UpdateApplicationOutput.add_member(:application, ::Smithy::Schema::Shapes::MemberShape.new(target: Application, name: "application", traits: {"smithy.api#required" => {}}))
    UpdateApplicationOutput.type = Types::UpdateApplicationOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String1024, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException
    WorkerResourceConfig.add_member(:cpu, ::Smithy::Schema::Shapes::MemberShape.new(target: CpuSize, name: "cpu", traits: {"smithy.api#required" => {}}))
    WorkerResourceConfig.add_member(:memory, ::Smithy::Schema::Shapes::MemberShape.new(target: MemorySize, name: "memory", traits: {"smithy.api#required" => {}}))
    WorkerResourceConfig.add_member(:disk, ::Smithy::Schema::Shapes::MemberShape.new(target: DiskSize, name: "disk"))
    WorkerResourceConfig.add_member(:disk_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DiskType, name: "diskType"))
    WorkerResourceConfig.type = Types::WorkerResourceConfig
    WorkerTypeSpecification.add_member(:image_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageConfiguration, name: "imageConfiguration"))
    WorkerTypeSpecification.type = Types::WorkerTypeSpecification
    WorkerTypeSpecificationInput.add_member(:image_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageConfigurationInput, name: "imageConfiguration"))
    WorkerTypeSpecificationInput.type = Types::WorkerTypeSpecificationInput
    WorkerTypeSpecificationInputMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerTypeString, name: "key"))
    WorkerTypeSpecificationInputMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerTypeSpecificationInput, name: "value"))
    WorkerTypeSpecificationMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerTypeString, name: "key"))
    WorkerTypeSpecificationMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: WorkerTypeSpecification, name: "value"))

    AwsToledoWebService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.emrserverless#AwsToledoWebService"
      service.name = "AwsToledoWebService"
      service.version = "2021-07-13"
      service.traits = {"aws.api#service" => {"sdkId" => "EMR Serverless", "arnNamespace" => "emr-serverless", "cloudFormationName" => "EMRServerless"}, "aws.auth#sigv4" => {"name" => "emr-serverless"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "Authorization", "Date", "X-Amz-Date", "X-Amz-Security-Token", "X-Amz-Target", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id", "x-amz-apigw-id"]}, "smithy.api#title" => "EMR Serverless"}
      service.add_operation(:cancel_job_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrserverless#CancelJobRun"
        operation.name = "CancelJobRun"
        operation.input = CancelJobRunInput
        operation.output = CancelJobRunOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/applications/{applicationId}/jobruns/{jobRunId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrserverless#CreateApplication"
        operation.name = "CreateApplication"
        operation.input = CreateApplicationInput
        operation.output = CreateApplicationOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/applications"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrserverless#DeleteApplication"
        operation.name = "DeleteApplication"
        operation.input = DeleteApplicationInput
        operation.output = DeleteApplicationOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/applications/{applicationId}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrserverless#GetApplication"
        operation.name = "GetApplication"
        operation.input = GetApplicationInput
        operation.output = GetApplicationOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_dashboard_for_job_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrserverless#GetDashboardForJobRun"
        operation.name = "GetDashboardForJobRun"
        operation.input = GetDashboardForJobRunInput
        operation.output = GetDashboardForJobRunOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/jobruns/{jobRunId}/dashboard"}}
      end)
      service.add_operation(:get_job_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrserverless#GetJobRun"
        operation.name = "GetJobRun"
        operation.input = GetJobRunInput
        operation.output = GetJobRunOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/jobruns/{jobRunId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_applications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrserverless#ListApplications"
        operation.name = "ListApplications"
        operation.input = ListApplicationsInput
        operation.output = ListApplicationsOutput
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListApplications.new
      end)
      service.add_operation(:list_job_run_attempts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrserverless#ListJobRunAttempts"
        operation.name = "ListJobRunAttempts"
        operation.input = ListJobRunAttemptsRequest
        operation.output = ListJobRunAttemptsResponse
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/jobruns/{jobRunId}/attempts"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListJobRunAttempts.new
      end)
      service.add_operation(:list_job_runs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrserverless#ListJobRuns"
        operation.name = "ListJobRuns"
        operation.input = ListJobRunsInput
        operation.output = ListJobRunsOutput
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}/jobruns"}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListJobRuns.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrserverless#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:start_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrserverless#StartApplication"
        operation.name = "StartApplication"
        operation.input = StartApplicationInput
        operation.output = StartApplicationOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/applications/{applicationId}/start"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:start_job_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrserverless#StartJobRun"
        operation.name = "StartJobRun"
        operation.input = StartJobRunInput
        operation.output = StartJobRunOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/applications/{applicationId}/jobruns"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:stop_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrserverless#StopApplication"
        operation.name = "StopApplication"
        operation.input = StopApplicationInput
        operation.output = StopApplicationOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/applications/{applicationId}/stop"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrserverless#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = TagResourceOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}"}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrserverless#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = UntagResourceOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.emrserverless#UpdateApplication"
        operation.name = "UpdateApplication"
        operation.input = UpdateApplicationInput
        operation.output = UpdateApplicationOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/applications/{applicationId}"}}
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
