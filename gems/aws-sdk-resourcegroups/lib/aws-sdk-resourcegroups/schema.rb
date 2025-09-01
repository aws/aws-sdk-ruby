# frozen_string_literal: true

# This is generated code!

module Aws::ResourceGroups
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccountSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#AccountSettings', name: 'AccountSettings')
    ApplicationArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourcegroups#ApplicationArn', name: 'ApplicationArn', traits: {"smithy.api#length" => {"min" => 12, "max" => 1600}, "smithy.api#pattern" => "^arn:aws(-[a-z]+)*:resource-groups:[a-z]{2}(-[a-z]+)+-\\d{1}:[0-9]{12}:group/[a-zA-Z0-9_\\.-]{1,150}/[a-zA-Z0-9]{22,26}$"})
    ApplicationTag = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.resourcegroups#ApplicationTag', name: 'ApplicationTag')
    ApplicationTagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourcegroups#ApplicationTagKey', name: 'ApplicationTagKey', traits: {"smithy.api#pattern" => "^awsApplication$"})
    BadRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#BadRequestException', name: 'BadRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CancelTagSyncTaskInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#CancelTagSyncTaskInput', name: 'CancelTagSyncTaskInput')
    CreateGroupInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#CreateGroupInput', name: 'CreateGroupInput')
    CreateGroupName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourcegroups#CreateGroupName', name: 'CreateGroupName', traits: {"smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\.-]+$"})
    CreateGroupOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#CreateGroupOutput', name: 'CreateGroupOutput')
    Criticality = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.resourcegroups#Criticality', name: 'Criticality', traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    DeleteGroupInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#DeleteGroupInput', name: 'DeleteGroupInput')
    DeleteGroupOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#DeleteGroupOutput', name: 'DeleteGroupOutput')
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourcegroups#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\sa-zA-Z0-9_\\.-]*$"})
    DisplayName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourcegroups#DisplayName', name: 'DisplayName', traits: {"smithy.api#length" => {"min" => 0, "max" => 300}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    ErrorCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourcegroups#ErrorCode', name: 'ErrorCode', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourcegroups#ErrorMessage', name: 'ErrorMessage', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    FailedResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#FailedResource', name: 'FailedResource')
    FailedResourceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourcegroups#FailedResourceList', name: 'FailedResourceList')
    ForbiddenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#ForbiddenException', name: 'ForbiddenException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    GetAccountSettingsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#GetAccountSettingsOutput', name: 'GetAccountSettingsOutput')
    GetGroupConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#GetGroupConfigurationInput', name: 'GetGroupConfigurationInput')
    GetGroupConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#GetGroupConfigurationOutput', name: 'GetGroupConfigurationOutput')
    GetGroupInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#GetGroupInput', name: 'GetGroupInput')
    GetGroupOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#GetGroupOutput', name: 'GetGroupOutput')
    GetGroupQueryInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#GetGroupQueryInput', name: 'GetGroupQueryInput')
    GetGroupQueryOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#GetGroupQueryOutput', name: 'GetGroupQueryOutput')
    GetTagSyncTaskInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#GetTagSyncTaskInput', name: 'GetTagSyncTaskInput')
    GetTagSyncTaskOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#GetTagSyncTaskOutput', name: 'GetTagSyncTaskOutput')
    GetTagsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#GetTagsInput', name: 'GetTagsInput')
    GetTagsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#GetTagsOutput', name: 'GetTagsOutput')
    Group = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#Group', name: 'Group')
    GroupArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourcegroups#GroupArn', name: 'GroupArn', traits: {"smithy.api#length" => {"min" => 12, "max" => 1600}, "smithy.api#pattern" => "^arn:aws(-[a-z]+)*:resource-groups:[a-z]{2}(-[a-z]+)+-\\d{1}:[0-9]{12}:group/([a-zA-Z0-9_\\.-]{1,300}|[a-zA-Z0-9_\\.-]{1,150}/[a-z0-9]{26})$"})
    GroupArnV2 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourcegroups#GroupArnV2', name: 'GroupArnV2', traits: {"smithy.api#length" => {"min" => 12, "max" => 1600}, "smithy.api#pattern" => "^arn:aws(-[a-z]+)*:resource-groups:[a-z]{2}(-[a-z]+)+-\\d{1}:[0-9]{12}:group/([a-zA-Z0-9_\\.-]{1,300}|[a-zA-Z0-9_\\.-]{1,150}/[a-z0-9]{26})$"})
    GroupConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#GroupConfiguration', name: 'GroupConfiguration')
    GroupConfigurationFailureReason = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourcegroups#GroupConfigurationFailureReason', name: 'GroupConfigurationFailureReason')
    GroupConfigurationItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#GroupConfigurationItem', name: 'GroupConfigurationItem')
    GroupConfigurationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourcegroups#GroupConfigurationList', name: 'GroupConfigurationList', traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    GroupConfigurationParameter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#GroupConfigurationParameter', name: 'GroupConfigurationParameter')
    GroupConfigurationParameterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourcegroups#GroupConfigurationParameterName', name: 'GroupConfigurationParameterName', traits: {"smithy.api#length" => {"min" => 1, "max" => 80}, "smithy.api#pattern" => "^[a-z-]+$"})
    GroupConfigurationParameterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourcegroups#GroupConfigurationParameterValue', name: 'GroupConfigurationParameterValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9:\\/\\._-]+$"})
    GroupConfigurationParameterValueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourcegroups#GroupConfigurationParameterValueList', name: 'GroupConfigurationParameterValueList')
    GroupConfigurationStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.resourcegroups#GroupConfigurationStatus', name: 'GroupConfigurationStatus')
    GroupConfigurationType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourcegroups#GroupConfigurationType', name: 'GroupConfigurationType', traits: {"smithy.api#length" => {"min" => 0, "max" => 40}, "smithy.api#pattern" => "^AWS::[a-zA-Z0-9]+::[a-zA-Z0-9]+$"})
    GroupFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#GroupFilter', name: 'GroupFilter')
    GroupFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourcegroups#GroupFilterList', name: 'GroupFilterList')
    GroupFilterName = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.resourcegroups#GroupFilterName', name: 'GroupFilterName')
    GroupFilterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourcegroups#GroupFilterValue', name: 'GroupFilterValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#pattern" => "^AWS::(AllSupported|[a-zA-Z0-9]+::[a-zA-Z0-9]+)|[\\s\\p{L}0-9_\\.-]*$"})
    GroupFilterValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourcegroups#GroupFilterValues', name: 'GroupFilterValues', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    GroupIdentifier = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#GroupIdentifier', name: 'GroupIdentifier')
    GroupIdentifierList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourcegroups#GroupIdentifierList', name: 'GroupIdentifierList')
    GroupLifecycleEventsDesiredStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.resourcegroups#GroupLifecycleEventsDesiredStatus', name: 'GroupLifecycleEventsDesiredStatus')
    GroupLifecycleEventsStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.resourcegroups#GroupLifecycleEventsStatus', name: 'GroupLifecycleEventsStatus')
    GroupLifecycleEventsStatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourcegroups#GroupLifecycleEventsStatusMessage', name: 'GroupLifecycleEventsStatusMessage', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    GroupList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourcegroups#GroupList', name: 'GroupList')
    GroupName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourcegroups#GroupName', name: 'GroupName', traits: {"smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\.-]{1,300}|[a-zA-Z0-9_\\.-]{1,150}/[a-z0-9]{26}$"})
    GroupParameterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourcegroups#GroupParameterList', name: 'GroupParameterList')
    GroupQuery = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#GroupQuery', name: 'GroupQuery')
    GroupResourcesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#GroupResourcesInput', name: 'GroupResourcesInput')
    GroupResourcesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#GroupResourcesOutput', name: 'GroupResourcesOutput')
    GroupString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourcegroups#GroupString', name: 'GroupString', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\.-]{1,300}|[a-zA-Z0-9_\\.-]{1,150}/[a-z0-9]{26}|arn:aws(-[a-z]+)*:resource-groups:[a-z]{2}(-[a-z]+)+-\\d{1}:[0-9]{12}:group/([a-zA-Z0-9_\\.-]{1,300}|[a-zA-Z0-9_\\.-]{1,150}/[a-z0-9]{26})$"})
    GroupStringV2 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourcegroups#GroupStringV2', name: 'GroupStringV2', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\.-]{1,300}|[a-zA-Z0-9_\\.-]{1,150}/[a-z0-9]{26}|arn:aws(-[a-z]+)*:resource-groups:[a-z]{2}(-[a-z]+)+-\\d{1}:[0-9]{12}:group/([a-zA-Z0-9_\\.-]{1,300}|[a-zA-Z0-9_\\.-]{1,150}/[a-z0-9]{26})$"})
    GroupingStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.resourcegroups#GroupingStatus', name: 'GroupingStatus')
    GroupingStatusesItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#GroupingStatusesItem', name: 'GroupingStatusesItem')
    GroupingStatusesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourcegroups#GroupingStatusesList', name: 'GroupingStatusesList')
    GroupingType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.resourcegroups#GroupingType', name: 'GroupingType')
    InternalServerErrorException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#InternalServerErrorException', name: 'InternalServerErrorException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListGroupResourcesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#ListGroupResourcesInput', name: 'ListGroupResourcesInput')
    ListGroupResourcesItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#ListGroupResourcesItem', name: 'ListGroupResourcesItem')
    ListGroupResourcesItemList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourcegroups#ListGroupResourcesItemList', name: 'ListGroupResourcesItemList')
    ListGroupResourcesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#ListGroupResourcesOutput', name: 'ListGroupResourcesOutput')
    ListGroupingStatusesFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#ListGroupingStatusesFilter', name: 'ListGroupingStatusesFilter')
    ListGroupingStatusesFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourcegroups#ListGroupingStatusesFilterList', name: 'ListGroupingStatusesFilterList')
    ListGroupingStatusesFilterName = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.resourcegroups#ListGroupingStatusesFilterName', name: 'ListGroupingStatusesFilterName')
    ListGroupingStatusesFilterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourcegroups#ListGroupingStatusesFilterValue', name: 'ListGroupingStatusesFilterValue', traits: {"smithy.api#pattern" => "^SUCCESS|FAILED|IN_PROGRESS|SKIPPED|arn:aws(-[a-z]+)*:[a-z0-9\\-]*:([a-z]{2}(-[a-z]+)+-\\d{1})?:([0-9]{12})?:.+$"})
    ListGroupingStatusesFilterValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourcegroups#ListGroupingStatusesFilterValues', name: 'ListGroupingStatusesFilterValues', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ListGroupingStatusesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#ListGroupingStatusesInput', name: 'ListGroupingStatusesInput')
    ListGroupingStatusesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#ListGroupingStatusesOutput', name: 'ListGroupingStatusesOutput')
    ListGroupsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#ListGroupsInput', name: 'ListGroupsInput')
    ListGroupsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#ListGroupsOutput', name: 'ListGroupsOutput')
    ListTagSyncTasksFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#ListTagSyncTasksFilter', name: 'ListTagSyncTasksFilter')
    ListTagSyncTasksFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourcegroups#ListTagSyncTasksFilterList', name: 'ListTagSyncTasksFilterList')
    ListTagSyncTasksInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#ListTagSyncTasksInput', name: 'ListTagSyncTasksInput')
    ListTagSyncTasksOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#ListTagSyncTasksOutput', name: 'ListTagSyncTasksOutput')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.resourcegroups#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MethodNotAllowedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#MethodNotAllowedException', name: 'MethodNotAllowedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 405})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourcegroups#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 8192}, "smithy.api#pattern" => "^[a-zA-Z0-9+/]*={0,2}$"})
    NotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#NotFoundException', name: 'NotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Owner = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourcegroups#Owner', name: 'Owner', traits: {"smithy.api#length" => {"min" => 0, "max" => 300}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    PendingResource = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#PendingResource', name: 'PendingResource')
    PendingResourceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourcegroups#PendingResourceList', name: 'PendingResourceList')
    PutGroupConfigurationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#PutGroupConfigurationInput', name: 'PutGroupConfigurationInput')
    PutGroupConfigurationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#PutGroupConfigurationOutput', name: 'PutGroupConfigurationOutput')
    Query = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourcegroups#Query', name: 'Query', traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    QueryError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#QueryError', name: 'QueryError')
    QueryErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.resourcegroups#QueryErrorCode', name: 'QueryErrorCode')
    QueryErrorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourcegroups#QueryErrorList', name: 'QueryErrorList')
    QueryErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourcegroups#QueryErrorMessage', name: 'QueryErrorMessage')
    QueryType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.resourcegroups#QueryType', name: 'QueryType', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^\\w+$"})
    ResourceArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourcegroups#ResourceArn', name: 'ResourceArn', traits: {"smithy.api#pattern" => "^arn:aws(-[a-z]+)*:[a-z0-9\\-]*:([a-z]{2}(-[a-z]+)+-\\d{1})?:([0-9]{12})?:.+$"})
    ResourceArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourcegroups#ResourceArnList', name: 'ResourceArnList', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ResourceFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#ResourceFilter', name: 'ResourceFilter')
    ResourceFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourcegroups#ResourceFilterList', name: 'ResourceFilterList')
    ResourceFilterName = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.resourcegroups#ResourceFilterName', name: 'ResourceFilterName')
    ResourceFilterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourcegroups#ResourceFilterValue', name: 'ResourceFilterValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^AWS::[a-zA-Z0-9]+::[a-zA-Z0-9]+$"})
    ResourceFilterValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourcegroups#ResourceFilterValues', name: 'ResourceFilterValues', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    ResourceIdentifier = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#ResourceIdentifier', name: 'ResourceIdentifier')
    ResourceIdentifierList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourcegroups#ResourceIdentifierList', name: 'ResourceIdentifierList')
    ResourceQuery = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#ResourceQuery', name: 'ResourceQuery')
    ResourceStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#ResourceStatus', name: 'ResourceStatus')
    ResourceStatusValue = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.resourcegroups#ResourceStatusValue', name: 'ResourceStatusValue')
    ResourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourcegroups#ResourceType', name: 'ResourceType', traits: {"smithy.api#pattern" => "^AWS::[a-zA-Z0-9]+::\\w+$"})
    RoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourcegroups#RoleArn', name: 'RoleArn', traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"})
    SearchResourcesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#SearchResourcesInput', name: 'SearchResourcesInput')
    SearchResourcesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#SearchResourcesOutput', name: 'SearchResourcesOutput')
    StartTagSyncTaskInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#StartTagSyncTaskInput', name: 'StartTagSyncTaskInput')
    StartTagSyncTaskOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#StartTagSyncTaskOutput', name: 'StartTagSyncTaskOutput')
    TagInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#TagInput', name: 'TagInput')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourcegroups#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourcegroups#TagKeyList', name: 'TagKeyList')
    TagOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#TagOutput', name: 'TagOutput')
    TagSyncTaskArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourcegroups#TagSyncTaskArn', name: 'TagSyncTaskArn', traits: {"smithy.api#length" => {"min" => 12, "max" => 1600}, "smithy.api#pattern" => "^arn:aws(-[a-z]+)*:resource-groups:[a-z]{2}(-[a-z]+)+-\\d{1}:[0-9]{12}:group/[a-zA-Z0-9_\\.-]{1,150}/[a-z0-9]{26}/tag-sync-task/[a-z0-9]{26}$"})
    TagSyncTaskItem = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#TagSyncTaskItem', name: 'TagSyncTaskItem')
    TagSyncTaskList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourcegroups#TagSyncTaskList', name: 'TagSyncTaskList')
    TagSyncTaskStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.resourcegroups#TagSyncTaskStatus', name: 'TagSyncTaskStatus')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourcegroups#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    Tags = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.resourcegroups#Tags', name: 'Tags')
    TooManyRequestsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#TooManyRequestsException', name: 'TooManyRequestsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UnauthorizedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#UnauthorizedException', name: 'UnauthorizedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UngroupResourcesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#UngroupResourcesInput', name: 'UngroupResourcesInput')
    UngroupResourcesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#UngroupResourcesOutput', name: 'UngroupResourcesOutput')
    UntagInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#UntagInput', name: 'UntagInput')
    UntagOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#UntagOutput', name: 'UntagOutput')
    UpdateAccountSettingsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#UpdateAccountSettingsInput', name: 'UpdateAccountSettingsInput')
    UpdateAccountSettingsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#UpdateAccountSettingsOutput', name: 'UpdateAccountSettingsOutput')
    UpdateGroupInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#UpdateGroupInput', name: 'UpdateGroupInput')
    UpdateGroupOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#UpdateGroupOutput', name: 'UpdateGroupOutput')
    UpdateGroupQueryInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#UpdateGroupQueryInput', name: 'UpdateGroupQueryInput')
    UpdateGroupQueryOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroups#UpdateGroupQueryOutput', name: 'UpdateGroupQueryOutput')
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.resourcegroups#timestamp', name: 'Timestamp')

    AccountSettings.add_member(:group_lifecycle_events_desired_status, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupLifecycleEventsDesiredStatus, location_name: 'GroupLifecycleEventsDesiredStatus', traits: {"smithy.api#documentation" => "<p>The desired target status of the group lifecycle events feature. If</p>"}))
    AccountSettings.add_member(:group_lifecycle_events_status, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupLifecycleEventsStatus, location_name: 'GroupLifecycleEventsStatus', traits: {"smithy.api#documentation" => "<p>The current status of the group lifecycle events feature.</p>"}))
    AccountSettings.add_member(:group_lifecycle_events_status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupLifecycleEventsStatusMessage, location_name: 'GroupLifecycleEventsStatusMessage', traits: {"smithy.api#documentation" => "<p>The text of any error message occurs during an attempt to turn group lifecycle events on or off.</p>"}))
    AccountSettings.type = Types::AccountSettings
    ApplicationTag.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationTagKey)
    ApplicationTag.value = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationArn)
    BadRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    BadRequestException.type = Types::BadRequestException
    CancelTagSyncTaskInput.add_member(:task_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TagSyncTaskArn, location_name: 'TaskArn', traits: {"smithy.api#documentation" => "<p>The Amazon resource name (ARN) of the tag-sync task. </p>", "smithy.api#required" => {}}))
    CancelTagSyncTaskInput.type = Types::CancelTagSyncTaskInput
    CreateGroupInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGroupName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the group, which is the identifier of the group in other operations. You\n            can't change the name of a resource group after you create it. A resource group name can\n            consist of letters, numbers, hyphens, periods, and underscores. The name cannot start\n            with <code>AWS</code>, <code>aws</code>, or any other possible capitalization; these are\n            reserved. A resource group name must be unique within each Amazon Web Services Region in your Amazon Web Services\n            account.</p>", "smithy.api#required" => {}}))
    CreateGroupInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the resource group. Descriptions can consist of letters, numbers,\n            hyphens, underscores, periods, and spaces.</p>"}))
    CreateGroupInput.add_member(:resource_query, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceQuery, location_name: 'ResourceQuery', traits: {"smithy.api#documentation" => "<p>The resource query that determines which Amazon Web Services resources are members of this group.\n            For more information about resource queries, see <a href=\"https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag\">Create\n                a tag-based group in Resource Groups</a>. </p>\n         <note>\n            <p>A resource group can contain either a <code>ResourceQuery</code> or a\n                    <code>Configuration</code>, but not both.</p>\n         </note>"}))
    CreateGroupInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags to add to the group. A tag is key-value pair string.</p>"}))
    CreateGroupInput.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupConfigurationList, location_name: 'Configuration', traits: {"smithy.api#documentation" => "<p>A configuration associates the resource group with an Amazon Web Services service and specifies how\n            the service can interact with the resources in the group. A configuration is an array of\n                <a>GroupConfigurationItem</a> elements. For details about the syntax of\n            service configurations, see <a href=\"https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html\">Service configurations for Resource Groups</a>.</p>\n         <note>\n            <p>A resource group can contain either a <code>Configuration</code> or a\n                    <code>ResourceQuery</code>, but not both.</p>\n         </note>"}))
    CreateGroupInput.add_member(:criticality, Smithy::Schema::Shapes::ShapeRef.new(shape: Criticality, location_name: 'Criticality', traits: {"smithy.api#documentation" => "<p>The critical rank of the application group on a scale of 1 to 10, with a \n            rank of 1 being the most critical, and a rank of 10 being least critical.</p>"}))
    CreateGroupInput.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: Owner, location_name: 'Owner', traits: {"smithy.api#documentation" => "<p>A name, email address or other identifier for the person or group \n            who is considered as the owner of this application group within your organization. </p>"}))
    CreateGroupInput.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'DisplayName', traits: {"smithy.api#documentation" => "<p>The name of the application group, which you can change at any time. </p>"}))
    CreateGroupInput.type = Types::CreateGroupInput
    CreateGroupOutput.add_member(:group, Smithy::Schema::Shapes::ShapeRef.new(shape: Group, location_name: 'Group', traits: {"smithy.api#documentation" => "<p>The description of the resource group.</p>"}))
    CreateGroupOutput.add_member(:resource_query, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceQuery, location_name: 'ResourceQuery', traits: {"smithy.api#documentation" => "<p>The resource query associated with the group. For more information about resource\n            queries, see <a href=\"https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag\">Create\n                a tag-based group in Resource Groups</a>. </p>"}))
    CreateGroupOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags associated with the group.</p>"}))
    CreateGroupOutput.add_member(:group_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupConfiguration, location_name: 'GroupConfiguration', traits: {"smithy.api#documentation" => "<p>The service configuration associated with the resource group. For details about the\n            syntax of a service configuration, see <a href=\"https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html\">Service configurations for Resource Groups</a>.</p>"}))
    CreateGroupOutput.type = Types::CreateGroupOutput
    DeleteGroupInput.add_member(:group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'GroupName', traits: {"smithy.api#deprecated" => {"message" => "This field is deprecated, use Group instead."}, "smithy.api#documentation" => "<p>Deprecated - don't use this parameter. Use <code>Group</code> instead.</p>"}))
    DeleteGroupInput.add_member(:group, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupStringV2, location_name: 'Group', traits: {"smithy.api#documentation" => "<p>The name or the Amazon resource name (ARN) of the resource group to delete.</p>"}))
    DeleteGroupInput.type = Types::DeleteGroupInput
    DeleteGroupOutput.add_member(:group, Smithy::Schema::Shapes::ShapeRef.new(shape: Group, location_name: 'Group', traits: {"smithy.api#documentation" => "<p>A full description of the deleted resource group.</p>"}))
    DeleteGroupOutput.type = Types::DeleteGroupOutput
    FailedResource.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon resource name (ARN) of the resource that failed to be added or removed.</p>"}))
    FailedResource.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The error message text associated with the failure.</p>"}))
    FailedResource.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The error code associated with the failure.</p>"}))
    FailedResource.type = Types::FailedResource
    FailedResourceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FailedResource)
    ForbiddenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ForbiddenException.type = Types::ForbiddenException
    GetAccountSettingsOutput.add_member(:account_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSettings, location_name: 'AccountSettings', traits: {"smithy.api#documentation" => "<p>The current settings for the optional features in Resource Groups.</p>"}))
    GetAccountSettingsOutput.type = Types::GetAccountSettingsOutput
    GetGroupConfigurationInput.add_member(:group, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupString, location_name: 'Group', traits: {"smithy.api#documentation" => "<p>The name or the Amazon resource name (ARN) of the resource group for which you want to retrive the service\n            configuration.</p>"}))
    GetGroupConfigurationInput.type = Types::GetGroupConfigurationInput
    GetGroupConfigurationOutput.add_member(:group_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupConfiguration, location_name: 'GroupConfiguration', traits: {"smithy.api#documentation" => "<p>A structure that describes the service configuration attached with the specified\n            group. For details about the service configuration syntax, see <a href=\"https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html\">Service configurations for\n                Resource Groups</a>.</p>"}))
    GetGroupConfigurationOutput.type = Types::GetGroupConfigurationOutput
    GetGroupInput.add_member(:group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'GroupName', traits: {"smithy.api#deprecated" => {"message" => "This field is deprecated, use Group instead."}, "smithy.api#documentation" => "<p>Deprecated - don't use this parameter. Use <code>Group</code> instead.</p>"}))
    GetGroupInput.add_member(:group, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupStringV2, location_name: 'Group', traits: {"smithy.api#documentation" => "<p>The name or the Amazon resource name (ARN) of the resource group to retrieve.</p>"}))
    GetGroupInput.type = Types::GetGroupInput
    GetGroupOutput.add_member(:group, Smithy::Schema::Shapes::ShapeRef.new(shape: Group, location_name: 'Group', traits: {"smithy.api#documentation" => "<p>A structure that contains the metadata details for the specified resource group. Use\n                <a>GetGroupQuery</a> and <a>GetGroupConfiguration</a> to get\n            those additional details of the resource group.</p>"}))
    GetGroupOutput.type = Types::GetGroupOutput
    GetGroupQueryInput.add_member(:group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'GroupName', traits: {"smithy.api#deprecated" => {"message" => "This field is deprecated, use Group instead."}, "smithy.api#documentation" => "<p>Don't use this parameter. Use <code>Group</code> instead.</p>"}))
    GetGroupQueryInput.add_member(:group, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupString, location_name: 'Group', traits: {"smithy.api#documentation" => "<p>The name or the Amazon resource name (ARN) of the resource group to query.</p>"}))
    GetGroupQueryInput.type = Types::GetGroupQueryInput
    GetGroupQueryOutput.add_member(:group_query, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupQuery, location_name: 'GroupQuery', traits: {"smithy.api#documentation" => "<p>The resource query associated with the specified group. For more information about\n            resource queries, see <a href=\"https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag\">Create\n                a tag-based group in Resource Groups</a>.</p>"}))
    GetGroupQueryOutput.type = Types::GetGroupQueryOutput
    GetTagSyncTaskInput.add_member(:task_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TagSyncTaskArn, location_name: 'TaskArn', traits: {"smithy.api#documentation" => "<p>The Amazon resource name (ARN) of the tag-sync task. </p>", "smithy.api#required" => {}}))
    GetTagSyncTaskInput.type = Types::GetTagSyncTaskInput
    GetTagSyncTaskOutput.add_member(:group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupArnV2, location_name: 'GroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon resource name (ARN) of the application group. </p>"}))
    GetTagSyncTaskOutput.add_member(:group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'GroupName', traits: {"smithy.api#documentation" => "<p>The name of the application group. </p>"}))
    GetTagSyncTaskOutput.add_member(:task_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TagSyncTaskArn, location_name: 'TaskArn', traits: {"smithy.api#documentation" => "<p>The Amazon resource name (ARN) of the tag-sync task. </p>"}))
    GetTagSyncTaskOutput.add_member(:tag_key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'TagKey', traits: {"smithy.api#documentation" => "<p>The tag key. </p>"}))
    GetTagSyncTaskOutput.add_member(:tag_value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'TagValue', traits: {"smithy.api#documentation" => "<p>The tag value. </p>"}))
    GetTagSyncTaskOutput.add_member(:resource_query, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceQuery, location_name: 'ResourceQuery'))
    GetTagSyncTaskOutput.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon resource name (ARN) of the role assumed by Resource Groups to tag and untag resources on your behalf. </p>\n         <p>For more information about this role, review <a href=\"https://docs.aws.amazon.com/servicecatalog/latest/arguide/app-tag-sync.html#tag-sync-role\">Tag-sync required permissions</a>. \n        </p>"}))
    GetTagSyncTaskOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TagSyncTaskStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the tag-sync task. </p>\n         <p>Valid values include:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ACTIVE</code> - The tag-sync task is actively managing resources in \n                    the application by adding or removing the <code>awsApplication</code> tag from resources \n                    when they are tagged or untagged with the specified tag key-value pair. \n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>ERROR</code> - The tag-sync task is not actively managing resources \n                    in the application. Review the <code>ErrorMessage</code> for more information about \n                    resolving the error. \n                </p>\n            </li>\n         </ul>"}))
    GetTagSyncTaskOutput.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The specific error message in cases where the tag-sync task status\n            is <code>ERROR</code>. </p>"}))
    GetTagSyncTaskOutput.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when the tag-sync task was created. </p>"}))
    GetTagSyncTaskOutput.type = Types::GetTagSyncTaskOutput
    GetTagsInput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupArnV2, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon resource name (ARN) of the resource group whose tags you want to retrieve.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTagsInput.type = Types::GetTagsInput
    GetTagsOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupArnV2, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>TheAmazon resource name (ARN) of the tagged resource group.</p>"}))
    GetTagsOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags associated with the specified resource group.</p>"}))
    GetTagsOutput.type = Types::GetTagsOutput
    Group.add_member(:group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupArnV2, location_name: 'GroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon resource name (ARN) of the resource group.</p>", "smithy.api#required" => {}}))
    Group.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the resource group.</p>", "smithy.api#required" => {}}))
    Group.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the resource group.</p>"}))
    Group.add_member(:criticality, Smithy::Schema::Shapes::ShapeRef.new(shape: Criticality, location_name: 'Criticality', traits: {"smithy.api#documentation" => "<p>The critical rank of the application group on a scale of 1 to 10, with a \n            rank of 1 being the most critical, and a rank of 10 being least critical.</p>"}))
    Group.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: Owner, location_name: 'Owner', traits: {"smithy.api#documentation" => "<p>A name, email address or other identifier for the person or group \n            who is considered as the owner of this application group within your organization. </p>"}))
    Group.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'DisplayName', traits: {"smithy.api#documentation" => "<p>The name of the application group, which you can change at any time. </p>"}))
    Group.add_member(:application_tag, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationTag, location_name: 'ApplicationTag', traits: {"smithy.api#documentation" => "<p>A tag that defines the application group membership. This tag is only supported \n            for application groups. </p>"}))
    Group.type = Types::Group
    GroupConfiguration.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupConfigurationList, location_name: 'Configuration', traits: {"smithy.api#documentation" => "<p>The configuration currently associated with the group and in effect.</p>"}))
    GroupConfiguration.add_member(:proposed_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupConfigurationList, location_name: 'ProposedConfiguration', traits: {"smithy.api#documentation" => "<p>If present, the new configuration that is in the process of being applied to the\n            group.</p>"}))
    GroupConfiguration.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupConfigurationStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current status of an attempt to update the group configuration.</p>"}))
    GroupConfiguration.add_member(:failure_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupConfigurationFailureReason, location_name: 'FailureReason', traits: {"smithy.api#documentation" => "<p>If present, the reason why a request to update the group configuration failed.</p>"}))
    GroupConfiguration.type = Types::GroupConfiguration
    GroupConfigurationItem.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupConfigurationType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>Specifies the type of group configuration item. Each item must have a unique value for\n                <code>type</code>. For the list of types that you can specify for a configuration\n            item, see <a href=\"https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html#about-slg-types\">Supported resource types and\n                parameters</a>.</p>", "smithy.api#required" => {}}))
    GroupConfigurationItem.add_member(:parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupParameterList, location_name: 'Parameters', traits: {"smithy.api#documentation" => "<p>A collection of parameters for this group configuration item. For the list of\n            parameters that you can use with each configuration item type, see <a href=\"https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html#about-slg-types\">Supported\n                resource types and parameters</a>.</p>"}))
    GroupConfigurationItem.type = Types::GroupConfigurationItem
    GroupConfigurationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GroupConfigurationItem)
    GroupConfigurationParameter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupConfigurationParameterName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the group configuration parameter. For the list of parameters that you can\n            use with each configuration item type, see <a href=\"https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html#about-slg-types\">Supported resource types and\n                parameters</a>.</p>", "smithy.api#required" => {}}))
    GroupConfigurationParameter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupConfigurationParameterValueList, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>The value or values to be used for the specified parameter. For the list of values you\n            can use with each parameter, see <a href=\"https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html#about-slg-types\">Supported resource types and\n                parameters</a>.</p>"}))
    GroupConfigurationParameter.type = Types::GroupConfigurationParameter
    GroupConfigurationParameterValueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GroupConfigurationParameterValue)
    GroupConfigurationStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    GroupConfigurationStatus.add_member(:update_complete, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_COMPLETE', traits: {"smithy.api#enumValue" => "UPDATE_COMPLETE"}))
    GroupConfigurationStatus.add_member(:update_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATE_FAILED', traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    GroupFilter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupFilterName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the filter. Filter names are case-sensitive.</p>", "smithy.api#required" => {}}))
    GroupFilter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupFilterValues, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>One or more filter values. Allowed filter values vary by group filter name, and are\n            case-sensitive.</p>", "smithy.api#required" => {}}))
    GroupFilter.type = Types::GroupFilter
    GroupFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GroupFilter)
    GroupFilterName.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ResourceType', traits: {"smithy.api#enumValue" => "resource-type"}))
    GroupFilterName.add_member(:configuration_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ConfigurationType', traits: {"smithy.api#enumValue" => "configuration-type"}))
    GroupFilterName.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Owner', traits: {"smithy.api#enumValue" => "owner"}))
    GroupFilterName.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DisplayName', traits: {"smithy.api#enumValue" => "display-name"}))
    GroupFilterName.add_member(:criticality, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Criticality', traits: {"smithy.api#enumValue" => "criticality"}))
    GroupFilterValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GroupFilterValue)
    GroupIdentifier.add_member(:group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'GroupName', traits: {"smithy.api#documentation" => "<p>The name of the resource group.</p>"}))
    GroupIdentifier.add_member(:group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupArn, location_name: 'GroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon resource name (ARN) of the resource group.</p>"}))
    GroupIdentifier.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the application group. </p>"}))
    GroupIdentifier.add_member(:criticality, Smithy::Schema::Shapes::ShapeRef.new(shape: Criticality, location_name: 'Criticality', traits: {"smithy.api#documentation" => "<p>The critical rank of the application group on a scale of 1 to 10, with a \n            rank of 1 being the most critical, and a rank of 10 being least critical.</p>"}))
    GroupIdentifier.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: Owner, location_name: 'Owner', traits: {"smithy.api#documentation" => "<p>A name, email address or other identifier for the person or group \n            who is considered as the owner of this group within your organization. </p>"}))
    GroupIdentifier.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'DisplayName', traits: {"smithy.api#documentation" => "<p>The name of the application group, which you can change at any time. </p>"}))
    GroupIdentifier.type = Types::GroupIdentifier
    GroupIdentifierList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GroupIdentifier)
    GroupLifecycleEventsDesiredStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    GroupLifecycleEventsDesiredStatus.add_member(:inactive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    GroupLifecycleEventsStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    GroupLifecycleEventsStatus.add_member(:inactive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    GroupLifecycleEventsStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    GroupLifecycleEventsStatus.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    GroupList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Group)
    GroupParameterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GroupConfigurationParameter)
    GroupQuery.add_member(:group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'GroupName', traits: {"smithy.api#documentation" => "<p>The name of the resource group that is associated with the specified resource\n            query.</p>", "smithy.api#required" => {}}))
    GroupQuery.add_member(:resource_query, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceQuery, location_name: 'ResourceQuery', traits: {"smithy.api#documentation" => "<p>The resource query that determines which Amazon Web Services resources are members of the associated\n            resource group.</p>", "smithy.api#required" => {}}))
    GroupQuery.type = Types::GroupQuery
    GroupResourcesInput.add_member(:group, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupStringV2, location_name: 'Group', traits: {"smithy.api#documentation" => "<p>The name or the Amazon resource name (ARN) of the resource group to add resources to.</p>", "smithy.api#required" => {}}))
    GroupResourcesInput.add_member(:resource_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArnList, location_name: 'ResourceArns', traits: {"smithy.api#documentation" => "<p>The list of Amazon resource names (ARNs) of the resources to be added to the group. </p>", "smithy.api#required" => {}}))
    GroupResourcesInput.type = Types::GroupResourcesInput
    GroupResourcesOutput.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArnList, location_name: 'Succeeded', traits: {"smithy.api#documentation" => "<p>A list of Amazon resource names (ARNs) of the resources that this operation successfully added to the\n            group.</p>"}))
    GroupResourcesOutput.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedResourceList, location_name: 'Failed', traits: {"smithy.api#documentation" => "<p>A list of Amazon resource names (ARNs) of any resources that this operation failed to add to the group.</p>"}))
    GroupResourcesOutput.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: PendingResourceList, location_name: 'Pending', traits: {"smithy.api#documentation" => "<p>A list of Amazon resource names (ARNs) of any resources that this operation is still in the process adding to\n            the group. These pending additions continue asynchronously. You can check the status of\n            pending additions by using the <code>\n               <a>ListGroupResources</a>\n            </code>\n            operation, and checking the <code>Resources</code> array in the response and the\n                <code>Status</code> field of each object in that array. </p>"}))
    GroupResourcesOutput.type = Types::GroupResourcesOutput
    GroupingStatus.add_member(:success, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUCCESS', traits: {"smithy.api#enumValue" => "SUCCESS"}))
    GroupingStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    GroupingStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    GroupingStatus.add_member(:skipped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SKIPPED', traits: {"smithy.api#enumValue" => "SKIPPED"}))
    GroupingStatusesItem.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon resource name (ARN) of a resource. </p>"}))
    GroupingStatusesItem.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupingType, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>Describes the resource grouping action with values of \n            <code>GROUP</code> or <code>UNGROUP</code>. </p>"}))
    GroupingStatusesItem.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupingStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Describes the resource grouping status with values of \n            <code>SUCCESS</code>, <code>FAILED</code>, <code>IN_PROGRESS</code>, \n            or <code>SKIPPED</code>. </p>"}))
    GroupingStatusesItem.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>A message that explains the <code>ErrorCode</code>. </p>"}))
    GroupingStatusesItem.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>Specifies the error code that was raised. </p>"}))
    GroupingStatusesItem.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>A timestamp of when the status was last updated. </p>"}))
    GroupingStatusesItem.type = Types::GroupingStatusesItem
    GroupingStatusesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GroupingStatusesItem)
    GroupingType.add_member(:group, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GROUP', traits: {"smithy.api#enumValue" => "GROUP"}))
    GroupingType.add_member(:ungroup, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNGROUP', traits: {"smithy.api#enumValue" => "UNGROUP"}))
    InternalServerErrorException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InternalServerErrorException.type = Types::InternalServerErrorException
    ListGroupResourcesInput.add_member(:group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'GroupName', traits: {"smithy.api#deprecated" => {"message" => "This field is deprecated, use Group instead."}, "smithy.api#documentation" => "<important>\n            <p>\n               <i>\n                  <b>Deprecated - don't use this parameter. Use the\n                            <code>Group</code> request field instead.</b>\n               </i>\n            </p>\n         </important>"}))
    ListGroupResourcesInput.add_member(:group, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupStringV2, location_name: 'Group', traits: {"smithy.api#documentation" => "<p>The name or the Amazon resource name (ARN) of the resource group. </p>"}))
    ListGroupResourcesInput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceFilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>Filters, formatted as <a>ResourceFilter</a> objects, that you want to apply\n            to a <code>ListGroupResources</code> operation. Filters the results to include only\n            those of the specified resource types.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>resource-type</code> - Filter resources by their type. Specify up to\n                    five resource types in the format <code>AWS::ServiceCode::ResourceType</code>.\n                    For example, <code>AWS::EC2::Instance</code>, or <code>AWS::S3::Bucket</code>.\n                </p>\n            </li>\n         </ul>\n         <p>When you specify a <code>resource-type</code> filter for\n                <code>ListGroupResources</code>, Resource Groups validates your filter resource types\n            against the types that are defined in the query associated with the group. For example,\n            if a group contains only S3 buckets because its query specifies only that resource type,\n            but your <code>resource-type</code> filter includes EC2 instances, AWS Resource Groups does not\n            filter for EC2 instances. In this case, a <code>ListGroupResources</code> request\n            returns a <code>BadRequestException</code> error with a message similar to the\n            following:</p>\n         <p>\n            <code>The resource types specified as filters in the request are not\n            valid.</code>\n         </p>\n         <p>The error includes a list of resource types that failed the validation because they\n            are not part of the query associated with the group. This validation doesn't occur when\n            the group query specifies <code>AWS::AllSupported</code>, because a group based on such\n            a query can contain any of the allowed resource types for the query type (tag-based or\n            Amazon CloudFront stack-based queries).</p>"}))
    ListGroupResourcesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The total number of results that you want included on each page of the \nresponse. If you do not include this parameter, it defaults to a value that is specific to the \noperation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> \nresponse element is present and has a value (is not null). Include that value as the \n<code>NextToken</code> request parameter in the next call to the operation to get the next part \nof the results. Note that the service might return fewer results than the maximum even when there \nare more results available. You should check <code>NextToken</code> after every operation to \nensure that you receive all of the results.</p>"}))
    ListGroupResourcesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The parameter for receiving additional results if you receive a\n<code>NextToken</code> response in a previous request. A <code>NextToken</code> response \nindicates that more output is available. Set this parameter to the value provided by a previous \ncall's <code>NextToken</code> response to indicate where the output should continue from.</p>"}))
    ListGroupResourcesInput.type = Types::ListGroupResourcesInput
    ListGroupResourcesItem.add_member(:identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: 'Identifier'))
    ListGroupResourcesItem.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>A structure that contains the status of this resource's membership in the\n            group.</p>\n         <note>\n            <p>This field is present in the response only if the group is of type\n                    <code>AWS::EC2::HostManagement</code>.</p>\n         </note>"}))
    ListGroupResourcesItem.type = Types::ListGroupResourcesItem
    ListGroupResourcesItemList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupResourcesItem)
    ListGroupResourcesOutput.add_member(:resources, Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupResourcesItemList, location_name: 'Resources', traits: {"smithy.api#documentation" => "<p>An array of resources from which you can determine each resource's identity, type, and\n            group membership status.</p>"}))
    ListGroupResourcesOutput.add_member(:resource_identifiers, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdentifierList, location_name: 'ResourceIdentifiers', traits: {"smithy.api#deprecated" => {"message" => "This field is deprecated, use Resources instead."}, "smithy.api#documentation" => "<important>\n            <p>\n               <b>\n                  <i>Deprecated - don't use this parameter. Use the\n                            <code>Resources</code> response field\n                instead.</i>\n               </b>\n            </p>\n         </important>"}))
    ListGroupResourcesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is \nincluded in the current response. Use this value in the <code>NextToken</code> request parameter \nin a subsequent call to the operation to get the next part of the output. You should repeat this \nuntil the <code>NextToken</code> response element comes back as <code>null</code>.</p>"}))
    ListGroupResourcesOutput.add_member(:query_errors, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryErrorList, location_name: 'QueryErrors', traits: {"smithy.api#documentation" => "<p>A list of <code>QueryError</code> objects. Each error contains an\n            <code>ErrorCode</code> and <code>Message</code>. Possible values for \n            ErrorCode are <code>CLOUDFORMATION_STACK_INACTIVE</code>, <code>CLOUDFORMATION_STACK_NOT_EXISTING</code>, \n            <code>CLOUDFORMATION_STACK_UNASSUMABLE_ROLE</code> and <code>RESOURCE_TYPE_NOT_SUPPORTED</code>. </p>"}))
    ListGroupResourcesOutput.type = Types::ListGroupResourcesOutput
    ListGroupingStatusesFilter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupingStatusesFilterName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the filter. Filter names are case-sensitive. </p>", "smithy.api#required" => {}}))
    ListGroupingStatusesFilter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupingStatusesFilterValues, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>One or more filter values. Allowed filter values vary by resource filter name, and are case-sensitive. </p>", "smithy.api#required" => {}}))
    ListGroupingStatusesFilter.type = Types::ListGroupingStatusesFilter
    ListGroupingStatusesFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupingStatusesFilter)
    ListGroupingStatusesFilterName.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Status', traits: {"smithy.api#enumValue" => "status"}))
    ListGroupingStatusesFilterName.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ResourceArn', traits: {"smithy.api#enumValue" => "resource-arn"}))
    ListGroupingStatusesFilterValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupingStatusesFilterValue)
    ListGroupingStatusesInput.add_member(:group, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupStringV2, location_name: 'Group', traits: {"smithy.api#documentation" => "<p>The application group identifier, expressed as an Amazon resource name (ARN) or the application group name. </p>", "smithy.api#required" => {}}))
    ListGroupingStatusesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of resources and their statuses returned in the \n            response. </p>"}))
    ListGroupingStatusesInput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupingStatusesFilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>The filter name and value pair that is used to return more \n            specific results from a list of resources. </p>"}))
    ListGroupingStatusesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The parameter for receiving additional results if you receive a \n            <code>NextToken</code> response in a previous request. A <code>NextToken</code> \n            response indicates that more output is available. Set this parameter to the \n            value provided by a previous call's <code>NextToken</code> response to indicate \n            where the output should continue from. </p>"}))
    ListGroupingStatusesInput.type = Types::ListGroupingStatusesInput
    ListGroupingStatusesOutput.add_member(:group, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupStringV2, location_name: 'Group', traits: {"smithy.api#documentation" => "<p>The application group identifier, expressed as an Amazon resource name (ARN) or the application group name.</p>"}))
    ListGroupingStatusesOutput.add_member(:grouping_statuses, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupingStatusesList, location_name: 'GroupingStatuses', traits: {"smithy.api#documentation" => "<p>Returns details about the grouping or ungrouping status of the \n            resources in the specified application group. </p>"}))
    ListGroupingStatusesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is included in the current response. \n            Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. \n            You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>. </p>"}))
    ListGroupingStatusesOutput.type = Types::ListGroupingStatusesOutput
    ListGroupsInput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupFilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>Filters, formatted as <a>GroupFilter</a> objects, that you want to apply to\n            a <code>ListGroups</code> operation.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>resource-type</code> - Filter the results to include only those resource groups that have the specified\n                    resource type in their <code>ResourceTypeFilter</code>. For example, <code>AWS::EC2::Instance</code> would\n                    return any resource group with a <code>ResourceTypeFilter</code> that includes\n                    <code>AWS::EC2::Instance</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>configuration-type</code> - Filter the results to include only those\n                    groups that have the specified configuration types attached. The current\n                    supported values are:</p>\n               <ul>\n                  <li>\n                     <p>\n                        <code>AWS::ResourceGroups::ApplicationGroup</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>AWS::AppRegistry::Application</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>AWS::AppRegistry::ApplicationResourceGroup</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>AWS::CloudFormation::Stack</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>AWS::EC2::CapacityReservationPool</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>AWS::EC2::HostManagement</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>AWS::NetworkFirewall::RuleGroup</code>\n                     </p>\n                  </li>\n               </ul>\n            </li>\n         </ul>"}))
    ListGroupsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The total number of results that you want included on each page of the \nresponse. If you do not include this parameter, it defaults to a value that is specific to the \noperation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> \nresponse element is present and has a value (is not null). Include that value as the \n<code>NextToken</code> request parameter in the next call to the operation to get the next part \nof the results. Note that the service might return fewer results than the maximum even when there \nare more results available. You should check <code>NextToken</code> after every operation to \nensure that you receive all of the results.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListGroupsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The parameter for receiving additional results if you receive a\n<code>NextToken</code> response in a previous request. A <code>NextToken</code> response \nindicates that more output is available. Set this parameter to the value provided by a previous \ncall's <code>NextToken</code> response to indicate where the output should continue from.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListGroupsInput.type = Types::ListGroupsInput
    ListGroupsOutput.add_member(:group_identifiers, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupIdentifierList, location_name: 'GroupIdentifiers', traits: {"smithy.api#documentation" => "<p>A list of <a>GroupIdentifier</a> objects. Each identifier is an object that\n            contains both the <code>Name</code> and the <code>GroupArn</code>.</p>"}))
    ListGroupsOutput.add_member(:groups, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupList, location_name: 'Groups', traits: {"smithy.api#deprecated" => {"message" => "This field is deprecated, use GroupIdentifiers instead."}, "smithy.api#documentation" => "<important>\n            <p>\n               <i>\n                  <b>Deprecated - don't use this field. Use the\n                            <code>GroupIdentifiers</code> response field\n                    instead.</b>\n               </i>\n            </p>\n         </important>"}))
    ListGroupsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is \nincluded in the current response. Use this value in the <code>NextToken</code> request parameter \nin a subsequent call to the operation to get the next part of the output. You should repeat this \nuntil the <code>NextToken</code> response element comes back as <code>null</code>.</p>"}))
    ListGroupsOutput.type = Types::ListGroupsOutput
    ListTagSyncTasksFilter.add_member(:group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupArnV2, location_name: 'GroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon resource name (ARN) of the application group. </p>"}))
    ListTagSyncTasksFilter.add_member(:group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'GroupName', traits: {"smithy.api#documentation" => "<p>The name of the application group. </p>"}))
    ListTagSyncTasksFilter.type = Types::ListTagSyncTasksFilter
    ListTagSyncTasksFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagSyncTasksFilter)
    ListTagSyncTasksInput.add_member(:filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagSyncTasksFilterList, location_name: 'Filters', traits: {"smithy.api#documentation" => "<p>The Amazon resource name (ARN) or name of the application group for which you want to return a \n            list of tag-sync tasks. </p>"}))
    ListTagSyncTasksInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to be included in the response. </p>"}))
    ListTagSyncTasksInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The parameter for receiving additional results if you receive a \n            <code>NextToken</code> response in a previous request. A <code>NextToken</code> \n            response indicates that more output is available. Set this parameter to the \n            value provided by a previous call's <code>NextToken</code> response to indicate \n            where the output should continue from. </p>"}))
    ListTagSyncTasksInput.type = Types::ListTagSyncTasksInput
    ListTagSyncTasksOutput.add_member(:tag_sync_tasks, Smithy::Schema::Shapes::ShapeRef.new(shape: TagSyncTaskList, location_name: 'TagSyncTasks', traits: {"smithy.api#documentation" => "<p>A list of tag-sync tasks and information about each task. </p>"}))
    ListTagSyncTasksOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is included in the current response. \n            Use this value in the <code>NextToken</code> request parameter in a subsequent call to the operation to get the next part of the output. \n            You should repeat this until the <code>NextToken</code> response element comes back as <code>null</code>.</p>"}))
    ListTagSyncTasksOutput.type = Types::ListTagSyncTasksOutput
    MethodNotAllowedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    MethodNotAllowedException.type = Types::MethodNotAllowedException
    NotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    NotFoundException.type = Types::NotFoundException
    PendingResource.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon resource name (ARN) of the resource that's in a pending state.</p>"}))
    PendingResource.type = Types::PendingResource
    PendingResourceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PendingResource)
    PutGroupConfigurationInput.add_member(:group, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupString, location_name: 'Group', traits: {"smithy.api#documentation" => "<p>The name or Amazon resource name (ARN) of the resource group with the configuration that you want to\n            update.</p>"}))
    PutGroupConfigurationInput.add_member(:configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupConfigurationList, location_name: 'Configuration', traits: {"smithy.api#documentation" => "<p>The new configuration to associate with the specified group. A configuration\n            associates the resource group with an Amazon Web Services service and specifies how the service can\n            interact with the resources in the group. A configuration is an array of <a>GroupConfigurationItem</a> elements.</p>\n         <p>For information about the syntax of a service configuration, see <a href=\"https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html\">Service configurations for\n                Resource Groups</a>.</p>\n         <note>\n            <p>A resource group can contain either a <code>Configuration</code> or a\n                    <code>ResourceQuery</code>, but not both.</p>\n         </note>"}))
    PutGroupConfigurationInput.type = Types::PutGroupConfigurationInput
    PutGroupConfigurationOutput.type = Types::PutGroupConfigurationOutput
    QueryError.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>Specifies the error code that was raised.</p>"}))
    QueryError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryErrorMessage, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>A message that explains the <code>ErrorCode</code>. </p>"}))
    QueryError.type = Types::QueryError
    QueryErrorCode.add_member(:cloudformation_stack_inactive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOUDFORMATION_STACK_INACTIVE', traits: {"smithy.api#enumValue" => "CLOUDFORMATION_STACK_INACTIVE"}))
    QueryErrorCode.add_member(:cloudformation_stack_not_existing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOUDFORMATION_STACK_NOT_EXISTING', traits: {"smithy.api#enumValue" => "CLOUDFORMATION_STACK_NOT_EXISTING"}))
    QueryErrorCode.add_member(:cloudformation_stack_unassumable_role, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOUDFORMATION_STACK_UNASSUMABLE_ROLE', traits: {"smithy.api#enumValue" => "CLOUDFORMATION_STACK_UNASSUMABLE_ROLE"}))
    QueryErrorCode.add_member(:resource_type_not_supported, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_TYPE_NOT_SUPPORTED', traits: {"smithy.api#enumValue" => "RESOURCE_TYPE_NOT_SUPPORTED"}))
    QueryErrorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: QueryError)
    QueryType.add_member(:tag_filters_1_0, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TAG_FILTERS_1_0', traits: {"smithy.api#enumValue" => "TAG_FILTERS_1_0"}))
    QueryType.add_member(:cloudformation_stack_1_0, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOUDFORMATION_STACK_1_0', traits: {"smithy.api#enumValue" => "CLOUDFORMATION_STACK_1_0"}))
    ResourceArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn)
    ResourceFilter.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceFilterName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the filter. Filter names are case-sensitive.</p>", "smithy.api#required" => {}}))
    ResourceFilter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceFilterValues, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>One or more filter values. Allowed filter values vary by resource filter name, and are\n            case-sensitive.</p>", "smithy.api#required" => {}}))
    ResourceFilter.type = Types::ResourceFilter
    ResourceFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceFilter)
    ResourceFilterName.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ResourceType', traits: {"smithy.api#enumValue" => "resource-type"}))
    ResourceFilterValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceFilterValue)
    ResourceIdentifier.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon resource name (ARN) of a resource.</p>"}))
    ResourceIdentifier.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The resource type of a resource, such as <code>AWS::EC2::Instance</code>.</p>"}))
    ResourceIdentifier.type = Types::ResourceIdentifier
    ResourceIdentifierList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdentifier)
    ResourceQuery.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of the query to perform. This can have one of two values:</p>\n         <ul>\n            <li>\n               <p>\n                  <i>\n                     <code>CLOUDFORMATION_STACK_1_0:</code>\n                  </i> Specifies that you\n                    want the group to contain the members of an CloudFormation stack. The <code>Query</code>\n                    contains a <code>StackIdentifier</code> element with an Amazon resource name (ARN) for a CloudFormation\n                    stack.</p>\n            </li>\n            <li>\n               <p>\n                  <i>\n                     <code>TAG_FILTERS_1_0:</code>\n                  </i> Specifies that you want the\n                    group to include resource that have tags that match the query. </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    ResourceQuery.add_member(:query, Smithy::Schema::Shapes::ShapeRef.new(shape: Query, location_name: 'Query', traits: {"smithy.api#documentation" => "<p>The query that defines a group or a search. The contents depends on the value of the\n                <code>Type</code> element.</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ResourceTypeFilters</code> – Applies to all\n                        <code>ResourceQuery</code> objects of either <code>Type</code>. This element\n                    contains one of the following two items:</p>\n               <ul>\n                  <li>\n                     <p>The value <code>AWS::AllSupported</code>. This causes the\n                            ResourceQuery to match resources of any resource type that also match\n                            the query.</p>\n                  </li>\n                  <li>\n                     <p>A list (a JSON array) of resource type identifiers that limit the\n                            query to only resources of the specified types. For the complete list of\n                            resource types that you can use in the array value for\n                                <code>ResourceTypeFilters</code>, see <a href=\"https://docs.aws.amazon.com/ARG/latest/userguide/supported-resources.html\">Resources you can use with Resource Groups and Tag\n                                Editor</a> in the <i>Resource Groups User Guide</i>.</p>\n                  </li>\n               </ul>\n               <p>Example: <code>\"ResourceTypeFilters\": [\"AWS::AllSupported\"]</code> or\n                        <code>\"ResourceTypeFilters\": [\"AWS::EC2::Instance\",\n                        \"AWS::S3::Bucket\"]</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>TagFilters</code> – applicable only if <code>Type</code> =\n                        <code>TAG_FILTERS_1_0</code>. The <code>Query</code> contains a JSON string\n                    that represents a collection of simple tag filters. The JSON string uses a\n                    syntax similar to the <code>\n                     <a href=\"https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/API_GetResources.html\">GetResources</a>\n                  </code> operation, but uses only the <code>\n                     <a href=\"https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/API_GetResources.html#resourcegrouptagging-GetResources-request-ResourceTypeFilters\"> ResourceTypeFilters</a>\n                  </code> and <code>\n                     <a href=\"https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/API_GetResources.html#resourcegrouptagging-GetResources-request-TagFiltersTagFilters\">TagFilters</a>\n                  </code> fields. If you specify more than one tag key,\n                    only resources that match all tag keys, and at least one value of each specified\n                    tag key, are returned in your query. If you specify more than one value for a\n                    tag key, a resource matches the filter if it has a tag key value that matches\n                        <i>any</i> of the specified values.</p>\n               <p>For example, consider the following sample query for resources that have two\n                    tags, <code>Stage</code> and <code>Version</code>, with two values each:</p>\n               <p>\n                  <code>[{\"Stage\":[\"Test\",\"Deploy\"]},{\"Version\":[\"1\",\"2\"]}]</code>\n               </p>\n               <p>The results of this resource query could include the following.</p>\n               <ul>\n                  <li>\n                     <p>An Amazon EC2 instance that has the following two tags:\n                                <code>{\"Stage\":\"Deploy\"}</code>, and\n                            <code>{\"Version\":\"2\"}</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>An S3 bucket that has the following two tags:\n                                <code>{\"Stage\":\"Test\"}</code>, and\n                            <code>{\"Version\":\"1\"}</code>\n                     </p>\n                  </li>\n               </ul>\n               <p>The resource query results would <i>not</i> include the\n                    following items in the results, however. </p>\n               <ul>\n                  <li>\n                     <p>An Amazon EC2 instance that has only the following tag:\n                                <code>{\"Stage\":\"Deploy\"}</code>.</p>\n                     <p>The instance does not have <b>all</b> of the\n                            tag keys specified in the filter, so it is excluded from the\n                            results.</p>\n                  </li>\n                  <li>\n                     <p>An RDS database that has the following two tags:\n                                <code>{\"Stage\":\"Archived\"}</code> and\n                            <code>{\"Version\":\"4\"}</code>\n                     </p>\n                     <p>The database has all of the tag keys, but none of those keys has an\n                            associated value that matches at least one of the specified values in\n                            the filter.</p>\n                  </li>\n               </ul>\n               <p>Example: <code>\"TagFilters\": [ { \"Key\": \"Stage\", \"Values\": [ \"Gamma\", \"Beta\" ]\n                        }</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>StackIdentifier</code> – applicable only if <code>Type</code> =\n                        <code>CLOUDFORMATION_STACK_1_0</code>. The value of this parameter is the\n                    Amazon Resource Name (ARN) of the CloudFormation stack whose resources you want included\n                    in the group.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    ResourceQuery.type = Types::ResourceQuery
    ResourceStatus.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceStatusValue, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The current status.</p>"}))
    ResourceStatus.type = Types::ResourceStatus
    ResourceStatusValue.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Pending', traits: {"smithy.api#enumValue" => "PENDING"}))
    SearchResourcesInput.add_member(:resource_query, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceQuery, location_name: 'ResourceQuery', traits: {"smithy.api#documentation" => "<p>The search query, using the same formats that are supported for resource group\n            definition. For more information, see <a>CreateGroup</a>.</p>", "smithy.api#required" => {}}))
    SearchResourcesInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The total number of results that you want included on each page of the \nresponse. If you do not include this parameter, it defaults to a value that is specific to the \noperation. If additional items exist beyond the maximum you specify, the <code>NextToken</code> \nresponse element is present and has a value (is not null). Include that value as the \n<code>NextToken</code> request parameter in the next call to the operation to get the next part \nof the results. Note that the service might return fewer results than the maximum even when there \nare more results available. You should check <code>NextToken</code> after every operation to \nensure that you receive all of the results.</p>"}))
    SearchResourcesInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The parameter for receiving additional results if you receive a\n<code>NextToken</code> response in a previous request. A <code>NextToken</code> response \nindicates that more output is available. Set this parameter to the value provided by a previous \ncall's <code>NextToken</code> response to indicate where the output should continue from.</p>"}))
    SearchResourcesInput.type = Types::SearchResourcesInput
    SearchResourcesOutput.add_member(:resource_identifiers, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdentifierList, location_name: 'ResourceIdentifiers', traits: {"smithy.api#documentation" => "<p>The ARNs and resource types of resources that are members of the group that you\n            specified.</p>"}))
    SearchResourcesOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>If present, indicates that more output is available than is \nincluded in the current response. Use this value in the <code>NextToken</code> request parameter \nin a subsequent call to the operation to get the next part of the output. You should repeat this \nuntil the <code>NextToken</code> response element comes back as <code>null</code>.</p>"}))
    SearchResourcesOutput.add_member(:query_errors, Smithy::Schema::Shapes::ShapeRef.new(shape: QueryErrorList, location_name: 'QueryErrors', traits: {"smithy.api#documentation" => "<p>A list of <code>QueryError</code> objects. Each error contains an \n                <code>ErrorCode</code> and <code>Message</code>.</p>\n         <p>Possible values for <code>ErrorCode</code>:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>CLOUDFORMATION_STACK_INACTIVE</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>CLOUDFORMATION_STACK_NOT_EXISTING</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>CLOUDFORMATION_STACK_UNASSUMABLE_ROLE </code>\n               </p>\n            </li>\n         </ul>"}))
    SearchResourcesOutput.type = Types::SearchResourcesOutput
    StartTagSyncTaskInput.add_member(:group, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupStringV2, location_name: 'Group', traits: {"smithy.api#documentation" => "<p>The Amazon resource name (ARN) or name of the application group for which you want to create a tag-sync task. </p>", "smithy.api#required" => {}}))
    StartTagSyncTaskInput.add_member(:tag_key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'TagKey', traits: {"smithy.api#documentation" => "<p>The tag key. Resources tagged with this tag key-value pair will be added to \n            the application. If a resource with this tag is later untagged, the tag-sync task removes\n            the resource from the application. </p>\n         <p>When using the <code>TagKey</code> parameter, you must also specify the <code>TagValue</code> parameter. If you specify a tag key-value pair, \n            you can't use the <code>ResourceQuery</code> parameter. </p>"}))
    StartTagSyncTaskInput.add_member(:tag_value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'TagValue', traits: {"smithy.api#documentation" => "<p>The tag value. Resources tagged with this tag key-value pair will be added to \n            the application. If a resource with this tag is later untagged, the tag-sync task removes\n            the resource from the application. </p>\n         <p>When using the <code>TagValue</code> parameter, you must also specify the <code>TagKey</code> parameter. If you specify a tag key-value pair, \n            you can't use the <code>ResourceQuery</code> parameter. </p>"}))
    StartTagSyncTaskInput.add_member(:resource_query, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceQuery, location_name: 'ResourceQuery', traits: {"smithy.api#documentation" => "<p>The query you can use to create the tag-sync task. With this method, all resources matching the query \n            are added to the specified application group. A\n            <code>ResourceQuery</code> specifies both a query <code>Type</code> and a\n                <code>Query</code> string as JSON string objects. For more information on defining a resource query for a \n                tag-sync task, see the tag-based query type in <a href=\"https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#getting_started-query_types\">\n                    Types of resource group queries</a> in <i>Resource Groups User Guide</i>. </p>\n         <p>When using the <code>ResourceQuery</code> parameter, you cannot use the <code>TagKey</code> and <code>TagValue</code> parameters. </p>\n         <p>When you combine all of the elements together into a single string, any double quotes\n            that are embedded inside another double quote pair must be escaped by preceding the\n            embedded double quote with a backslash character (\\). For example, a complete\n            <code>ResourceQuery</code> parameter must be formatted like the following CLI\n            parameter example:</p>\n         <p>\n            <code>--resource-query\n            '{\"Type\":\"TAG_FILTERS_1_0\",\"Query\":\"{\\\"ResourceTypeFilters\\\":[\\\"AWS::AllSupported\\\"],\\\"TagFilters\\\":[{\\\"Key\\\":\\\"Stage\\\",\\\"Values\\\":[\\\"Test\\\"]}]}\"}'</code>\n         </p>\n         <p>In the preceding example, all of the double quote characters in the value part of the\n            <code>Query</code> element must be escaped because the value itself is surrounded by\n            double quotes. For more information, see <a href=\"https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-quoting-strings.html\">Quoting\n                strings</a> in the <i>Command Line Interface User Guide</i>.</p>\n         <p>For the complete list of resource types that you can use in the array value for\n            <code>ResourceTypeFilters</code>, see <a href=\"https://docs.aws.amazon.com/ARG/latest/userguide/supported-resources.html\">Resources\n                you can use with Resource Groups and Tag Editor</a> in the\n            <i>Resource Groups User Guide</i>. For example:</p>\n         <p>\n            <code>\"ResourceTypeFilters\":[\"AWS::S3::Bucket\", \"AWS::EC2::Instance\"]</code>\n         </p>"}))
    StartTagSyncTaskInput.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon resource name (ARN) of the role assumed by the service to tag and untag resources on your behalf.</p>", "smithy.api#required" => {}}))
    StartTagSyncTaskInput.type = Types::StartTagSyncTaskInput
    StartTagSyncTaskOutput.add_member(:group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupArnV2, location_name: 'GroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon resource name (ARN) of the application group for which you want to add or remove resources. </p>"}))
    StartTagSyncTaskOutput.add_member(:group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'GroupName', traits: {"smithy.api#documentation" => "<p>The name of the application group to onboard and sync resources.</p>"}))
    StartTagSyncTaskOutput.add_member(:task_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TagSyncTaskArn, location_name: 'TaskArn', traits: {"smithy.api#documentation" => "<p>The Amazon resource name (ARN) of the new tag-sync task. </p>"}))
    StartTagSyncTaskOutput.add_member(:tag_key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'TagKey', traits: {"smithy.api#documentation" => "<p>The tag key of the tag-sync task. </p>"}))
    StartTagSyncTaskOutput.add_member(:tag_value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'TagValue', traits: {"smithy.api#documentation" => "<p>The tag value of the tag-sync task. </p>"}))
    StartTagSyncTaskOutput.add_member(:resource_query, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceQuery, location_name: 'ResourceQuery'))
    StartTagSyncTaskOutput.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon resource name (ARN) of the role assumed by the service to tag and untag resources on your behalf.</p>"}))
    StartTagSyncTaskOutput.type = Types::StartTagSyncTaskOutput
    TagInput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupArnV2, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon resource name (ARN) of the resource group to which to add tags.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags to add to the specified resource group. A tag is a string-to-string map of\n            key-value pairs.</p>", "smithy.api#required" => {}}))
    TagInput.type = Types::TagInput
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupArnV2, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon resource name (ARN) of the tagged resource.</p>"}))
    TagOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags that have been added to the specified resource group.</p>"}))
    TagOutput.type = Types::TagOutput
    TagSyncTaskItem.add_member(:group_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupArnV2, location_name: 'GroupArn', traits: {"smithy.api#documentation" => "<p>The Amazon resource name (ARN) of the application group. </p>"}))
    TagSyncTaskItem.add_member(:group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'GroupName', traits: {"smithy.api#documentation" => "<p>The name of the application group. </p>"}))
    TagSyncTaskItem.add_member(:task_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TagSyncTaskArn, location_name: 'TaskArn', traits: {"smithy.api#documentation" => "<p>The Amazon resource name (ARN) of the tag-sync task. </p>"}))
    TagSyncTaskItem.add_member(:tag_key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'TagKey', traits: {"smithy.api#documentation" => "<p>The tag key. </p>"}))
    TagSyncTaskItem.add_member(:tag_value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'TagValue', traits: {"smithy.api#documentation" => "<p>The tag value. </p>"}))
    TagSyncTaskItem.add_member(:resource_query, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceQuery, location_name: 'ResourceQuery'))
    TagSyncTaskItem.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon resource name (ARN) of the role assumed by the service to tag and untag resources on your behalf.</p>"}))
    TagSyncTaskItem.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TagSyncTaskStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the tag-sync task. </p>\n         <p>Valid values include:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ACTIVE</code> - The tag-sync task is actively managing resources in \n                    the application by adding or removing the <code>awsApplication</code> tag from resources \n                    when they are tagged or untagged with the specified tag key-value pair. \n                </p>\n            </li>\n            <li>\n               <p>\n                  <code>ERROR</code> - The tag-sync task is not actively managing resources \n                    in the application. Review the <code>ErrorMessage</code> for more information about \n                    resolving the error. \n                </p>\n            </li>\n         </ul>"}))
    TagSyncTaskItem.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The specific error message in cases where the tag-sync task status\n            is <code>Error</code>.</p>"}))
    TagSyncTaskItem.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when the tag-sync task was created. </p>"}))
    TagSyncTaskItem.type = Types::TagSyncTaskItem
    TagSyncTaskList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagSyncTaskItem)
    TagSyncTaskStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    TagSyncTaskStatus.add_member(:error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ERROR', traits: {"smithy.api#enumValue" => "ERROR"}))
    Tags.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TooManyRequestsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    TooManyRequestsException.type = Types::TooManyRequestsException
    UnauthorizedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    UnauthorizedException.type = Types::UnauthorizedException
    UngroupResourcesInput.add_member(:group, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupStringV2, location_name: 'Group', traits: {"smithy.api#documentation" => "<p>The name or the Amazon resource name (ARN) of the resource group from which to remove the resources.</p>", "smithy.api#required" => {}}))
    UngroupResourcesInput.add_member(:resource_arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArnList, location_name: 'ResourceArns', traits: {"smithy.api#documentation" => "<p>The Amazon resource names (ARNs) of the resources to be removed from the group.</p>", "smithy.api#required" => {}}))
    UngroupResourcesInput.type = Types::UngroupResourcesInput
    UngroupResourcesOutput.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArnList, location_name: 'Succeeded', traits: {"smithy.api#documentation" => "<p>A list of resources that were successfully removed from the group by this\n            operation.</p>"}))
    UngroupResourcesOutput.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedResourceList, location_name: 'Failed', traits: {"smithy.api#documentation" => "<p>A list of any resources that failed to be removed from the group by this\n            operation.</p>"}))
    UngroupResourcesOutput.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: PendingResourceList, location_name: 'Pending', traits: {"smithy.api#documentation" => "<p>A list of any resources that are still in the process of being removed from the group\n            by this operation. These pending removals continue asynchronously. You can check the\n            status of pending removals by using the <code>\n               <a>ListGroupResources</a>\n            </code> operation. After the resource is successfully removed, it no longer\n            appears in the response.</p>"}))
    UngroupResourcesOutput.type = Types::UngroupResourcesOutput
    UntagInput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupArnV2, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon resource name (ARN) of the resource group from which to remove tags. The command removed both the\n            specified keys and any values associated with those keys.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagInput.add_member(:keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'Keys', traits: {"smithy.api#documentation" => "<p>The keys of the tags to be removed.</p>", "smithy.api#required" => {}}))
    UntagInput.type = Types::UntagInput
    UntagOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupArnV2, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon resource name (ARN) of the resource group from which tags have been removed.</p>"}))
    UntagOutput.add_member(:keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'Keys', traits: {"smithy.api#documentation" => "<p>The keys of the tags that were removed.</p>"}))
    UntagOutput.type = Types::UntagOutput
    UpdateAccountSettingsInput.add_member(:group_lifecycle_events_desired_status, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupLifecycleEventsDesiredStatus, location_name: 'GroupLifecycleEventsDesiredStatus', traits: {"smithy.api#documentation" => "<p>Specifies whether you want to turn <a href=\"https://docs.aws.amazon.com/ARG/latest/userguide/monitor-groups.html\">group lifecycle events</a> on or off.</p>\n         <p>You can't turn on group lifecycle events if your resource groups quota is greater than 2,000. </p>"}))
    UpdateAccountSettingsInput.type = Types::UpdateAccountSettingsInput
    UpdateAccountSettingsOutput.add_member(:account_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountSettings, location_name: 'AccountSettings', traits: {"smithy.api#documentation" => "<p>A structure that displays the status of the optional features in the account.</p>"}))
    UpdateAccountSettingsOutput.type = Types::UpdateAccountSettingsOutput
    UpdateGroupInput.add_member(:group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'GroupName', traits: {"smithy.api#deprecated" => {"message" => "This field is deprecated, use Group instead."}, "smithy.api#documentation" => "<p>Don't use this parameter. Use <code>Group</code> instead.</p>"}))
    UpdateGroupInput.add_member(:group, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupStringV2, location_name: 'Group', traits: {"smithy.api#documentation" => "<p>The name or the ARN of the resource group to update.</p>"}))
    UpdateGroupInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The new description that you want to update the resource group with. Descriptions can\n            contain letters, numbers, hyphens, underscores, periods, and spaces.</p>"}))
    UpdateGroupInput.add_member(:criticality, Smithy::Schema::Shapes::ShapeRef.new(shape: Criticality, location_name: 'Criticality', traits: {"smithy.api#documentation" => "<p>The critical rank of the application group on a scale of 1 to 10, with a \n            rank of 1 being the most critical, and a rank of 10 being least critical.</p>"}))
    UpdateGroupInput.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: Owner, location_name: 'Owner', traits: {"smithy.api#documentation" => "<p>A name, email address or other identifier for the person or group \n            who is considered as the owner of this application group within your organization. </p>"}))
    UpdateGroupInput.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'DisplayName', traits: {"smithy.api#documentation" => "<p>The name of the application group, which you can change at any time. </p>"}))
    UpdateGroupInput.type = Types::UpdateGroupInput
    UpdateGroupOutput.add_member(:group, Smithy::Schema::Shapes::ShapeRef.new(shape: Group, location_name: 'Group', traits: {"smithy.api#documentation" => "<p>The update description of the resource group.</p>"}))
    UpdateGroupOutput.type = Types::UpdateGroupOutput
    UpdateGroupQueryInput.add_member(:group_name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'GroupName', traits: {"smithy.api#deprecated" => {"message" => "This field is deprecated, use Group instead."}, "smithy.api#documentation" => "<p>Don't use this parameter. Use <code>Group</code> instead.</p>"}))
    UpdateGroupQueryInput.add_member(:group, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupString, location_name: 'Group', traits: {"smithy.api#documentation" => "<p>The name or the Amazon resource name (ARN) of the resource group to query.</p>"}))
    UpdateGroupQueryInput.add_member(:resource_query, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceQuery, location_name: 'ResourceQuery', traits: {"smithy.api#documentation" => "<p>The resource query to determine which Amazon Web Services resources are members of this resource\n            group.</p>\n         <note>\n            <p>A resource group can contain either a <code>Configuration</code> or a\n                    <code>ResourceQuery</code>, but not both.</p>\n         </note>", "smithy.api#required" => {}}))
    UpdateGroupQueryInput.type = Types::UpdateGroupQueryInput
    UpdateGroupQueryOutput.add_member(:group_query, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupQuery, location_name: 'GroupQuery', traits: {"smithy.api#documentation" => "<p>The updated resource query associated with the resource group after the update.</p>"}))
    UpdateGroupQueryOutput.type = Types::UpdateGroupQueryOutput

    Ardi = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.resourcegroups#Ardi"
      service.name = "Ardi"
      service.version = "2017-11-27"
      service.traits = {"aws.api#service" => {"sdkId" => "Resource Groups", "arnNamespace" => "resource-groups", "cloudFormationName" => "ResourceGroups", "cloudTrailEventSource" => "resourcegroups.amazonaws.com", "endpointPrefix" => "resource-groups"}, "aws.auth#sigv4" => {"name" => "resource-groups"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Resource Groups"}
      service.add_operation(:cancel_tag_sync_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#CancelTagSyncTask"
        operation.name = "CancelTagSyncTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelTagSyncTaskInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/cancel-tag-sync-task", "code" => 200}}
      end)
      service.add_operation(:create_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#CreateGroup"
        operation.name = "CreateGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGroupInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateGroupOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/groups", "code" => 200}}
      end)
      service.add_operation(:delete_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#DeleteGroup"
        operation.name = "DeleteGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGroupInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteGroupOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/delete-group", "code" => 200}}
      end)
      service.add_operation(:get_account_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#GetAccountSettings"
        operation.name = "GetAccountSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAccountSettingsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/get-account-settings", "code" => 200}}
      end)
      service.add_operation(:get_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#GetGroup"
        operation.name = "GetGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGroupInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGroupOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/get-group", "code" => 200}}
      end)
      service.add_operation(:get_group_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#GetGroupConfiguration"
        operation.name = "GetGroupConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGroupConfigurationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGroupConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/get-group-configuration", "code" => 200}}
      end)
      service.add_operation(:get_group_query, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#GetGroupQuery"
        operation.name = "GetGroupQuery"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGroupQueryInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetGroupQueryOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/get-group-query", "code" => 200}}
      end)
      service.add_operation(:get_tag_sync_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#GetTagSyncTask"
        operation.name = "GetTagSyncTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTagSyncTaskInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTagSyncTaskOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/get-tag-sync-task", "code" => 200}}
      end)
      service.add_operation(:get_tags, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#GetTags"
        operation.name = "GetTags"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTagsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTagsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/resources/{Arn}/tags", "code" => 200}}
      end)
      service.add_operation(:group_resources, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#GroupResources"
        operation.name = "GroupResources"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GroupResourcesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GroupResourcesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/group-resources", "code" => 200}}
      end)
      service.add_operation(:list_group_resources, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#ListGroupResources"
        operation.name = "ListGroupResources"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupResourcesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupResourcesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-group-resources", "code" => 200}}
        operation[:paginator] = Paginators::ListGroupResources.new
      end)
      service.add_operation(:list_grouping_statuses, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#ListGroupingStatuses"
        operation.name = "ListGroupingStatuses"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupingStatusesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupingStatusesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-grouping-statuses", "code" => 200}}
        operation[:paginator] = Paginators::ListGroupingStatuses.new
      end)
      service.add_operation(:list_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#ListGroups"
        operation.name = "ListGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListGroupsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/groups-list", "code" => 200}}
        operation[:paginator] = Paginators::ListGroups.new
      end)
      service.add_operation(:list_tag_sync_tasks, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#ListTagSyncTasks"
        operation.name = "ListTagSyncTasks"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagSyncTasksInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagSyncTasksOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-tag-sync-tasks", "code" => 200}}
        operation[:paginator] = Paginators::ListTagSyncTasks.new
      end)
      service.add_operation(:put_group_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#PutGroupConfiguration"
        operation.name = "PutGroupConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutGroupConfigurationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutGroupConfigurationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/put-group-configuration", "code" => 202}}
      end)
      service.add_operation(:search_resources, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#SearchResources"
        operation.name = "SearchResources"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchResourcesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SearchResourcesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/resources/search", "code" => 200}}
        operation[:paginator] = Paginators::SearchResources.new
      end)
      service.add_operation(:start_tag_sync_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#StartTagSyncTask"
        operation.name = "StartTagSyncTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartTagSyncTaskInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartTagSyncTaskOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: UnauthorizedException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/start-tag-sync-task", "code" => 200}}
      end)
      service.add_operation(:tag, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#Tag"
        operation.name = "Tag"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/resources/{Arn}/tags", "code" => 200}}
      end)
      service.add_operation(:ungroup_resources, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#UngroupResources"
        operation.name = "UngroupResources"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UngroupResourcesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UngroupResourcesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ungroup-resources", "code" => 200}}
      end)
      service.add_operation(:untag, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#Untag"
        operation.name = "Untag"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/resources/{Arn}/tags", "code" => 200}}
      end)
      service.add_operation(:update_account_settings, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#UpdateAccountSettings"
        operation.name = "UpdateAccountSettings"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAccountSettingsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAccountSettingsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/update-account-settings", "code" => 200}}
      end)
      service.add_operation(:update_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#UpdateGroup"
        operation.name = "UpdateGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGroupInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGroupOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/update-group", "code" => 200}}
      end)
      service.add_operation(:update_group_query, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#UpdateGroupQuery"
        operation.name = "UpdateGroupQuery"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGroupQueryInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateGroupQueryOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ForbiddenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerErrorException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: NotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: TooManyRequestsException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/update-group-query", "code" => 200}}
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
