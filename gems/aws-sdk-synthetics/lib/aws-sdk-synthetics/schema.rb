# frozen_string_literal: true

# This is generated code!

module Aws::Synthetics
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ArtifactConfigInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#ArtifactConfigInput', name: 'ArtifactConfigInput')
    ArtifactConfigOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#ArtifactConfigOutput', name: 'ArtifactConfigOutput')
    AssociateResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#AssociateResourceRequest', name: 'AssociateResourceRequest')
    AssociateResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#AssociateResourceResponse', name: 'AssociateResourceResponse')
    BadRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#BadRequestException', name: 'BadRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    BaseScreenshot = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#BaseScreenshot', name: 'BaseScreenshot')
    BaseScreenshotConfigIgnoreCoordinate = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#BaseScreenshotConfigIgnoreCoordinate', name: 'BaseScreenshotConfigIgnoreCoordinate', traits: {"smithy.api#pattern" => "^(-?\\d{1,5}\\.?\\d{0,2},){3}(-?\\d{1,5}\\.?\\d{0,2}){1}$"})
    BaseScreenshotIgnoreCoordinates = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.synthetics#BaseScreenshotIgnoreCoordinates', name: 'BaseScreenshotIgnoreCoordinates', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    BaseScreenshots = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.synthetics#BaseScreenshots', name: 'BaseScreenshots')
    Blob = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.synthetics#Blob', name: 'Blob', traits: {"smithy.api#length" => {"min" => 1, "max" => 10000000}})
    Canaries = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.synthetics#Canaries', name: 'Canaries')
    CanariesLastRun = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.synthetics#CanariesLastRun', name: 'CanariesLastRun')
    Canary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#Canary', name: 'Canary')
    CanaryArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#CanaryArn', name: 'CanaryArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:synthetics:[a-z]{2,4}(-[a-z]{2,4})?-[a-z]+-\\d{1}:\\d{12}:canary:[0-9a-z_\\-]{1,255}$"})
    CanaryCodeInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#CanaryCodeInput', name: 'CanaryCodeInput')
    CanaryCodeOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#CanaryCodeOutput', name: 'CanaryCodeOutput')
    CanaryDryRunConfigOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#CanaryDryRunConfigOutput', name: 'CanaryDryRunConfigOutput')
    CanaryLastRun = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#CanaryLastRun', name: 'CanaryLastRun')
    CanaryName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#CanaryName', name: 'CanaryName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[0-9a-z_\\-]+$"})
    CanaryRun = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#CanaryRun', name: 'CanaryRun')
    CanaryRunConfigInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#CanaryRunConfigInput', name: 'CanaryRunConfigInput')
    CanaryRunConfigOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#CanaryRunConfigOutput', name: 'CanaryRunConfigOutput')
    CanaryRunState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.synthetics#CanaryRunState', name: 'CanaryRunState')
    CanaryRunStateReasonCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.synthetics#CanaryRunStateReasonCode', name: 'CanaryRunStateReasonCode')
    CanaryRunStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#CanaryRunStatus', name: 'CanaryRunStatus')
    CanaryRunTestResult = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.synthetics#CanaryRunTestResult', name: 'CanaryRunTestResult')
    CanaryRunTimeline = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#CanaryRunTimeline', name: 'CanaryRunTimeline')
    CanaryRuns = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.synthetics#CanaryRuns', name: 'CanaryRuns')
    CanaryScheduleInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#CanaryScheduleInput', name: 'CanaryScheduleInput')
    CanaryScheduleOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#CanaryScheduleOutput', name: 'CanaryScheduleOutput')
    CanaryState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.synthetics#CanaryState', name: 'CanaryState')
    CanaryStateReasonCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.synthetics#CanaryStateReasonCode', name: 'CanaryStateReasonCode')
    CanaryStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#CanaryStatus', name: 'CanaryStatus')
    CanaryTimeline = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#CanaryTimeline', name: 'CanaryTimeline')
    CodeHandler = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#CodeHandler', name: 'CodeHandler', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([0-9a-zA-Z_-]+(\\/|\\.))*[0-9A-Za-z_\\\\-]+(\\.|::)[A-Za-z_][A-Za-z0-9_]*$"})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateCanaryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#CreateCanaryRequest', name: 'CreateCanaryRequest')
    CreateCanaryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#CreateCanaryResponse', name: 'CreateCanaryResponse')
    CreateGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#CreateGroupRequest', name: 'CreateGroupRequest')
    CreateGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#CreateGroupResponse', name: 'CreateGroupResponse')
    DeleteCanaryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#DeleteCanaryRequest', name: 'DeleteCanaryRequest')
    DeleteCanaryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#DeleteCanaryResponse', name: 'DeleteCanaryResponse')
    DeleteGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#DeleteGroupRequest', name: 'DeleteGroupRequest')
    DeleteGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#DeleteGroupResponse', name: 'DeleteGroupResponse')
    Dependencies = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.synthetics#Dependencies', name: 'Dependencies', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    Dependency = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#Dependency', name: 'Dependency')
    DependencyType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.synthetics#DependencyType', name: 'DependencyType')
    DescribeCanariesLastRunNameFilter = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.synthetics#DescribeCanariesLastRunNameFilter', name: 'DescribeCanariesLastRunNameFilter', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    DescribeCanariesLastRunRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#DescribeCanariesLastRunRequest', name: 'DescribeCanariesLastRunRequest')
    DescribeCanariesLastRunResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#DescribeCanariesLastRunResponse', name: 'DescribeCanariesLastRunResponse')
    DescribeCanariesNameFilter = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.synthetics#DescribeCanariesNameFilter', name: 'DescribeCanariesNameFilter', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    DescribeCanariesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#DescribeCanariesRequest', name: 'DescribeCanariesRequest')
    DescribeCanariesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#DescribeCanariesResponse', name: 'DescribeCanariesResponse')
    DescribeRuntimeVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#DescribeRuntimeVersionsRequest', name: 'DescribeRuntimeVersionsRequest')
    DescribeRuntimeVersionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#DescribeRuntimeVersionsResponse', name: 'DescribeRuntimeVersionsResponse')
    DisassociateResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#DisassociateResourceRequest', name: 'DisassociateResourceRequest')
    DisassociateResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#DisassociateResourceResponse', name: 'DisassociateResourceResponse')
    DryRunConfigOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#DryRunConfigOutput', name: 'DryRunConfigOutput')
    EncryptionMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.synthetics#EncryptionMode', name: 'EncryptionMode')
    EnvironmentVariableName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#EnvironmentVariableName', name: 'EnvironmentVariableName', traits: {"smithy.api#pattern" => "^[a-zA-Z]([a-zA-Z0-9_])+$"})
    EnvironmentVariableValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#EnvironmentVariableValue', name: 'EnvironmentVariableValue')
    EnvironmentVariablesMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.synthetics#EnvironmentVariablesMap', name: 'EnvironmentVariablesMap')
    EphemeralStorageSize = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.synthetics#EphemeralStorageSize', name: 'EphemeralStorageSize', traits: {"smithy.api#range" => {"min" => 1024, "max" => 5120}})
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#ErrorMessage', name: 'ErrorMessage')
    FunctionArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#FunctionArn', name: 'FunctionArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:lambda:[a-z]{2,4}(-[a-z]{2,4})?-[a-z]+-\\d{1}:\\d{12}:function:[a-zA-Z0-9-_]+(:(\\$LATEST|[a-zA-Z0-9-_]+))?$"})
    GetCanaryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#GetCanaryRequest', name: 'GetCanaryRequest')
    GetCanaryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#GetCanaryResponse', name: 'GetCanaryResponse')
    GetCanaryRunsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#GetCanaryRunsRequest', name: 'GetCanaryRunsRequest')
    GetCanaryRunsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#GetCanaryRunsResponse', name: 'GetCanaryRunsResponse')
    GetGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#GetGroupRequest', name: 'GetGroupRequest')
    GetGroupResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#GetGroupResponse', name: 'GetGroupResponse')
    Group = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#Group', name: 'Group')
    GroupArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#GroupArn', name: 'GroupArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:synthetics:[a-z]{2,4}(-[a-z]{2,4})?-[a-z]+-\\d{1}:\\d{12}:group:[0-9a-z]+$"})
    GroupIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#GroupIdentifier', name: 'GroupIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    GroupName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#GroupName', name: 'GroupName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    GroupSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#GroupSummary', name: 'GroupSummary')
    GroupSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.synthetics#GroupSummaryList', name: 'GroupSummaryList')
    InternalFailureException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#InternalFailureException', name: 'InternalFailureException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    KmsKeyArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#KmsKeyArn', name: 'KmsKeyArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:kms:[a-z]{2,4}(-[a-z]{2,4})?-[a-z]+-\\d{1}:\\d{12}:key/[\\w\\-\\/]+$"})
    ListAssociatedGroupsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#ListAssociatedGroupsRequest', name: 'ListAssociatedGroupsRequest')
    ListAssociatedGroupsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#ListAssociatedGroupsResponse', name: 'ListAssociatedGroupsResponse')
    ListGroupResourcesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#ListGroupResourcesRequest', name: 'ListGroupResourcesRequest')
    ListGroupResourcesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#ListGroupResourcesResponse', name: 'ListGroupResourcesResponse')
    ListGroupsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#ListGroupsRequest', name: 'ListGroupsRequest')
    ListGroupsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#ListGroupsResponse', name: 'ListGroupsResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    MaxCanaryResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.synthetics#MaxCanaryResults', name: 'MaxCanaryResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 20}})
    MaxFifteenMinutesInSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.synthetics#MaxFifteenMinutesInSeconds', name: 'MaxFifteenMinutesInSeconds', traits: {"smithy.api#range" => {"min" => 3, "max" => 840}})
    MaxGroupResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.synthetics#MaxGroupResults', name: 'MaxGroupResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 20}})
    MaxOneYearInSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.synthetics#MaxOneYearInSeconds', name: 'MaxOneYearInSeconds', traits: {"smithy.api#range" => {"min" => 0, "max" => 31622400}})
    MaxRetries = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.synthetics#MaxRetries', name: 'MaxRetries', traits: {"smithy.api#range" => {"min" => 0, "max" => 2}})
    MaxSize100 = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.synthetics#MaxSize100', name: 'MaxSize100', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    MaxSize1024 = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.synthetics#MaxSize1024', name: 'MaxSize1024', traits: {"smithy.api#range" => {"min" => 1, "max" => 1024}})
    MaxSize3008 = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.synthetics#MaxSize3008', name: 'MaxSize3008', traits: {"smithy.api#range" => {"min" => 960, "max" => 3008}})
    NotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#NotFoundException', name: 'NotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    NullableBoolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.synthetics#NullableBoolean', name: 'NullableBoolean')
    PaginationToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^.+$"})
    ProvisionedResourceCleanupSetting = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.synthetics#ProvisionedResourceCleanupSetting', name: 'ProvisionedResourceCleanupSetting')
    RequestEntityTooLargeException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#RequestEntityTooLargeException', name: 'RequestEntityTooLargeException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 413})
    ResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#ResourceArn', name: 'ResourceArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:synthetics:[a-z]{2,4}(-[a-z]{2,4})?-[a-z]+-\\d{1}:\\d{12}:(canary|group):[0-9a-z_\\-]+$"})
    ResourceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.synthetics#ResourceList', name: 'ResourceList', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceToTag = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.synthetics#ResourceToTag', name: 'ResourceToTag')
    RetryAttempt = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.synthetics#RetryAttempt', name: 'RetryAttempt', traits: {"smithy.api#range" => {"min" => 1, "max" => 2}})
    RetryConfigInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#RetryConfigInput', name: 'RetryConfigInput')
    RetryConfigOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#RetryConfigOutput', name: 'RetryConfigOutput')
    RoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#RoleArn', name: 'RoleArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"})
    RunType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.synthetics#RunType', name: 'RunType')
    RuntimeVersion = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#RuntimeVersion', name: 'RuntimeVersion')
    RuntimeVersionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.synthetics#RuntimeVersionList', name: 'RuntimeVersionList')
    S3EncryptionConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#S3EncryptionConfig', name: 'S3EncryptionConfig')
    SecurityGroupId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#SecurityGroupId', name: 'SecurityGroupId')
    SecurityGroupIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.synthetics#SecurityGroupIds', name: 'SecurityGroupIds', traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    StartCanaryDryRunRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#StartCanaryDryRunRequest', name: 'StartCanaryDryRunRequest')
    StartCanaryDryRunResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#StartCanaryDryRunResponse', name: 'StartCanaryDryRunResponse')
    StartCanaryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#StartCanaryRequest', name: 'StartCanaryRequest')
    StartCanaryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#StartCanaryResponse', name: 'StartCanaryResponse')
    StopCanaryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#StopCanaryRequest', name: 'StopCanaryRequest')
    StopCanaryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#StopCanaryResponse', name: 'StopCanaryResponse')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#String', name: 'String', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    StringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.synthetics#StringList', name: 'StringList')
    SubnetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#SubnetId', name: 'SubnetId')
    SubnetIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.synthetics#SubnetIds', name: 'SubnetIds', traits: {"smithy.api#length" => {"min" => 0, "max" => 16}})
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[a-zA-Z+-=._:/]+$"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.synthetics#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.synthetics#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.synthetics#Timestamp', name: 'Timestamp')
    Token = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#Token', name: 'Token', traits: {"smithy.api#length" => {"min" => 4, "max" => 252}})
    TooManyRequestsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#TooManyRequestsException', name: 'TooManyRequestsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UUID = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#UUID', name: 'UUID', traits: {"smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateCanaryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#UpdateCanaryRequest', name: 'UpdateCanaryRequest')
    UpdateCanaryResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#UpdateCanaryResponse', name: 'UpdateCanaryResponse')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VisualReferenceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#VisualReferenceInput', name: 'VisualReferenceInput')
    VisualReferenceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#VisualReferenceOutput', name: 'VisualReferenceOutput')
    VpcConfigInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#VpcConfigInput', name: 'VpcConfigInput')
    VpcConfigOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.synthetics#VpcConfigOutput', name: 'VpcConfigOutput')
    VpcId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.synthetics#VpcId', name: 'VpcId')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.synthetics#boolean', name: 'Boolean', traits: {"smithy.api#default" => false})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    AccessDeniedException.type = Types::AccessDeniedException
    ArtifactConfigInput.add_member(:s3_encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: S3EncryptionConfig, location_name: 'S3Encryption', traits: {"smithy.api#documentation" => "<p>A structure that contains the configuration of the encryption-at-rest settings for artifacts that the canary uploads\n         to Amazon S3. \n         Artifact encryption functionality is available only for canaries that use Synthetics runtime version \n         syn-nodejs-puppeteer-3.3 or later. For more information, see\n         <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_artifact_encryption.html\">Encrypting canary artifacts</a>\n         </p>"}))
    ArtifactConfigInput.type = Types::ArtifactConfigInput
    ArtifactConfigOutput.add_member(:s3_encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: S3EncryptionConfig, location_name: 'S3Encryption', traits: {"smithy.api#documentation" => "<p>A structure that contains the configuration of encryption settings for canary artifacts that are stored in Amazon S3. </p>"}))
    ArtifactConfigOutput.type = Types::ArtifactConfigOutput
    AssociateResourceRequest.add_member(:group_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupIdentifier, location_name: 'GroupIdentifier', traits: {"smithy.api#documentation" => "<p>Specifies the group. You can specify the group name, the ARN, or the \n         group ID as the <code>GroupIdentifier</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssociateResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the canary that you want to associate with the specified group.</p>", "smithy.api#required" => {}}))
    AssociateResourceRequest.type = Types::AssociateResourceRequest
    AssociateResourceResponse.type = Types::AssociateResourceResponse
    BadRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    BadRequestException.type = Types::BadRequestException
    BaseScreenshot.add_member(:screenshot_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ScreenshotName', traits: {"smithy.api#documentation" => "<p>The name of the screenshot. This is generated the first time the canary is run after the <code>UpdateCanary</code> operation that\n      specified for this canary to perform visual monitoring.</p>", "smithy.api#required" => {}}))
    BaseScreenshot.add_member(:ignore_coordinates, Smithy::Schema::Shapes::ShapeRef.new(shape: BaseScreenshotIgnoreCoordinates, location_name: 'IgnoreCoordinates', traits: {"smithy.api#documentation" => "<p>Coordinates that define the part of a screen to ignore during screenshot comparisons. To obtain the \n         coordinates to use here, use the \n         CloudWatch console to draw the boundaries on the screen. For more information, see \n         <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/synthetics_canaries_deletion.html\">\n            Editing or deleting a canary</a>\n         </p>"}))
    BaseScreenshot.type = Types::BaseScreenshot
    BaseScreenshotIgnoreCoordinates.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BaseScreenshotConfigIgnoreCoordinate)
    BaseScreenshots.member = Smithy::Schema::Shapes::ShapeRef.new(shape: BaseScreenshot)
    Canaries.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Canary)
    CanariesLastRun.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryLastRun)
    Canary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique ID of this canary.</p>"}))
    Canary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the canary.</p>"}))
    Canary.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryCodeOutput, location_name: 'Code'))
    Canary.add_member(:execution_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'ExecutionRoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role used to run the canary. This role must include <code>lambda.amazonaws.com</code> as a principal in the trust\n         policy.</p>"}))
    Canary.add_member(:schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryScheduleOutput, location_name: 'Schedule', traits: {"smithy.api#documentation" => "<p>A structure that contains information about how often the canary is to run, and when\n         these runs are to stop.</p>"}))
    Canary.add_member(:run_config, Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryRunConfigOutput, location_name: 'RunConfig'))
    Canary.add_member(:success_retention_period_in_days, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize1024, location_name: 'SuccessRetentionPeriodInDays', traits: {"smithy.api#documentation" => "<p>The number of days to retain data about successful runs of this canary.</p>\n         <p>This setting affects the range of information returned by <a href=\"https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_GetCanaryRuns.html\">GetCanaryRuns</a>, as well as \n         the range of information displayed in the Synthetics console.\n      </p>"}))
    Canary.add_member(:failure_retention_period_in_days, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize1024, location_name: 'FailureRetentionPeriodInDays', traits: {"smithy.api#documentation" => "<p>The number of days to retain data about failed runs of this canary.</p>\n         <p>This setting affects the range of information returned by <a href=\"https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_GetCanaryRuns.html\">GetCanaryRuns</a>, as well as \n         the range of information displayed in the Synthetics console.\n      </p>"}))
    Canary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>A structure that contains information about the canary's status.</p>"}))
    Canary.add_member(:timeline, Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryTimeline, location_name: 'Timeline', traits: {"smithy.api#documentation" => "<p>A structure that contains information about when the canary was created, modified, and\n         most recently run.</p>"}))
    Canary.add_member(:artifact_s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ArtifactS3Location', traits: {"smithy.api#documentation" => "<p>The location in Amazon S3 where Synthetics stores artifacts from the runs of this\n         canary. Artifacts include the log file, screenshots, and HAR files.</p>"}))
    Canary.add_member(:engine_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: FunctionArn, location_name: 'EngineArn', traits: {"smithy.api#documentation" => "<p>The ARN of the Lambda function that is used as your canary's engine. For more information \n         about Lambda ARN format, see <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/lambda-api-permissions-ref.html\">Resources and Conditions for Lambda Actions</a>.</p>"}))
    Canary.add_member(:runtime_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RuntimeVersion', traits: {"smithy.api#documentation" => "<p>Specifies the runtime version to use for the canary. For more information about\n         runtime versions, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html\">\n            Canary Runtime Versions</a>.</p>"}))
    Canary.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfigOutput, location_name: 'VpcConfig'))
    Canary.add_member(:visual_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: VisualReferenceOutput, location_name: 'VisualReference', traits: {"smithy.api#documentation" => "<p>If this canary performs visual monitoring by comparing screenshots, this structure contains the ID of the canary run to use as the baseline for screenshots, and the coordinates\n      of any parts of the screen to ignore during the visual monitoring comparison.</p>"}))
    Canary.add_member(:provisioned_resource_cleanup, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedResourceCleanupSetting, location_name: 'ProvisionedResourceCleanup', traits: {"smithy.api#documentation" => "<p>Specifies whether to also delete the Lambda functions and layers used by this canary\n         when the canary is deleted. If it is <code>AUTOMATIC</code>, the Lambda functions and layers will be deleted\n         when the canary is deleted.</p>\n         <p>If the value of this parameter is <code>OFF</code>, then the value of the <code>DeleteLambda</code> parameter\n         of the <a href=\"https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DeleteCanary.html\">DeleteCanary</a> operation\n         determines whether the Lambda functions and layers will be deleted.</p>"}))
    Canary.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of key-value pairs that are associated with the canary.</p>"}))
    Canary.add_member(:artifact_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactConfigOutput, location_name: 'ArtifactConfig', traits: {"smithy.api#documentation" => "<p>A structure that contains the configuration for canary artifacts, including \n         the encryption-at-rest settings for artifacts that the canary uploads to Amazon S3.</p>"}))
    Canary.add_member(:dry_run_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DryRunConfigOutput, location_name: 'DryRunConfig', traits: {"smithy.api#documentation" => "<p>Returns the dry run configurations for a canary.</p>"}))
    Canary.type = Types::Canary
    CanaryCodeInput.add_member(:s3_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3Bucket', traits: {"smithy.api#documentation" => "<p>If your canary script is located in Amazon S3, specify the bucket name here. Do not include <code>s3://</code> as the \n         start of the bucket name.</p>"}))
    CanaryCodeInput.add_member(:s3_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3Key', traits: {"smithy.api#documentation" => "<p>The Amazon S3 key of your script. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingObjects.html\">Working with Amazon S3 Objects</a>.</p>"}))
    CanaryCodeInput.add_member(:s3_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3Version', traits: {"smithy.api#documentation" => "<p>The Amazon S3 version ID of your script.</p>"}))
    CanaryCodeInput.add_member(:zip_file, Smithy::Schema::Shapes::ShapeRef.new(shape: Blob, location_name: 'ZipFile', traits: {"smithy.api#documentation" => "<p>If you input your canary script directly into the canary instead of referring to an Amazon S3\n         location, the value of this parameter is the base64-encoded contents of the .zip file that \n         contains the script. It must be smaller than 225 Kb.</p>\n         <p>For large canary scripts, we recommend that you use an Amazon S3 location instead of inputting it \n      directly with this parameter.</p>"}))
    CanaryCodeInput.add_member(:handler, Smithy::Schema::Shapes::ShapeRef.new(shape: CodeHandler, location_name: 'Handler', traits: {"smithy.api#documentation" => "<p>The entry point to use for the source code when running the canary. For canaries that use the \n         <code>syn-python-selenium-1.0</code> runtime\n         or a <code>syn-nodejs.puppeteer</code> runtime earlier than <code>syn-nodejs.puppeteer-3.4</code>, \n         the handler must be specified as <code>\n               <i>fileName</i>.handler</code>. For \n         <code>syn-python-selenium-1.1</code>, <code>syn-nodejs.puppeteer-3.4</code>, and later runtimes, the handler can be specified as \n            <code>\n               <i>fileName</i>.<i>functionName</i>\n            </code>, or\n            you can specify a folder where canary scripts reside as \n<code>\n               <i>folder</i>/<i>fileName</i>.<i>functionName</i>\n            </code>.</p>", "smithy.api#required" => {}}))
    CanaryCodeInput.add_member(:dependencies, Smithy::Schema::Shapes::ShapeRef.new(shape: Dependencies, location_name: 'Dependencies', traits: {"smithy.api#documentation" => "<p>A list of dependencies that should be used for running this canary. Specify the dependencies as a key-value pair, where the key is the type of dependency and the value is the dependency reference.</p>"}))
    CanaryCodeInput.type = Types::CanaryCodeInput
    CanaryCodeOutput.add_member(:source_location_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SourceLocationArn', traits: {"smithy.api#documentation" => "<p>The ARN of the Lambda layer where Synthetics stores the canary script code.</p>"}))
    CanaryCodeOutput.add_member(:handler, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Handler', traits: {"smithy.api#documentation" => "<p>The entry point to use for the source code when running the canary.</p>"}))
    CanaryCodeOutput.add_member(:dependencies, Smithy::Schema::Shapes::ShapeRef.new(shape: Dependencies, location_name: 'Dependencies', traits: {"smithy.api#documentation" => "<p>A list of dependencies that are used for running this canary. The dependencies are specified as a key-value pair, where the key is the type of dependency and the value is the dependency reference.</p>"}))
    CanaryCodeOutput.type = Types::CanaryCodeOutput
    CanaryDryRunConfigOutput.add_member(:dry_run_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'DryRunId', traits: {"smithy.api#documentation" => "<p>The DryRunId associated with an existing canary’s dry run. You can use this DryRunId to retrieve information about the dry run.</p>"}))
    CanaryDryRunConfigOutput.type = Types::CanaryDryRunConfigOutput
    CanaryLastRun.add_member(:canary_name, Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryName, location_name: 'CanaryName', traits: {"smithy.api#documentation" => "<p>The name of the canary.</p>"}))
    CanaryLastRun.add_member(:last_run, Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryRun, location_name: 'LastRun', traits: {"smithy.api#documentation" => "<p>The results from this canary's most recent run.</p>"}))
    CanaryLastRun.type = Types::CanaryLastRun
    CanaryRun.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>A unique ID that identifies this canary run.</p>"}))
    CanaryRun.add_member(:scheduled_run_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'ScheduledRunId', traits: {"smithy.api#documentation" => "<p>The ID of the scheduled canary run.</p>"}))
    CanaryRun.add_member(:retry_attempt, Smithy::Schema::Shapes::ShapeRef.new(shape: RetryAttempt, location_name: 'RetryAttempt', traits: {"smithy.api#documentation" => "<p>The count in number of the retry attempt.</p>"}))
    CanaryRun.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the canary.</p>"}))
    CanaryRun.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryRunStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of this run.</p>"}))
    CanaryRun.add_member(:timeline, Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryRunTimeline, location_name: 'Timeline', traits: {"smithy.api#documentation" => "<p>A structure that contains the start and end times of this run.</p>"}))
    CanaryRun.add_member(:artifact_s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ArtifactS3Location', traits: {"smithy.api#documentation" => "<p>The location where the canary stored artifacts from the run. Artifacts include \n         the log file, screenshots, and HAR files.</p>"}))
    CanaryRun.add_member(:dry_run_config, Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryDryRunConfigOutput, location_name: 'DryRunConfig', traits: {"smithy.api#documentation" => "<p>Returns the dry run configurations for a canary.</p>"}))
    CanaryRun.type = Types::CanaryRun
    CanaryRunConfigInput.add_member(:timeout_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxFifteenMinutesInSeconds, location_name: 'TimeoutInSeconds', traits: {"smithy.api#documentation" => "<p>How long the canary is allowed to run before it must stop. You can't set this time to be longer\n         than the frequency of the runs of this canary.</p>\n         <p>If you omit this field, the\n         frequency of the canary is used as this value, up to a maximum of 14 minutes.</p>"}))
    CanaryRunConfigInput.add_member(:memory_in_mb, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize3008, location_name: 'MemoryInMB', traits: {"smithy.api#documentation" => "<p>The maximum amount of memory available to the canary while it is running, in MB. This value must be a multiple of 64.</p>"}))
    CanaryRunConfigInput.add_member(:active_tracing, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'ActiveTracing', traits: {"smithy.api#documentation" => "<p>Specifies whether this canary is to use active X-Ray tracing when it runs. Active tracing \n         enables\n         this canary run to be displayed in the ServiceLens and X-Ray service maps even if the canary does \n         not hit an endpoint that has X-Ray tracing enabled. Using X-Ray tracing incurs charges.\n      For more information, see  <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_tracing.html\">\n         Canaries and X-Ray tracing</a>.</p>\n         <p>You can enable active tracing only for canaries that use version <code>syn-nodejs-2.0</code> \n      or later for their canary runtime.</p>"}))
    CanaryRunConfigInput.add_member(:environment_variables, Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariablesMap, location_name: 'EnvironmentVariables', traits: {"smithy.api#documentation" => "<p>Specifies the keys and values to use for any environment variables\n      used in the canary script. Use the following format:</p>\n         <p>{ \"key1\" : \"value1\", \"key2\" : \"value2\", ...}</p>\n         <p>Keys must start with a letter and be at least two characters. The total size\n         of your environment variables cannot exceed 4 KB. You can't specify any Lambda\n         reserved environment variables as the keys for your environment variables. For \n         more information about reserved keys, see <a href=\"https://docs.aws.amazon.com/lambda/latest/dg/configuration-envvars.html#configuration-envvars-runtime\">\n            Runtime environment variables</a>.</p>\n         <important>\n            <p>Environment variable keys and values are encrypted at rest using Amazon Web Services owned KMS keys. However, the environment variables \n         are not encrypted on the client side. Do not store sensitive information\n         in them.</p>\n         </important>"}))
    CanaryRunConfigInput.add_member(:ephemeral_storage, Smithy::Schema::Shapes::ShapeRef.new(shape: EphemeralStorageSize, location_name: 'EphemeralStorage', traits: {"smithy.api#documentation" => "<p>Specifies the amount of ephemeral storage (in MB) to allocate for the canary run during execution. This temporary storage is used for storing canary run artifacts (which are uploaded to an Amazon S3 bucket at the end of the run), and any canary browser operations. This temporary storage is cleared after the run is completed. Default storage value is 1024 MB.</p>"}))
    CanaryRunConfigInput.type = Types::CanaryRunConfigInput
    CanaryRunConfigOutput.add_member(:timeout_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxFifteenMinutesInSeconds, location_name: 'TimeoutInSeconds', traits: {"smithy.api#documentation" => "<p>How long the canary is allowed to run before it must stop.</p>"}))
    CanaryRunConfigOutput.add_member(:memory_in_mb, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize3008, location_name: 'MemoryInMB', traits: {"smithy.api#documentation" => "<p>The maximum amount of memory available to the canary while it is running, in MB. This value\n         must be a multiple of 64.</p>"}))
    CanaryRunConfigOutput.add_member(:active_tracing, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'ActiveTracing', traits: {"smithy.api#documentation" => "<p>Displays whether this canary run used active X-Ray tracing. </p>"}))
    CanaryRunConfigOutput.add_member(:ephemeral_storage, Smithy::Schema::Shapes::ShapeRef.new(shape: EphemeralStorageSize, location_name: 'EphemeralStorage', traits: {"smithy.api#documentation" => "<p>Specifies the amount of ephemeral storage (in MB) to allocate for the canary run during execution. This temporary storage is used for storing canary run artifacts (which are uploaded to an Amazon S3 bucket at the end of the run), and any canary browser operations. This temporary storage is cleared after the run is completed. Default storage value is 1024 MB.</p>"}))
    CanaryRunConfigOutput.type = Types::CanaryRunConfigOutput
    CanaryRunState.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    CanaryRunState.add_member(:passed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PASSED', traits: {"smithy.api#enumValue" => "PASSED"}))
    CanaryRunState.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    CanaryRunStateReasonCode.add_member(:canary_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANARY_FAILURE', traits: {"smithy.api#enumValue" => "CANARY_FAILURE"}))
    CanaryRunStateReasonCode.add_member(:execution_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXECUTION_FAILURE', traits: {"smithy.api#enumValue" => "EXECUTION_FAILURE"}))
    CanaryRunStatus.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryRunState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current state of the run.</p>"}))
    CanaryRunStatus.add_member(:state_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StateReason', traits: {"smithy.api#documentation" => "<p>If run of the canary failed, this field contains the reason for the error.</p>"}))
    CanaryRunStatus.add_member(:state_reason_code, Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryRunStateReasonCode, location_name: 'StateReasonCode', traits: {"smithy.api#documentation" => "<p>If this value is <code>CANARY_FAILURE</code>, either the canary script failed or Synthetics ran into a fatal error when running the canary. For example,  a canary timeout misconfiguration setting can cause the canary to timeout before Synthetics can evaluate its status.\n        </p>\n         <p> If this value is <code>EXECUTION_FAILURE</code>, a non-critical failure occurred such as failing to save generated debug artifacts (for example, screenshots or har files).</p>\n         <p>If both types of failures occurred, the <code>CANARY_FAILURE</code> takes precedence. To understand the exact error, use the <a href=\"https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_CanaryRunStatus.html\">StateReason</a> API.</p>"}))
    CanaryRunStatus.add_member(:test_result, Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryRunTestResult, location_name: 'TestResult', traits: {"smithy.api#documentation" => "<p>Specifies the status of canary script for this run. When Synthetics tries to determine the status but fails, the result is marked as <code>UNKNOWN</code>.\n         For the overall status of canary run, see <a href=\"https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_CanaryRunStatus.html\">State</a>.</p>"}))
    CanaryRunStatus.type = Types::CanaryRunStatus
    CanaryRunTestResult.add_member(:passed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PASSED', traits: {"smithy.api#enumValue" => "PASSED"}))
    CanaryRunTestResult.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    CanaryRunTestResult.add_member(:unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    CanaryRunTimeline.add_member(:started, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Started', traits: {"smithy.api#documentation" => "<p>The start time of the run.</p>"}))
    CanaryRunTimeline.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Completed', traits: {"smithy.api#documentation" => "<p>The end time of the run.</p>"}))
    CanaryRunTimeline.add_member(:metric_timestamp_for_run_and_retries, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'MetricTimestampForRunAndRetries', traits: {"smithy.api#documentation" => "<p>The time at which the metrics will be generated for this run or retries.</p>"}))
    CanaryRunTimeline.type = Types::CanaryRunTimeline
    CanaryRuns.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryRun)
    CanaryScheduleInput.add_member(:expression, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Expression', traits: {"smithy.api#documentation" => "<p>A <code>rate</code> expression or a <code>cron</code> expression that defines how often the canary is to run.</p>\n         <p>For a rate expression, The syntax is\n               <code>rate(<i>number unit</i>)</code>. <i>unit</i>\n         can be <code>minute</code>, <code>minutes</code>, or <code>hour</code>. </p>\n         <p>For example, <code>rate(1 minute)</code> runs the canary once a minute, <code>rate(10 minutes)</code> runs it once every \n      10 minutes, and <code>rate(1 hour)</code> runs it once every hour. You can\n         specify a frequency between <code>rate(1 minute)</code> and <code>rate(1 hour)</code>.</p>\n         <p>Specifying <code>rate(0 minute)</code> or <code>rate(0 hour)</code> is a special value \n         that causes the \n         canary to run only once when it is started.</p>\n         <p>Use <code>cron(<i>expression</i>)</code> to specify a cron \n         expression. You can't schedule a canary to wait for more than a year before running. For information about the syntax for cron expressions, see \n         <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_cron.html\">\n            Scheduling canary runs using cron</a>.</p>", "smithy.api#required" => {}}))
    CanaryScheduleInput.add_member(:duration_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxOneYearInSeconds, location_name: 'DurationInSeconds', traits: {"smithy.api#documentation" => "<p>How long, in seconds, for the canary to continue making regular runs according to\n         the schedule in the <code>Expression</code> value. If you specify 0, the canary continues\n         making runs until you stop it. If you omit this field, the default of 0 is used.</p>"}))
    CanaryScheduleInput.add_member(:retry_config, Smithy::Schema::Shapes::ShapeRef.new(shape: RetryConfigInput, location_name: 'RetryConfig', traits: {"smithy.api#documentation" => "<p>A structure that contains the retry configuration for a canary</p>"}))
    CanaryScheduleInput.type = Types::CanaryScheduleInput
    CanaryScheduleOutput.add_member(:expression, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Expression', traits: {"smithy.api#documentation" => "<p>A <code>rate</code> expression or a <code>cron</code> expression that defines how often the canary is to run.</p>\n         <p>For a rate expression, The syntax is\n         <code>rate(<i>number unit</i>)</code>. <i>unit</i>\n         can be <code>minute</code>, <code>minutes</code>, or <code>hour</code>. </p>\n         <p>For example, <code>rate(1 minute)</code> runs the canary once a minute, <code>rate(10 minutes)</code> runs it once every \n         10 minutes, and <code>rate(1 hour)</code> runs it once every hour. You can\n         specify a frequency between <code>rate(1 minute)</code> and <code>rate(1 hour)</code>.</p>\n         <p>Specifying <code>rate(0 minute)</code> or <code>rate(0 hour)</code> is a special value \n         that causes the \n         canary to run only once when it is started.</p>\n         <p>Use <code>cron(<i>expression</i>)</code> to specify a cron \n         expression. For information about the syntax for cron expressions, see \n         <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_cron.html\">\n            Scheduling canary runs using cron</a>.</p>"}))
    CanaryScheduleOutput.add_member(:duration_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxOneYearInSeconds, location_name: 'DurationInSeconds', traits: {"smithy.api#documentation" => "<p>How long, in seconds, for the canary to continue making regular runs after it \n         was created. The runs are performed according to the schedule in the \n         <code>Expression</code> value.</p>"}))
    CanaryScheduleOutput.add_member(:retry_config, Smithy::Schema::Shapes::ShapeRef.new(shape: RetryConfigOutput, location_name: 'RetryConfig', traits: {"smithy.api#documentation" => "<p>A structure that contains the retry configuration for a canary</p>"}))
    CanaryScheduleOutput.type = Types::CanaryScheduleOutput
    CanaryState.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    CanaryState.add_member(:ready, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READY', traits: {"smithy.api#enumValue" => "READY"}))
    CanaryState.add_member(:starting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTING', traits: {"smithy.api#enumValue" => "STARTING"}))
    CanaryState.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    CanaryState.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    CanaryState.add_member(:stopping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPING', traits: {"smithy.api#enumValue" => "STOPPING"}))
    CanaryState.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED', traits: {"smithy.api#enumValue" => "STOPPED"}))
    CanaryState.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    CanaryState.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    CanaryStateReasonCode.add_member(:invalid_permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_PERMISSIONS', traits: {"smithy.api#enumValue" => "INVALID_PERMISSIONS"}))
    CanaryStateReasonCode.add_member(:create_pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_PENDING', traits: {"smithy.api#enumValue" => "CREATE_PENDING"}))
    CanaryStateReasonCode.add_member(:create_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "CREATE_IN_PROGRESS"}))
    CanaryStateReasonCode.add_member(:create_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATE_FAILED', traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    CanaryStateReasonCode.add_member(:update_pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_PENDING', traits: {"smithy.api#enumValue" => "UPDATE_PENDING"}))
    CanaryStateReasonCode.add_member(:update_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "UPDATE_IN_PROGRESS"}))
    CanaryStateReasonCode.add_member(:update_complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_COMPLETE', traits: {"smithy.api#enumValue" => "UPDATE_COMPLETE"}))
    CanaryStateReasonCode.add_member(:rollback_complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROLLBACK_COMPLETE', traits: {"smithy.api#enumValue" => "ROLLBACK_COMPLETE"}))
    CanaryStateReasonCode.add_member(:rollback_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROLLBACK_FAILED', traits: {"smithy.api#enumValue" => "ROLLBACK_FAILED"}))
    CanaryStateReasonCode.add_member(:delete_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "DELETE_IN_PROGRESS"}))
    CanaryStateReasonCode.add_member(:delete_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETE_FAILED', traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    CanaryStateReasonCode.add_member(:sync_delete_in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SYNC_DELETE_IN_PROGRESS', traits: {"smithy.api#enumValue" => "SYNC_DELETE_IN_PROGRESS"}))
    CanaryStatus.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current state of the canary.</p>"}))
    CanaryStatus.add_member(:state_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StateReason', traits: {"smithy.api#documentation" => "<p>If the canary creation or update failed, this field provides details on the failure.</p>"}))
    CanaryStatus.add_member(:state_reason_code, Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryStateReasonCode, location_name: 'StateReasonCode', traits: {"smithy.api#documentation" => "<p>If the canary creation or update failed, this field displays the reason code.</p>"}))
    CanaryStatus.type = Types::CanaryStatus
    CanaryTimeline.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Created', traits: {"smithy.api#documentation" => "<p>The date and time the canary was created.</p>"}))
    CanaryTimeline.add_member(:last_modified, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModified', traits: {"smithy.api#documentation" => "<p>The date and time the canary was most recently modified.</p>"}))
    CanaryTimeline.add_member(:last_started, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastStarted', traits: {"smithy.api#documentation" => "<p>The date and time that the canary's most recent run started.</p>"}))
    CanaryTimeline.add_member(:last_stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastStopped', traits: {"smithy.api#documentation" => "<p>The date and time that the canary's most recent run ended.</p>"}))
    CanaryTimeline.type = Types::CanaryTimeline
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ConflictException.type = Types::ConflictException
    CreateCanaryRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name for this canary. Be sure to give it a descriptive name \n         that distinguishes it from other canaries in your account.</p>\n         <p>Do not include secrets or proprietary information in your canary names. The canary name\n         makes up part of the canary ARN, and the ARN is included in outbound calls over the\n         internet. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/servicelens_canaries_security.html\">Security\n            Considerations for Synthetics Canaries</a>.</p>", "smithy.api#required" => {}}))
    CreateCanaryRequest.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryCodeInput, location_name: 'Code', traits: {"smithy.api#documentation" => "<p>A structure that includes the entry point from which the canary should start\n         running your script. If the script is stored in \n         an Amazon S3 bucket, the bucket name, key, and version are also included.\n      </p>", "smithy.api#required" => {}}))
    CreateCanaryRequest.add_member(:artifact_s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ArtifactS3Location', traits: {"smithy.api#documentation" => "<p>The location in Amazon S3 where Synthetics stores artifacts from the test runs of this\n         canary. Artifacts include the log file, screenshots, and HAR files.  The name of the \n         Amazon S3 bucket can't include a period (.).</p>", "smithy.api#required" => {}}))
    CreateCanaryRequest.add_member(:execution_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'ExecutionRoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role to be used to run the canary. This role must already exist, \n         and must include <code>lambda.amazonaws.com</code> as a principal in the trust\n         policy. The role must also have the following permissions:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>s3:PutObject</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>s3:GetBucketLocation</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>s3:ListAllMyBuckets</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>cloudwatch:PutMetricData</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>logs:CreateLogGroup</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>logs:CreateLogStream</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>logs:PutLogEvents</code>\n               </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CreateCanaryRequest.add_member(:schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryScheduleInput, location_name: 'Schedule', traits: {"smithy.api#documentation" => "<p>A structure that contains information about how often the canary is to run and when\n         these test runs are to stop.</p>", "smithy.api#required" => {}}))
    CreateCanaryRequest.add_member(:run_config, Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryRunConfigInput, location_name: 'RunConfig', traits: {"smithy.api#documentation" => "<p>A structure that contains the configuration for individual canary runs, \n         such as timeout value and environment variables.</p>\n         <important>\n            <p>Environment variable keys and values are encrypted at rest using Amazon Web Services owned KMS keys. However, the environment variables \n         are not encrypted on the client side. Do not store sensitive information\n         in them.</p>\n         </important>"}))
    CreateCanaryRequest.add_member(:success_retention_period_in_days, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize1024, location_name: 'SuccessRetentionPeriodInDays', traits: {"smithy.api#documentation" => "<p>The number of days to retain data about successful runs of this canary. If you omit \n         this field, the default of 31 days is used. The valid range is 1 to 455 days.</p>\n         <p>This setting affects the range of information returned by <a href=\"https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_GetCanaryRuns.html\">GetCanaryRuns</a>, as well as \n         the range of information displayed in the Synthetics console.\n      </p>"}))
    CreateCanaryRequest.add_member(:failure_retention_period_in_days, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize1024, location_name: 'FailureRetentionPeriodInDays', traits: {"smithy.api#documentation" => "<p>The number of days to retain data about failed runs of this canary. If you omit \n         this field, the default of 31 days is used. The valid range is 1 to 455 days.</p>\n         <p>This setting affects the range of information returned by <a href=\"https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_GetCanaryRuns.html\">GetCanaryRuns</a>, as well as \n         the range of information displayed in the Synthetics console.\n      </p>"}))
    CreateCanaryRequest.add_member(:runtime_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RuntimeVersion', traits: {"smithy.api#documentation" => "<p>Specifies the runtime version to use for the canary. For a list of valid\n         runtime versions and more information about\n         runtime versions, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html\">\n            Canary Runtime Versions</a>.</p>", "smithy.api#required" => {}}))
    CreateCanaryRequest.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfigInput, location_name: 'VpcConfig', traits: {"smithy.api#documentation" => "<p>If this canary is to test an endpoint in a VPC, this structure contains\n      information about the subnet and security groups of the VPC endpoint. \n      For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_VPC.html\">\n         Running a Canary in a VPC</a>.</p>"}))
    CreateCanaryRequest.add_member(:resources_to_replicate_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceList, location_name: 'ResourcesToReplicateTags', traits: {"smithy.api#documentation" => "<p>To have the tags that you apply to this canary also be applied to the Lambda function that\n         the canary uses, specify this parameter with the value <code>lambda-function</code>.</p>\n         <p>If you specify this parameter and don't specify any tags in the <code>Tags</code>\n         parameter, the canary creation fails.</p>"}))
    CreateCanaryRequest.add_member(:provisioned_resource_cleanup, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedResourceCleanupSetting, location_name: 'ProvisionedResourceCleanup', traits: {"smithy.api#documentation" => "<p>Specifies whether to also delete the Lambda functions and layers used by this canary\n      when the canary is deleted. If you omit this parameter, the default of <code>AUTOMATIC</code> is used, which means\n         that the Lambda functions and layers will be deleted when the canary is deleted.</p>\n         <p>If the value of this parameter is <code>OFF</code>, then the value of the <code>DeleteLambda</code> parameter\n         of the <a href=\"https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DeleteCanary.html\">DeleteCanary</a> operation\n         determines whether the Lambda functions and layers will be deleted.</p>"}))
    CreateCanaryRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of key-value pairs to associate with the canary. \n         You can associate as many as 50 tags with a canary.</p>\n         <p>Tags can help you organize and categorize your\n         resources. You can also use them to scope user permissions, by \n         granting a user permission to access or change only the resources that have\n         certain tag values.</p>\n         <p>To have the tags that you apply to this canary also be applied to the Lambda function that\n         the canary uses, specify this parameter with the value <code>lambda-function</code>.</p>"}))
    CreateCanaryRequest.add_member(:artifact_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactConfigInput, location_name: 'ArtifactConfig', traits: {"smithy.api#documentation" => "<p>A structure that contains the configuration for canary artifacts, including \n         the encryption-at-rest settings for artifacts that the canary uploads to Amazon S3.</p>"}))
    CreateCanaryRequest.type = Types::CreateCanaryRequest
    CreateCanaryResponse.add_member(:canary, Smithy::Schema::Shapes::ShapeRef.new(shape: Canary, location_name: 'Canary', traits: {"smithy.api#documentation" => "<p>The full details about the canary you have created.</p>"}))
    CreateCanaryResponse.type = Types::CreateCanaryResponse
    CreateGroupRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name for the group. It can include any Unicode characters.</p>\n         <p>The names for all groups in your account, across all Regions, must be unique.</p>", "smithy.api#required" => {}}))
    CreateGroupRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A list of key-value pairs to associate with the group. \n         You can associate as many as 50 tags with a group.</p>\n         <p>Tags can help you organize and categorize your\n         resources. You can also use them to scope user permissions, by \n         granting a user permission to access or change only the resources that have\n         certain tag values.</p>"}))
    CreateGroupRequest.type = Types::CreateGroupRequest
    CreateGroupResponse.add_member(:group, Smithy::Schema::Shapes::ShapeRef.new(shape: Group, location_name: 'Group', traits: {"smithy.api#documentation" => "<p>A structure that contains information about the group that was just created.</p>"}))
    CreateGroupResponse.type = Types::CreateGroupResponse
    DeleteCanaryRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the canary that you want to delete. To find the names of your canaries, use <a href=\"https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html\">DescribeCanaries</a>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCanaryRequest.add_member(:delete_lambda, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DeleteLambda', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Specifies whether to also delete the Lambda functions and layers used by this canary. The default\n      is <code>false</code>.</p>\n         <p>Your setting for this parameter is used only if the canary doesn't have <code>AUTOMATIC</code> for its \n       <code>ProvisionedResourceCleanup</code> field. If that field is set to <code>AUTOMATIC</code>, then the \n       Lambda functions and layers will be deleted when this canary is deleted. </p>\n         <p>Type: Boolean</p>", "smithy.api#httpQuery" => "deleteLambda"}))
    DeleteCanaryRequest.type = Types::DeleteCanaryRequest
    DeleteCanaryResponse.type = Types::DeleteCanaryResponse
    DeleteGroupRequest.add_member(:group_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupIdentifier, location_name: 'GroupIdentifier', traits: {"smithy.api#documentation" => "<p>Specifies which group to delete. You can specify the group name, the ARN, or the \n      group ID as the <code>GroupIdentifier</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteGroupRequest.type = Types::DeleteGroupRequest
    DeleteGroupResponse.type = Types::DeleteGroupResponse
    Dependencies.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Dependency)
    Dependency.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of dependency. Valid value is <code>LambdaLayer</code>.</p>"}))
    Dependency.add_member(:reference, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Reference', traits: {"smithy.api#documentation" => "<p>The dependency reference. For Lambda layers, this is the ARN of the Lambda layer. For more information \n         about Lambda ARN format, see <a href=\"https://docs.aws.amazon.com/lambda/latest/api/API_Layer.html\">Lambda</a>.</p>", "smithy.api#required" => {}}))
    Dependency.type = Types::Dependency
    DependencyType.add_member(:lambda_layer, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LambdaLayer', traits: {"smithy.api#enumValue" => "LambdaLayer"}))
    DescribeCanariesLastRunNameFilter.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryName)
    DescribeCanariesLastRunRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates that there is more data\n         available. You can use this token in a subsequent <code>DescribeCanariesLastRun</code> operation to retrieve the next \n         set of results.</p>"}))
    DescribeCanariesLastRunRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize100, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Specify this parameter to limit how many runs are returned each time you use\n         the <code>DescribeLastRun</code> operation. If you omit this parameter, the default of 100 is used.</p>"}))
    DescribeCanariesLastRunRequest.add_member(:names, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCanariesLastRunNameFilter, location_name: 'Names', traits: {"smithy.api#documentation" => "<p>Use this parameter to return only canaries that match the names that you specify here. You can\n         specify as many as five canary names.</p>\n         <p>If you specify this parameter, the operation is successful only if you have authorization to view\n         all the canaries that you specify in your request. If you do not have permission to view any of \n         the canaries, the request fails with a 403 response.</p>\n         <p>You are required to use the <code>Names</code> parameter if you are logged on to a user or role that has an \n         IAM policy that restricts which canaries that you are allowed to view. For more information, \n         see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Restricted.html\">\n            Limiting a user to viewing specific canaries</a>.</p>"}))
    DescribeCanariesLastRunRequest.type = Types::DescribeCanariesLastRunRequest
    DescribeCanariesLastRunResponse.add_member(:canaries_last_run, Smithy::Schema::Shapes::ShapeRef.new(shape: CanariesLastRun, location_name: 'CanariesLastRun', traits: {"smithy.api#documentation" => "<p>An array that contains the information from the most recent run of each\n         canary.</p>"}))
    DescribeCanariesLastRunResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates that there is more data\n         available. You can use this token in a subsequent <code>DescribeCanariesLastRun</code> operation to retrieve the next \n         set of results.</p>"}))
    DescribeCanariesLastRunResponse.type = Types::DescribeCanariesLastRunResponse
    DescribeCanariesNameFilter.member = Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryName)
    DescribeCanariesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates that there is more data\n         available. You can use this token in a subsequent operation to retrieve the next \n         set of results.</p>"}))
    DescribeCanariesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxCanaryResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Specify this parameter to limit how many canaries are returned each time you use\n      the <code>DescribeCanaries</code> operation. If you omit this parameter, the default of 20 is used.</p>"}))
    DescribeCanariesRequest.add_member(:names, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCanariesNameFilter, location_name: 'Names', traits: {"smithy.api#documentation" => "<p>Use this parameter to return only canaries that match the names that you specify here. You can\n         specify as many as five canary names.</p>\n         <p>If you specify this parameter, the operation is successful only if you have authorization to view\n         all the canaries that you specify in your request. If you do not have permission to view any of \n         the canaries, the request fails with a 403 response.</p>\n         <p>You are required to use this parameter if you are logged on to a user or role that has an \n         IAM policy that restricts which canaries that you are allowed to view. For more information, \n         see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Restricted.html\">\n            Limiting a user to viewing specific canaries</a>.</p>"}))
    DescribeCanariesRequest.type = Types::DescribeCanariesRequest
    DescribeCanariesResponse.add_member(:canaries, Smithy::Schema::Shapes::ShapeRef.new(shape: Canaries, location_name: 'Canaries', traits: {"smithy.api#documentation" => "<p>Returns an array. Each item in the array contains the full information about\n         one canary.</p>"}))
    DescribeCanariesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates that there is more data\n         available. You can use this token in a subsequent <code>DescribeCanaries</code> operation to retrieve the next \n         set of results.</p>"}))
    DescribeCanariesResponse.type = Types::DescribeCanariesResponse
    DescribeRuntimeVersionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates that there is more data\n         available. You can use this token in a subsequent <code>DescribeRuntimeVersions</code> operation to retrieve the next \n         set of results.</p>"}))
    DescribeRuntimeVersionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize100, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Specify this parameter to limit how many runs are returned each time you use\n         the <code>DescribeRuntimeVersions</code> operation. If you omit this parameter, the default of 100 is used.</p>"}))
    DescribeRuntimeVersionsRequest.type = Types::DescribeRuntimeVersionsRequest
    DescribeRuntimeVersionsResponse.add_member(:runtime_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: RuntimeVersionList, location_name: 'RuntimeVersions', traits: {"smithy.api#documentation" => "<p>An array of objects that display the details about each Synthetics canary runtime\n         version.</p>"}))
    DescribeRuntimeVersionsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates that there is more data\n         available. You can use this token in a subsequent <code>DescribeRuntimeVersions</code> operation to retrieve the next \n         set of results.</p>"}))
    DescribeRuntimeVersionsResponse.type = Types::DescribeRuntimeVersionsResponse
    DisassociateResourceRequest.add_member(:group_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupIdentifier, location_name: 'GroupIdentifier', traits: {"smithy.api#documentation" => "<p>Specifies the group. You can specify the group name, the ARN, or the \n         group ID as the <code>GroupIdentifier</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DisassociateResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the canary that you want to remove from the specified group.</p>", "smithy.api#required" => {}}))
    DisassociateResourceRequest.type = Types::DisassociateResourceRequest
    DisassociateResourceResponse.type = Types::DisassociateResourceResponse
    DryRunConfigOutput.add_member(:dry_run_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'DryRunId', traits: {"smithy.api#documentation" => "<p>The DryRunId associated with an existing canary’s dry run. You can use this DryRunId to retrieve information about the dry run.</p>"}))
    DryRunConfigOutput.add_member(:last_dry_run_execution_status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastDryRunExecutionStatus', traits: {"smithy.api#documentation" => "<p>Returns the last execution status for a canary's dry run.</p>"}))
    DryRunConfigOutput.type = Types::DryRunConfigOutput
    EncryptionMode.add_member(:sse_s3, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SSE_S3', traits: {"smithy.api#enumValue" => "SSE_S3"}))
    EncryptionMode.add_member(:sse_kms, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SSE_KMS', traits: {"smithy.api#enumValue" => "SSE_KMS"}))
    EnvironmentVariablesMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariableName)
    EnvironmentVariablesMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: EnvironmentVariableValue)
    GetCanaryRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the canary that you want details for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCanaryRequest.add_member(:dry_run_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'DryRunId', traits: {"smithy.api#documentation" => "<p>The DryRunId associated with an existing canary’s dry run. You can use this DryRunId to retrieve information about the dry run.</p>", "smithy.api#httpQuery" => "dryRunId"}))
    GetCanaryRequest.type = Types::GetCanaryRequest
    GetCanaryResponse.add_member(:canary, Smithy::Schema::Shapes::ShapeRef.new(shape: Canary, location_name: 'Canary', traits: {"smithy.api#documentation" => "<p>A structure that contains the full information about the canary.</p>"}))
    GetCanaryResponse.type = Types::GetCanaryResponse
    GetCanaryRunsRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the canary that you want to see runs for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetCanaryRunsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates that there is more data\n         available. You can use this token in a subsequent <code>GetCanaryRuns</code> operation to retrieve the next \n         set of results.</p>\n         <note>\n            <p>When auto retry is enabled for the canary, the first subsequent retry is suffixed with *1 indicating its the first retry and the next subsequent try is suffixed with *2.</p>\n         </note>"}))
    GetCanaryRunsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize100, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Specify this parameter to limit how many runs are returned each time you use\n         the <code>GetCanaryRuns</code> operation. If you omit this parameter, the default of 100 is used.</p>"}))
    GetCanaryRunsRequest.add_member(:dry_run_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'DryRunId', traits: {"smithy.api#documentation" => "<p>The DryRunId associated with an existing canary’s dry run. You can use this DryRunId to retrieve information about the dry run.</p>"}))
    GetCanaryRunsRequest.add_member(:run_type, Smithy::Schema::Shapes::ShapeRef.new(shape: RunType, location_name: 'RunType', traits: {"smithy.api#documentation" => "<ul>\n            <li>\n               <p>When you provide <code>RunType=CANARY_RUN</code> and <code>dryRunId</code>, you will get an exception\n            \n            \n           </p>\n            </li>\n            <li>\n               <p>When a value is not provided for <code>RunType</code>, the default value is <code>CANARY_RUN</code>\n               </p>\n            </li>\n            <li>\n               <p>When <code>CANARY_RUN</code> is provided, all canary runs excluding dry runs are returned</p>\n            </li>\n            <li>\n               <p>When <code>DRY_RUN</code> is provided, all dry runs excluding canary runs are returned</p>\n            </li>\n         </ul>"}))
    GetCanaryRunsRequest.type = Types::GetCanaryRunsRequest
    GetCanaryRunsResponse.add_member(:canary_runs, Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryRuns, location_name: 'CanaryRuns', traits: {"smithy.api#documentation" => "<p>An array of structures. Each structure contains the details of one of the \n         retrieved canary runs.</p>"}))
    GetCanaryRunsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates that there is more data\n         available. You can use this token in a subsequent <code>GetCanaryRuns</code> \n         operation to retrieve the next \n         set of results.</p>"}))
    GetCanaryRunsResponse.type = Types::GetCanaryRunsResponse
    GetGroupRequest.add_member(:group_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupIdentifier, location_name: 'GroupIdentifier', traits: {"smithy.api#documentation" => "<p>Specifies the group to return information for. You can specify the group name, the ARN, or the \n         group ID as the <code>GroupIdentifier</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetGroupRequest.type = Types::GetGroupRequest
    GetGroupResponse.add_member(:group, Smithy::Schema::Shapes::ShapeRef.new(shape: Group, location_name: 'Group', traits: {"smithy.api#documentation" => "<p>A structure that contains information about the group.</p>"}))
    GetGroupResponse.type = Types::GetGroupResponse
    Group.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique ID of the group.</p>"}))
    Group.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the group.</p>"}))
    Group.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN of the group.</p>"}))
    Group.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of key-value pairs that are associated with the canary.</p>"}))
    Group.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>The date and time that the group was created.</p>"}))
    Group.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>The date and time that the group was most recently updated.</p>"}))
    Group.type = Types::Group
    GroupSummary.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique ID of the group.</p>"}))
    GroupSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the group.</p>"}))
    GroupSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupArn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN of the group.</p>"}))
    GroupSummary.type = Types::GroupSummary
    GroupSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GroupSummary)
    InternalFailureException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InternalFailureException.type = Types::InternalFailureException
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InternalServerException.type = Types::InternalServerException
    ListAssociatedGroupsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates that there is more data\n         available. You can use this token in a subsequent operation to retrieve the next \n         set of results.</p>"}))
    ListAssociatedGroupsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxGroupResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Specify this parameter to limit how many groups are returned each time you use\n         the <code>ListAssociatedGroups</code> operation. If you omit this parameter, the default of 20 is used.</p>"}))
    ListAssociatedGroupsRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the canary that you want to view groups for.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListAssociatedGroupsRequest.type = Types::ListAssociatedGroupsRequest
    ListAssociatedGroupsResponse.add_member(:groups, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupSummaryList, location_name: 'Groups', traits: {"smithy.api#documentation" => "<p>An array of structures that contain information about the groups that this canary is associated with.</p>"}))
    ListAssociatedGroupsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates that there is more data\n         available. You can use this token in a subsequent <code>ListAssociatedGroups</code> operation to retrieve the next \n         set of results.</p>"}))
    ListAssociatedGroupsResponse.type = Types::ListAssociatedGroupsResponse
    ListGroupResourcesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates that there is more data\n         available. You can use this token in a subsequent operation to retrieve the next \n         set of results.</p>"}))
    ListGroupResourcesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxGroupResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Specify this parameter to limit how many canary ARNs are returned each time you use\n         the <code>ListGroupResources</code> operation. If you omit this parameter, the default of 20 is used.</p>"}))
    ListGroupResourcesRequest.add_member(:group_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupIdentifier, location_name: 'GroupIdentifier', traits: {"smithy.api#documentation" => "<p>Specifies the group to return information for. You can specify the group name, the ARN, or the \n         group ID as the <code>GroupIdentifier</code>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListGroupResourcesRequest.type = Types::ListGroupResourcesRequest
    ListGroupResourcesResponse.add_member(:resources, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'Resources', traits: {"smithy.api#documentation" => "<p>An array of ARNs. These ARNs are for the canaries that are associated with the group.</p>"}))
    ListGroupResourcesResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates that there is more data\n         available. You can use this token in a subsequent <code>ListGroupResources</code> operation to retrieve the next \n         set of results.</p>"}))
    ListGroupResourcesResponse.type = Types::ListGroupResourcesResponse
    ListGroupsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates that there is more data\n         available. You can use this token in a subsequent operation to retrieve the next \n         set of results.</p>"}))
    ListGroupsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxGroupResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Specify this parameter to limit how many groups are returned each time you use\n         the <code>ListGroups</code> operation. If you omit this parameter, the default of 20 is used.</p>"}))
    ListGroupsRequest.type = Types::ListGroupsRequest
    ListGroupsResponse.add_member(:groups, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupSummaryList, location_name: 'Groups', traits: {"smithy.api#documentation" => "<p>An array of structures that each contain information about one group.</p>"}))
    ListGroupsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A token that indicates that there is more data\n         available. You can use this token in a subsequent <code>ListGroups</code> operation to retrieve the next \n         set of results.</p>"}))
    ListGroupsResponse.type = Types::ListGroupsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the canary or group that you want to view tags for.</p>\n         <p>The ARN format of a canary is\n               <code>arn:aws:synthetics:<i>Region</i>:<i>account-id</i>:canary:<i>canary-name</i>\n            </code>.</p>\n         <p>The ARN format of a group is\n         <code>arn:aws:synthetics:<i>Region</i>:<i>account-id</i>:group:<i>group-name</i>\n            </code>\n         </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of tag keys and values associated with the resource that you specified.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    NotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    NotFoundException.type = Types::NotFoundException
    ProvisionedResourceCleanupSetting.add_member(:automatic, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTOMATIC', traits: {"smithy.api#enumValue" => "AUTOMATIC"}))
    ProvisionedResourceCleanupSetting.add_member(:off, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OFF', traits: {"smithy.api#enumValue" => "OFF"}))
    RequestEntityTooLargeException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    RequestEntityTooLargeException.type = Types::RequestEntityTooLargeException
    ResourceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceToTag)
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourceToTag.add_member(:lambda_function, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAMBDA_FUNCTION', traits: {"smithy.api#enumValue" => "lambda-function"}))
    RetryConfigInput.add_member(:max_retries, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxRetries, location_name: 'MaxRetries', traits: {"smithy.api#documentation" => "<p>The maximum number of retries. The value must be less than or equal to 2.</p>", "smithy.api#required" => {}}))
    RetryConfigInput.type = Types::RetryConfigInput
    RetryConfigOutput.add_member(:max_retries, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxRetries, location_name: 'MaxRetries', traits: {"smithy.api#documentation" => "<p>The maximum number of retries. The value must be less than or equal to 2.</p>"}))
    RetryConfigOutput.type = Types::RetryConfigOutput
    RunType.add_member(:canary_run, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANARY_RUN', traits: {"smithy.api#enumValue" => "CANARY_RUN"}))
    RunType.add_member(:dry_run, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DRY_RUN', traits: {"smithy.api#enumValue" => "DRY_RUN"}))
    RuntimeVersion.add_member(:version_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VersionName', traits: {"smithy.api#documentation" => "<p>The name of the runtime version. For a list of valid runtime versions, \n         see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html\">\n            Canary Runtime Versions</a>.</p>"}))
    RuntimeVersion.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description of the runtime version, created by Amazon.</p>"}))
    RuntimeVersion.add_member(:release_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ReleaseDate', traits: {"smithy.api#documentation" => "<p>The date that the runtime version was released.</p>"}))
    RuntimeVersion.add_member(:deprecation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DeprecationDate', traits: {"smithy.api#documentation" => "<p>If this runtime version is deprecated, this value is the date of deprecation.</p>"}))
    RuntimeVersion.type = Types::RuntimeVersion
    RuntimeVersionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RuntimeVersion)
    S3EncryptionConfig.add_member(:encryption_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionMode, location_name: 'EncryptionMode', traits: {"smithy.api#documentation" => "<p> The encryption method to use for artifacts created by this canary. Specify <code>SSE_S3</code> to use\n         server-side encryption (SSE) with an Amazon S3-managed\n         key. Specify <code>SSE-KMS</code> to use server-side encryption with a customer-managed KMS key.</p>\n         <p>If you omit this parameter, an \n            Amazon Web Services-managed KMS key is used.\n        </p>"}))
    S3EncryptionConfig.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'KmsKeyArn', traits: {"smithy.api#documentation" => "<p>The ARN of the customer-managed KMS key to use, if you specify <code>SSE-KMS</code>\n         for <code>EncryptionMode</code>\n         </p>"}))
    S3EncryptionConfig.type = Types::S3EncryptionConfig
    SecurityGroupIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupId)
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    StartCanaryDryRunRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the canary that you want to dry run. To find\n         canary names, use <a href=\"https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html\">DescribeCanaries</a>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartCanaryDryRunRequest.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryCodeInput, location_name: 'Code'))
    StartCanaryDryRunRequest.add_member(:runtime_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RuntimeVersion', traits: {"smithy.api#documentation" => "<p>Specifies the runtime version to use for the canary.  \n         For a list of valid runtime versions and for more information about\n         runtime versions, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html\">\n            Canary Runtime Versions</a>.</p>"}))
    StartCanaryDryRunRequest.add_member(:run_config, Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryRunConfigInput, location_name: 'RunConfig'))
    StartCanaryDryRunRequest.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfigInput, location_name: 'VpcConfig'))
    StartCanaryDryRunRequest.add_member(:execution_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'ExecutionRoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role to be used to run the canary. This role must already exist, \n         and must include <code>lambda.amazonaws.com</code> as a principal in the trust\n         policy. The role must also have the following permissions:</p>"}))
    StartCanaryDryRunRequest.add_member(:success_retention_period_in_days, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize1024, location_name: 'SuccessRetentionPeriodInDays', traits: {"smithy.api#documentation" => "<p>The number of days to retain data about successful runs of this canary. If you omit \n         this field, the default of 31 days is used. The valid range is 1 to 455 days.</p>\n         <p>This setting affects the range of information returned by <a href=\"https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_GetCanaryRuns.html\">GetCanaryRuns</a>, as well as \n         the range of information displayed in the Synthetics console.\n      </p>"}))
    StartCanaryDryRunRequest.add_member(:failure_retention_period_in_days, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize1024, location_name: 'FailureRetentionPeriodInDays', traits: {"smithy.api#documentation" => "<p>The number of days to retain data about failed runs of this canary. If you omit \n         this field, the default of 31 days is used. The valid range is 1 to 455 days.</p>\n         <p>This setting affects the range of information returned by <a href=\"https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_GetCanaryRuns.html\">GetCanaryRuns</a>, as well as \n         the range of information displayed in the Synthetics console.\n      </p>"}))
    StartCanaryDryRunRequest.add_member(:visual_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: VisualReferenceInput, location_name: 'VisualReference'))
    StartCanaryDryRunRequest.add_member(:artifact_s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ArtifactS3Location', traits: {"smithy.api#documentation" => "<p>The location in Amazon S3 where Synthetics stores artifacts from the test runs of this\n\n         canary. Artifacts include the log file, screenshots, and HAR files.  The name of the \n         Amazon S3 bucket can't include a period (.).</p>"}))
    StartCanaryDryRunRequest.add_member(:artifact_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactConfigInput, location_name: 'ArtifactConfig'))
    StartCanaryDryRunRequest.add_member(:provisioned_resource_cleanup, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedResourceCleanupSetting, location_name: 'ProvisionedResourceCleanup', traits: {"smithy.api#documentation" => "<p>Specifies whether to also delete the Lambda functions and layers used by this canary\n         when the canary is deleted. If you omit this parameter, the default of <code>AUTOMATIC</code> is used, which means\n\n         that the Lambda functions and layers will be deleted when the canary is deleted.</p>\n         <p>If the value of this parameter is <code>OFF</code>, then the value of the <code>DeleteLambda</code> parameter\n         of the <a href=\"https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DeleteCanary.html\">DeleteCanary</a> operation\n         determines whether the Lambda functions and layers will be deleted.</p>"}))
    StartCanaryDryRunRequest.type = Types::StartCanaryDryRunRequest
    StartCanaryDryRunResponse.add_member(:dry_run_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DryRunConfigOutput, location_name: 'DryRunConfig', traits: {"smithy.api#documentation" => "<p>Returns the dry run configurations for a canary.</p>"}))
    StartCanaryDryRunResponse.type = Types::StartCanaryDryRunResponse
    StartCanaryRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the canary that you want to run. To find\n         canary names, use <a href=\"https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html\">DescribeCanaries</a>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartCanaryRequest.type = Types::StartCanaryRequest
    StartCanaryResponse.type = Types::StartCanaryResponse
    StopCanaryRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the canary that you want to stop. To find the names of your \n         canaries, use <a href=\"https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html\">ListCanaries</a>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StopCanaryRequest.type = Types::StopCanaryRequest
    StopCanaryResponse.type = Types::StopCanaryResponse
    StringList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    SubnetIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetId)
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the canary or group that you're adding tags to.</p>\n         <p>The ARN format of a canary is\n<code>arn:aws:synthetics:<i>Region</i>:<i>account-id</i>:canary:<i>canary-name</i>\n            </code>.</p>\n         <p>The ARN format of a group is\n <code>arn:aws:synthetics:<i>Region</i>:<i>account-id</i>:group:<i>group-name</i>\n            </code>\n         </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The list of key-value pairs to associate with the resource.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TooManyRequestsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    TooManyRequestsException.type = Types::TooManyRequestsException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the canary or group that you're removing tags from.</p>\n         <p>The ARN format of a canary is\n               <code>arn:aws:synthetics:<i>Region</i>:<i>account-id</i>:canary:<i>canary-name</i>\n            </code>.</p>\n         <p>The ARN format of a group is\n         <code>arn:aws:synthetics:<i>Region</i>:<i>account-id</i>:group:<i>group-name</i>\n            </code>\n         </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>The list of tag keys to remove from the resource.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateCanaryRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the canary that you want to update. To find the names of your \n         canaries, use <a href=\"https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html\">DescribeCanaries</a>.</p>\n         <p>You cannot change the name of a canary that has already been created.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateCanaryRequest.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryCodeInput, location_name: 'Code', traits: {"smithy.api#documentation" => "<p>A structure that includes the entry point from which the canary should start\n         running your script. If the script is stored in \n         an Amazon S3 bucket, the bucket name, key, and version are also included.\n      </p>"}))
    UpdateCanaryRequest.add_member(:execution_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'ExecutionRoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role to be used to run the canary. This role must already exist, \n         and must include <code>lambda.amazonaws.com</code> as a principal in the trust\n         policy. The role must also have the following permissions:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>s3:PutObject</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>s3:GetBucketLocation</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>s3:ListAllMyBuckets</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>cloudwatch:PutMetricData</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>logs:CreateLogGroup</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>logs:CreateLogStream</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>logs:CreateLogStream</code>\n               </p>\n            </li>\n         </ul>"}))
    UpdateCanaryRequest.add_member(:runtime_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RuntimeVersion', traits: {"smithy.api#documentation" => "<p>Specifies the runtime version to use for the canary.  \n         For a list of valid runtime versions and for more information about\n         runtime versions, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html\">\n            Canary Runtime Versions</a>.</p>"}))
    UpdateCanaryRequest.add_member(:schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryScheduleInput, location_name: 'Schedule', traits: {"smithy.api#documentation" => "<p>A structure that contains information about how often the canary is to run, and when\n         these runs are to stop.</p>"}))
    UpdateCanaryRequest.add_member(:run_config, Smithy::Schema::Shapes::ShapeRef.new(shape: CanaryRunConfigInput, location_name: 'RunConfig', traits: {"smithy.api#documentation" => "<p>A structure that contains the timeout value that is used for each individual run of the \n         canary.</p>\n         <important>\n            <p>Environment variable keys and values are encrypted at rest using Amazon Web Services owned KMS keys. However, the environment variables \n         are not encrypted on the client side. Do not store sensitive information\n         in them.</p>\n         </important>"}))
    UpdateCanaryRequest.add_member(:success_retention_period_in_days, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize1024, location_name: 'SuccessRetentionPeriodInDays', traits: {"smithy.api#documentation" => "<p>The number of days to retain data about successful runs of this canary.</p>\n         <p>This setting affects the range of information returned by <a href=\"https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_GetCanaryRuns.html\">GetCanaryRuns</a>, as well as \n         the range of information displayed in the Synthetics console.\n      </p>"}))
    UpdateCanaryRequest.add_member(:failure_retention_period_in_days, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxSize1024, location_name: 'FailureRetentionPeriodInDays', traits: {"smithy.api#documentation" => "<p>The number of days to retain data about failed runs of this canary.</p>\n         <p>This setting affects the range of information returned by <a href=\"https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_GetCanaryRuns.html\">GetCanaryRuns</a>, as well as \n         the range of information displayed in the Synthetics console.\n      </p>"}))
    UpdateCanaryRequest.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfigInput, location_name: 'VpcConfig', traits: {"smithy.api#documentation" => "<p>If this canary is to test an endpoint in a VPC, this structure contains\n         information about the subnet and security groups of the VPC endpoint. \n         For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_VPC.html\">\n            Running a Canary in a VPC</a>.</p>"}))
    UpdateCanaryRequest.add_member(:visual_reference, Smithy::Schema::Shapes::ShapeRef.new(shape: VisualReferenceInput, location_name: 'VisualReference', traits: {"smithy.api#documentation" => "<p>Defines the screenshots to use as the baseline for comparisons during visual monitoring comparisons during future runs of this canary. If you omit this \n      parameter, no changes are made to any baseline screenshots that the canary might be using already.</p>\n         <p>Visual monitoring is supported only on canaries running the <b>syn-puppeteer-node-3.2</b>\n         runtime or later. For more information, see <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Library_SyntheticsLogger_VisualTesting.html\">\n            Visual monitoring</a> and <a href=\"https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Blueprints_VisualTesting.html\">\n               Visual monitoring blueprint</a>\n         </p>"}))
    UpdateCanaryRequest.add_member(:artifact_s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ArtifactS3Location', traits: {"smithy.api#documentation" => "<p>The location in Amazon S3 where Synthetics stores artifacts from the test runs of this canary. \n         Artifacts include the log file, screenshots, and HAR files. The name of the\n         Amazon S3 bucket can't include a period (.).</p>"}))
    UpdateCanaryRequest.add_member(:artifact_config, Smithy::Schema::Shapes::ShapeRef.new(shape: ArtifactConfigInput, location_name: 'ArtifactConfig', traits: {"smithy.api#documentation" => "<p>A structure that contains the configuration for canary artifacts, \n         including the encryption-at-rest settings for artifacts that \n         the canary uploads to Amazon S3.</p>"}))
    UpdateCanaryRequest.add_member(:provisioned_resource_cleanup, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedResourceCleanupSetting, location_name: 'ProvisionedResourceCleanup', traits: {"smithy.api#documentation" => "<p>Specifies whether to also delete the Lambda functions and layers used by this canary\n         when the canary is deleted.</p>\n         <p>If the value of this parameter is <code>OFF</code>, then the value of the <code>DeleteLambda</code> parameter\n         of the <a href=\"https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DeleteCanary.html\">DeleteCanary</a> operation\n         determines whether the Lambda functions and layers will be deleted.</p>"}))
    UpdateCanaryRequest.add_member(:dry_run_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'DryRunId', traits: {"smithy.api#documentation" => "<p>Update the existing canary using the updated configurations from the DryRun associated with the DryRunId.</p>\n         <note>\n            <p>When you use the <code>dryRunId</code> field when updating a canary, the only other field you can provide is the <code>Schedule</code>. Adding any other field will thrown an exception.</p>\n         </note>"}))
    UpdateCanaryRequest.type = Types::UpdateCanaryRequest
    UpdateCanaryResponse.type = Types::UpdateCanaryResponse
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ValidationException.type = Types::ValidationException
    VisualReferenceInput.add_member(:base_screenshots, Smithy::Schema::Shapes::ShapeRef.new(shape: BaseScreenshots, location_name: 'BaseScreenshots', traits: {"smithy.api#documentation" => "<p>An array of screenshots that will be used as the baseline for visual monitoring in future runs of this canary. If there is a screenshot that you don't want to be used for\n      visual monitoring, remove it from this array.</p>"}))
    VisualReferenceInput.add_member(:base_canary_run_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BaseCanaryRunId', traits: {"smithy.api#documentation" => "<p>Specifies which canary run to use the screenshots from as the baseline for future visual monitoring with this canary. Valid values are \n         <code>nextrun</code> to use the screenshots from the next run after this update is made, <code>lastrun</code> to use the screenshots from the most recent run \n         before this update was made, or the value of <code>Id</code> in the <a href=\"https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_CanaryRun.html\">\n            CanaryRun</a> from a run of this a canary in the past 31 days. If you specify the <code>Id</code> of a canary run older than 31 days, \n         the operation returns a 400 validation exception error..</p>", "smithy.api#required" => {}}))
    VisualReferenceInput.type = Types::VisualReferenceInput
    VisualReferenceOutput.add_member(:base_screenshots, Smithy::Schema::Shapes::ShapeRef.new(shape: BaseScreenshots, location_name: 'BaseScreenshots', traits: {"smithy.api#documentation" => "<p>An array of screenshots that are used as the baseline for comparisons during visual monitoring.</p>"}))
    VisualReferenceOutput.add_member(:base_canary_run_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BaseCanaryRunId', traits: {"smithy.api#documentation" => "<p>The ID of the canary run that produced the baseline screenshots \n         that are used for visual monitoring comparisons by this canary.</p>"}))
    VisualReferenceOutput.type = Types::VisualReferenceOutput
    VpcConfigInput.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIds, location_name: 'SubnetIds', traits: {"smithy.api#documentation" => "<p>The IDs of the subnets where this canary is to run.</p>"}))
    VpcConfigInput.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: 'SecurityGroupIds', traits: {"smithy.api#documentation" => "<p>The IDs of the security groups for this canary.</p>"}))
    VpcConfigInput.add_member(:ipv6_allowed_for_dual_stack, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'Ipv6AllowedForDualStack', traits: {"smithy.api#documentation" => "<p>Set this to <code>true</code> to allow outbound IPv6 traffic on VPC canaries that are connected to dual-stack subnets. The default is <code>false</code>\n         </p>"}))
    VpcConfigInput.type = Types::VpcConfigInput
    VpcConfigOutput.add_member(:vpc_id, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcId, location_name: 'VpcId', traits: {"smithy.api#documentation" => "<p>The IDs of the VPC where this canary is to run.</p>"}))
    VpcConfigOutput.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIds, location_name: 'SubnetIds', traits: {"smithy.api#documentation" => "<p>The IDs of the subnets where this canary is to run.</p>"}))
    VpcConfigOutput.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIds, location_name: 'SecurityGroupIds', traits: {"smithy.api#documentation" => "<p>The IDs of the security groups for this canary.</p>"}))
    VpcConfigOutput.add_member(:ipv6_allowed_for_dual_stack, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableBoolean, location_name: 'Ipv6AllowedForDualStack', traits: {"smithy.api#documentation" => "<p>Indicates whether this canary allows outbound IPv6 traffic if it is connected to dual-stack subnets.</p>"}))
    VpcConfigOutput.type = Types::VpcConfigOutput

    Synthetics = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.synthetics#Synthetics"
      service.name = "Synthetics"
      service.version = "2017-10-11"
      service.traits = {"aws.api#service" => {"sdkId" => "synthetics", "arnNamespace" => "synthetics", "cloudFormationName" => "Synthetics", "cloudTrailEventSource" => "synthetics.amazonaws.com", "endpointPrefix" => "synthetics"}, "aws.auth#sigv4" => {"name" => "synthetics"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Synthetics"}
      service.add_operation(:associate_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.synthetics#AssociateResource"
        operation.name = "AssociateResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/group/{GroupIdentifier}/associate", "code" => 200}}
      end)
      service.add_operation(:create_canary, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.synthetics#CreateCanary"
        operation.name = "CreateCanary"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCanaryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCanaryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestEntityTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/canary", "code" => 200}}
      end)
      service.add_operation(:create_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.synthetics#CreateGroup"
        operation.name = "CreateGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/group", "code" => 200}}
      end)
      service.add_operation(:delete_canary, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.synthetics#DeleteCanary"
        operation.name = "DeleteCanary"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCanaryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCanaryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/canary/{Name}", "code" => 200}}
      end)
      service.add_operation(:delete_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.synthetics#DeleteGroup"
        operation.name = "DeleteGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/group/{GroupIdentifier}", "code" => 200}}
      end)
      service.add_operation(:describe_canaries, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.synthetics#DescribeCanaries"
        operation.name = "DescribeCanaries"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCanariesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCanariesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/canaries", "code" => 200}}
        operation[:paginator] = Paginators::DescribeCanaries.new
      end)
      service.add_operation(:describe_canaries_last_run, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.synthetics#DescribeCanariesLastRun"
        operation.name = "DescribeCanariesLastRun"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCanariesLastRunRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeCanariesLastRunResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/canaries/last-run", "code" => 200}}
        operation[:paginator] = Paginators::DescribeCanariesLastRun.new
      end)
      service.add_operation(:describe_runtime_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.synthetics#DescribeRuntimeVersions"
        operation.name = "DescribeRuntimeVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRuntimeVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRuntimeVersionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/runtime-versions", "code" => 200}}
        operation[:paginator] = Paginators::DescribeRuntimeVersions.new
      end)
      service.add_operation(:disassociate_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.synthetics#DisassociateResource"
        operation.name = "DisassociateResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/group/{GroupIdentifier}/disassociate", "code" => 200}}
      end)
      service.add_operation(:get_canary, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.synthetics#GetCanary"
        operation.name = "GetCanary"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCanaryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCanaryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/canary/{Name}", "code" => 200}}
      end)
      service.add_operation(:get_canary_runs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.synthetics#GetCanaryRuns"
        operation.name = "GetCanaryRuns"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCanaryRunsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetCanaryRunsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/canary/{Name}/runs", "code" => 200}}
        operation[:paginator] = Paginators::GetCanaryRuns.new
      end)
      service.add_operation(:get_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.synthetics#GetGroup"
        operation.name = "GetGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGroupResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/group/{GroupIdentifier}", "code" => 200}}
      end)
      service.add_operation(:list_associated_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.synthetics#ListAssociatedGroups"
        operation.name = "ListAssociatedGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssociatedGroupsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssociatedGroupsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/resource/{ResourceArn}/groups", "code" => 200}}
        operation[:paginator] = Paginators::ListAssociatedGroups.new
      end)
      service.add_operation(:list_group_resources, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.synthetics#ListGroupResources"
        operation.name = "ListGroupResources"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupResourcesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupResourcesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/group/{GroupIdentifier}/resources", "code" => 200}}
        operation[:paginator] = Paginators::ListGroupResources.new
      end)
      service.add_operation(:list_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.synthetics#ListGroups"
        operation.name = "ListGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/groups", "code" => 200}}
        operation[:paginator] = Paginators::ListGroups.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.synthetics#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:start_canary, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.synthetics#StartCanary"
        operation.name = "StartCanary"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartCanaryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartCanaryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/canary/{Name}/start", "code" => 200}}
      end)
      service.add_operation(:start_canary_dry_run, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.synthetics#StartCanaryDryRun"
        operation.name = "StartCanaryDryRun"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartCanaryDryRunRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartCanaryDryRunResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/canary/{Name}/dry-run/start", "code" => 200}}
      end)
      service.add_operation(:stop_canary, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.synthetics#StopCanary"
        operation.name = "StopCanary"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopCanaryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopCanaryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/canary/{Name}/stop", "code" => 200}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.synthetics#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.synthetics#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_canary, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.synthetics#UpdateCanary"
        operation.name = "UpdateCanary"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCanaryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateCanaryResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestEntityTooLargeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/canary/{Name}", "code" => 200}}
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
