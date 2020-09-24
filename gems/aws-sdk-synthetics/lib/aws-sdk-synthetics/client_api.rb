# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Synthetics
  # @api private
  module ClientApi

    include Seahorse::Model

    Blob = Shapes::BlobShape.new(name: 'Blob')
    Canaries = Shapes::ListShape.new(name: 'Canaries')
    CanariesLastRun = Shapes::ListShape.new(name: 'CanariesLastRun')
    Canary = Shapes::StructureShape.new(name: 'Canary')
    CanaryArn = Shapes::StringShape.new(name: 'CanaryArn')
    CanaryCodeInput = Shapes::StructureShape.new(name: 'CanaryCodeInput')
    CanaryCodeOutput = Shapes::StructureShape.new(name: 'CanaryCodeOutput')
    CanaryLastRun = Shapes::StructureShape.new(name: 'CanaryLastRun')
    CanaryName = Shapes::StringShape.new(name: 'CanaryName')
    CanaryRun = Shapes::StructureShape.new(name: 'CanaryRun')
    CanaryRunConfigInput = Shapes::StructureShape.new(name: 'CanaryRunConfigInput')
    CanaryRunConfigOutput = Shapes::StructureShape.new(name: 'CanaryRunConfigOutput')
    CanaryRunState = Shapes::StringShape.new(name: 'CanaryRunState')
    CanaryRunStateReasonCode = Shapes::StringShape.new(name: 'CanaryRunStateReasonCode')
    CanaryRunStatus = Shapes::StructureShape.new(name: 'CanaryRunStatus')
    CanaryRunTimeline = Shapes::StructureShape.new(name: 'CanaryRunTimeline')
    CanaryRuns = Shapes::ListShape.new(name: 'CanaryRuns')
    CanaryScheduleInput = Shapes::StructureShape.new(name: 'CanaryScheduleInput')
    CanaryScheduleOutput = Shapes::StructureShape.new(name: 'CanaryScheduleOutput')
    CanaryState = Shapes::StringShape.new(name: 'CanaryState')
    CanaryStateReasonCode = Shapes::StringShape.new(name: 'CanaryStateReasonCode')
    CanaryStatus = Shapes::StructureShape.new(name: 'CanaryStatus')
    CanaryTimeline = Shapes::StructureShape.new(name: 'CanaryTimeline')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateCanaryRequest = Shapes::StructureShape.new(name: 'CreateCanaryRequest')
    CreateCanaryResponse = Shapes::StructureShape.new(name: 'CreateCanaryResponse')
    DeleteCanaryRequest = Shapes::StructureShape.new(name: 'DeleteCanaryRequest')
    DeleteCanaryResponse = Shapes::StructureShape.new(name: 'DeleteCanaryResponse')
    DescribeCanariesLastRunRequest = Shapes::StructureShape.new(name: 'DescribeCanariesLastRunRequest')
    DescribeCanariesLastRunResponse = Shapes::StructureShape.new(name: 'DescribeCanariesLastRunResponse')
    DescribeCanariesRequest = Shapes::StructureShape.new(name: 'DescribeCanariesRequest')
    DescribeCanariesResponse = Shapes::StructureShape.new(name: 'DescribeCanariesResponse')
    DescribeRuntimeVersionsRequest = Shapes::StructureShape.new(name: 'DescribeRuntimeVersionsRequest')
    DescribeRuntimeVersionsResponse = Shapes::StructureShape.new(name: 'DescribeRuntimeVersionsResponse')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    FunctionArn = Shapes::StringShape.new(name: 'FunctionArn')
    GetCanaryRequest = Shapes::StructureShape.new(name: 'GetCanaryRequest')
    GetCanaryResponse = Shapes::StructureShape.new(name: 'GetCanaryResponse')
    GetCanaryRunsRequest = Shapes::StructureShape.new(name: 'GetCanaryRunsRequest')
    GetCanaryRunsResponse = Shapes::StructureShape.new(name: 'GetCanaryRunsResponse')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxCanaryResults = Shapes::IntegerShape.new(name: 'MaxCanaryResults')
    MaxFifteenMinutesInSeconds = Shapes::IntegerShape.new(name: 'MaxFifteenMinutesInSeconds')
    MaxOneYearInSeconds = Shapes::IntegerShape.new(name: 'MaxOneYearInSeconds')
    MaxSize100 = Shapes::IntegerShape.new(name: 'MaxSize100')
    MaxSize1024 = Shapes::IntegerShape.new(name: 'MaxSize1024')
    MaxSize3008 = Shapes::IntegerShape.new(name: 'MaxSize3008')
    NullableBoolean = Shapes::BooleanShape.new(name: 'NullableBoolean')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    RuntimeVersion = Shapes::StructureShape.new(name: 'RuntimeVersion')
    RuntimeVersionList = Shapes::ListShape.new(name: 'RuntimeVersionList')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SecurityGroupIds = Shapes::ListShape.new(name: 'SecurityGroupIds')
    StartCanaryRequest = Shapes::StructureShape.new(name: 'StartCanaryRequest')
    StartCanaryResponse = Shapes::StructureShape.new(name: 'StartCanaryResponse')
    StopCanaryRequest = Shapes::StructureShape.new(name: 'StopCanaryRequest')
    StopCanaryResponse = Shapes::StructureShape.new(name: 'StopCanaryResponse')
    String = Shapes::StringShape.new(name: 'String')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    SubnetIds = Shapes::ListShape.new(name: 'SubnetIds')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    Token = Shapes::StringShape.new(name: 'Token')
    UUID = Shapes::StringShape.new(name: 'UUID')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateCanaryRequest = Shapes::StructureShape.new(name: 'UpdateCanaryRequest')
    UpdateCanaryResponse = Shapes::StructureShape.new(name: 'UpdateCanaryResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    VpcConfigInput = Shapes::StructureShape.new(name: 'VpcConfigInput')
    VpcConfigOutput = Shapes::StructureShape.new(name: 'VpcConfigOutput')
    VpcId = Shapes::StringShape.new(name: 'VpcId')

    Canaries.member = Shapes::ShapeRef.new(shape: Canary)

    CanariesLastRun.member = Shapes::ShapeRef.new(shape: CanaryLastRun)

    Canary.add_member(:id, Shapes::ShapeRef.new(shape: UUID, location_name: "Id"))
    Canary.add_member(:name, Shapes::ShapeRef.new(shape: CanaryName, location_name: "Name"))
    Canary.add_member(:code, Shapes::ShapeRef.new(shape: CanaryCodeOutput, location_name: "Code"))
    Canary.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "ExecutionRoleArn"))
    Canary.add_member(:schedule, Shapes::ShapeRef.new(shape: CanaryScheduleOutput, location_name: "Schedule"))
    Canary.add_member(:run_config, Shapes::ShapeRef.new(shape: CanaryRunConfigOutput, location_name: "RunConfig"))
    Canary.add_member(:success_retention_period_in_days, Shapes::ShapeRef.new(shape: MaxSize1024, location_name: "SuccessRetentionPeriodInDays"))
    Canary.add_member(:failure_retention_period_in_days, Shapes::ShapeRef.new(shape: MaxSize1024, location_name: "FailureRetentionPeriodInDays"))
    Canary.add_member(:status, Shapes::ShapeRef.new(shape: CanaryStatus, location_name: "Status"))
    Canary.add_member(:timeline, Shapes::ShapeRef.new(shape: CanaryTimeline, location_name: "Timeline"))
    Canary.add_member(:artifact_s3_location, Shapes::ShapeRef.new(shape: String, location_name: "ArtifactS3Location"))
    Canary.add_member(:engine_arn, Shapes::ShapeRef.new(shape: FunctionArn, location_name: "EngineArn"))
    Canary.add_member(:runtime_version, Shapes::ShapeRef.new(shape: String, location_name: "RuntimeVersion"))
    Canary.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfigOutput, location_name: "VpcConfig"))
    Canary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    Canary.struct_class = Types::Canary

    CanaryCodeInput.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: String, location_name: "S3Bucket"))
    CanaryCodeInput.add_member(:s3_key, Shapes::ShapeRef.new(shape: String, location_name: "S3Key"))
    CanaryCodeInput.add_member(:s3_version, Shapes::ShapeRef.new(shape: String, location_name: "S3Version"))
    CanaryCodeInput.add_member(:zip_file, Shapes::ShapeRef.new(shape: Blob, location_name: "ZipFile"))
    CanaryCodeInput.add_member(:handler, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Handler"))
    CanaryCodeInput.struct_class = Types::CanaryCodeInput

    CanaryCodeOutput.add_member(:source_location_arn, Shapes::ShapeRef.new(shape: String, location_name: "SourceLocationArn"))
    CanaryCodeOutput.add_member(:handler, Shapes::ShapeRef.new(shape: String, location_name: "Handler"))
    CanaryCodeOutput.struct_class = Types::CanaryCodeOutput

    CanaryLastRun.add_member(:canary_name, Shapes::ShapeRef.new(shape: CanaryName, location_name: "CanaryName"))
    CanaryLastRun.add_member(:last_run, Shapes::ShapeRef.new(shape: CanaryRun, location_name: "LastRun"))
    CanaryLastRun.struct_class = Types::CanaryLastRun

    CanaryRun.add_member(:id, Shapes::ShapeRef.new(shape: UUID, location_name: "Id"))
    CanaryRun.add_member(:name, Shapes::ShapeRef.new(shape: CanaryName, location_name: "Name"))
    CanaryRun.add_member(:status, Shapes::ShapeRef.new(shape: CanaryRunStatus, location_name: "Status"))
    CanaryRun.add_member(:timeline, Shapes::ShapeRef.new(shape: CanaryRunTimeline, location_name: "Timeline"))
    CanaryRun.add_member(:artifact_s3_location, Shapes::ShapeRef.new(shape: String, location_name: "ArtifactS3Location"))
    CanaryRun.struct_class = Types::CanaryRun

    CanaryRunConfigInput.add_member(:timeout_in_seconds, Shapes::ShapeRef.new(shape: MaxFifteenMinutesInSeconds, location_name: "TimeoutInSeconds"))
    CanaryRunConfigInput.add_member(:memory_in_mb, Shapes::ShapeRef.new(shape: MaxSize3008, location_name: "MemoryInMB"))
    CanaryRunConfigInput.add_member(:active_tracing, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "ActiveTracing"))
    CanaryRunConfigInput.struct_class = Types::CanaryRunConfigInput

    CanaryRunConfigOutput.add_member(:timeout_in_seconds, Shapes::ShapeRef.new(shape: MaxFifteenMinutesInSeconds, location_name: "TimeoutInSeconds"))
    CanaryRunConfigOutput.add_member(:memory_in_mb, Shapes::ShapeRef.new(shape: MaxSize3008, location_name: "MemoryInMB"))
    CanaryRunConfigOutput.add_member(:active_tracing, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "ActiveTracing"))
    CanaryRunConfigOutput.struct_class = Types::CanaryRunConfigOutput

    CanaryRunStatus.add_member(:state, Shapes::ShapeRef.new(shape: CanaryRunState, location_name: "State"))
    CanaryRunStatus.add_member(:state_reason, Shapes::ShapeRef.new(shape: String, location_name: "StateReason"))
    CanaryRunStatus.add_member(:state_reason_code, Shapes::ShapeRef.new(shape: CanaryRunStateReasonCode, location_name: "StateReasonCode"))
    CanaryRunStatus.struct_class = Types::CanaryRunStatus

    CanaryRunTimeline.add_member(:started, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Started"))
    CanaryRunTimeline.add_member(:completed, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Completed"))
    CanaryRunTimeline.struct_class = Types::CanaryRunTimeline

    CanaryRuns.member = Shapes::ShapeRef.new(shape: CanaryRun)

    CanaryScheduleInput.add_member(:expression, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Expression"))
    CanaryScheduleInput.add_member(:duration_in_seconds, Shapes::ShapeRef.new(shape: MaxOneYearInSeconds, location_name: "DurationInSeconds"))
    CanaryScheduleInput.struct_class = Types::CanaryScheduleInput

    CanaryScheduleOutput.add_member(:expression, Shapes::ShapeRef.new(shape: String, location_name: "Expression"))
    CanaryScheduleOutput.add_member(:duration_in_seconds, Shapes::ShapeRef.new(shape: MaxOneYearInSeconds, location_name: "DurationInSeconds"))
    CanaryScheduleOutput.struct_class = Types::CanaryScheduleOutput

    CanaryStatus.add_member(:state, Shapes::ShapeRef.new(shape: CanaryState, location_name: "State"))
    CanaryStatus.add_member(:state_reason, Shapes::ShapeRef.new(shape: String, location_name: "StateReason"))
    CanaryStatus.add_member(:state_reason_code, Shapes::ShapeRef.new(shape: CanaryStateReasonCode, location_name: "StateReasonCode"))
    CanaryStatus.struct_class = Types::CanaryStatus

    CanaryTimeline.add_member(:created, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Created"))
    CanaryTimeline.add_member(:last_modified, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModified"))
    CanaryTimeline.add_member(:last_started, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastStarted"))
    CanaryTimeline.add_member(:last_stopped, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastStopped"))
    CanaryTimeline.struct_class = Types::CanaryTimeline

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    CreateCanaryRequest.add_member(:name, Shapes::ShapeRef.new(shape: CanaryName, required: true, location_name: "Name"))
    CreateCanaryRequest.add_member(:code, Shapes::ShapeRef.new(shape: CanaryCodeInput, required: true, location_name: "Code"))
    CreateCanaryRequest.add_member(:artifact_s3_location, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ArtifactS3Location"))
    CreateCanaryRequest.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "ExecutionRoleArn"))
    CreateCanaryRequest.add_member(:schedule, Shapes::ShapeRef.new(shape: CanaryScheduleInput, required: true, location_name: "Schedule"))
    CreateCanaryRequest.add_member(:run_config, Shapes::ShapeRef.new(shape: CanaryRunConfigInput, location_name: "RunConfig"))
    CreateCanaryRequest.add_member(:success_retention_period_in_days, Shapes::ShapeRef.new(shape: MaxSize1024, location_name: "SuccessRetentionPeriodInDays"))
    CreateCanaryRequest.add_member(:failure_retention_period_in_days, Shapes::ShapeRef.new(shape: MaxSize1024, location_name: "FailureRetentionPeriodInDays"))
    CreateCanaryRequest.add_member(:runtime_version, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RuntimeVersion"))
    CreateCanaryRequest.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfigInput, location_name: "VpcConfig"))
    CreateCanaryRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateCanaryRequest.struct_class = Types::CreateCanaryRequest

    CreateCanaryResponse.add_member(:canary, Shapes::ShapeRef.new(shape: Canary, location_name: "Canary"))
    CreateCanaryResponse.struct_class = Types::CreateCanaryResponse

    DeleteCanaryRequest.add_member(:name, Shapes::ShapeRef.new(shape: CanaryName, required: true, location: "uri", location_name: "name"))
    DeleteCanaryRequest.struct_class = Types::DeleteCanaryRequest

    DeleteCanaryResponse.struct_class = Types::DeleteCanaryResponse

    DescribeCanariesLastRunRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    DescribeCanariesLastRunRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxSize100, location_name: "MaxResults"))
    DescribeCanariesLastRunRequest.struct_class = Types::DescribeCanariesLastRunRequest

    DescribeCanariesLastRunResponse.add_member(:canaries_last_run, Shapes::ShapeRef.new(shape: CanariesLastRun, location_name: "CanariesLastRun"))
    DescribeCanariesLastRunResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    DescribeCanariesLastRunResponse.struct_class = Types::DescribeCanariesLastRunResponse

    DescribeCanariesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    DescribeCanariesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxCanaryResults, location_name: "MaxResults"))
    DescribeCanariesRequest.struct_class = Types::DescribeCanariesRequest

    DescribeCanariesResponse.add_member(:canaries, Shapes::ShapeRef.new(shape: Canaries, location_name: "Canaries"))
    DescribeCanariesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    DescribeCanariesResponse.struct_class = Types::DescribeCanariesResponse

    DescribeRuntimeVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    DescribeRuntimeVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxSize100, location_name: "MaxResults"))
    DescribeRuntimeVersionsRequest.struct_class = Types::DescribeRuntimeVersionsRequest

    DescribeRuntimeVersionsResponse.add_member(:runtime_versions, Shapes::ShapeRef.new(shape: RuntimeVersionList, location_name: "RuntimeVersions"))
    DescribeRuntimeVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    DescribeRuntimeVersionsResponse.struct_class = Types::DescribeRuntimeVersionsResponse

    GetCanaryRequest.add_member(:name, Shapes::ShapeRef.new(shape: CanaryName, required: true, location: "uri", location_name: "name"))
    GetCanaryRequest.struct_class = Types::GetCanaryRequest

    GetCanaryResponse.add_member(:canary, Shapes::ShapeRef.new(shape: Canary, location_name: "Canary"))
    GetCanaryResponse.struct_class = Types::GetCanaryResponse

    GetCanaryRunsRequest.add_member(:name, Shapes::ShapeRef.new(shape: CanaryName, required: true, location: "uri", location_name: "name"))
    GetCanaryRunsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetCanaryRunsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxSize100, location_name: "MaxResults"))
    GetCanaryRunsRequest.struct_class = Types::GetCanaryRunsRequest

    GetCanaryRunsResponse.add_member(:canary_runs, Shapes::ShapeRef.new(shape: CanaryRuns, location_name: "CanaryRuns"))
    GetCanaryRunsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    GetCanaryRunsResponse.struct_class = Types::GetCanaryRunsResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: CanaryArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RuntimeVersion.add_member(:version_name, Shapes::ShapeRef.new(shape: String, location_name: "VersionName"))
    RuntimeVersion.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    RuntimeVersion.add_member(:release_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ReleaseDate"))
    RuntimeVersion.add_member(:deprecation_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DeprecationDate"))
    RuntimeVersion.struct_class = Types::RuntimeVersion

    RuntimeVersionList.member = Shapes::ShapeRef.new(shape: RuntimeVersion)

    SecurityGroupIds.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    StartCanaryRequest.add_member(:name, Shapes::ShapeRef.new(shape: CanaryName, required: true, location: "uri", location_name: "name"))
    StartCanaryRequest.struct_class = Types::StartCanaryRequest

    StartCanaryResponse.struct_class = Types::StartCanaryResponse

    StopCanaryRequest.add_member(:name, Shapes::ShapeRef.new(shape: CanaryName, required: true, location: "uri", location_name: "name"))
    StopCanaryRequest.struct_class = Types::StopCanaryRequest

    StopCanaryResponse.struct_class = Types::StopCanaryResponse

    SubnetIds.member = Shapes::ShapeRef.new(shape: SubnetId)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: CanaryArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: CanaryArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateCanaryRequest.add_member(:name, Shapes::ShapeRef.new(shape: CanaryName, required: true, location: "uri", location_name: "name"))
    UpdateCanaryRequest.add_member(:code, Shapes::ShapeRef.new(shape: CanaryCodeInput, location_name: "Code"))
    UpdateCanaryRequest.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "ExecutionRoleArn"))
    UpdateCanaryRequest.add_member(:runtime_version, Shapes::ShapeRef.new(shape: String, location_name: "RuntimeVersion"))
    UpdateCanaryRequest.add_member(:schedule, Shapes::ShapeRef.new(shape: CanaryScheduleInput, location_name: "Schedule"))
    UpdateCanaryRequest.add_member(:run_config, Shapes::ShapeRef.new(shape: CanaryRunConfigInput, location_name: "RunConfig"))
    UpdateCanaryRequest.add_member(:success_retention_period_in_days, Shapes::ShapeRef.new(shape: MaxSize1024, location_name: "SuccessRetentionPeriodInDays"))
    UpdateCanaryRequest.add_member(:failure_retention_period_in_days, Shapes::ShapeRef.new(shape: MaxSize1024, location_name: "FailureRetentionPeriodInDays"))
    UpdateCanaryRequest.add_member(:vpc_config, Shapes::ShapeRef.new(shape: VpcConfigInput, location_name: "VpcConfig"))
    UpdateCanaryRequest.struct_class = Types::UpdateCanaryRequest

    UpdateCanaryResponse.struct_class = Types::UpdateCanaryResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException

    VpcConfigInput.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, location_name: "SubnetIds"))
    VpcConfigInput.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "SecurityGroupIds"))
    VpcConfigInput.struct_class = Types::VpcConfigInput

    VpcConfigOutput.add_member(:vpc_id, Shapes::ShapeRef.new(shape: VpcId, location_name: "VpcId"))
    VpcConfigOutput.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIds, location_name: "SubnetIds"))
    VpcConfigOutput.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: "SecurityGroupIds"))
    VpcConfigOutput.struct_class = Types::VpcConfigOutput


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-10-11"

      api.metadata = {
        "apiVersion" => "2017-10-11",
        "endpointPrefix" => "synthetics",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "Synthetics",
        "serviceFullName" => "Synthetics",
        "serviceId" => "synthetics",
        "signatureVersion" => "v4",
        "signingName" => "synthetics",
        "uid" => "synthetics-2017-10-11",
      }

      api.add_operation(:create_canary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCanary"
        o.http_method = "POST"
        o.http_request_uri = "/canary"
        o.input = Shapes::ShapeRef.new(shape: CreateCanaryRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCanaryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_canary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCanary"
        o.http_method = "DELETE"
        o.http_request_uri = "/canary/{name}"
        o.input = Shapes::ShapeRef.new(shape: DeleteCanaryRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteCanaryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:describe_canaries, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCanaries"
        o.http_method = "POST"
        o.http_request_uri = "/canaries"
        o.input = Shapes::ShapeRef.new(shape: DescribeCanariesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeCanariesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_canaries_last_run, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeCanariesLastRun"
        o.http_method = "POST"
        o.http_request_uri = "/canaries/last-run"
        o.input = Shapes::ShapeRef.new(shape: DescribeCanariesLastRunRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeCanariesLastRunResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:describe_runtime_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRuntimeVersions"
        o.http_method = "POST"
        o.http_request_uri = "/runtime-versions"
        o.input = Shapes::ShapeRef.new(shape: DescribeRuntimeVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRuntimeVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_canary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCanary"
        o.http_method = "GET"
        o.http_request_uri = "/canary/{name}"
        o.input = Shapes::ShapeRef.new(shape: GetCanaryRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCanaryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_canary_runs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetCanaryRuns"
        o.http_method = "POST"
        o.http_request_uri = "/canary/{name}/runs"
        o.input = Shapes::ShapeRef.new(shape: GetCanaryRunsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetCanaryRunsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:start_canary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartCanary"
        o.http_method = "POST"
        o.http_request_uri = "/canary/{name}/start"
        o.input = Shapes::ShapeRef.new(shape: StartCanaryRequest)
        o.output = Shapes::ShapeRef.new(shape: StartCanaryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:stop_canary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopCanary"
        o.http_method = "POST"
        o.http_request_uri = "/canary/{name}/stop"
        o.input = Shapes::ShapeRef.new(shape: StopCanaryRequest)
        o.output = Shapes::ShapeRef.new(shape: StopCanaryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_canary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateCanary"
        o.http_method = "PATCH"
        o.http_request_uri = "/canary/{name}"
        o.input = Shapes::ShapeRef.new(shape: UpdateCanaryRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateCanaryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)
    end

  end
end
