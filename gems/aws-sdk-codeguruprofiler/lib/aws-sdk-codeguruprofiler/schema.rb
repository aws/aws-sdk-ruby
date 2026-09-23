# frozen_string_literal: true

# This is generated code!

module Aws::CodeGuruProfiler
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ActionGroup = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeguruprofiler#ActionGroup", name: "ActionGroup", traits: {"smithy.api#enum" => [{"value" => "agentPermissions", "name" => "AGENT_PERMISSIONS", "documentation" => "Permission group type for Agent APIs - ConfigureAgent, PostAgentProfile"}]})
    AddNotificationChannelsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#AddNotificationChannelsInput", name: "AddNotificationChannelsInput")
    AddNotificationChannelsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#AddNotificationChannelsOutput", name: "AddNotificationChannelsOutput")
    AgentConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#AgentConfiguration", name: "AgentConfiguration")
    AgentOrchestrationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#AgentOrchestrationConfig", name: "AgentOrchestrationConfig")
    AgentParameterField = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeguruprofiler#AgentParameterField", name: "AgentParameterField", traits: {"smithy.api#enum" => [{"value" => "SamplingIntervalInMilliseconds", "name" => "SAMPLING_INTERVAL_IN_MILLISECONDS", "documentation" => "Sampling interval in milliseconds used to sample profiles."}, {"value" => "ReportingIntervalInMilliseconds", "name" => "REPORTING_INTERVAL_IN_MILLISECONDS", "documentation" => "Reporting interval in milliseconds used to report profiles."}, {"value" => "MinimumTimeForReportingInMilliseconds", "name" => "MINIMUM_TIME_FOR_REPORTING_IN_MILLISECONDS", "documentation" => "Minimum time in milliseconds between sending reports."}, {"value" => "MemoryUsageLimitPercent", "name" => "MEMORY_USAGE_LIMIT_PERCENT", "documentation" => "Percentage of memory to be used by CodeGuru profiler. Minimum of 30MB is required for the agent."}, {"value" => "MaxStackDepth", "name" => "MAX_STACK_DEPTH", "documentation" => "Maximum stack depth to be captured by the CodeGuru Profiler."}]})
    AgentParameters = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.codeguruprofiler#AgentParameters", name: "AgentParameters")
    AgentProfile = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.codeguruprofiler#AgentProfile", name: "AgentProfile")
    AggregatedProfile = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.codeguruprofiler#AggregatedProfile", name: "AggregatedProfile")
    AggregatedProfileTime = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#AggregatedProfileTime", name: "AggregatedProfileTime")
    AggregationPeriod = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeguruprofiler#AggregationPeriod", name: "AggregationPeriod", traits: {"smithy.api#enum" => [{"value" => "PT5M", "name" => "PT5M", "documentation" => "Period of five minutes."}, {"value" => "PT1H", "name" => "PT1H", "documentation" => "Period of one hour."}, {"value" => "P1D", "name" => "P1D", "documentation" => "Period of one day."}]})
    Anomalies = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeguruprofiler#Anomalies", name: "Anomalies")
    Anomaly = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#Anomaly", name: "Anomaly")
    AnomalyInstance = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#AnomalyInstance", name: "AnomalyInstance")
    AnomalyInstanceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeguruprofiler#AnomalyInstanceId", name: "AnomalyInstanceId", traits: {"smithy.api#pattern" => "[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}"})
    AnomalyInstances = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeguruprofiler#AnomalyInstances", name: "AnomalyInstances")
    BatchGetFrameMetricDataInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#BatchGetFrameMetricDataInput", name: "BatchGetFrameMetricDataInput")
    BatchGetFrameMetricDataOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#BatchGetFrameMetricDataOutput", name: "BatchGetFrameMetricDataOutput")
    Channel = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#Channel", name: "Channel")
    ChannelId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeguruprofiler#ChannelId", name: "ChannelId", traits: {"smithy.api#pattern" => "[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}"})
    ChannelUri = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeguruprofiler#ChannelUri", name: "ChannelUri", traits: {"aws.api#arnReference" => {}})
    Channels = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeguruprofiler#Channels", name: "Channels", traits: {"smithy.api#length" => {"min" => 1, "max" => 2}, "smithy.api#uniqueItems" => {}})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeguruprofiler#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\w-]+$"})
    ComputePlatform = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeguruprofiler#ComputePlatform", name: "ComputePlatform", traits: {"smithy.api#enum" => [{"value" => "Default", "name" => "DEFAULT", "documentation" => "Compute platform meant to used for all usecases (like EC2, Fargate, physical servers etc.) but AWS Lambda."}, {"value" => "AWSLambda", "name" => "AWSLAMBDA", "documentation" => "Compute platform meant to used for AWS Lambda."}]})
    ConfigureAgentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#ConfigureAgentInput", name: "ConfigureAgentInput")
    ConfigureAgentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#ConfigureAgentOutput", name: "ConfigureAgentOutput")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateProfilingGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#CreateProfilingGroupInput", name: "CreateProfilingGroupInput")
    CreateProfilingGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#CreateProfilingGroupOutput", name: "CreateProfilingGroupOutput")
    DeleteProfilingGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#DeleteProfilingGroupInput", name: "DeleteProfilingGroupInput")
    DeleteProfilingGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#DeleteProfilingGroupOutput", name: "DeleteProfilingGroupOutput")
    DescribeProfilingGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#DescribeProfilingGroupInput", name: "DescribeProfilingGroupInput")
    DescribeProfilingGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#DescribeProfilingGroupOutput", name: "DescribeProfilingGroupOutput")
    EventPublisher = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeguruprofiler#EventPublisher", name: "EventPublisher", traits: {"smithy.api#enum" => [{"value" => "AnomalyDetection", "name" => "ANOMALY_DETECTION", "documentation" => "Notifications for Anomaly Detection"}]})
    EventPublishers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeguruprofiler#EventPublishers", name: "EventPublishers", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}, "smithy.api#uniqueItems" => {}})
    FeedbackType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeguruprofiler#FeedbackType", name: "FeedbackType", traits: {"smithy.api#enum" => [{"value" => "Positive", "name" => "Positive", "documentation" => "Profiler recommendation flagged as useful."}, {"value" => "Negative", "name" => "Negative", "documentation" => "Profiler recommendation flagged as not useful."}]})
    FindingsReportId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeguruprofiler#FindingsReportId", name: "FindingsReportId", traits: {"smithy.api#pattern" => "[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}"})
    FindingsReportSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeguruprofiler#FindingsReportSummaries", name: "FindingsReportSummaries")
    FindingsReportSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#FindingsReportSummary", name: "FindingsReportSummary")
    FleetInstanceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeguruprofiler#FleetInstanceId", name: "FleetInstanceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    FrameMetric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#FrameMetric", name: "FrameMetric")
    FrameMetricData = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeguruprofiler#FrameMetricData", name: "FrameMetricData")
    FrameMetricDatum = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#FrameMetricDatum", name: "FrameMetricDatum")
    FrameMetricValue = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.codeguruprofiler#FrameMetricValue", name: "FrameMetricValue")
    FrameMetricValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeguruprofiler#FrameMetricValues", name: "FrameMetricValues")
    FrameMetrics = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeguruprofiler#FrameMetrics", name: "FrameMetrics")
    GetFindingsReportAccountSummaryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#GetFindingsReportAccountSummaryInput", name: "GetFindingsReportAccountSummaryInput")
    GetFindingsReportAccountSummaryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#GetFindingsReportAccountSummaryOutput", name: "GetFindingsReportAccountSummaryOutput")
    GetNotificationConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#GetNotificationConfigurationInput", name: "GetNotificationConfigurationInput")
    GetNotificationConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#GetNotificationConfigurationOutput", name: "GetNotificationConfigurationOutput")
    GetPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#GetPolicyInput", name: "GetPolicyInput")
    GetPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#GetPolicyOutput", name: "GetPolicyOutput")
    GetProfileInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#GetProfileInput", name: "GetProfileInput")
    GetProfileOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#GetProfileOutput", name: "GetProfileOutput")
    GetRecommendationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#GetRecommendationsInput", name: "GetRecommendationsInput")
    GetRecommendationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#GetRecommendationsOutput", name: "GetRecommendationsOutput")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    ListFindingsReportsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#ListFindingsReportsInput", name: "ListFindingsReportsInput")
    ListFindingsReportsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#ListFindingsReportsOutput", name: "ListFindingsReportsOutput")
    ListOfTimestamps = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeguruprofiler#ListOfTimestamps", name: "ListOfTimestamps")
    ListProfileTimesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#ListProfileTimesInput", name: "ListProfileTimesInput")
    ListProfileTimesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#ListProfileTimesOutput", name: "ListProfileTimesOutput")
    ListProfilingGroupsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#ListProfilingGroupsInput", name: "ListProfilingGroupsInput")
    ListProfilingGroupsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#ListProfilingGroupsOutput", name: "ListProfilingGroupsOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    Locale = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeguruprofiler#Locale", name: "Locale")
    Match = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#Match", name: "Match")
    Matches = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeguruprofiler#Matches", name: "Matches")
    MaxDepth = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codeguruprofiler#MaxDepth", name: "MaxDepth", traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}})
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codeguruprofiler#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    Metadata = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.codeguruprofiler#Metadata", name: "Metadata")
    MetadataField = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeguruprofiler#MetadataField", name: "MetadataField", traits: {"smithy.api#enum" => [{"value" => "ComputePlatform", "name" => "COMPUTE_PLATFORM", "documentation" => "Compute platform on which agent is running."}, {"value" => "AgentId", "name" => "AGENT_ID", "documentation" => "Unique identifier for the agent instance."}, {"value" => "AwsRequestId", "name" => "AWS_REQUEST_ID", "documentation" => "AWS requestId of the Lambda invocation."}, {"value" => "ExecutionEnvironment", "name" => "EXECUTION_ENVIRONMENT", "documentation" => "Execution environment on which Lambda function is running."}, {"value" => "LambdaFunctionArn", "name" => "LAMBDA_FUNCTION_ARN", "documentation" => "Function ARN that's used to invoke the Lambda function."}, {"value" => "LambdaMemoryLimitInMB", "name" => "LAMBDA_MEMORY_LIMIT_IN_MB", "documentation" => "Memory allocated for the Lambda function."}, {"value" => "LambdaRemainingTimeInMilliseconds", "name" => "LAMBDA_REMAINING_TIME_IN_MILLISECONDS", "documentation" => "Time in milliseconds left before the execution times out."}, {"value" => "LambdaTimeGapBetweenInvokesInMilliseconds", "name" => "LAMBDA_TIME_GAP_BETWEEN_INVOKES_IN_MILLISECONDS", "documentation" => "Time in milliseconds between two invocations of the Lambda function."}, {"value" => "LambdaPreviousExecutionTimeInMilliseconds", "name" => "LAMBDA_PREVIOUS_EXECUTION_TIME_IN_MILLISECONDS", "documentation" => "Time in milliseconds for the previous Lambda invocation."}]})
    Metric = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#Metric", name: "Metric")
    MetricType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeguruprofiler#MetricType", name: "MetricType", traits: {"smithy.api#enum" => [{"value" => "AggregatedRelativeTotalTime", "name" => "AggregatedRelativeTotalTime", "documentation" => "Metric value aggregated for all instances of a frame name in a profile relative to the root frame."}]})
    NotificationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#NotificationConfiguration", name: "NotificationConfiguration")
    OrderBy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeguruprofiler#OrderBy", name: "OrderBy", traits: {"smithy.api#enum" => [{"value" => "TimestampDescending", "name" => "TIMESTAMP_DESCENDING", "documentation" => "Order by timestamp in descending order."}, {"value" => "TimestampAscending", "name" => "TIMESTAMP_ASCENDING", "documentation" => "Order by timestamp in ascending order."}]})
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeguruprofiler#PaginationToken", name: "PaginationToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\w-]+$"})
    Pattern = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#Pattern", name: "Pattern")
    Percentage = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.codeguruprofiler#Percentage", name: "Percentage", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 100}})
    Period = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeguruprofiler#Period", name: "Period", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    PostAgentProfileInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#PostAgentProfileInput", name: "PostAgentProfileInput")
    PostAgentProfileOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#PostAgentProfileOutput", name: "PostAgentProfileOutput")
    Principal = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeguruprofiler#Principal", name: "Principal", traits: {"aws.api#arnReference" => {}})
    Principals = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeguruprofiler#Principals", name: "Principals", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    ProfileTime = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#ProfileTime", name: "ProfileTime")
    ProfileTimes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeguruprofiler#ProfileTimes", name: "ProfileTimes")
    ProfilingGroupArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeguruprofiler#ProfilingGroupArn", name: "ProfilingGroupArn", traits: {"aws.api#arnReference" => {"type" => "AWS::CodeGuruProfiler::ProfilingGroup", "service" => "com.amazonaws.codeguruprofiler#CodeGuruProfiler", "resource" => "com.amazonaws.codeguruprofiler#ProfilingGroup"}})
    ProfilingGroupDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#ProfilingGroupDescription", name: "ProfilingGroupDescription")
    ProfilingGroupDescriptions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeguruprofiler#ProfilingGroupDescriptions", name: "ProfilingGroupDescriptions")
    ProfilingGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeguruprofiler#ProfilingGroupName", name: "ProfilingGroupName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[\\w-]+$"})
    ProfilingGroupNames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeguruprofiler#ProfilingGroupNames", name: "ProfilingGroupNames")
    ProfilingStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#ProfilingStatus", name: "ProfilingStatus")
    PutPermissionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#PutPermissionInput", name: "PutPermissionInput")
    PutPermissionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#PutPermissionOutput", name: "PutPermissionOutput")
    Recommendation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#Recommendation", name: "Recommendation")
    Recommendations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeguruprofiler#Recommendations", name: "Recommendations")
    RemoveNotificationChannelInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#RemoveNotificationChannelInput", name: "RemoveNotificationChannelInput")
    RemoveNotificationChannelOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#RemoveNotificationChannelOutput", name: "RemoveNotificationChannelOutput")
    RemovePermissionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#RemovePermissionInput", name: "RemovePermissionInput")
    RemovePermissionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#RemovePermissionOutput", name: "RemovePermissionOutput")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RevisionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeguruprofiler#RevisionId", name: "RevisionId", traits: {"smithy.api#pattern" => "[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}"})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402, "smithy.api#retryable" => {}})
    Strings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeguruprofiler#Strings", name: "Strings")
    SubmitFeedbackInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#SubmitFeedbackInput", name: "SubmitFeedbackInput")
    SubmitFeedbackOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#SubmitFeedbackOutput", name: "SubmitFeedbackOutput")
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeguruprofiler#TagKeys", name: "TagKeys")
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#TagResourceInput", name: "TagResourceInput")
    TagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#TagResourceOutput", name: "TagResourceOutput")
    TagsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.codeguruprofiler#TagsMap", name: "TagsMap")
    TargetFrame = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeguruprofiler#TargetFrame", name: "TargetFrame")
    TargetFrames = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeguruprofiler#TargetFrames", name: "TargetFrames")
    ThreadStates = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeguruprofiler#ThreadStates", name: "ThreadStates")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {}})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.codeguruprofiler#Timestamp", name: "Timestamp", traits: {"smithy.api#timestampFormat" => "date-time"})
    TimestampStructure = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#TimestampStructure", name: "TimestampStructure")
    UnprocessedEndTimeMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.codeguruprofiler#UnprocessedEndTimeMap", name: "UnprocessedEndTimeMap")
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#UntagResourceInput", name: "UntagResourceInput")
    UntagResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#UntagResourceOutput", name: "UntagResourceOutput")
    UpdateProfilingGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#UpdateProfilingGroupInput", name: "UpdateProfilingGroupInput")
    UpdateProfilingGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#UpdateProfilingGroupOutput", name: "UpdateProfilingGroupOutput")
    UserFeedback = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#UserFeedback", name: "UserFeedback")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeguruprofiler#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AddNotificationChannelsInput.add_member(:profiling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfilingGroupName, name: "profilingGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AddNotificationChannelsInput.add_member(:channels, ::Smithy::Schema::Shapes::MemberShape.new(target: Channels, name: "channels", traits: {"smithy.api#required" => {}}))
    AddNotificationChannelsInput.type = Types::AddNotificationChannelsInput
    AddNotificationChannelsOutput.add_member(:notification_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationConfiguration, name: "notificationConfiguration"))
    AddNotificationChannelsOutput.type = Types::AddNotificationChannelsOutput
    AgentConfiguration.add_member(:should_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "shouldProfile", traits: {"smithy.api#required" => {}}))
    AgentConfiguration.add_member(:period_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "periodInSeconds", traits: {"smithy.api#required" => {}}))
    AgentConfiguration.add_member(:agent_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentParameters, name: "agentParameters"))
    AgentConfiguration.type = Types::AgentConfiguration
    AgentOrchestrationConfig.add_member(:profiling_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "profilingEnabled", traits: {"smithy.api#required" => {}}))
    AgentOrchestrationConfig.type = Types::AgentOrchestrationConfig
    AgentParameters.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentParameterField, name: "key"))
    AgentParameters.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    AggregatedProfileTime.add_member(:start, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "start"))
    AggregatedProfileTime.add_member(:period, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregationPeriod, name: "period"))
    AggregatedProfileTime.type = Types::AggregatedProfileTime
    Anomalies.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Anomaly, name: "member"))
    Anomaly.add_member(:metric, ::Smithy::Schema::Shapes::MemberShape.new(target: Metric, name: "metric", traits: {"smithy.api#required" => {}}))
    Anomaly.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "reason", traits: {"smithy.api#required" => {}}))
    Anomaly.add_member(:instances, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyInstances, name: "instances", traits: {"smithy.api#required" => {}}))
    Anomaly.type = Types::Anomaly
    AnomalyInstance.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "id", traits: {"smithy.api#required" => {}}))
    AnomalyInstance.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startTime", traits: {"smithy.api#required" => {}}))
    AnomalyInstance.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endTime"))
    AnomalyInstance.add_member(:user_feedback, ::Smithy::Schema::Shapes::MemberShape.new(target: UserFeedback, name: "userFeedback"))
    AnomalyInstance.type = Types::AnomalyInstance
    AnomalyInstances.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyInstance, name: "member"))
    BatchGetFrameMetricDataInput.add_member(:profiling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfilingGroupName, name: "profilingGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    BatchGetFrameMetricDataInput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startTime", traits: {"smithy.api#httpQuery" => "startTime"}))
    BatchGetFrameMetricDataInput.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endTime", traits: {"smithy.api#httpQuery" => "endTime"}))
    BatchGetFrameMetricDataInput.add_member(:period, ::Smithy::Schema::Shapes::MemberShape.new(target: Period, name: "period", traits: {"smithy.api#httpQuery" => "period"}))
    BatchGetFrameMetricDataInput.add_member(:target_resolution, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregationPeriod, name: "targetResolution", traits: {"smithy.api#httpQuery" => "targetResolution"}))
    BatchGetFrameMetricDataInput.add_member(:frame_metrics, ::Smithy::Schema::Shapes::MemberShape.new(target: FrameMetrics, name: "frameMetrics"))
    BatchGetFrameMetricDataInput.type = Types::BatchGetFrameMetricDataInput
    BatchGetFrameMetricDataOutput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startTime", traits: {"smithy.api#required" => {}}))
    BatchGetFrameMetricDataOutput.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endTime", traits: {"smithy.api#required" => {}}))
    BatchGetFrameMetricDataOutput.add_member(:resolution, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregationPeriod, name: "resolution", traits: {"smithy.api#required" => {}}))
    BatchGetFrameMetricDataOutput.add_member(:end_times, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfTimestamps, name: "endTimes", traits: {"smithy.api#required" => {}}))
    BatchGetFrameMetricDataOutput.add_member(:unprocessed_end_times, ::Smithy::Schema::Shapes::MemberShape.new(target: UnprocessedEndTimeMap, name: "unprocessedEndTimes", traits: {"smithy.api#required" => {}}))
    BatchGetFrameMetricDataOutput.add_member(:frame_metric_data, ::Smithy::Schema::Shapes::MemberShape.new(target: FrameMetricData, name: "frameMetricData", traits: {"smithy.api#required" => {}}))
    BatchGetFrameMetricDataOutput.type = Types::BatchGetFrameMetricDataOutput
    Channel.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelId, name: "id"))
    Channel.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelUri, name: "uri", traits: {"smithy.api#required" => {}}))
    Channel.add_member(:event_publishers, ::Smithy::Schema::Shapes::MemberShape.new(target: EventPublishers, name: "eventPublishers", traits: {"smithy.api#required" => {}}))
    Channel.type = Types::Channel
    Channels.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Channel, name: "member"))
    ConfigureAgentInput.add_member(:profiling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfilingGroupName, name: "profilingGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ConfigureAgentInput.add_member(:fleet_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetInstanceId, name: "fleetInstanceId"))
    ConfigureAgentInput.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, name: "metadata"))
    ConfigureAgentInput.type = Types::ConfigureAgentInput
    ConfigureAgentOutput.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentConfiguration, name: "configuration", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    ConfigureAgentOutput[:http_payload] = :configuration
    ConfigureAgentOutput[:http_payload_member] = ConfigureAgentOutput.member(:configuration)
    ConfigureAgentOutput.type = Types::ConfigureAgentOutput
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateProfilingGroupInput.add_member(:profiling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfilingGroupName, name: "profilingGroupName", traits: {"smithy.api#required" => {}}))
    CreateProfilingGroupInput.add_member(:compute_platform, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputePlatform, name: "computePlatform"))
    CreateProfilingGroupInput.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "clientToken", traits: {"smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}, "smithy.api#required" => {}}))
    CreateProfilingGroupInput.add_member(:agent_orchestration_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentOrchestrationConfig, name: "agentOrchestrationConfig"))
    CreateProfilingGroupInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    CreateProfilingGroupInput.type = Types::CreateProfilingGroupInput
    CreateProfilingGroupOutput.add_member(:profiling_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfilingGroupDescription, name: "profilingGroup", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    CreateProfilingGroupOutput[:http_payload] = :profiling_group
    CreateProfilingGroupOutput[:http_payload_member] = CreateProfilingGroupOutput.member(:profiling_group)
    CreateProfilingGroupOutput.type = Types::CreateProfilingGroupOutput
    DeleteProfilingGroupInput.add_member(:profiling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfilingGroupName, name: "profilingGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteProfilingGroupInput.type = Types::DeleteProfilingGroupInput
    DeleteProfilingGroupOutput.type = Types::DeleteProfilingGroupOutput
    DescribeProfilingGroupInput.add_member(:profiling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfilingGroupName, name: "profilingGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeProfilingGroupInput.type = Types::DescribeProfilingGroupInput
    DescribeProfilingGroupOutput.add_member(:profiling_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfilingGroupDescription, name: "profilingGroup", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    DescribeProfilingGroupOutput[:http_payload] = :profiling_group
    DescribeProfilingGroupOutput[:http_payload_member] = DescribeProfilingGroupOutput.member(:profiling_group)
    DescribeProfilingGroupOutput.type = Types::DescribeProfilingGroupOutput
    EventPublishers.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EventPublisher, name: "member"))
    FindingsReportSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingsReportSummary, name: "member"))
    FindingsReportSummary.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingsReportId, name: "id"))
    FindingsReportSummary.add_member(:profiling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "profilingGroupName"))
    FindingsReportSummary.add_member(:profile_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "profileStartTime"))
    FindingsReportSummary.add_member(:profile_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "profileEndTime"))
    FindingsReportSummary.add_member(:total_number_of_findings, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "totalNumberOfFindings"))
    FindingsReportSummary.type = Types::FindingsReportSummary
    FrameMetric.add_member(:frame_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "frameName", traits: {"smithy.api#required" => {}}))
    FrameMetric.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricType, name: "type", traits: {"smithy.api#required" => {}}))
    FrameMetric.add_member(:thread_states, ::Smithy::Schema::Shapes::MemberShape.new(target: ThreadStates, name: "threadStates", traits: {"smithy.api#required" => {}}))
    FrameMetric.type = Types::FrameMetric
    FrameMetricData.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FrameMetricDatum, name: "member"))
    FrameMetricDatum.add_member(:frame_metric, ::Smithy::Schema::Shapes::MemberShape.new(target: FrameMetric, name: "frameMetric", traits: {"smithy.api#required" => {}}))
    FrameMetricDatum.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: FrameMetricValues, name: "values", traits: {"smithy.api#required" => {}}))
    FrameMetricDatum.type = Types::FrameMetricDatum
    FrameMetricValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FrameMetricValue, name: "member"))
    FrameMetrics.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FrameMetric, name: "member"))
    GetFindingsReportAccountSummaryInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetFindingsReportAccountSummaryInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetFindingsReportAccountSummaryInput.add_member(:daily_reports_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "dailyReportsOnly", traits: {"smithy.api#httpQuery" => "dailyReportsOnly"}))
    GetFindingsReportAccountSummaryInput.type = Types::GetFindingsReportAccountSummaryInput
    GetFindingsReportAccountSummaryOutput.add_member(:report_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingsReportSummaries, name: "reportSummaries", traits: {"smithy.api#required" => {}}))
    GetFindingsReportAccountSummaryOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    GetFindingsReportAccountSummaryOutput.type = Types::GetFindingsReportAccountSummaryOutput
    GetNotificationConfigurationInput.add_member(:profiling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfilingGroupName, name: "profilingGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetNotificationConfigurationInput.type = Types::GetNotificationConfigurationInput
    GetNotificationConfigurationOutput.add_member(:notification_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationConfiguration, name: "notificationConfiguration", traits: {"smithy.api#required" => {}}))
    GetNotificationConfigurationOutput.type = Types::GetNotificationConfigurationOutput
    GetPolicyInput.add_member(:profiling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfilingGroupName, name: "profilingGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetPolicyInput.type = Types::GetPolicyInput
    GetPolicyOutput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "policy", traits: {"smithy.api#required" => {}}))
    GetPolicyOutput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionId, name: "revisionId", traits: {"smithy.api#required" => {}}))
    GetPolicyOutput.type = Types::GetPolicyOutput
    GetProfileInput.add_member(:profiling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfilingGroupName, name: "profilingGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetProfileInput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startTime", traits: {"smithy.api#httpQuery" => "startTime"}))
    GetProfileInput.add_member(:period, ::Smithy::Schema::Shapes::MemberShape.new(target: Period, name: "period", traits: {"smithy.api#httpQuery" => "period"}))
    GetProfileInput.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endTime", traits: {"smithy.api#httpQuery" => "endTime"}))
    GetProfileInput.add_member(:max_depth, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxDepth, name: "maxDepth", traits: {"smithy.api#httpQuery" => "maxDepth"}))
    GetProfileInput.add_member(:accept, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "accept", traits: {"smithy.api#httpHeader" => "Accept"}))
    GetProfileInput.type = Types::GetProfileInput
    GetProfileOutput.add_member(:profile, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregatedProfile, name: "profile", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    GetProfileOutput.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "contentType", traits: {"smithy.api#httpHeader" => "Content-Type", "smithy.api#required" => {}}))
    GetProfileOutput.add_member(:content_encoding, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "contentEncoding", traits: {"smithy.api#httpHeader" => "Content-Encoding"}))
    GetProfileOutput[:http_payload] = :profile
    GetProfileOutput[:http_payload_member] = GetProfileOutput.member(:profile)
    GetProfileOutput.type = Types::GetProfileOutput
    GetRecommendationsInput.add_member(:profiling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfilingGroupName, name: "profilingGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRecommendationsInput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startTime", traits: {"smithy.api#httpQuery" => "startTime", "smithy.api#required" => {}}))
    GetRecommendationsInput.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endTime", traits: {"smithy.api#httpQuery" => "endTime", "smithy.api#required" => {}}))
    GetRecommendationsInput.add_member(:locale, ::Smithy::Schema::Shapes::MemberShape.new(target: Locale, name: "locale", traits: {"smithy.api#httpQuery" => "locale"}))
    GetRecommendationsInput.type = Types::GetRecommendationsInput
    GetRecommendationsOutput.add_member(:profiling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfilingGroupName, name: "profilingGroupName", traits: {"smithy.api#required" => {}}))
    GetRecommendationsOutput.add_member(:profile_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "profileStartTime", traits: {"smithy.api#required" => {}}))
    GetRecommendationsOutput.add_member(:profile_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "profileEndTime", traits: {"smithy.api#required" => {}}))
    GetRecommendationsOutput.add_member(:recommendations, ::Smithy::Schema::Shapes::MemberShape.new(target: Recommendations, name: "recommendations", traits: {"smithy.api#required" => {}}))
    GetRecommendationsOutput.add_member(:anomalies, ::Smithy::Schema::Shapes::MemberShape.new(target: Anomalies, name: "anomalies", traits: {"smithy.api#required" => {}}))
    GetRecommendationsOutput.type = Types::GetRecommendationsOutput
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    ListFindingsReportsInput.add_member(:profiling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfilingGroupName, name: "profilingGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListFindingsReportsInput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startTime", traits: {"smithy.api#httpQuery" => "startTime", "smithy.api#required" => {}}))
    ListFindingsReportsInput.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endTime", traits: {"smithy.api#httpQuery" => "endTime", "smithy.api#required" => {}}))
    ListFindingsReportsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListFindingsReportsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListFindingsReportsInput.add_member(:daily_reports_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "dailyReportsOnly", traits: {"smithy.api#httpQuery" => "dailyReportsOnly"}))
    ListFindingsReportsInput.type = Types::ListFindingsReportsInput
    ListFindingsReportsOutput.add_member(:findings_report_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: FindingsReportSummaries, name: "findingsReportSummaries", traits: {"smithy.api#required" => {}}))
    ListFindingsReportsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListFindingsReportsOutput.type = Types::ListFindingsReportsOutput
    ListOfTimestamps.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TimestampStructure, name: "member"))
    ListProfileTimesInput.add_member(:profiling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfilingGroupName, name: "profilingGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListProfileTimesInput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startTime", traits: {"smithy.api#httpQuery" => "startTime", "smithy.api#required" => {}}))
    ListProfileTimesInput.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endTime", traits: {"smithy.api#httpQuery" => "endTime", "smithy.api#required" => {}}))
    ListProfileTimesInput.add_member(:period, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregationPeriod, name: "period", traits: {"smithy.api#httpQuery" => "period", "smithy.api#required" => {}}))
    ListProfileTimesInput.add_member(:order_by, ::Smithy::Schema::Shapes::MemberShape.new(target: OrderBy, name: "orderBy", traits: {"smithy.api#httpQuery" => "orderBy"}))
    ListProfileTimesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListProfileTimesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListProfileTimesInput.type = Types::ListProfileTimesInput
    ListProfileTimesOutput.add_member(:profile_times, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileTimes, name: "profileTimes", traits: {"smithy.api#required" => {}}))
    ListProfileTimesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListProfileTimesOutput.type = Types::ListProfileTimesOutput
    ListProfilingGroupsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListProfilingGroupsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListProfilingGroupsInput.add_member(:include_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "includeDescription", traits: {"smithy.api#httpQuery" => "includeDescription"}))
    ListProfilingGroupsInput.type = Types::ListProfilingGroupsInput
    ListProfilingGroupsOutput.add_member(:profiling_group_names, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfilingGroupNames, name: "profilingGroupNames", traits: {"smithy.api#required" => {}}))
    ListProfilingGroupsOutput.add_member(:profiling_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfilingGroupDescriptions, name: "profilingGroups"))
    ListProfilingGroupsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListProfilingGroupsOutput.type = Types::ListProfilingGroupsOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfilingGroupArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    Match.add_member(:target_frames_index, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "targetFramesIndex"))
    Match.add_member(:frame_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "frameAddress"))
    Match.add_member(:threshold_breach_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "thresholdBreachValue"))
    Match.type = Types::Match
    Matches.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Match, name: "member"))
    Metadata.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: MetadataField, name: "key"))
    Metadata.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    Metric.add_member(:frame_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "frameName", traits: {"smithy.api#required" => {}}))
    Metric.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: MetricType, name: "type", traits: {"smithy.api#required" => {}}))
    Metric.add_member(:thread_states, ::Smithy::Schema::Shapes::MemberShape.new(target: Strings, name: "threadStates", traits: {"smithy.api#required" => {}}))
    Metric.type = Types::Metric
    NotificationConfiguration.add_member(:channels, ::Smithy::Schema::Shapes::MemberShape.new(target: Channels, name: "channels"))
    NotificationConfiguration.type = Types::NotificationConfiguration
    Pattern.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "id"))
    Pattern.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "name"))
    Pattern.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "description"))
    Pattern.add_member(:resolution_steps, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resolutionSteps"))
    Pattern.add_member(:target_frames, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetFrames, name: "targetFrames"))
    Pattern.add_member(:threshold_percent, ::Smithy::Schema::Shapes::MemberShape.new(target: Percentage, name: "thresholdPercent", traits: {"smithy.api#default" => 0}))
    Pattern.add_member(:counters_to_aggregate, ::Smithy::Schema::Shapes::MemberShape.new(target: Strings, name: "countersToAggregate"))
    Pattern.type = Types::Pattern
    PostAgentProfileInput.add_member(:profiling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfilingGroupName, name: "profilingGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PostAgentProfileInput.add_member(:agent_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentProfile, name: "agentProfile", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    PostAgentProfileInput.add_member(:profile_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "profileToken", traits: {"smithy.api#httpQuery" => "profileToken", "smithy.api#idempotencyToken" => {}}))
    PostAgentProfileInput.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "contentType", traits: {"smithy.api#httpHeader" => "Content-Type", "smithy.api#required" => {}}))
    PostAgentProfileInput[:http_payload] = :agent_profile
    PostAgentProfileInput[:http_payload_member] = PostAgentProfileInput.member(:agent_profile)
    PostAgentProfileInput.type = Types::PostAgentProfileInput
    PostAgentProfileOutput.type = Types::PostAgentProfileOutput
    Principals.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Principal, name: "member"))
    ProfileTime.add_member(:start, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "start"))
    ProfileTime.type = Types::ProfileTime
    ProfileTimes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfileTime, name: "member"))
    ProfilingGroupDescription.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfilingGroupName, name: "name"))
    ProfilingGroupDescription.add_member(:agent_orchestration_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentOrchestrationConfig, name: "agentOrchestrationConfig"))
    ProfilingGroupDescription.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfilingGroupArn, name: "arn"))
    ProfilingGroupDescription.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdAt"))
    ProfilingGroupDescription.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "updatedAt"))
    ProfilingGroupDescription.add_member(:profiling_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfilingStatus, name: "profilingStatus"))
    ProfilingGroupDescription.add_member(:compute_platform, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputePlatform, name: "computePlatform"))
    ProfilingGroupDescription.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags"))
    ProfilingGroupDescription.type = Types::ProfilingGroupDescription
    ProfilingGroupDescriptions.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfilingGroupDescription, name: "member"))
    ProfilingGroupNames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfilingGroupName, name: "member"))
    ProfilingStatus.add_member(:latest_agent_profile_reported_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "latestAgentProfileReportedAt"))
    ProfilingStatus.add_member(:latest_aggregated_profile, ::Smithy::Schema::Shapes::MemberShape.new(target: AggregatedProfileTime, name: "latestAggregatedProfile"))
    ProfilingStatus.add_member(:latest_agent_orchestrated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "latestAgentOrchestratedAt"))
    ProfilingStatus.type = Types::ProfilingStatus
    PutPermissionInput.add_member(:profiling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfilingGroupName, name: "profilingGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutPermissionInput.add_member(:action_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionGroup, name: "actionGroup", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutPermissionInput.add_member(:principals, ::Smithy::Schema::Shapes::MemberShape.new(target: Principals, name: "principals", traits: {"smithy.api#required" => {}}))
    PutPermissionInput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionId, name: "revisionId"))
    PutPermissionInput.type = Types::PutPermissionInput
    PutPermissionOutput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "policy", traits: {"smithy.api#required" => {}}))
    PutPermissionOutput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionId, name: "revisionId", traits: {"smithy.api#required" => {}}))
    PutPermissionOutput.type = Types::PutPermissionOutput
    Recommendation.add_member(:all_matches_count, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "allMatchesCount", traits: {"smithy.api#required" => {}}))
    Recommendation.add_member(:all_matches_sum, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "allMatchesSum", traits: {"smithy.api#required" => {}}))
    Recommendation.add_member(:pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: Pattern, name: "pattern", traits: {"smithy.api#required" => {}}))
    Recommendation.add_member(:top_matches, ::Smithy::Schema::Shapes::MemberShape.new(target: Matches, name: "topMatches", traits: {"smithy.api#required" => {}}))
    Recommendation.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "startTime", traits: {"smithy.api#required" => {}}))
    Recommendation.add_member(:end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "endTime", traits: {"smithy.api#required" => {}}))
    Recommendation.type = Types::Recommendation
    Recommendations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Recommendation, name: "member"))
    RemoveNotificationChannelInput.add_member(:profiling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfilingGroupName, name: "profilingGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemoveNotificationChannelInput.add_member(:channel_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ChannelId, name: "channelId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemoveNotificationChannelInput.type = Types::RemoveNotificationChannelInput
    RemoveNotificationChannelOutput.add_member(:notification_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationConfiguration, name: "notificationConfiguration"))
    RemoveNotificationChannelOutput.type = Types::RemoveNotificationChannelOutput
    RemovePermissionInput.add_member(:profiling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfilingGroupName, name: "profilingGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemovePermissionInput.add_member(:action_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionGroup, name: "actionGroup", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemovePermissionInput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionId, name: "revisionId", traits: {"smithy.api#httpQuery" => "revisionId", "smithy.api#required" => {}}))
    RemovePermissionInput.type = Types::RemovePermissionInput
    RemovePermissionOutput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "policy", traits: {"smithy.api#required" => {}}))
    RemovePermissionOutput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionId, name: "revisionId", traits: {"smithy.api#required" => {}}))
    RemovePermissionOutput.type = Types::RemovePermissionOutput
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    Strings.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    SubmitFeedbackInput.add_member(:profiling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfilingGroupName, name: "profilingGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SubmitFeedbackInput.add_member(:anomaly_instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AnomalyInstanceId, name: "anomalyInstanceId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SubmitFeedbackInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedbackType, name: "type", traits: {"smithy.api#required" => {}}))
    SubmitFeedbackInput.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "comment"))
    SubmitFeedbackInput.type = Types::SubmitFeedbackInput
    SubmitFeedbackOutput.type = Types::SubmitFeedbackOutput
    TagKeys.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfilingGroupArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    TagResourceOutput.type = Types::TagResourceOutput
    TagsMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    TagsMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "value"))
    TargetFrame.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    TargetFrames.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetFrame, name: "member"))
    ThreadStates.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member"))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    TimestampStructure.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "value", traits: {"smithy.api#required" => {}}))
    TimestampStructure.type = Types::TimestampStructure
    UnprocessedEndTimeMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    UnprocessedEndTimeMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfTimestamps, name: "value"))
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfilingGroupArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeys, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UntagResourceOutput.type = Types::UntagResourceOutput
    UpdateProfilingGroupInput.add_member(:profiling_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfilingGroupName, name: "profilingGroupName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateProfilingGroupInput.add_member(:agent_orchestration_config, ::Smithy::Schema::Shapes::MemberShape.new(target: AgentOrchestrationConfig, name: "agentOrchestrationConfig", traits: {"smithy.api#required" => {}}))
    UpdateProfilingGroupInput.type = Types::UpdateProfilingGroupInput
    UpdateProfilingGroupOutput.add_member(:profiling_group, ::Smithy::Schema::Shapes::MemberShape.new(target: ProfilingGroupDescription, name: "profilingGroup", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    UpdateProfilingGroupOutput[:http_payload] = :profiling_group
    UpdateProfilingGroupOutput[:http_payload_member] = UpdateProfilingGroupOutput.member(:profiling_group)
    UpdateProfilingGroupOutput.type = Types::UpdateProfilingGroupOutput
    UserFeedback.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedbackType, name: "type", traits: {"smithy.api#required" => {}}))
    UserFeedback.type = Types::UserFeedback
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException

    CodeGuruProfiler = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.codeguruprofiler#CodeGuruProfiler"
      service.name = "CodeGuruProfiler"
      service.version = "2019-07-18"
      service.traits = {"aws.api#service" => {"sdkId" => "CodeGuruProfiler", "arnNamespace" => "codeguru-profiler", "cloudFormationName" => "CodeGuruProfiler", "cloudTrailEventSource" => "codeguru-profiler.amazonaws.com", "endpointPrefix" => "codeguru-profiler"}, "aws.auth#sigv4" => {"name" => "codeguru-profiler"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["X-Amz-Content-Sha256", "X-Amz-User-Agent", "Content-Type"]}, "smithy.api#title" => "Amazon CodeGuru Profiler"}
      service.add_operation(:add_notification_channels, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeguruprofiler#AddNotificationChannels"
        operation.name = "AddNotificationChannels"
        operation.input = AddNotificationChannelsInput
        operation.output = AddNotificationChannelsOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/profilingGroups/{profilingGroupName}/notificationConfiguration", "code" => 200}}
      end)
      service.add_operation(:batch_get_frame_metric_data, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeguruprofiler#BatchGetFrameMetricData"
        operation.name = "BatchGetFrameMetricData"
        operation.input = BatchGetFrameMetricDataInput
        operation.output = BatchGetFrameMetricDataOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/profilingGroups/{profilingGroupName}/frames/-/metrics", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:configure_agent, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeguruprofiler#ConfigureAgent"
        operation.name = "ConfigureAgent"
        operation.input = ConfigureAgentInput
        operation.output = ConfigureAgentOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/profilingGroups/{profilingGroupName}/configureAgent", "code" => 200}, "smithy.api#tags" => ["dataplane"]}
      end)
      service.add_operation(:create_profiling_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeguruprofiler#CreateProfilingGroup"
        operation.name = "CreateProfilingGroup"
        operation.input = CreateProfilingGroupInput
        operation.output = CreateProfilingGroupOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/profilingGroups", "code" => 201}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_profiling_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeguruprofiler#DeleteProfilingGroup"
        operation.name = "DeleteProfilingGroup"
        operation.input = DeleteProfilingGroupInput
        operation.output = DeleteProfilingGroupOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/profilingGroups/{profilingGroupName}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:describe_profiling_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeguruprofiler#DescribeProfilingGroup"
        operation.name = "DescribeProfilingGroup"
        operation.input = DescribeProfilingGroupInput
        operation.output = DescribeProfilingGroupOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/profilingGroups/{profilingGroupName}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_findings_report_account_summary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeguruprofiler#GetFindingsReportAccountSummary"
        operation.name = "GetFindingsReportAccountSummary"
        operation.input = GetFindingsReportAccountSummaryInput
        operation.output = GetFindingsReportAccountSummaryOutput
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/internal/findingsReports", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::GetFindingsReportAccountSummary.new
      end)
      service.add_operation(:get_notification_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeguruprofiler#GetNotificationConfiguration"
        operation.name = "GetNotificationConfiguration"
        operation.input = GetNotificationConfigurationInput
        operation.output = GetNotificationConfigurationOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/profilingGroups/{profilingGroupName}/notificationConfiguration", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeguruprofiler#GetPolicy"
        operation.name = "GetPolicy"
        operation.input = GetPolicyInput
        operation.output = GetPolicyOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/profilingGroups/{profilingGroupName}/policy", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeguruprofiler#GetProfile"
        operation.name = "GetProfile"
        operation.input = GetProfileInput
        operation.output = GetProfileOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/profilingGroups/{profilingGroupName}/profile", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_recommendations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeguruprofiler#GetRecommendations"
        operation.name = "GetRecommendations"
        operation.input = GetRecommendationsInput
        operation.output = GetRecommendationsOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/internal/profilingGroups/{profilingGroupName}/recommendations", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_findings_reports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeguruprofiler#ListFindingsReports"
        operation.name = "ListFindingsReports"
        operation.input = ListFindingsReportsInput
        operation.output = ListFindingsReportsOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/internal/profilingGroups/{profilingGroupName}/findingsReports", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListFindingsReports.new
      end)
      service.add_operation(:list_profile_times, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeguruprofiler#ListProfileTimes"
        operation.name = "ListProfileTimes"
        operation.input = ListProfileTimesInput
        operation.output = ListProfileTimesOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/profilingGroups/{profilingGroupName}/profileTimes", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListProfileTimes.new
      end)
      service.add_operation(:list_profiling_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeguruprofiler#ListProfilingGroups"
        operation.name = "ListProfilingGroups"
        operation.input = ListProfilingGroupsInput
        operation.output = ListProfilingGroupsOutput
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/profilingGroups", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListProfilingGroups.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeguruprofiler#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:post_agent_profile, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeguruprofiler#PostAgentProfile"
        operation.name = "PostAgentProfile"
        operation.input = PostAgentProfileInput
        operation.output = PostAgentProfileOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/profilingGroups/{profilingGroupName}/agentProfile", "code" => 204}, "smithy.api#tags" => ["dataplane"]}
      end)
      service.add_operation(:put_permission, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeguruprofiler#PutPermission"
        operation.name = "PutPermission"
        operation.input = PutPermissionInput
        operation.output = PutPermissionOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/profilingGroups/{profilingGroupName}/policy/{actionGroup}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:remove_notification_channel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeguruprofiler#RemoveNotificationChannel"
        operation.name = "RemoveNotificationChannel"
        operation.input = RemoveNotificationChannelInput
        operation.output = RemoveNotificationChannelOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/profilingGroups/{profilingGroupName}/notificationConfiguration/{channelId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:remove_permission, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeguruprofiler#RemovePermission"
        operation.name = "RemovePermission"
        operation.input = RemovePermissionInput
        operation.output = RemovePermissionOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/profilingGroups/{profilingGroupName}/policy/{actionGroup}", "code" => 200}}
      end)
      service.add_operation(:submit_feedback, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeguruprofiler#SubmitFeedback"
        operation.name = "SubmitFeedback"
        operation.input = SubmitFeedbackInput
        operation.output = SubmitFeedbackOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/internal/profilingGroups/{profilingGroupName}/anomalies/{anomalyInstanceId}/feedback", "code" => 204}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeguruprofiler#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = TagResourceOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 204}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeguruprofiler#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = UntagResourceOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_profiling_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeguruprofiler#UpdateProfilingGroup"
        operation.name = "UpdateProfilingGroup"
        operation.input = UpdateProfilingGroupInput
        operation.output = UpdateProfilingGroupOutput
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/profilingGroups/{profilingGroupName}", "code" => 200}, "smithy.api#idempotent" => {}}
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
