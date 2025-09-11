# frozen_string_literal: true

# This is generated code!

module Aws::Synthetics
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ArtifactConfigInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#ArtifactConfigInput', name: 'ArtifactConfigInput')
    ArtifactConfigOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#ArtifactConfigOutput', name: 'ArtifactConfigOutput')
    AssociateResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#AssociateResourceRequest', name: 'AssociateResourceRequest')
    AssociateResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#AssociateResourceResponse', name: 'AssociateResourceResponse')
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#BadRequestException', name: 'BadRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BaseScreenshot = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#BaseScreenshot', name: 'BaseScreenshot')
    BaseScreenshotConfigIgnoreCoordinate = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#BaseScreenshotConfigIgnoreCoordinate', name: 'BaseScreenshotConfigIgnoreCoordinate', traits: {"smithy.api#pattern" => "^(-?\\d{1,5}\\.?\\d{0,2},){3}(-?\\d{1,5}\\.?\\d{0,2}){1}$"})
    BaseScreenshotIgnoreCoordinates = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.synthetics#BaseScreenshotIgnoreCoordinates', name: 'BaseScreenshotIgnoreCoordinates', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    BaseScreenshots = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.synthetics#BaseScreenshots', name: 'BaseScreenshots')
    Blob = ::Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.synthetics#Blob', name: 'Blob', traits: {"smithy.api#length" => {"min" => 1, "max" => 10000000}})
    BrowserConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#BrowserConfig', name: 'BrowserConfig')
    BrowserConfigs = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.synthetics#BrowserConfigs', name: 'BrowserConfigs', traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    BrowserType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.synthetics#BrowserType', name: 'BrowserType')
    Canaries = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.synthetics#Canaries', name: 'Canaries')
    CanariesLastRun = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.synthetics#CanariesLastRun', name: 'CanariesLastRun')
    Canary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#Canary', name: 'Canary')
    CanaryArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#CanaryArn', name: 'CanaryArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:synthetics:[a-z]{2,4}(-[a-z]{2,4})?-[a-z]+-\\d{1}:\\d{12}:canary:[0-9a-z_\\-]{1,255}$"})
    CanaryCodeInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#CanaryCodeInput', name: 'CanaryCodeInput')
    CanaryCodeOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#CanaryCodeOutput', name: 'CanaryCodeOutput')
    CanaryDryRunConfigOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#CanaryDryRunConfigOutput', name: 'CanaryDryRunConfigOutput')
    CanaryLastRun = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#CanaryLastRun', name: 'CanaryLastRun')
    CanaryName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#CanaryName', name: 'CanaryName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[0-9a-z_\\-]+$"})
    CanaryRun = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#CanaryRun', name: 'CanaryRun')
    CanaryRunConfigInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#CanaryRunConfigInput', name: 'CanaryRunConfigInput')
    CanaryRunConfigOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#CanaryRunConfigOutput', name: 'CanaryRunConfigOutput')
    CanaryRunState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.synthetics#CanaryRunState', name: 'CanaryRunState')
    CanaryRunStateReasonCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.synthetics#CanaryRunStateReasonCode', name: 'CanaryRunStateReasonCode')
    CanaryRunStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#CanaryRunStatus', name: 'CanaryRunStatus')
    CanaryRunTestResult = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.synthetics#CanaryRunTestResult', name: 'CanaryRunTestResult')
    CanaryRunTimeline = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#CanaryRunTimeline', name: 'CanaryRunTimeline')
    CanaryRuns = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.synthetics#CanaryRuns', name: 'CanaryRuns')
    CanaryScheduleInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#CanaryScheduleInput', name: 'CanaryScheduleInput')
    CanaryScheduleOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#CanaryScheduleOutput', name: 'CanaryScheduleOutput')
    CanaryState = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.synthetics#CanaryState', name: 'CanaryState')
    CanaryStateReasonCode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.synthetics#CanaryStateReasonCode', name: 'CanaryStateReasonCode')
    CanaryStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#CanaryStatus', name: 'CanaryStatus')
    CanaryTimeline = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#CanaryTimeline', name: 'CanaryTimeline')
    CodeHandler = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#CodeHandler', name: 'CodeHandler', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([0-9a-zA-Z_-]+(\\/|\\.))*[0-9A-Za-z_\\\\-]+(\\.|::)[A-Za-z_][A-Za-z0-9_]*$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateCanaryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#CreateCanaryRequest', name: 'CreateCanaryRequest')
    CreateCanaryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#CreateCanaryResponse', name: 'CreateCanaryResponse')
    CreateGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#CreateGroupRequest', name: 'CreateGroupRequest')
    CreateGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#CreateGroupResponse', name: 'CreateGroupResponse')
    DeleteCanaryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#DeleteCanaryRequest', name: 'DeleteCanaryRequest')
    DeleteCanaryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#DeleteCanaryResponse', name: 'DeleteCanaryResponse')
    DeleteGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#DeleteGroupRequest', name: 'DeleteGroupRequest')
    DeleteGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#DeleteGroupResponse', name: 'DeleteGroupResponse')
    Dependencies = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.synthetics#Dependencies', name: 'Dependencies', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    Dependency = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#Dependency', name: 'Dependency')
    DependencyType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.synthetics#DependencyType', name: 'DependencyType')
    DescribeCanariesLastRunNameFilter = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.synthetics#DescribeCanariesLastRunNameFilter', name: 'DescribeCanariesLastRunNameFilter', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    DescribeCanariesLastRunRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#DescribeCanariesLastRunRequest', name: 'DescribeCanariesLastRunRequest')
    DescribeCanariesLastRunResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#DescribeCanariesLastRunResponse', name: 'DescribeCanariesLastRunResponse')
    DescribeCanariesNameFilter = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.synthetics#DescribeCanariesNameFilter', name: 'DescribeCanariesNameFilter', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    DescribeCanariesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#DescribeCanariesRequest', name: 'DescribeCanariesRequest')
    DescribeCanariesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#DescribeCanariesResponse', name: 'DescribeCanariesResponse')
    DescribeRuntimeVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#DescribeRuntimeVersionsRequest', name: 'DescribeRuntimeVersionsRequest')
    DescribeRuntimeVersionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#DescribeRuntimeVersionsResponse', name: 'DescribeRuntimeVersionsResponse')
    DisassociateResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#DisassociateResourceRequest', name: 'DisassociateResourceRequest')
    DisassociateResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#DisassociateResourceResponse', name: 'DisassociateResourceResponse')
    DryRunConfigOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#DryRunConfigOutput', name: 'DryRunConfigOutput')
    EncryptionMode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.synthetics#EncryptionMode', name: 'EncryptionMode')
    EngineConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#EngineConfig', name: 'EngineConfig')
    EngineConfigs = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.synthetics#EngineConfigs', name: 'EngineConfigs')
    EnvironmentVariableName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#EnvironmentVariableName', name: 'EnvironmentVariableName', traits: {"smithy.api#pattern" => "^[a-zA-Z]([a-zA-Z0-9_])+$"})
    EnvironmentVariableValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#EnvironmentVariableValue', name: 'EnvironmentVariableValue')
    EnvironmentVariablesMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.synthetics#EnvironmentVariablesMap', name: 'EnvironmentVariablesMap')
    EphemeralStorageSize = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.synthetics#EphemeralStorageSize', name: 'EphemeralStorageSize', traits: {"smithy.api#range" => {"min" => 1024, "max" => 10240}})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#ErrorMessage', name: 'ErrorMessage')
    FunctionArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#FunctionArn', name: 'FunctionArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2,4}(-[a-z]{2,4})?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?$"})
    GetCanaryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#GetCanaryRequest', name: 'GetCanaryRequest')
    GetCanaryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#GetCanaryResponse', name: 'GetCanaryResponse')
    GetCanaryRunsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#GetCanaryRunsRequest', name: 'GetCanaryRunsRequest')
    GetCanaryRunsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#GetCanaryRunsResponse', name: 'GetCanaryRunsResponse')
    GetGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#GetGroupRequest', name: 'GetGroupRequest')
    GetGroupResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#GetGroupResponse', name: 'GetGroupResponse')
    Group = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#Group', name: 'Group')
    GroupArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#GroupArn', name: 'GroupArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:synthetics:[a-z]{2,4}(-[a-z]{2,4})?-[a-z]+-\\d{1}:\\d{12}:group:[0-9a-z]+$"})
    GroupIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#GroupIdentifier', name: 'GroupIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    GroupName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#GroupName', name: 'GroupName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    GroupSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#GroupSummary', name: 'GroupSummary')
    GroupSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.synthetics#GroupSummaryList', name: 'GroupSummaryList')
    InternalFailureException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#InternalFailureException', name: 'InternalFailureException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#KmsKeyArn', name: 'KmsKeyArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:kms:[a-z]{2,4}(-[a-z]{2,4})?-[a-z]+-\\d{1}:\\d{12}:key/[\\w\\-\\/]+$"})
    ListAssociatedGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#ListAssociatedGroupsRequest', name: 'ListAssociatedGroupsRequest')
    ListAssociatedGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#ListAssociatedGroupsResponse', name: 'ListAssociatedGroupsResponse')
    ListGroupResourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#ListGroupResourcesRequest', name: 'ListGroupResourcesRequest')
    ListGroupResourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#ListGroupResourcesResponse', name: 'ListGroupResourcesResponse')
    ListGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#ListGroupsRequest', name: 'ListGroupsRequest')
    ListGroupsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#ListGroupsResponse', name: 'ListGroupsResponse')
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    MaxCanaryResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.synthetics#MaxCanaryResults', name: 'MaxCanaryResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 20}})
    MaxFifteenMinutesInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.synthetics#MaxFifteenMinutesInSeconds', name: 'MaxFifteenMinutesInSeconds', traits: {"smithy.api#range" => {"min" => 3, "max" => 840}})
    MaxGroupResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.synthetics#MaxGroupResults', name: 'MaxGroupResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 20}})
    MaxOneYearInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.synthetics#MaxOneYearInSeconds', name: 'MaxOneYearInSeconds', traits: {"smithy.api#range" => {"min" => 0, "max" => 31622400}})
    MaxRetries = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.synthetics#MaxRetries', name: 'MaxRetries', traits: {"smithy.api#range" => {"min" => 0, "max" => 2}})
    MaxSize100 = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.synthetics#MaxSize100', name: 'MaxSize100', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxSize1024 = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.synthetics#MaxSize1024', name: 'MaxSize1024', traits: {"smithy.api#range" => {"min" => 1, "max" => 1024}})
    MaxSize3008 = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.synthetics#MaxSize3008', name: 'MaxSize3008', traits: {"smithy.api#range" => {"min" => 960, "max" => 3008}})
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#NotFoundException', name: 'NotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NullableBoolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.synthetics#NullableBoolean', name: 'NullableBoolean')
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^.+$"})
    ProvisionedResourceCleanupSetting = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.synthetics#ProvisionedResourceCleanupSetting', name: 'ProvisionedResourceCleanupSetting')
    RequestEntityTooLargeException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#RequestEntityTooLargeException', name: 'RequestEntityTooLargeException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 413})
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#ResourceArn', name: 'ResourceArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:synthetics:[a-z]{2,4}(-[a-z]{2,4})?-[a-z]+-\\d{1}:\\d{12}:(canary|group):[0-9a-z_\\-]+$"})
    ResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.synthetics#ResourceList', name: 'ResourceList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceToTag = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.synthetics#ResourceToTag', name: 'ResourceToTag')
    RetryAttempt = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.synthetics#RetryAttempt', name: 'RetryAttempt', traits: {"smithy.api#range" => {"min" => 1, "max" => 2}})
    RetryConfigInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#RetryConfigInput', name: 'RetryConfigInput')
    RetryConfigOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#RetryConfigOutput', name: 'RetryConfigOutput')
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#RoleArn', name: 'RoleArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"})
    RunType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.synthetics#RunType', name: 'RunType')
    RuntimeVersion = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#RuntimeVersion', name: 'RuntimeVersion')
    RuntimeVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.synthetics#RuntimeVersionList', name: 'RuntimeVersionList')
    S3EncryptionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#S3EncryptionConfig', name: 'S3EncryptionConfig')
    SecurityGroupId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#SecurityGroupId', name: 'SecurityGroupId')
    SecurityGroupIds = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.synthetics#SecurityGroupIds', name: 'SecurityGroupIds', traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    StartCanaryDryRunRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#StartCanaryDryRunRequest', name: 'StartCanaryDryRunRequest')
    StartCanaryDryRunResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#StartCanaryDryRunResponse', name: 'StartCanaryDryRunResponse')
    StartCanaryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#StartCanaryRequest', name: 'StartCanaryRequest')
    StartCanaryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#StartCanaryResponse', name: 'StartCanaryResponse')
    StopCanaryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#StopCanaryRequest', name: 'StopCanaryRequest')
    StopCanaryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#StopCanaryResponse', name: 'StopCanaryResponse')
    String = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#String', name: 'String', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.synthetics#StringList', name: 'StringList')
    SubnetId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#SubnetId', name: 'SubnetId')
    SubnetIds = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.synthetics#SubnetIds', name: 'SubnetIds', traits: {"smithy.api#length" => {"min" => 0, "max" => 16}})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.synthetics#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.synthetics#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.synthetics#Timestamp', name: 'Timestamp')
    Token = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#Token', name: 'Token', traits: {"smithy.api#length" => {"min" => 4, "max" => 252}})
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#TooManyRequestsException', name: 'TooManyRequestsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UUID = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#UUID', name: 'UUID', traits: {"smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateCanaryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#UpdateCanaryRequest', name: 'UpdateCanaryRequest')
    UpdateCanaryResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#UpdateCanaryResponse', name: 'UpdateCanaryResponse')
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VisualReferenceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#VisualReferenceInput', name: 'VisualReferenceInput')
    VisualReferenceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#VisualReferenceOutput', name: 'VisualReferenceOutput')
    VisualReferences = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.synthetics#VisualReferences', name: 'VisualReferences', traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    VisualReferencesOutput = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.synthetics#VisualReferencesOutput', name: 'VisualReferencesOutput', traits: {"smithy.api#length" => {"min" => 1, "max" => 2}})
    VpcConfigInput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#VpcConfigInput', name: 'VpcConfigInput')
    VpcConfigOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#VpcConfigOutput', name: 'VpcConfigOutput')
    VpcId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#VpcId', name: 'VpcId')
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.synthetics#boolean', name: 'Boolean', traits: {"smithy.api#default" => false})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    AccessDeniedException.type = Types::AccessDeniedException
    ArtifactConfigInput.add_member(:s3_encryption, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3EncryptionConfig, location_name: 'S3Encryption'))
    ArtifactConfigInput.type = Types::ArtifactConfigInput
    ArtifactConfigOutput.add_member(:s3_encryption, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3EncryptionConfig, location_name: 'S3Encryption'))
    ArtifactConfigOutput.type = Types::ArtifactConfigOutput
    AssociateResourceRequest.add_member(:group_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupIdentifier, location_name: 'GroupIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryArn, location_name: 'ResourceArn', traits: {"smithy.api#required" => {}}))
    AssociateResourceRequest.type = Types::AssociateResourceRequest
    AssociateResourceResponse.type = Types::AssociateResourceResponse
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    BadRequestException.type = Types::BadRequestException
    BaseScreenshot.add_member(:screenshot_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScreenshotName', traits: {"smithy.api#required" => {}}))
    BaseScreenshot.add_member(:ignore_coordinates, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseScreenshotIgnoreCoordinates, location_name: 'IgnoreCoordinates'))
    BaseScreenshot.type = Types::BaseScreenshot
    BaseScreenshotIgnoreCoordinates.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseScreenshotConfigIgnoreCoordinate)
    BaseScreenshots.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseScreenshot)
    BrowserConfig.add_member(:browser_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserType, location_name: 'BrowserType'))
    BrowserConfig.type = Types::BrowserConfig
    BrowserConfigs.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserConfig)
    BrowserType.add_member(:chrome, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CHROME', traits: {"smithy.api#enumValue" => "CHROME"}))
    BrowserType.add_member(:firefox, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIREFOX', traits: {"smithy.api#enumValue" => "FIREFOX"}))
    Canaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Canary)
    CanariesLastRun.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryLastRun)
    Canary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'Id'))
    Canary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryName, location_name: 'Name'))
    Canary.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryCodeOutput, location_name: 'Code'))
    Canary.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'ExecutionRoleArn'))
    Canary.add_member(:schedule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryScheduleOutput, location_name: 'Schedule'))
    Canary.add_member(:run_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryRunConfigOutput, location_name: 'RunConfig'))
    Canary.add_member(:success_retention_period_in_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize1024, location_name: 'SuccessRetentionPeriodInDays'))
    Canary.add_member(:failure_retention_period_in_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize1024, location_name: 'FailureRetentionPeriodInDays'))
    Canary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryStatus, location_name: 'Status'))
    Canary.add_member(:timeline, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryTimeline, location_name: 'Timeline'))
    Canary.add_member(:artifact_s3_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ArtifactS3Location'))
    Canary.add_member(:engine_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionArn, location_name: 'EngineArn'))
    Canary.add_member(:runtime_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RuntimeVersion'))
    Canary.add_member(:vpc_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfigOutput, location_name: 'VpcConfig'))
    Canary.add_member(:visual_reference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VisualReferenceOutput, location_name: 'VisualReference'))
    Canary.add_member(:provisioned_resource_cleanup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedResourceCleanupSetting, location_name: 'ProvisionedResourceCleanup'))
    Canary.add_member(:browser_configs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserConfigs, location_name: 'BrowserConfigs'))
    Canary.add_member(:engine_configs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineConfigs, location_name: 'EngineConfigs'))
    Canary.add_member(:visual_references, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VisualReferencesOutput, location_name: 'VisualReferences'))
    Canary.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags'))
    Canary.add_member(:artifact_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactConfigOutput, location_name: 'ArtifactConfig'))
    Canary.add_member(:dry_run_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DryRunConfigOutput, location_name: 'DryRunConfig'))
    Canary.type = Types::Canary
    CanaryCodeInput.add_member(:s3_bucket, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3Bucket'))
    CanaryCodeInput.add_member(:s3_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3Key'))
    CanaryCodeInput.add_member(:s3_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3Version'))
    CanaryCodeInput.add_member(:zip_file, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Blob, location_name: 'ZipFile'))
    CanaryCodeInput.add_member(:handler, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CodeHandler, location_name: 'Handler', traits: {"smithy.api#required" => {}}))
    CanaryCodeInput.add_member(:dependencies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Dependencies, location_name: 'Dependencies'))
    CanaryCodeInput.type = Types::CanaryCodeInput
    CanaryCodeOutput.add_member(:source_location_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceLocationArn'))
    CanaryCodeOutput.add_member(:handler, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Handler'))
    CanaryCodeOutput.add_member(:dependencies, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Dependencies, location_name: 'Dependencies'))
    CanaryCodeOutput.type = Types::CanaryCodeOutput
    CanaryDryRunConfigOutput.add_member(:dry_run_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'DryRunId'))
    CanaryDryRunConfigOutput.type = Types::CanaryDryRunConfigOutput
    CanaryLastRun.add_member(:canary_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryName, location_name: 'CanaryName'))
    CanaryLastRun.add_member(:last_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryRun, location_name: 'LastRun'))
    CanaryLastRun.type = Types::CanaryLastRun
    CanaryRun.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'Id'))
    CanaryRun.add_member(:scheduled_run_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'ScheduledRunId'))
    CanaryRun.add_member(:retry_attempt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetryAttempt, location_name: 'RetryAttempt'))
    CanaryRun.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryName, location_name: 'Name'))
    CanaryRun.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryRunStatus, location_name: 'Status'))
    CanaryRun.add_member(:timeline, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryRunTimeline, location_name: 'Timeline'))
    CanaryRun.add_member(:artifact_s3_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ArtifactS3Location'))
    CanaryRun.add_member(:dry_run_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryDryRunConfigOutput, location_name: 'DryRunConfig'))
    CanaryRun.add_member(:browser_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserType, location_name: 'BrowserType'))
    CanaryRun.type = Types::CanaryRun
    CanaryRunConfigInput.add_member(:timeout_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxFifteenMinutesInSeconds, location_name: 'TimeoutInSeconds'))
    CanaryRunConfigInput.add_member(:memory_in_mb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize3008, location_name: 'MemoryInMB'))
    CanaryRunConfigInput.add_member(:active_tracing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'ActiveTracing'))
    CanaryRunConfigInput.add_member(:environment_variables, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariablesMap, location_name: 'EnvironmentVariables'))
    CanaryRunConfigInput.add_member(:ephemeral_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EphemeralStorageSize, location_name: 'EphemeralStorage'))
    CanaryRunConfigInput.type = Types::CanaryRunConfigInput
    CanaryRunConfigOutput.add_member(:timeout_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxFifteenMinutesInSeconds, location_name: 'TimeoutInSeconds'))
    CanaryRunConfigOutput.add_member(:memory_in_mb, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize3008, location_name: 'MemoryInMB'))
    CanaryRunConfigOutput.add_member(:active_tracing, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'ActiveTracing'))
    CanaryRunConfigOutput.add_member(:ephemeral_storage, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EphemeralStorageSize, location_name: 'EphemeralStorage'))
    CanaryRunConfigOutput.type = Types::CanaryRunConfigOutput
    CanaryRunState.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    CanaryRunState.add_member(:passed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PASSED', traits: {"smithy.api#enumValue" => "PASSED"}))
    CanaryRunState.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    CanaryRunStateReasonCode.add_member(:canary_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANARY_FAILURE', traits: {"smithy.api#enumValue" => "CANARY_FAILURE"}))
    CanaryRunStateReasonCode.add_member(:execution_failure, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXECUTION_FAILURE', traits: {"smithy.api#enumValue" => "EXECUTION_FAILURE"}))
    CanaryRunStatus.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryRunState, location_name: 'State'))
    CanaryRunStatus.add_member(:state_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StateReason'))
    CanaryRunStatus.add_member(:state_reason_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryRunStateReasonCode, location_name: 'StateReasonCode'))
    CanaryRunStatus.add_member(:test_result, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryRunTestResult, location_name: 'TestResult'))
    CanaryRunStatus.type = Types::CanaryRunStatus
    CanaryRunTestResult.add_member(:passed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PASSED', traits: {"smithy.api#enumValue" => "PASSED"}))
    CanaryRunTestResult.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    CanaryRunTestResult.add_member(:unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    CanaryRunTimeline.add_member(:started, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Started'))
    CanaryRunTimeline.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Completed'))
    CanaryRunTimeline.add_member(:metric_timestamp_for_run_and_retries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'MetricTimestampForRunAndRetries'))
    CanaryRunTimeline.type = Types::CanaryRunTimeline
    CanaryRuns.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryRun)
    CanaryScheduleInput.add_member(:expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Expression', traits: {"smithy.api#required" => {}}))
    CanaryScheduleInput.add_member(:duration_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxOneYearInSeconds, location_name: 'DurationInSeconds'))
    CanaryScheduleInput.add_member(:retry_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetryConfigInput, location_name: 'RetryConfig'))
    CanaryScheduleInput.type = Types::CanaryScheduleInput
    CanaryScheduleOutput.add_member(:expression, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Expression'))
    CanaryScheduleOutput.add_member(:duration_in_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxOneYearInSeconds, location_name: 'DurationInSeconds'))
    CanaryScheduleOutput.add_member(:retry_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RetryConfigOutput, location_name: 'RetryConfig'))
    CanaryScheduleOutput.type = Types::CanaryScheduleOutput
    CanaryState.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    CanaryState.add_member(:ready, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READY', traits: {"smithy.api#enumValue" => "READY"}))
    CanaryState.add_member(:starting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTING', traits: {"smithy.api#enumValue" => "STARTING"}))
    CanaryState.add_member(:running, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    CanaryState.add_member(:updating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    CanaryState.add_member(:stopping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPING', traits: {"smithy.api#enumValue" => "STOPPING"}))
    CanaryState.add_member(:stopped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED', traits: {"smithy.api#enumValue" => "STOPPED"}))
    CanaryState.add_member(:error, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    CanaryState.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    CanaryStateReasonCode.add_member(:invalid_permissions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_PERMISSIONS', traits: {"smithy.api#enumValue" => "INVALID_PERMISSIONS"}))
    CanaryStateReasonCode.add_member(:create_pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_PENDING', traits: {"smithy.api#enumValue" => "CREATE_PENDING"}))
    CanaryStateReasonCode.add_member(:create_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    CanaryStateReasonCode.add_member(:create_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    CanaryStateReasonCode.add_member(:update_pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_PENDING', traits: {"smithy.api#enumValue" => "UPDATE_PENDING"}))
    CanaryStateReasonCode.add_member(:update_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "UPDATE_IN_PROGRESS"}))
    CanaryStateReasonCode.add_member(:update_complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_COMPLETE', traits: {"smithy.api#enumValue" => "UPDATE_COMPLETE"}))
    CanaryStateReasonCode.add_member(:rollback_complete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROLLBACK_COMPLETE', traits: {"smithy.api#enumValue" => "ROLLBACK_COMPLETE"}))
    CanaryStateReasonCode.add_member(:rollback_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROLLBACK_FAILED', traits: {"smithy.api#enumValue" => "ROLLBACK_FAILED"}))
    CanaryStateReasonCode.add_member(:delete_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    CanaryStateReasonCode.add_member(:delete_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_FAILED', traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    CanaryStateReasonCode.add_member(:sync_delete_in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYNC_DELETE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "SYNC_DELETE_IN_PROGRESS"}))
    CanaryStatus.add_member(:state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryState, location_name: 'State'))
    CanaryStatus.add_member(:state_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StateReason'))
    CanaryStatus.add_member(:state_reason_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryStateReasonCode, location_name: 'StateReasonCode'))
    CanaryStatus.type = Types::CanaryStatus
    CanaryTimeline.add_member(:created, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Created'))
    CanaryTimeline.add_member(:last_modified, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModified'))
    CanaryTimeline.add_member(:last_started, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastStarted'))
    CanaryTimeline.add_member(:last_stopped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastStopped'))
    CanaryTimeline.type = Types::CanaryTimeline
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ConflictException.type = Types::ConflictException
    CreateCanaryRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    CreateCanaryRequest.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryCodeInput, location_name: 'Code', traits: {"smithy.api#required" => {}}))
    CreateCanaryRequest.add_member(:artifact_s3_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ArtifactS3Location', traits: {"smithy.api#required" => {}}))
    CreateCanaryRequest.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'ExecutionRoleArn', traits: {"smithy.api#required" => {}}))
    CreateCanaryRequest.add_member(:schedule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryScheduleInput, location_name: 'Schedule', traits: {"smithy.api#required" => {}}))
    CreateCanaryRequest.add_member(:run_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryRunConfigInput, location_name: 'RunConfig'))
    CreateCanaryRequest.add_member(:success_retention_period_in_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize1024, location_name: 'SuccessRetentionPeriodInDays'))
    CreateCanaryRequest.add_member(:failure_retention_period_in_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize1024, location_name: 'FailureRetentionPeriodInDays'))
    CreateCanaryRequest.add_member(:runtime_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RuntimeVersion', traits: {"smithy.api#required" => {}}))
    CreateCanaryRequest.add_member(:vpc_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfigInput, location_name: 'VpcConfig'))
    CreateCanaryRequest.add_member(:resources_to_replicate_tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceList, location_name: 'ResourcesToReplicateTags'))
    CreateCanaryRequest.add_member(:provisioned_resource_cleanup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedResourceCleanupSetting, location_name: 'ProvisionedResourceCleanup'))
    CreateCanaryRequest.add_member(:browser_configs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserConfigs, location_name: 'BrowserConfigs'))
    CreateCanaryRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags'))
    CreateCanaryRequest.add_member(:artifact_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactConfigInput, location_name: 'ArtifactConfig'))
    CreateCanaryRequest.type = Types::CreateCanaryRequest
    CreateCanaryResponse.add_member(:canary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Canary, location_name: 'Canary'))
    CreateCanaryResponse.type = Types::CreateCanaryResponse
    CreateGroupRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'Name', traits: {"smithy.api#required" => {}}))
    CreateGroupRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags'))
    CreateGroupRequest.type = Types::CreateGroupRequest
    CreateGroupResponse.add_member(:group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Group, location_name: 'Group'))
    CreateGroupResponse.type = Types::CreateGroupResponse
    DeleteCanaryRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryName, location_name: 'Name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCanaryRequest.add_member(:delete_lambda, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DeleteLambda', traits: {"smithy.api#default" => false, "smithy.api#httpQuery" => "deleteLambda"}))
    DeleteCanaryRequest.type = Types::DeleteCanaryRequest
    DeleteCanaryResponse.type = Types::DeleteCanaryResponse
    DeleteGroupRequest.add_member(:group_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupIdentifier, location_name: 'GroupIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteGroupRequest.type = Types::DeleteGroupRequest
    DeleteGroupResponse.type = Types::DeleteGroupResponse
    Dependencies.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Dependency)
    Dependency.add_member(:type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyType, location_name: 'Type'))
    Dependency.add_member(:reference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Reference', traits: {"smithy.api#required" => {}}))
    Dependency.type = Types::Dependency
    DependencyType.add_member(:lambda_layer, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LambdaLayer', traits: {"smithy.api#enumValue" => "LambdaLayer"}))
    DescribeCanariesLastRunNameFilter.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryName)
    DescribeCanariesLastRunRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    DescribeCanariesLastRunRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize100, location_name: 'MaxResults'))
    DescribeCanariesLastRunRequest.add_member(:names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCanariesLastRunNameFilter, location_name: 'Names'))
    DescribeCanariesLastRunRequest.add_member(:browser_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserType, location_name: 'BrowserType'))
    DescribeCanariesLastRunRequest.type = Types::DescribeCanariesLastRunRequest
    DescribeCanariesLastRunResponse.add_member(:canaries_last_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanariesLastRun, location_name: 'CanariesLastRun'))
    DescribeCanariesLastRunResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    DescribeCanariesLastRunResponse.type = Types::DescribeCanariesLastRunResponse
    DescribeCanariesNameFilter.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryName)
    DescribeCanariesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    DescribeCanariesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxCanaryResults, location_name: 'MaxResults'))
    DescribeCanariesRequest.add_member(:names, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCanariesNameFilter, location_name: 'Names'))
    DescribeCanariesRequest.type = Types::DescribeCanariesRequest
    DescribeCanariesResponse.add_member(:canaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Canaries, location_name: 'Canaries'))
    DescribeCanariesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    DescribeCanariesResponse.type = Types::DescribeCanariesResponse
    DescribeRuntimeVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    DescribeRuntimeVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize100, location_name: 'MaxResults'))
    DescribeRuntimeVersionsRequest.type = Types::DescribeRuntimeVersionsRequest
    DescribeRuntimeVersionsResponse.add_member(:runtime_versions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuntimeVersionList, location_name: 'RuntimeVersions'))
    DescribeRuntimeVersionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    DescribeRuntimeVersionsResponse.type = Types::DescribeRuntimeVersionsResponse
    DisassociateResourceRequest.add_member(:group_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupIdentifier, location_name: 'GroupIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryArn, location_name: 'ResourceArn', traits: {"smithy.api#required" => {}}))
    DisassociateResourceRequest.type = Types::DisassociateResourceRequest
    DisassociateResourceResponse.type = Types::DisassociateResourceResponse
    DryRunConfigOutput.add_member(:dry_run_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'DryRunId'))
    DryRunConfigOutput.add_member(:last_dry_run_execution_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastDryRunExecutionStatus'))
    DryRunConfigOutput.type = Types::DryRunConfigOutput
    EncryptionMode.add_member(:sse_s3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SSE_S3', traits: {"smithy.api#enumValue" => "SSE_S3"}))
    EncryptionMode.add_member(:sse_kms, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SSE_KMS', traits: {"smithy.api#enumValue" => "SSE_KMS"}))
    EngineConfig.add_member(:engine_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionArn, location_name: 'EngineArn'))
    EngineConfig.add_member(:browser_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserType, location_name: 'BrowserType'))
    EngineConfig.type = Types::EngineConfig
    EngineConfigs.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EngineConfig)
    EnvironmentVariablesMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariableName)
    EnvironmentVariablesMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariableValue)
    GetCanaryRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryName, location_name: 'Name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCanaryRequest.add_member(:dry_run_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'DryRunId', traits: {"smithy.api#httpQuery" => "dryRunId"}))
    GetCanaryRequest.type = Types::GetCanaryRequest
    GetCanaryResponse.add_member(:canary, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Canary, location_name: 'Canary'))
    GetCanaryResponse.type = Types::GetCanaryResponse
    GetCanaryRunsRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryName, location_name: 'Name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCanaryRunsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    GetCanaryRunsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize100, location_name: 'MaxResults'))
    GetCanaryRunsRequest.add_member(:dry_run_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'DryRunId'))
    GetCanaryRunsRequest.add_member(:run_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RunType, location_name: 'RunType'))
    GetCanaryRunsRequest.type = Types::GetCanaryRunsRequest
    GetCanaryRunsResponse.add_member(:canary_runs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryRuns, location_name: 'CanaryRuns'))
    GetCanaryRunsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    GetCanaryRunsResponse.type = Types::GetCanaryRunsResponse
    GetGroupRequest.add_member(:group_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupIdentifier, location_name: 'GroupIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGroupRequest.type = Types::GetGroupRequest
    GetGroupResponse.add_member(:group, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Group, location_name: 'Group'))
    GetGroupResponse.type = Types::GetGroupResponse
    Group.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id'))
    Group.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'Name'))
    Group.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupArn, location_name: 'Arn'))
    Group.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags'))
    Group.add_member(:created_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTime'))
    Group.add_member(:last_modified_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime'))
    Group.type = Types::Group
    GroupSummary.add_member(:id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id'))
    GroupSummary.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'Name'))
    GroupSummary.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupArn, location_name: 'Arn'))
    GroupSummary.type = Types::GroupSummary
    GroupSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupSummary)
    InternalFailureException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InternalFailureException.type = Types::InternalFailureException
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InternalServerException.type = Types::InternalServerException
    ListAssociatedGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListAssociatedGroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxGroupResults, location_name: 'MaxResults'))
    ListAssociatedGroupsRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryArn, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAssociatedGroupsRequest.type = Types::ListAssociatedGroupsRequest
    ListAssociatedGroupsResponse.add_member(:groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupSummaryList, location_name: 'Groups'))
    ListAssociatedGroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListAssociatedGroupsResponse.type = Types::ListAssociatedGroupsResponse
    ListGroupResourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListGroupResourcesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxGroupResults, location_name: 'MaxResults'))
    ListGroupResourcesRequest.add_member(:group_identifier, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupIdentifier, location_name: 'GroupIdentifier', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListGroupResourcesRequest.type = Types::ListGroupResourcesRequest
    ListGroupResourcesResponse.add_member(:resources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'Resources'))
    ListGroupResourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListGroupResourcesResponse.type = Types::ListGroupResourcesResponse
    ListGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken'))
    ListGroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxGroupResults, location_name: 'MaxResults'))
    ListGroupsRequest.type = Types::ListGroupsRequest
    ListGroupsResponse.add_member(:groups, ::Smithy::Schema::Shapes::ShapeRef.new(shape: GroupSummaryList, location_name: 'Groups'))
    ListGroupsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken'))
    ListGroupsResponse.type = Types::ListGroupsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags'))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    NotFoundException.type = Types::NotFoundException
    ProvisionedResourceCleanupSetting.add_member(:automatic, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTOMATIC', traits: {"smithy.api#enumValue" => "AUTOMATIC"}))
    ProvisionedResourceCleanupSetting.add_member(:off, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OFF', traits: {"smithy.api#enumValue" => "OFF"}))
    RequestEntityTooLargeException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    RequestEntityTooLargeException.type = Types::RequestEntityTooLargeException
    ResourceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceToTag)
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceToTag.add_member(:lambda_function, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAMBDA_FUNCTION', traits: {"smithy.api#enumValue" => "lambda-function"}))
    RetryConfigInput.add_member(:max_retries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxRetries, location_name: 'MaxRetries', traits: {"smithy.api#required" => {}}))
    RetryConfigInput.type = Types::RetryConfigInput
    RetryConfigOutput.add_member(:max_retries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxRetries, location_name: 'MaxRetries'))
    RetryConfigOutput.type = Types::RetryConfigOutput
    RunType.add_member(:canary_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANARY_RUN', traits: {"smithy.api#enumValue" => "CANARY_RUN"}))
    RunType.add_member(:dry_run, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DRY_RUN', traits: {"smithy.api#enumValue" => "DRY_RUN"}))
    RuntimeVersion.add_member(:version_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VersionName'))
    RuntimeVersion.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description'))
    RuntimeVersion.add_member(:release_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ReleaseDate'))
    RuntimeVersion.add_member(:deprecation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DeprecationDate'))
    RuntimeVersion.type = Types::RuntimeVersion
    RuntimeVersionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RuntimeVersion)
    S3EncryptionConfig.add_member(:encryption_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionMode, location_name: 'EncryptionMode'))
    S3EncryptionConfig.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'KmsKeyArn'))
    S3EncryptionConfig.type = Types::S3EncryptionConfig
    SecurityGroupIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupId)
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    StartCanaryDryRunRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryName, location_name: 'Name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartCanaryDryRunRequest.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryCodeInput, location_name: 'Code'))
    StartCanaryDryRunRequest.add_member(:runtime_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RuntimeVersion'))
    StartCanaryDryRunRequest.add_member(:run_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryRunConfigInput, location_name: 'RunConfig'))
    StartCanaryDryRunRequest.add_member(:vpc_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfigInput, location_name: 'VpcConfig'))
    StartCanaryDryRunRequest.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'ExecutionRoleArn'))
    StartCanaryDryRunRequest.add_member(:success_retention_period_in_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize1024, location_name: 'SuccessRetentionPeriodInDays'))
    StartCanaryDryRunRequest.add_member(:failure_retention_period_in_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize1024, location_name: 'FailureRetentionPeriodInDays'))
    StartCanaryDryRunRequest.add_member(:visual_reference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VisualReferenceInput, location_name: 'VisualReference'))
    StartCanaryDryRunRequest.add_member(:artifact_s3_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ArtifactS3Location'))
    StartCanaryDryRunRequest.add_member(:artifact_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactConfigInput, location_name: 'ArtifactConfig'))
    StartCanaryDryRunRequest.add_member(:provisioned_resource_cleanup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedResourceCleanupSetting, location_name: 'ProvisionedResourceCleanup'))
    StartCanaryDryRunRequest.add_member(:browser_configs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserConfigs, location_name: 'BrowserConfigs'))
    StartCanaryDryRunRequest.add_member(:visual_references, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VisualReferences, location_name: 'VisualReferences'))
    StartCanaryDryRunRequest.type = Types::StartCanaryDryRunRequest
    StartCanaryDryRunResponse.add_member(:dry_run_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DryRunConfigOutput, location_name: 'DryRunConfig'))
    StartCanaryDryRunResponse.type = Types::StartCanaryDryRunResponse
    StartCanaryRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryName, location_name: 'Name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartCanaryRequest.type = Types::StartCanaryRequest
    StartCanaryResponse.type = Types::StartCanaryResponse
    StopCanaryRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryName, location_name: 'Name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopCanaryRequest.type = Types::StopCanaryRequest
    StopCanaryResponse.type = Types::StopCanaryResponse
    StringList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    SubnetIds.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId)
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    TooManyRequestsException.type = Types::TooManyRequestsException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateCanaryRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryName, location_name: 'Name', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCanaryRequest.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryCodeInput, location_name: 'Code'))
    UpdateCanaryRequest.add_member(:execution_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'ExecutionRoleArn'))
    UpdateCanaryRequest.add_member(:runtime_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RuntimeVersion'))
    UpdateCanaryRequest.add_member(:schedule, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryScheduleInput, location_name: 'Schedule'))
    UpdateCanaryRequest.add_member(:run_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryRunConfigInput, location_name: 'RunConfig'))
    UpdateCanaryRequest.add_member(:success_retention_period_in_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize1024, location_name: 'SuccessRetentionPeriodInDays'))
    UpdateCanaryRequest.add_member(:failure_retention_period_in_days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize1024, location_name: 'FailureRetentionPeriodInDays'))
    UpdateCanaryRequest.add_member(:vpc_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfigInput, location_name: 'VpcConfig'))
    UpdateCanaryRequest.add_member(:visual_reference, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VisualReferenceInput, location_name: 'VisualReference'))
    UpdateCanaryRequest.add_member(:artifact_s3_location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ArtifactS3Location'))
    UpdateCanaryRequest.add_member(:artifact_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactConfigInput, location_name: 'ArtifactConfig'))
    UpdateCanaryRequest.add_member(:provisioned_resource_cleanup, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedResourceCleanupSetting, location_name: 'ProvisionedResourceCleanup'))
    UpdateCanaryRequest.add_member(:dry_run_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'DryRunId'))
    UpdateCanaryRequest.add_member(:visual_references, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VisualReferences, location_name: 'VisualReferences'))
    UpdateCanaryRequest.add_member(:browser_configs, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserConfigs, location_name: 'BrowserConfigs'))
    UpdateCanaryRequest.type = Types::UpdateCanaryRequest
    UpdateCanaryResponse.type = Types::UpdateCanaryResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ValidationException.type = Types::ValidationException
    VisualReferenceInput.add_member(:base_screenshots, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseScreenshots, location_name: 'BaseScreenshots'))
    VisualReferenceInput.add_member(:base_canary_run_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BaseCanaryRunId', traits: {"smithy.api#required" => {}}))
    VisualReferenceInput.add_member(:browser_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserType, location_name: 'BrowserType'))
    VisualReferenceInput.type = Types::VisualReferenceInput
    VisualReferenceOutput.add_member(:base_screenshots, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BaseScreenshots, location_name: 'BaseScreenshots'))
    VisualReferenceOutput.add_member(:base_canary_run_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BaseCanaryRunId'))
    VisualReferenceOutput.add_member(:browser_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: BrowserType, location_name: 'BrowserType'))
    VisualReferenceOutput.type = Types::VisualReferenceOutput
    VisualReferences.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VisualReferenceInput)
    VisualReferencesOutput.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: VisualReferenceOutput)
    VpcConfigInput.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIds, location_name: 'SubnetIds'))
    VpcConfigInput.add_member(:security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: 'SecurityGroupIds'))
    VpcConfigInput.add_member(:ipv6_allowed_for_dual_stack, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'Ipv6AllowedForDualStack'))
    VpcConfigInput.type = Types::VpcConfigInput
    VpcConfigOutput.add_member(:vpc_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'VpcId'))
    VpcConfigOutput.add_member(:subnet_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIds, location_name: 'SubnetIds'))
    VpcConfigOutput.add_member(:security_group_ids, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: 'SecurityGroupIds'))
    VpcConfigOutput.add_member(:ipv6_allowed_for_dual_stack, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'Ipv6AllowedForDualStack'))
    VpcConfigOutput.type = Types::VpcConfigOutput

    Synthetics = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.synthetics#Synthetics"
      service.name = "Synthetics"
      service.version = "2017-10-11"
      service.traits = {"aws.api#service" => {"sdkId" => "synthetics", "arnNamespace" => "synthetics", "cloudFormationName" => "Synthetics", "cloudTrailEventSource" => "synthetics.amazonaws.com", "endpointPrefix" => "synthetics"}, "aws.auth#sigv4" => {"name" => "synthetics"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Synthetics"}
      service.add_operation(:associate_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.synthetics#AssociateResource"
        operation.name = "AssociateResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/group/{GroupIdentifier}/associate", "code" => 200}}
      end)
      service.add_operation(:create_canary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.synthetics#CreateCanary"
        operation.name = "CreateCanary"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCanaryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCanaryResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestEntityTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/canary", "code" => 200}}
      end)
      service.add_operation(:create_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.synthetics#CreateGroup"
        operation.name = "CreateGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/group", "code" => 200}}
      end)
      service.add_operation(:delete_canary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.synthetics#DeleteCanary"
        operation.name = "DeleteCanary"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCanaryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCanaryResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/canary/{Name}", "code" => 200}}
      end)
      service.add_operation(:delete_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.synthetics#DeleteGroup"
        operation.name = "DeleteGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/group/{GroupIdentifier}", "code" => 200}}
      end)
      service.add_operation(:describe_canaries, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.synthetics#DescribeCanaries"
        operation.name = "DescribeCanaries"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCanariesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCanariesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/canaries", "code" => 200}}
        operation[:paginator] = Paginators::DescribeCanaries.new
      end)
      service.add_operation(:describe_canaries_last_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.synthetics#DescribeCanariesLastRun"
        operation.name = "DescribeCanariesLastRun"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCanariesLastRunRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCanariesLastRunResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/canaries/last-run", "code" => 200}}
        operation[:paginator] = Paginators::DescribeCanariesLastRun.new
      end)
      service.add_operation(:describe_runtime_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.synthetics#DescribeRuntimeVersions"
        operation.name = "DescribeRuntimeVersions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRuntimeVersionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRuntimeVersionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/runtime-versions", "code" => 200}}
        operation[:paginator] = Paginators::DescribeRuntimeVersions.new
      end)
      service.add_operation(:disassociate_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.synthetics#DisassociateResource"
        operation.name = "DisassociateResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/group/{GroupIdentifier}/disassociate", "code" => 200}}
      end)
      service.add_operation(:get_canary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.synthetics#GetCanary"
        operation.name = "GetCanary"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCanaryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCanaryResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/canary/{Name}", "code" => 200}}
      end)
      service.add_operation(:get_canary_runs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.synthetics#GetCanaryRuns"
        operation.name = "GetCanaryRuns"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCanaryRunsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetCanaryRunsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/canary/{Name}/runs", "code" => 200}}
        operation[:paginator] = Paginators::GetCanaryRuns.new
      end)
      service.add_operation(:get_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.synthetics#GetGroup"
        operation.name = "GetGroup"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetGroupRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetGroupResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/group/{GroupIdentifier}", "code" => 200}}
      end)
      service.add_operation(:list_associated_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.synthetics#ListAssociatedGroups"
        operation.name = "ListAssociatedGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssociatedGroupsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssociatedGroupsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/resource/{ResourceArn}/groups", "code" => 200}}
        operation[:paginator] = Paginators::ListAssociatedGroups.new
      end)
      service.add_operation(:list_group_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.synthetics#ListGroupResources"
        operation.name = "ListGroupResources"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupResourcesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupResourcesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/group/{GroupIdentifier}/resources", "code" => 200}}
        operation[:paginator] = Paginators::ListGroupResources.new
      end)
      service.add_operation(:list_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.synthetics#ListGroups"
        operation.name = "ListGroups"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/groups", "code" => 200}}
        operation[:paginator] = Paginators::ListGroups.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.synthetics#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:start_canary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.synthetics#StartCanary"
        operation.name = "StartCanary"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartCanaryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartCanaryResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/canary/{Name}/start", "code" => 200}}
      end)
      service.add_operation(:start_canary_dry_run, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.synthetics#StartCanaryDryRun"
        operation.name = "StartCanaryDryRun"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartCanaryDryRunRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartCanaryDryRunResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/canary/{Name}/dry-run/start", "code" => 200}}
      end)
      service.add_operation(:stop_canary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.synthetics#StopCanary"
        operation.name = "StopCanary"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopCanaryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopCanaryResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/canary/{Name}/stop", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.synthetics#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.synthetics#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_canary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.synthetics#UpdateCanary"
        operation.name = "UpdateCanary"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCanaryRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCanaryResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestEntityTooLargeException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/canary/{Name}", "code" => 200}}
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
