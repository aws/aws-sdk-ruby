# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Synthetics
  # @api private
  module ClientApi

    include Seahorse::Model

    ArtifactConfigInput = Shapes::StructureShape.new(name: 'ArtifactConfigInput')
    ArtifactConfigOutput = Shapes::StructureShape.new(name: 'ArtifactConfigOutput')
    AssociateResourceRequest = Shapes::StructureShape.new(name: 'AssociateResourceRequest')
    AssociateResourceResponse = Shapes::StructureShape.new(name: 'AssociateResourceResponse')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    BaseScreenshot = Shapes::StructureShape.new(name: 'BaseScreenshot')
    BaseScreenshotConfigIgnoreCoordinate = Shapes::StringShape.new(name: 'BaseScreenshotConfigIgnoreCoordinate')
    BaseScreenshotIgnoreCoordinates = Shapes::ListShape.new(name: 'BaseScreenshotIgnoreCoordinates')
    BaseScreenshots = Shapes::ListShape.new(name: 'BaseScreenshots')
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
    CodeHandler = Shapes::StringShape.new(name: 'CodeHandler')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateCanaryRequest = Shapes::StructureShape.new(name: 'CreateCanaryRequest')
    CreateCanaryResponse = Shapes::StructureShape.new(name: 'CreateCanaryResponse')
    CreateGroupRequest = Shapes::StructureShape.new(name: 'CreateGroupRequest')
    CreateGroupResponse = Shapes::StructureShape.new(name: 'CreateGroupResponse')
    DeleteCanaryRequest = Shapes::StructureShape.new(name: 'DeleteCanaryRequest')
    DeleteCanaryResponse = Shapes::StructureShape.new(name: 'DeleteCanaryResponse')
    DeleteGroupRequest = Shapes::StructureShape.new(name: 'DeleteGroupRequest')
    DeleteGroupResponse = Shapes::StructureShape.new(name: 'DeleteGroupResponse')
    DescribeCanariesLastRunNameFilter = Shapes::ListShape.new(name: 'DescribeCanariesLastRunNameFilter')
    DescribeCanariesLastRunRequest = Shapes::StructureShape.new(name: 'DescribeCanariesLastRunRequest')
    DescribeCanariesLastRunResponse = Shapes::StructureShape.new(name: 'DescribeCanariesLastRunResponse')
    DescribeCanariesNameFilter = Shapes::ListShape.new(name: 'DescribeCanariesNameFilter')
    DescribeCanariesRequest = Shapes::StructureShape.new(name: 'DescribeCanariesRequest')
    DescribeCanariesResponse = Shapes::StructureShape.new(name: 'DescribeCanariesResponse')
    DescribeRuntimeVersionsRequest = Shapes::StructureShape.new(name: 'DescribeRuntimeVersionsRequest')
    DescribeRuntimeVersionsResponse = Shapes::StructureShape.new(name: 'DescribeRuntimeVersionsResponse')
    DisassociateResourceRequest = Shapes::StructureShape.new(name: 'DisassociateResourceRequest')
    DisassociateResourceResponse = Shapes::StructureShape.new(name: 'DisassociateResourceResponse')
    EncryptionMode = Shapes::StringShape.new(name: 'EncryptionMode')
    EnvironmentVariableName = Shapes::StringShape.new(name: 'EnvironmentVariableName')
    EnvironmentVariableValue = Shapes::StringShape.new(name: 'EnvironmentVariableValue')
    EnvironmentVariablesMap = Shapes::MapShape.new(name: 'EnvironmentVariablesMap')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    FunctionArn = Shapes::StringShape.new(name: 'FunctionArn')
    GetCanaryRequest = Shapes::StructureShape.new(name: 'GetCanaryRequest')
    GetCanaryResponse = Shapes::StructureShape.new(name: 'GetCanaryResponse')
    GetCanaryRunsRequest = Shapes::StructureShape.new(name: 'GetCanaryRunsRequest')
    GetCanaryRunsResponse = Shapes::StructureShape.new(name: 'GetCanaryRunsResponse')
    GetGroupRequest = Shapes::StructureShape.new(name: 'GetGroupRequest')
    GetGroupResponse = Shapes::StructureShape.new(name: 'GetGroupResponse')
    Group = Shapes::StructureShape.new(name: 'Group')
    GroupArn = Shapes::StringShape.new(name: 'GroupArn')
    GroupIdentifier = Shapes::StringShape.new(name: 'GroupIdentifier')
    GroupName = Shapes::StringShape.new(name: 'GroupName')
    GroupSummary = Shapes::StructureShape.new(name: 'GroupSummary')
    GroupSummaryList = Shapes::ListShape.new(name: 'GroupSummaryList')
    InternalFailureException = Shapes::StructureShape.new(name: 'InternalFailureException')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    KmsKeyArn = Shapes::StringShape.new(name: 'KmsKeyArn')
    ListAssociatedGroupsRequest = Shapes::StructureShape.new(name: 'ListAssociatedGroupsRequest')
    ListAssociatedGroupsResponse = Shapes::StructureShape.new(name: 'ListAssociatedGroupsResponse')
    ListGroupResourcesRequest = Shapes::StructureShape.new(name: 'ListGroupResourcesRequest')
    ListGroupResourcesResponse = Shapes::StructureShape.new(name: 'ListGroupResourcesResponse')
    ListGroupsRequest = Shapes::StructureShape.new(name: 'ListGroupsRequest')
    ListGroupsResponse = Shapes::StructureShape.new(name: 'ListGroupsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxCanaryResults = Shapes::IntegerShape.new(name: 'MaxCanaryResults')
    MaxFifteenMinutesInSeconds = Shapes::IntegerShape.new(name: 'MaxFifteenMinutesInSeconds')
    MaxGroupResults = Shapes::IntegerShape.new(name: 'MaxGroupResults')
    MaxOneYearInSeconds = Shapes::IntegerShape.new(name: 'MaxOneYearInSeconds')
    MaxSize100 = Shapes::IntegerShape.new(name: 'MaxSize100')
    MaxSize1024 = Shapes::IntegerShape.new(name: 'MaxSize1024')
    MaxSize3008 = Shapes::IntegerShape.new(name: 'MaxSize3008')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    NullableBoolean = Shapes::BooleanShape.new(name: 'NullableBoolean')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    RequestEntityTooLargeException = Shapes::StructureShape.new(name: 'RequestEntityTooLargeException')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    RuntimeVersion = Shapes::StructureShape.new(name: 'RuntimeVersion')
    RuntimeVersionList = Shapes::ListShape.new(name: 'RuntimeVersionList')
    S3EncryptionConfig = Shapes::StructureShape.new(name: 'S3EncryptionConfig')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SecurityGroupIds = Shapes::ListShape.new(name: 'SecurityGroupIds')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    StartCanaryRequest = Shapes::StructureShape.new(name: 'StartCanaryRequest')
    StartCanaryResponse = Shapes::StructureShape.new(name: 'StartCanaryResponse')
    StopCanaryRequest = Shapes::StructureShape.new(name: 'StopCanaryRequest')
    StopCanaryResponse = Shapes::StructureShape.new(name: 'StopCanaryResponse')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
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
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    UUID = Shapes::StringShape.new(name: 'UUID')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateCanaryRequest = Shapes::StructureShape.new(name: 'UpdateCanaryRequest')
    UpdateCanaryResponse = Shapes::StructureShape.new(name: 'UpdateCanaryResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    VisualReferenceInput = Shapes::StructureShape.new(name: 'VisualReferenceInput')
    VisualReferenceOutput = Shapes::StructureShape.new(name: 'VisualReferenceOutput')
    VpcConfigInput = Shapes::StructureShape.new(name: 'VpcConfigInput')
    VpcConfigOutput = Shapes::StructureShape.new(name: 'VpcConfigOutput')
    VpcId = Shapes::StringShape.new(name: 'VpcId')
    boolean = Shapes::BooleanShape.new(name: 'boolean')

    ArtifactConfigInput.add_member(:s3_encryption, Shapes::ShapeRef.new(shape: S3EncryptionConfig, location_name: "S3Encryption"))
    ArtifactConfigInput.struct_class = Types::ArtifactConfigInput

    ArtifactConfigOutput.add_member(:s3_encryption, Shapes::ShapeRef.new(shape: S3EncryptionConfig, location_name: "S3Encryption"))
    ArtifactConfigOutput.struct_class = Types::ArtifactConfigOutput

    AssociateResourceRequest.add_member(:group_identifier, Shapes::ShapeRef.new(shape: GroupIdentifier, required: true, location: "uri", location_name: "groupIdentifier"))
    AssociateResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: CanaryArn, required: true, location_name: "ResourceArn"))
    AssociateResourceRequest.struct_class = Types::AssociateResourceRequest

    AssociateResourceResponse.struct_class = Types::AssociateResourceResponse

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    BadRequestException.struct_class = Types::BadRequestException

    BaseScreenshot.add_member(:screenshot_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ScreenshotName"))
    BaseScreenshot.add_member(:ignore_coordinates, Shapes::ShapeRef.new(shape: BaseScreenshotIgnoreCoordinates, location_name: "IgnoreCoordinates"))
    BaseScreenshot.struct_class = Types::BaseScreenshot

    BaseScreenshotIgnoreCoordinates.member = Shapes::ShapeRef.new(shape: BaseScreenshotConfigIgnoreCoordinate)

    BaseScreenshots.member = Shapes::ShapeRef.new(shape: BaseScreenshot)

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
    Canary.add_member(:visual_reference, Shapes::ShapeRef.new(shape: VisualReferenceOutput, location_name: "VisualReference"))
    Canary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    Canary.add_member(:artifact_config, Shapes::ShapeRef.new(shape: ArtifactConfigOutput, location_name: "ArtifactConfig"))
    Canary.struct_class = Types::Canary

    CanaryCodeInput.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: String, location_name: "S3Bucket"))
    CanaryCodeInput.add_member(:s3_key, Shapes::ShapeRef.new(shape: String, location_name: "S3Key"))
    CanaryCodeInput.add_member(:s3_version, Shapes::ShapeRef.new(shape: String, location_name: "S3Version"))
    CanaryCodeInput.add_member(:zip_file, Shapes::ShapeRef.new(shape: Blob, location_name: "ZipFile"))
    CanaryCodeInput.add_member(:handler, Shapes::ShapeRef.new(shape: CodeHandler, required: true, location_name: "Handler"))
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
    CanaryRunConfigInput.add_member(:environment_variables, Shapes::ShapeRef.new(shape: EnvironmentVariablesMap, location_name: "EnvironmentVariables"))
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
    CreateCanaryRequest.add_member(:artifact_config, Shapes::ShapeRef.new(shape: ArtifactConfigInput, location_name: "ArtifactConfig"))
    CreateCanaryRequest.struct_class = Types::CreateCanaryRequest

    CreateCanaryResponse.add_member(:canary, Shapes::ShapeRef.new(shape: Canary, location_name: "Canary"))
    CreateCanaryResponse.struct_class = Types::CreateCanaryResponse

    CreateGroupRequest.add_member(:name, Shapes::ShapeRef.new(shape: GroupName, required: true, location_name: "Name"))
    CreateGroupRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateGroupRequest.struct_class = Types::CreateGroupRequest

    CreateGroupResponse.add_member(:group, Shapes::ShapeRef.new(shape: Group, location_name: "Group"))
    CreateGroupResponse.struct_class = Types::CreateGroupResponse

    DeleteCanaryRequest.add_member(:name, Shapes::ShapeRef.new(shape: CanaryName, required: true, location: "uri", location_name: "name"))
    DeleteCanaryRequest.add_member(:delete_lambda, Shapes::ShapeRef.new(shape: boolean, location: "querystring", location_name: "deleteLambda"))
    DeleteCanaryRequest.struct_class = Types::DeleteCanaryRequest

    DeleteCanaryResponse.struct_class = Types::DeleteCanaryResponse

    DeleteGroupRequest.add_member(:group_identifier, Shapes::ShapeRef.new(shape: GroupIdentifier, required: true, location: "uri", location_name: "groupIdentifier"))
    DeleteGroupRequest.struct_class = Types::DeleteGroupRequest

    DeleteGroupResponse.struct_class = Types::DeleteGroupResponse

    DescribeCanariesLastRunNameFilter.member = Shapes::ShapeRef.new(shape: CanaryName)

    DescribeCanariesLastRunRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    DescribeCanariesLastRunRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxSize100, location_name: "MaxResults"))
    DescribeCanariesLastRunRequest.add_member(:names, Shapes::ShapeRef.new(shape: DescribeCanariesLastRunNameFilter, location_name: "Names"))
    DescribeCanariesLastRunRequest.struct_class = Types::DescribeCanariesLastRunRequest

    DescribeCanariesLastRunResponse.add_member(:canaries_last_run, Shapes::ShapeRef.new(shape: CanariesLastRun, location_name: "CanariesLastRun"))
    DescribeCanariesLastRunResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    DescribeCanariesLastRunResponse.struct_class = Types::DescribeCanariesLastRunResponse

    DescribeCanariesNameFilter.member = Shapes::ShapeRef.new(shape: CanaryName)

    DescribeCanariesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    DescribeCanariesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxCanaryResults, location_name: "MaxResults"))
    DescribeCanariesRequest.add_member(:names, Shapes::ShapeRef.new(shape: DescribeCanariesNameFilter, location_name: "Names"))
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

    DisassociateResourceRequest.add_member(:group_identifier, Shapes::ShapeRef.new(shape: GroupIdentifier, required: true, location: "uri", location_name: "groupIdentifier"))
    DisassociateResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: CanaryArn, required: true, location_name: "ResourceArn"))
    DisassociateResourceRequest.struct_class = Types::DisassociateResourceRequest

    DisassociateResourceResponse.struct_class = Types::DisassociateResourceResponse

    EnvironmentVariablesMap.key = Shapes::ShapeRef.new(shape: EnvironmentVariableName)
    EnvironmentVariablesMap.value = Shapes::ShapeRef.new(shape: EnvironmentVariableValue)

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

    GetGroupRequest.add_member(:group_identifier, Shapes::ShapeRef.new(shape: GroupIdentifier, required: true, location: "uri", location_name: "groupIdentifier"))
    GetGroupRequest.struct_class = Types::GetGroupRequest

    GetGroupResponse.add_member(:group, Shapes::ShapeRef.new(shape: Group, location_name: "Group"))
    GetGroupResponse.struct_class = Types::GetGroupResponse

    Group.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "Id"))
    Group.add_member(:name, Shapes::ShapeRef.new(shape: GroupName, location_name: "Name"))
    Group.add_member(:arn, Shapes::ShapeRef.new(shape: GroupArn, location_name: "Arn"))
    Group.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    Group.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    Group.add_member(:last_modified_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastModifiedTime"))
    Group.struct_class = Types::Group

    GroupSummary.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "Id"))
    GroupSummary.add_member(:name, Shapes::ShapeRef.new(shape: GroupName, location_name: "Name"))
    GroupSummary.add_member(:arn, Shapes::ShapeRef.new(shape: GroupArn, location_name: "Arn"))
    GroupSummary.struct_class = Types::GroupSummary

    GroupSummaryList.member = Shapes::ShapeRef.new(shape: GroupSummary)

    InternalFailureException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalFailureException.struct_class = Types::InternalFailureException

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListAssociatedGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListAssociatedGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxGroupResults, location_name: "MaxResults"))
    ListAssociatedGroupsRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: CanaryArn, required: true, location: "uri", location_name: "resourceArn"))
    ListAssociatedGroupsRequest.struct_class = Types::ListAssociatedGroupsRequest

    ListAssociatedGroupsResponse.add_member(:groups, Shapes::ShapeRef.new(shape: GroupSummaryList, location_name: "Groups"))
    ListAssociatedGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListAssociatedGroupsResponse.struct_class = Types::ListAssociatedGroupsResponse

    ListGroupResourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListGroupResourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxGroupResults, location_name: "MaxResults"))
    ListGroupResourcesRequest.add_member(:group_identifier, Shapes::ShapeRef.new(shape: GroupIdentifier, required: true, location: "uri", location_name: "groupIdentifier"))
    ListGroupResourcesRequest.struct_class = Types::ListGroupResourcesRequest

    ListGroupResourcesResponse.add_member(:resources, Shapes::ShapeRef.new(shape: StringList, location_name: "Resources"))
    ListGroupResourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListGroupResourcesResponse.struct_class = Types::ListGroupResourcesResponse

    ListGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "NextToken"))
    ListGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxGroupResults, location_name: "MaxResults"))
    ListGroupsRequest.struct_class = Types::ListGroupsRequest

    ListGroupsResponse.add_member(:groups, Shapes::ShapeRef.new(shape: GroupSummaryList, location_name: "Groups"))
    ListGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: Token, location_name: "NextToken"))
    ListGroupsResponse.struct_class = Types::ListGroupsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    NotFoundException.struct_class = Types::NotFoundException

    RequestEntityTooLargeException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    RequestEntityTooLargeException.struct_class = Types::RequestEntityTooLargeException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RuntimeVersion.add_member(:version_name, Shapes::ShapeRef.new(shape: String, location_name: "VersionName"))
    RuntimeVersion.add_member(:description, Shapes::ShapeRef.new(shape: String, location_name: "Description"))
    RuntimeVersion.add_member(:release_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "ReleaseDate"))
    RuntimeVersion.add_member(:deprecation_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DeprecationDate"))
    RuntimeVersion.struct_class = Types::RuntimeVersion

    RuntimeVersionList.member = Shapes::ShapeRef.new(shape: RuntimeVersion)

    S3EncryptionConfig.add_member(:encryption_mode, Shapes::ShapeRef.new(shape: EncryptionMode, location_name: "EncryptionMode"))
    S3EncryptionConfig.add_member(:kms_key_arn, Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: "KmsKeyArn"))
    S3EncryptionConfig.struct_class = Types::S3EncryptionConfig

    SecurityGroupIds.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StartCanaryRequest.add_member(:name, Shapes::ShapeRef.new(shape: CanaryName, required: true, location: "uri", location_name: "name"))
    StartCanaryRequest.struct_class = Types::StartCanaryRequest

    StartCanaryResponse.struct_class = Types::StartCanaryResponse

    StopCanaryRequest.add_member(:name, Shapes::ShapeRef.new(shape: CanaryName, required: true, location: "uri", location_name: "name"))
    StopCanaryRequest.struct_class = Types::StopCanaryRequest

    StopCanaryResponse.struct_class = Types::StopCanaryResponse

    StringList.member = Shapes::ShapeRef.new(shape: String)

    SubnetIds.member = Shapes::ShapeRef.new(shape: SubnetId)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
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
    UpdateCanaryRequest.add_member(:visual_reference, Shapes::ShapeRef.new(shape: VisualReferenceInput, location_name: "VisualReference"))
    UpdateCanaryRequest.add_member(:artifact_s3_location, Shapes::ShapeRef.new(shape: String, location_name: "ArtifactS3Location"))
    UpdateCanaryRequest.add_member(:artifact_config, Shapes::ShapeRef.new(shape: ArtifactConfigInput, location_name: "ArtifactConfig"))
    UpdateCanaryRequest.struct_class = Types::UpdateCanaryRequest

    UpdateCanaryResponse.struct_class = Types::UpdateCanaryResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException

    VisualReferenceInput.add_member(:base_screenshots, Shapes::ShapeRef.new(shape: BaseScreenshots, location_name: "BaseScreenshots"))
    VisualReferenceInput.add_member(:base_canary_run_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "BaseCanaryRunId"))
    VisualReferenceInput.struct_class = Types::VisualReferenceInput

    VisualReferenceOutput.add_member(:base_screenshots, Shapes::ShapeRef.new(shape: BaseScreenshots, location_name: "BaseScreenshots"))
    VisualReferenceOutput.add_member(:base_canary_run_id, Shapes::ShapeRef.new(shape: String, location_name: "BaseCanaryRunId"))
    VisualReferenceOutput.struct_class = Types::VisualReferenceOutput

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

      api.add_operation(:associate_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateResource"
        o.http_method = "PATCH"
        o.http_request_uri = "/group/{groupIdentifier}/associate"
        o.input = Shapes::ShapeRef.new(shape: AssociateResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
      end)

      api.add_operation(:create_canary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCanary"
        o.http_method = "POST"
        o.http_request_uri = "/canary"
        o.input = Shapes::ShapeRef.new(shape: CreateCanaryRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCanaryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: RequestEntityTooLargeException)
      end)

      api.add_operation(:create_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGroup"
        o.http_method = "POST"
        o.http_request_uri = "/group"
        o.input = Shapes::ShapeRef.new(shape: CreateGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
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

      api.add_operation(:delete_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGroup"
        o.http_method = "DELETE"
        o.http_request_uri = "/group/{groupIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: DeleteGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteGroupResponse)
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

      api.add_operation(:disassociate_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateResource"
        o.http_method = "PATCH"
        o.http_request_uri = "/group/{groupIdentifier}/disassociate"
        o.input = Shapes::ShapeRef.new(shape: DisassociateResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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

      api.add_operation(:get_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGroup"
        o.http_method = "GET"
        o.http_request_uri = "/group/{groupIdentifier}"
        o.input = Shapes::ShapeRef.new(shape: GetGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: GetGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:list_associated_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssociatedGroups"
        o.http_method = "POST"
        o.http_request_uri = "/resource/{resourceArn}/groups"
        o.input = Shapes::ShapeRef.new(shape: ListAssociatedGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAssociatedGroupsResponse)
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

      api.add_operation(:list_group_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGroupResources"
        o.http_method = "POST"
        o.http_request_uri = "/group/{groupIdentifier}/resources"
        o.input = Shapes::ShapeRef.new(shape: ListGroupResourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGroupResourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGroups"
        o.http_method = "POST"
        o.http_request_uri = "/groups"
        o.input = Shapes::ShapeRef.new(shape: ListGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
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
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
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
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
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
        o.errors << Shapes::ShapeRef.new(shape: RequestEntityTooLargeException)
      end)
    end

  end
end
