# frozen_string_literal: true

# This is generated code!

module Aws::ResourceGroups
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccountSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#AccountSettings", name: "AccountSettings")
    ApplicationArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourcegroups#ApplicationArn", name: "ApplicationArn", traits: {"smithy.api#length" => {"min" => 12, "max" => 1600}, "smithy.api#pattern" => "^arn:aws(-[a-z]+)*:resource-groups:[a-z]{2}(-[a-z]+)+-\\d{1}:[0-9]{12}:group/[a-zA-Z0-9_\\.-]{1,150}/[a-zA-Z0-9]{22,26}$"})
    ApplicationTag = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.resourcegroups#ApplicationTag", name: "ApplicationTag")
    ApplicationTagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourcegroups#ApplicationTagKey", name: "ApplicationTagKey", traits: {"smithy.api#pattern" => "^awsApplication$"})
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#BadRequestException", name: "BadRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CancelTagSyncTaskInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#CancelTagSyncTaskInput", name: "CancelTagSyncTaskInput")
    CreateGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#CreateGroupInput", name: "CreateGroupInput")
    CreateGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourcegroups#CreateGroupName", name: "CreateGroupName", traits: {"smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\.-]+$"})
    CreateGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#CreateGroupOutput", name: "CreateGroupOutput")
    Criticality = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.resourcegroups#Criticality", name: "Criticality", traits: {"smithy.api#range" => {"min" => 1, "max" => 10}})
    DeleteGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#DeleteGroupInput", name: "DeleteGroupInput")
    DeleteGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#DeleteGroupOutput", name: "DeleteGroupOutput")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourcegroups#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^[\\sa-zA-Z0-9_\\.-]*$"})
    DisplayName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourcegroups#DisplayName", name: "DisplayName", traits: {"smithy.api#length" => {"min" => 0, "max" => 300}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    ErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourcegroups#ErrorCode", name: "ErrorCode", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourcegroups#ErrorMessage", name: "ErrorMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    FailedResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#FailedResource", name: "FailedResource")
    FailedResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourcegroups#FailedResourceList", name: "FailedResourceList")
    ForbiddenException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#ForbiddenException", name: "ForbiddenException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    GetAccountSettingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#GetAccountSettingsOutput", name: "GetAccountSettingsOutput")
    GetGroupConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#GetGroupConfigurationInput", name: "GetGroupConfigurationInput")
    GetGroupConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#GetGroupConfigurationOutput", name: "GetGroupConfigurationOutput")
    GetGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#GetGroupInput", name: "GetGroupInput")
    GetGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#GetGroupOutput", name: "GetGroupOutput")
    GetGroupQueryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#GetGroupQueryInput", name: "GetGroupQueryInput")
    GetGroupQueryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#GetGroupQueryOutput", name: "GetGroupQueryOutput")
    GetTagSyncTaskInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#GetTagSyncTaskInput", name: "GetTagSyncTaskInput")
    GetTagSyncTaskOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#GetTagSyncTaskOutput", name: "GetTagSyncTaskOutput")
    GetTagsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#GetTagsInput", name: "GetTagsInput")
    GetTagsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#GetTagsOutput", name: "GetTagsOutput")
    Group = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#Group", name: "Group")
    GroupArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourcegroups#GroupArn", name: "GroupArn", traits: {"smithy.api#length" => {"min" => 12, "max" => 1600}, "smithy.api#pattern" => "^arn:aws(-[a-z]+)*:resource-groups:[a-z]{2}(-[a-z]+)+-\\d{1}:[0-9]{12}:group/([a-zA-Z0-9_\\.-]{1,300}|[a-zA-Z0-9_\\.-]{1,150}/[a-z0-9]{26})$"})
    GroupArnV2 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourcegroups#GroupArnV2", name: "GroupArnV2", traits: {"smithy.api#length" => {"min" => 12, "max" => 1600}, "smithy.api#pattern" => "^arn:aws(-[a-z]+)*:resource-groups:[a-z]{2}(-[a-z]+)+-\\d{1}:[0-9]{12}:group/([a-zA-Z0-9_\\.-]{1,300}|[a-zA-Z0-9_\\.-]{1,150}/[a-z0-9]{26})$"})
    GroupConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#GroupConfiguration", name: "GroupConfiguration")
    GroupConfigurationFailureReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourcegroups#GroupConfigurationFailureReason", name: "GroupConfigurationFailureReason")
    GroupConfigurationItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#GroupConfigurationItem", name: "GroupConfigurationItem")
    GroupConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourcegroups#GroupConfigurationList", name: "GroupConfigurationList", traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    GroupConfigurationParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#GroupConfigurationParameter", name: "GroupConfigurationParameter")
    GroupConfigurationParameterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourcegroups#GroupConfigurationParameterName", name: "GroupConfigurationParameterName", traits: {"smithy.api#length" => {"min" => 1, "max" => 80}, "smithy.api#pattern" => "^[a-z-]+$"})
    GroupConfigurationParameterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourcegroups#GroupConfigurationParameterValue", name: "GroupConfigurationParameterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9:\\/\\._-]+$"})
    GroupConfigurationParameterValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourcegroups#GroupConfigurationParameterValueList", name: "GroupConfigurationParameterValueList")
    GroupConfigurationStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resourcegroups#GroupConfigurationStatus", name: "GroupConfigurationStatus")
    GroupConfigurationType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourcegroups#GroupConfigurationType", name: "GroupConfigurationType", traits: {"smithy.api#length" => {"min" => 0, "max" => 40}, "smithy.api#pattern" => "^AWS::[a-zA-Z0-9]+::[a-zA-Z0-9]+$"})
    GroupFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#GroupFilter", name: "GroupFilter")
    GroupFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourcegroups#GroupFilterList", name: "GroupFilterList")
    GroupFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resourcegroups#GroupFilterName", name: "GroupFilterName")
    GroupFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourcegroups#GroupFilterValue", name: "GroupFilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#pattern" => "^AWS::(AllSupported|[a-zA-Z0-9]+::[a-zA-Z0-9]+)|[\\s\\p{L}0-9_\\.-]*$"})
    GroupFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourcegroups#GroupFilterValues", name: "GroupFilterValues", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    GroupIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#GroupIdentifier", name: "GroupIdentifier")
    GroupIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourcegroups#GroupIdentifierList", name: "GroupIdentifierList")
    GroupLifecycleEventsDesiredStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resourcegroups#GroupLifecycleEventsDesiredStatus", name: "GroupLifecycleEventsDesiredStatus")
    GroupLifecycleEventsStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resourcegroups#GroupLifecycleEventsStatus", name: "GroupLifecycleEventsStatus")
    GroupLifecycleEventsStatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourcegroups#GroupLifecycleEventsStatusMessage", name: "GroupLifecycleEventsStatusMessage", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    GroupList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourcegroups#GroupList", name: "GroupList")
    GroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourcegroups#GroupName", name: "GroupName", traits: {"smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\.-]{1,300}|[a-zA-Z0-9_\\.-]{1,150}/[a-z0-9]{26}$"})
    GroupParameterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourcegroups#GroupParameterList", name: "GroupParameterList")
    GroupQuery = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#GroupQuery", name: "GroupQuery")
    GroupResourcesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#GroupResourcesInput", name: "GroupResourcesInput")
    GroupResourcesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#GroupResourcesOutput", name: "GroupResourcesOutput")
    GroupString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourcegroups#GroupString", name: "GroupString", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\.-]{1,300}|[a-zA-Z0-9_\\.-]{1,150}/[a-z0-9]{26}|arn:aws(-[a-z]+)*:resource-groups:[a-z]{2}(-[a-z]+)+-\\d{1}:[0-9]{12}:group/([a-zA-Z0-9_\\.-]{1,300}|[a-zA-Z0-9_\\.-]{1,150}/[a-z0-9]{26})$"})
    GroupStringV2 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourcegroups#GroupStringV2", name: "GroupStringV2", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^[a-zA-Z0-9_\\.-]{1,300}|[a-zA-Z0-9_\\.-]{1,150}/[a-z0-9]{26}|arn:aws(-[a-z]+)*:resource-groups:[a-z]{2}(-[a-z]+)+-\\d{1}:[0-9]{12}:group/([a-zA-Z0-9_\\.-]{1,300}|[a-zA-Z0-9_\\.-]{1,150}/[a-z0-9]{26})$"})
    GroupingStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resourcegroups#GroupingStatus", name: "GroupingStatus")
    GroupingStatusesItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#GroupingStatusesItem", name: "GroupingStatusesItem")
    GroupingStatusesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourcegroups#GroupingStatusesList", name: "GroupingStatusesList")
    GroupingType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resourcegroups#GroupingType", name: "GroupingType")
    InternalServerErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#InternalServerErrorException", name: "InternalServerErrorException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListGroupResourcesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#ListGroupResourcesInput", name: "ListGroupResourcesInput")
    ListGroupResourcesItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#ListGroupResourcesItem", name: "ListGroupResourcesItem")
    ListGroupResourcesItemList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourcegroups#ListGroupResourcesItemList", name: "ListGroupResourcesItemList")
    ListGroupResourcesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#ListGroupResourcesOutput", name: "ListGroupResourcesOutput")
    ListGroupingStatusesFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#ListGroupingStatusesFilter", name: "ListGroupingStatusesFilter")
    ListGroupingStatusesFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourcegroups#ListGroupingStatusesFilterList", name: "ListGroupingStatusesFilterList")
    ListGroupingStatusesFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resourcegroups#ListGroupingStatusesFilterName", name: "ListGroupingStatusesFilterName")
    ListGroupingStatusesFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourcegroups#ListGroupingStatusesFilterValue", name: "ListGroupingStatusesFilterValue", traits: {"smithy.api#pattern" => "^SUCCESS|FAILED|IN_PROGRESS|SKIPPED|arn:aws(-[a-z]+)*:[a-z0-9\\-]*:([a-z]{2}(-[a-z]+)+-\\d{1})?:([0-9]{12})?:.+$"})
    ListGroupingStatusesFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourcegroups#ListGroupingStatusesFilterValues", name: "ListGroupingStatusesFilterValues", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ListGroupingStatusesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#ListGroupingStatusesInput", name: "ListGroupingStatusesInput")
    ListGroupingStatusesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#ListGroupingStatusesOutput", name: "ListGroupingStatusesOutput")
    ListGroupsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#ListGroupsInput", name: "ListGroupsInput")
    ListGroupsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#ListGroupsOutput", name: "ListGroupsOutput")
    ListTagSyncTasksFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#ListTagSyncTasksFilter", name: "ListTagSyncTasksFilter")
    ListTagSyncTasksFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourcegroups#ListTagSyncTasksFilterList", name: "ListTagSyncTasksFilterList")
    ListTagSyncTasksInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#ListTagSyncTasksInput", name: "ListTagSyncTasksInput")
    ListTagSyncTasksOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#ListTagSyncTasksOutput", name: "ListTagSyncTasksOutput")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.resourcegroups#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    MethodNotAllowedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#MethodNotAllowedException", name: "MethodNotAllowedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 405})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourcegroups#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 8192}, "smithy.api#pattern" => "^[a-zA-Z0-9+/]*={0,2}$"})
    NotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#NotFoundException", name: "NotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    Owner = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourcegroups#Owner", name: "Owner", traits: {"smithy.api#length" => {"min" => 0, "max" => 300}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    PendingResource = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#PendingResource", name: "PendingResource")
    PendingResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourcegroups#PendingResourceList", name: "PendingResourceList")
    PutGroupConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#PutGroupConfigurationInput", name: "PutGroupConfigurationInput")
    PutGroupConfigurationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#PutGroupConfigurationOutput", name: "PutGroupConfigurationOutput")
    Query = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourcegroups#Query", name: "Query", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    QueryError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#QueryError", name: "QueryError")
    QueryErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resourcegroups#QueryErrorCode", name: "QueryErrorCode")
    QueryErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourcegroups#QueryErrorList", name: "QueryErrorList")
    QueryErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourcegroups#QueryErrorMessage", name: "QueryErrorMessage")
    QueryType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resourcegroups#QueryType", name: "QueryType", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^\\w+$"})
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourcegroups#ResourceArn", name: "ResourceArn", traits: {"smithy.api#pattern" => "^arn:aws(-[a-z]+)*:[a-z0-9\\-]*:([a-z]{2}(-[a-z]+)+-\\d{1})?:([0-9]{12})?:.+$"})
    ResourceArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourcegroups#ResourceArnList", name: "ResourceArnList", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}})
    ResourceFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#ResourceFilter", name: "ResourceFilter")
    ResourceFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourcegroups#ResourceFilterList", name: "ResourceFilterList")
    ResourceFilterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resourcegroups#ResourceFilterName", name: "ResourceFilterName")
    ResourceFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourcegroups#ResourceFilterValue", name: "ResourceFilterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^AWS::[a-zA-Z0-9]+::[a-zA-Z0-9]+$"})
    ResourceFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourcegroups#ResourceFilterValues", name: "ResourceFilterValues", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    ResourceIdentifier = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#ResourceIdentifier", name: "ResourceIdentifier")
    ResourceIdentifierList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourcegroups#ResourceIdentifierList", name: "ResourceIdentifierList")
    ResourceQuery = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#ResourceQuery", name: "ResourceQuery")
    ResourceStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#ResourceStatus", name: "ResourceStatus")
    ResourceStatusValue = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resourcegroups#ResourceStatusValue", name: "ResourceStatusValue")
    ResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourcegroups#ResourceType", name: "ResourceType", traits: {"smithy.api#pattern" => "^AWS::[a-zA-Z0-9]+::\\w+$"})
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourcegroups#RoleArn", name: "RoleArn", traits: {"smithy.api#length" => {"min" => 20, "max" => 2048}, "smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"})
    SearchResourcesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#SearchResourcesInput", name: "SearchResourcesInput")
    SearchResourcesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#SearchResourcesOutput", name: "SearchResourcesOutput")
    StartTagSyncTaskInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#StartTagSyncTaskInput", name: "StartTagSyncTaskInput")
    StartTagSyncTaskOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#StartTagSyncTaskOutput", name: "StartTagSyncTaskOutput")
    TagInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#TagInput", name: "TagInput")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourcegroups#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourcegroups#TagKeyList", name: "TagKeyList")
    TagOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#TagOutput", name: "TagOutput")
    TagSyncTaskArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourcegroups#TagSyncTaskArn", name: "TagSyncTaskArn", traits: {"smithy.api#length" => {"min" => 12, "max" => 1600}, "smithy.api#pattern" => "^arn:aws(-[a-z]+)*:resource-groups:[a-z]{2}(-[a-z]+)+-\\d{1}:[0-9]{12}:group/[a-zA-Z0-9_\\.-]{1,150}/[a-z0-9]{26}/tag-sync-task/[a-z0-9]{26}$"})
    TagSyncTaskItem = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#TagSyncTaskItem", name: "TagSyncTaskItem")
    TagSyncTaskList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourcegroups#TagSyncTaskList", name: "TagSyncTaskList")
    TagSyncTaskStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resourcegroups#TagSyncTaskStatus", name: "TagSyncTaskStatus")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourcegroups#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.resourcegroups#Tags", name: "Tags")
    TooManyRequestsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#TooManyRequestsException", name: "TooManyRequestsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    UnauthorizedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#UnauthorizedException", name: "UnauthorizedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 401})
    UngroupResourcesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#UngroupResourcesInput", name: "UngroupResourcesInput")
    UngroupResourcesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#UngroupResourcesOutput", name: "UngroupResourcesOutput")
    UntagInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#UntagInput", name: "UntagInput")
    UntagOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#UntagOutput", name: "UntagOutput")
    UpdateAccountSettingsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#UpdateAccountSettingsInput", name: "UpdateAccountSettingsInput")
    UpdateAccountSettingsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#UpdateAccountSettingsOutput", name: "UpdateAccountSettingsOutput")
    UpdateGroupInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#UpdateGroupInput", name: "UpdateGroupInput")
    UpdateGroupOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#UpdateGroupOutput", name: "UpdateGroupOutput")
    UpdateGroupQueryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#UpdateGroupQueryInput", name: "UpdateGroupQueryInput")
    UpdateGroupQueryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroups#UpdateGroupQueryOutput", name: "UpdateGroupQueryOutput")
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.resourcegroups#timestamp", name: "Timestamp")

    AccountSettings.add_member(:group_lifecycle_events_desired_status, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupLifecycleEventsDesiredStatus, location_name: "GroupLifecycleEventsDesiredStatus"))
    AccountSettings.add_member(:group_lifecycle_events_status, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupLifecycleEventsStatus, location_name: "GroupLifecycleEventsStatus"))
    AccountSettings.add_member(:group_lifecycle_events_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupLifecycleEventsStatusMessage, location_name: "GroupLifecycleEventsStatusMessage"))
    AccountSettings.type = Types::AccountSettings
    ApplicationTag.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationTagKey)
    ApplicationTag.value = ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationArn)
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    BadRequestException.type = Types::BadRequestException
    CancelTagSyncTaskInput.add_member(:task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TagSyncTaskArn, location_name: "TaskArn", traits: {"smithy.api#required" => {}}))
    CancelTagSyncTaskInput.type = Types::CancelTagSyncTaskInput
    CreateGroupInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateGroupName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    CreateGroupInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "Description"))
    CreateGroupInput.add_member(:resource_query, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceQuery, location_name: "ResourceQuery"))
    CreateGroupInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "Tags"))
    CreateGroupInput.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupConfigurationList, location_name: "Configuration"))
    CreateGroupInput.add_member(:criticality, ::Smithy::Schema::Shapes::MemberShape.new(target: Criticality, location_name: "Criticality"))
    CreateGroupInput.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Owner, location_name: "Owner"))
    CreateGroupInput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, location_name: "DisplayName"))
    CreateGroupInput.type = Types::CreateGroupInput
    CreateGroupOutput.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: Group, location_name: "Group"))
    CreateGroupOutput.add_member(:resource_query, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceQuery, location_name: "ResourceQuery"))
    CreateGroupOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "Tags"))
    CreateGroupOutput.add_member(:group_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupConfiguration, location_name: "GroupConfiguration"))
    CreateGroupOutput.type = Types::CreateGroupOutput
    DeleteGroupInput.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, location_name: "GroupName", traits: {"smithy.api#deprecated" => {"message" => "This field is deprecated, use Group instead."}}))
    DeleteGroupInput.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupStringV2, location_name: "Group"))
    DeleteGroupInput.type = Types::DeleteGroupInput
    DeleteGroupOutput.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: Group, location_name: "Group"))
    DeleteGroupOutput.type = Types::DeleteGroupOutput
    FailedResource.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "ResourceArn"))
    FailedResource.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "ErrorMessage"))
    FailedResource.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, location_name: "ErrorCode"))
    FailedResource.type = Types::FailedResource
    FailedResourceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FailedResource)
    ForbiddenException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    ForbiddenException.type = Types::ForbiddenException
    GetAccountSettingsOutput.add_member(:account_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountSettings, location_name: "AccountSettings"))
    GetAccountSettingsOutput.type = Types::GetAccountSettingsOutput
    GetGroupConfigurationInput.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupString, location_name: "Group"))
    GetGroupConfigurationInput.type = Types::GetGroupConfigurationInput
    GetGroupConfigurationOutput.add_member(:group_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupConfiguration, location_name: "GroupConfiguration"))
    GetGroupConfigurationOutput.type = Types::GetGroupConfigurationOutput
    GetGroupInput.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, location_name: "GroupName", traits: {"smithy.api#deprecated" => {"message" => "This field is deprecated, use Group instead."}}))
    GetGroupInput.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupStringV2, location_name: "Group"))
    GetGroupInput.type = Types::GetGroupInput
    GetGroupOutput.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: Group, location_name: "Group"))
    GetGroupOutput.type = Types::GetGroupOutput
    GetGroupQueryInput.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, location_name: "GroupName", traits: {"smithy.api#deprecated" => {"message" => "This field is deprecated, use Group instead."}}))
    GetGroupQueryInput.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupString, location_name: "Group"))
    GetGroupQueryInput.type = Types::GetGroupQueryInput
    GetGroupQueryOutput.add_member(:group_query, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupQuery, location_name: "GroupQuery"))
    GetGroupQueryOutput.type = Types::GetGroupQueryOutput
    GetTagSyncTaskInput.add_member(:task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TagSyncTaskArn, location_name: "TaskArn", traits: {"smithy.api#required" => {}}))
    GetTagSyncTaskInput.type = Types::GetTagSyncTaskInput
    GetTagSyncTaskOutput.add_member(:group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupArnV2, location_name: "GroupArn"))
    GetTagSyncTaskOutput.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, location_name: "GroupName"))
    GetTagSyncTaskOutput.add_member(:task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TagSyncTaskArn, location_name: "TaskArn"))
    GetTagSyncTaskOutput.add_member(:tag_key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, location_name: "TagKey"))
    GetTagSyncTaskOutput.add_member(:tag_value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, location_name: "TagValue"))
    GetTagSyncTaskOutput.add_member(:resource_query, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceQuery, location_name: "ResourceQuery"))
    GetTagSyncTaskOutput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "RoleArn"))
    GetTagSyncTaskOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TagSyncTaskStatus, location_name: "Status"))
    GetTagSyncTaskOutput.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "ErrorMessage"))
    GetTagSyncTaskOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedAt"))
    GetTagSyncTaskOutput.type = Types::GetTagSyncTaskOutput
    GetTagsInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupArnV2, location_name: "Arn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetTagsInput.type = Types::GetTagsInput
    GetTagsOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupArnV2, location_name: "Arn"))
    GetTagsOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "Tags"))
    GetTagsOutput.type = Types::GetTagsOutput
    Group.add_member(:group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupArnV2, location_name: "GroupArn", traits: {"smithy.api#required" => {}}))
    Group.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    Group.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "Description"))
    Group.add_member(:criticality, ::Smithy::Schema::Shapes::MemberShape.new(target: Criticality, location_name: "Criticality"))
    Group.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Owner, location_name: "Owner"))
    Group.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, location_name: "DisplayName"))
    Group.add_member(:application_tag, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationTag, location_name: "ApplicationTag"))
    Group.type = Types::Group
    GroupConfiguration.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupConfigurationList, location_name: "Configuration"))
    GroupConfiguration.add_member(:proposed_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupConfigurationList, location_name: "ProposedConfiguration"))
    GroupConfiguration.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupConfigurationStatus, location_name: "Status"))
    GroupConfiguration.add_member(:failure_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupConfigurationFailureReason, location_name: "FailureReason"))
    GroupConfiguration.type = Types::GroupConfiguration
    GroupConfigurationItem.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupConfigurationType, location_name: "Type", traits: {"smithy.api#required" => {}}))
    GroupConfigurationItem.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupParameterList, location_name: "Parameters"))
    GroupConfigurationItem.type = Types::GroupConfigurationItem
    GroupConfigurationList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GroupConfigurationItem)
    GroupConfigurationParameter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupConfigurationParameterName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    GroupConfigurationParameter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupConfigurationParameterValueList, location_name: "Values"))
    GroupConfigurationParameter.type = Types::GroupConfigurationParameter
    GroupConfigurationParameterValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GroupConfigurationParameterValue)
    GroupConfigurationStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    GroupConfigurationStatus.add_member(:update_complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATE_COMPLETE", traits: {"smithy.api#enumValue" => "UPDATE_COMPLETE"}))
    GroupConfigurationStatus.add_member(:update_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UPDATE_FAILED", traits: {"smithy.api#enumValue" => "UPDATE_FAILED"}))
    GroupFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupFilterName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    GroupFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupFilterValues, location_name: "Values", traits: {"smithy.api#required" => {}}))
    GroupFilter.type = Types::GroupFilter
    GroupFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GroupFilter)
    GroupFilterName.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ResourceType", traits: {"smithy.api#enumValue" => "resource-type"}))
    GroupFilterName.add_member(:configuration_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ConfigurationType", traits: {"smithy.api#enumValue" => "configuration-type"}))
    GroupFilterName.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Owner", traits: {"smithy.api#enumValue" => "owner"}))
    GroupFilterName.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DisplayName", traits: {"smithy.api#enumValue" => "display-name"}))
    GroupFilterName.add_member(:criticality, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Criticality", traits: {"smithy.api#enumValue" => "criticality"}))
    GroupFilterValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GroupFilterValue)
    GroupIdentifier.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, location_name: "GroupName"))
    GroupIdentifier.add_member(:group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupArn, location_name: "GroupArn"))
    GroupIdentifier.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "Description"))
    GroupIdentifier.add_member(:criticality, ::Smithy::Schema::Shapes::MemberShape.new(target: Criticality, location_name: "Criticality"))
    GroupIdentifier.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Owner, location_name: "Owner"))
    GroupIdentifier.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, location_name: "DisplayName"))
    GroupIdentifier.type = Types::GroupIdentifier
    GroupIdentifierList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GroupIdentifier)
    GroupLifecycleEventsDesiredStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    GroupLifecycleEventsDesiredStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    GroupLifecycleEventsStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    GroupLifecycleEventsStatus.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    GroupLifecycleEventsStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    GroupLifecycleEventsStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    GroupList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Group)
    GroupParameterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GroupConfigurationParameter)
    GroupQuery.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, location_name: "GroupName", traits: {"smithy.api#required" => {}}))
    GroupQuery.add_member(:resource_query, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceQuery, location_name: "ResourceQuery", traits: {"smithy.api#required" => {}}))
    GroupQuery.type = Types::GroupQuery
    GroupResourcesInput.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupStringV2, location_name: "Group", traits: {"smithy.api#required" => {}}))
    GroupResourcesInput.add_member(:resource_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArnList, location_name: "ResourceArns", traits: {"smithy.api#required" => {}}))
    GroupResourcesInput.type = Types::GroupResourcesInput
    GroupResourcesOutput.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArnList, location_name: "Succeeded"))
    GroupResourcesOutput.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedResourceList, location_name: "Failed"))
    GroupResourcesOutput.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: PendingResourceList, location_name: "Pending"))
    GroupResourcesOutput.type = Types::GroupResourcesOutput
    GroupingStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    GroupingStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    GroupingStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    GroupingStatus.add_member(:skipped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "SKIPPED", traits: {"smithy.api#enumValue" => "SKIPPED"}))
    GroupingStatusesItem.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "ResourceArn"))
    GroupingStatusesItem.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupingType, location_name: "Action"))
    GroupingStatusesItem.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupingStatus, location_name: "Status"))
    GroupingStatusesItem.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "ErrorMessage"))
    GroupingStatusesItem.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, location_name: "ErrorCode"))
    GroupingStatusesItem.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "UpdatedAt"))
    GroupingStatusesItem.type = Types::GroupingStatusesItem
    GroupingStatusesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GroupingStatusesItem)
    GroupingType.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "GROUP", traits: {"smithy.api#enumValue" => "GROUP"}))
    GroupingType.add_member(:ungroup, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "UNGROUP", traits: {"smithy.api#enumValue" => "UNGROUP"}))
    InternalServerErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InternalServerErrorException.type = Types::InternalServerErrorException
    ListGroupResourcesInput.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, location_name: "GroupName", traits: {"smithy.api#deprecated" => {"message" => "This field is deprecated, use Group instead."}}))
    ListGroupResourcesInput.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupStringV2, location_name: "Group"))
    ListGroupResourcesInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceFilterList, location_name: "Filters"))
    ListGroupResourcesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults"))
    ListGroupResourcesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListGroupResourcesInput.type = Types::ListGroupResourcesInput
    ListGroupResourcesItem.add_member(:identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, location_name: "Identifier"))
    ListGroupResourcesItem.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatus, location_name: "Status"))
    ListGroupResourcesItem.type = Types::ListGroupResourcesItem
    ListGroupResourcesItemList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ListGroupResourcesItem)
    ListGroupResourcesOutput.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ListGroupResourcesItemList, location_name: "Resources"))
    ListGroupResourcesOutput.add_member(:resource_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifierList, location_name: "ResourceIdentifiers", traits: {"smithy.api#deprecated" => {"message" => "This field is deprecated, use Resources instead."}}))
    ListGroupResourcesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListGroupResourcesOutput.add_member(:query_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryErrorList, location_name: "QueryErrors"))
    ListGroupResourcesOutput.type = Types::ListGroupResourcesOutput
    ListGroupingStatusesFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ListGroupingStatusesFilterName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    ListGroupingStatusesFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: ListGroupingStatusesFilterValues, location_name: "Values", traits: {"smithy.api#required" => {}}))
    ListGroupingStatusesFilter.type = Types::ListGroupingStatusesFilter
    ListGroupingStatusesFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ListGroupingStatusesFilter)
    ListGroupingStatusesFilterName.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Status", traits: {"smithy.api#enumValue" => "status"}))
    ListGroupingStatusesFilterName.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ResourceArn", traits: {"smithy.api#enumValue" => "resource-arn"}))
    ListGroupingStatusesFilterValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ListGroupingStatusesFilterValue)
    ListGroupingStatusesInput.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupStringV2, location_name: "Group", traits: {"smithy.api#required" => {}}))
    ListGroupingStatusesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults"))
    ListGroupingStatusesInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListGroupingStatusesFilterList, location_name: "Filters"))
    ListGroupingStatusesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListGroupingStatusesInput.type = Types::ListGroupingStatusesInput
    ListGroupingStatusesOutput.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupStringV2, location_name: "Group"))
    ListGroupingStatusesOutput.add_member(:grouping_statuses, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupingStatusesList, location_name: "GroupingStatuses"))
    ListGroupingStatusesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListGroupingStatusesOutput.type = Types::ListGroupingStatusesOutput
    ListGroupsInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupFilterList, location_name: "Filters"))
    ListGroupsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListGroupsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListGroupsInput.type = Types::ListGroupsInput
    ListGroupsOutput.add_member(:group_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupIdentifierList, location_name: "GroupIdentifiers"))
    ListGroupsOutput.add_member(:groups, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupList, location_name: "Groups", traits: {"smithy.api#deprecated" => {"message" => "This field is deprecated, use GroupIdentifiers instead."}}))
    ListGroupsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListGroupsOutput.type = Types::ListGroupsOutput
    ListTagSyncTasksFilter.add_member(:group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupArnV2, location_name: "GroupArn"))
    ListTagSyncTasksFilter.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, location_name: "GroupName"))
    ListTagSyncTasksFilter.type = Types::ListTagSyncTasksFilter
    ListTagSyncTasksFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ListTagSyncTasksFilter)
    ListTagSyncTasksInput.add_member(:filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ListTagSyncTasksFilterList, location_name: "Filters"))
    ListTagSyncTasksInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults"))
    ListTagSyncTasksInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListTagSyncTasksInput.type = Types::ListTagSyncTasksInput
    ListTagSyncTasksOutput.add_member(:tag_sync_tasks, ::Smithy::Schema::Shapes::MemberShape.new(target: TagSyncTaskList, location_name: "TagSyncTasks"))
    ListTagSyncTasksOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    ListTagSyncTasksOutput.type = Types::ListTagSyncTasksOutput
    MethodNotAllowedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    MethodNotAllowedException.type = Types::MethodNotAllowedException
    NotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    NotFoundException.type = Types::NotFoundException
    PendingResource.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "ResourceArn"))
    PendingResource.type = Types::PendingResource
    PendingResourceList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PendingResource)
    PutGroupConfigurationInput.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupString, location_name: "Group"))
    PutGroupConfigurationInput.add_member(:configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupConfigurationList, location_name: "Configuration"))
    PutGroupConfigurationInput.type = Types::PutGroupConfigurationInput
    PutGroupConfigurationOutput.type = Types::PutGroupConfigurationOutput
    QueryError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryErrorCode, location_name: "ErrorCode"))
    QueryError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryErrorMessage, location_name: "Message"))
    QueryError.type = Types::QueryError
    QueryErrorCode.add_member(:cloudformation_stack_inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CLOUDFORMATION_STACK_INACTIVE", traits: {"smithy.api#enumValue" => "CLOUDFORMATION_STACK_INACTIVE"}))
    QueryErrorCode.add_member(:cloudformation_stack_not_existing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CLOUDFORMATION_STACK_NOT_EXISTING", traits: {"smithy.api#enumValue" => "CLOUDFORMATION_STACK_NOT_EXISTING"}))
    QueryErrorCode.add_member(:cloudformation_stack_unassumable_role, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CLOUDFORMATION_STACK_UNASSUMABLE_ROLE", traits: {"smithy.api#enumValue" => "CLOUDFORMATION_STACK_UNASSUMABLE_ROLE"}))
    QueryErrorCode.add_member(:resource_type_not_supported, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RESOURCE_TYPE_NOT_SUPPORTED", traits: {"smithy.api#enumValue" => "RESOURCE_TYPE_NOT_SUPPORTED"}))
    QueryErrorList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: QueryError)
    QueryType.add_member(:tag_filters_1_0, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TAG_FILTERS_1_0", traits: {"smithy.api#enumValue" => "TAG_FILTERS_1_0"}))
    QueryType.add_member(:cloudformation_stack_1_0, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CLOUDFORMATION_STACK_1_0", traits: {"smithy.api#enumValue" => "CLOUDFORMATION_STACK_1_0"}))
    ResourceArnList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn)
    ResourceFilter.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceFilterName, location_name: "Name", traits: {"smithy.api#required" => {}}))
    ResourceFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceFilterValues, location_name: "Values", traits: {"smithy.api#required" => {}}))
    ResourceFilter.type = Types::ResourceFilter
    ResourceFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceFilter)
    ResourceFilterName.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ResourceType", traits: {"smithy.api#enumValue" => "resource-type"}))
    ResourceFilterValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceFilterValue)
    ResourceIdentifier.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, location_name: "ResourceArn"))
    ResourceIdentifier.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, location_name: "ResourceType"))
    ResourceIdentifier.type = Types::ResourceIdentifier
    ResourceIdentifierList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier)
    ResourceQuery.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryType, location_name: "Type", traits: {"smithy.api#required" => {}}))
    ResourceQuery.add_member(:query, ::Smithy::Schema::Shapes::MemberShape.new(target: Query, location_name: "Query", traits: {"smithy.api#required" => {}}))
    ResourceQuery.type = Types::ResourceQuery
    ResourceStatus.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceStatusValue, location_name: "Name"))
    ResourceStatus.type = Types::ResourceStatus
    ResourceStatusValue.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Pending", traits: {"smithy.api#enumValue" => "PENDING"}))
    SearchResourcesInput.add_member(:resource_query, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceQuery, location_name: "ResourceQuery", traits: {"smithy.api#required" => {}}))
    SearchResourcesInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, location_name: "MaxResults"))
    SearchResourcesInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    SearchResourcesInput.type = Types::SearchResourcesInput
    SearchResourcesOutput.add_member(:resource_identifiers, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifierList, location_name: "ResourceIdentifiers"))
    SearchResourcesOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, location_name: "NextToken"))
    SearchResourcesOutput.add_member(:query_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: QueryErrorList, location_name: "QueryErrors"))
    SearchResourcesOutput.type = Types::SearchResourcesOutput
    StartTagSyncTaskInput.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupStringV2, location_name: "Group", traits: {"smithy.api#required" => {}}))
    StartTagSyncTaskInput.add_member(:tag_key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, location_name: "TagKey"))
    StartTagSyncTaskInput.add_member(:tag_value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, location_name: "TagValue"))
    StartTagSyncTaskInput.add_member(:resource_query, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceQuery, location_name: "ResourceQuery"))
    StartTagSyncTaskInput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "RoleArn", traits: {"smithy.api#required" => {}}))
    StartTagSyncTaskInput.type = Types::StartTagSyncTaskInput
    StartTagSyncTaskOutput.add_member(:group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupArnV2, location_name: "GroupArn"))
    StartTagSyncTaskOutput.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, location_name: "GroupName"))
    StartTagSyncTaskOutput.add_member(:task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TagSyncTaskArn, location_name: "TaskArn"))
    StartTagSyncTaskOutput.add_member(:tag_key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, location_name: "TagKey"))
    StartTagSyncTaskOutput.add_member(:tag_value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, location_name: "TagValue"))
    StartTagSyncTaskOutput.add_member(:resource_query, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceQuery, location_name: "ResourceQuery"))
    StartTagSyncTaskOutput.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "RoleArn"))
    StartTagSyncTaskOutput.type = Types::StartTagSyncTaskOutput
    TagInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupArnV2, location_name: "Arn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "Tags", traits: {"smithy.api#required" => {}}))
    TagInput.type = Types::TagInput
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupArnV2, location_name: "Arn"))
    TagOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, location_name: "Tags"))
    TagOutput.type = Types::TagOutput
    TagSyncTaskItem.add_member(:group_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupArnV2, location_name: "GroupArn"))
    TagSyncTaskItem.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, location_name: "GroupName"))
    TagSyncTaskItem.add_member(:task_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: TagSyncTaskArn, location_name: "TaskArn"))
    TagSyncTaskItem.add_member(:tag_key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, location_name: "TagKey"))
    TagSyncTaskItem.add_member(:tag_value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, location_name: "TagValue"))
    TagSyncTaskItem.add_member(:resource_query, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceQuery, location_name: "ResourceQuery"))
    TagSyncTaskItem.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, location_name: "RoleArn"))
    TagSyncTaskItem.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: TagSyncTaskStatus, location_name: "Status"))
    TagSyncTaskItem.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "ErrorMessage"))
    TagSyncTaskItem.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, location_name: "CreatedAt"))
    TagSyncTaskItem.type = Types::TagSyncTaskItem
    TagSyncTaskList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagSyncTaskItem)
    TagSyncTaskStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    TagSyncTaskStatus.add_member(:error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ERROR", traits: {"smithy.api#enumValue" => "ERROR"}))
    Tags.key = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    Tags.value = ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue)
    TooManyRequestsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    TooManyRequestsException.type = Types::TooManyRequestsException
    UnauthorizedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    UnauthorizedException.type = Types::UnauthorizedException
    UngroupResourcesInput.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupStringV2, location_name: "Group", traits: {"smithy.api#required" => {}}))
    UngroupResourcesInput.add_member(:resource_arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArnList, location_name: "ResourceArns", traits: {"smithy.api#required" => {}}))
    UngroupResourcesInput.type = Types::UngroupResourcesInput
    UngroupResourcesOutput.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArnList, location_name: "Succeeded"))
    UngroupResourcesOutput.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedResourceList, location_name: "Failed"))
    UngroupResourcesOutput.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: PendingResourceList, location_name: "Pending"))
    UngroupResourcesOutput.type = Types::UngroupResourcesOutput
    UntagInput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupArnV2, location_name: "Arn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagInput.add_member(:keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, location_name: "Keys", traits: {"smithy.api#required" => {}}))
    UntagInput.type = Types::UntagInput
    UntagOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupArnV2, location_name: "Arn"))
    UntagOutput.add_member(:keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, location_name: "Keys"))
    UntagOutput.type = Types::UntagOutput
    UpdateAccountSettingsInput.add_member(:group_lifecycle_events_desired_status, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupLifecycleEventsDesiredStatus, location_name: "GroupLifecycleEventsDesiredStatus"))
    UpdateAccountSettingsInput.type = Types::UpdateAccountSettingsInput
    UpdateAccountSettingsOutput.add_member(:account_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountSettings, location_name: "AccountSettings"))
    UpdateAccountSettingsOutput.type = Types::UpdateAccountSettingsOutput
    UpdateGroupInput.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, location_name: "GroupName", traits: {"smithy.api#deprecated" => {"message" => "This field is deprecated, use Group instead."}}))
    UpdateGroupInput.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupStringV2, location_name: "Group"))
    UpdateGroupInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, location_name: "Description"))
    UpdateGroupInput.add_member(:criticality, ::Smithy::Schema::Shapes::MemberShape.new(target: Criticality, location_name: "Criticality"))
    UpdateGroupInput.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: Owner, location_name: "Owner"))
    UpdateGroupInput.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, location_name: "DisplayName"))
    UpdateGroupInput.type = Types::UpdateGroupInput
    UpdateGroupOutput.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: Group, location_name: "Group"))
    UpdateGroupOutput.type = Types::UpdateGroupOutput
    UpdateGroupQueryInput.add_member(:group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, location_name: "GroupName", traits: {"smithy.api#deprecated" => {"message" => "This field is deprecated, use Group instead."}}))
    UpdateGroupQueryInput.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupString, location_name: "Group"))
    UpdateGroupQueryInput.add_member(:resource_query, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceQuery, location_name: "ResourceQuery", traits: {"smithy.api#required" => {}}))
    UpdateGroupQueryInput.type = Types::UpdateGroupQueryInput
    UpdateGroupQueryOutput.add_member(:group_query, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupQuery, location_name: "GroupQuery"))
    UpdateGroupQueryOutput.type = Types::UpdateGroupQueryOutput

    Ardi = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.resourcegroups#Ardi"
      service.name = "Ardi"
      service.version = "2017-11-27"
      service.traits = {"aws.api#service" => {"sdkId" => "Resource Groups", "arnNamespace" => "resource-groups", "cloudFormationName" => "ResourceGroups", "cloudTrailEventSource" => "resourcegroups.amazonaws.com", "endpointPrefix" => "resource-groups"}, "aws.auth#sigv4" => {"name" => "resource-groups"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Resource Groups"}
      service.add_operation(:cancel_tag_sync_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#CancelTagSyncTask"
        operation.name = "CancelTagSyncTask"
        operation.input = CancelTagSyncTaskInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << MethodNotAllowedException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/cancel-tag-sync-task", "code" => 200}}
      end)
      service.add_operation(:create_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#CreateGroup"
        operation.name = "CreateGroup"
        operation.input = CreateGroupInput
        operation.output = CreateGroupOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << MethodNotAllowedException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/groups", "code" => 200}}
      end)
      service.add_operation(:delete_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#DeleteGroup"
        operation.name = "DeleteGroup"
        operation.input = DeleteGroupInput
        operation.output = DeleteGroupOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << MethodNotAllowedException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/delete-group", "code" => 200}}
      end)
      service.add_operation(:get_account_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#GetAccountSettings"
        operation.name = "GetAccountSettings"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = GetAccountSettingsOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << MethodNotAllowedException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/get-account-settings", "code" => 200}}
      end)
      service.add_operation(:get_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#GetGroup"
        operation.name = "GetGroup"
        operation.input = GetGroupInput
        operation.output = GetGroupOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << MethodNotAllowedException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/get-group", "code" => 200}}
      end)
      service.add_operation(:get_group_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#GetGroupConfiguration"
        operation.name = "GetGroupConfiguration"
        operation.input = GetGroupConfigurationInput
        operation.output = GetGroupConfigurationOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << MethodNotAllowedException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/get-group-configuration", "code" => 200}}
      end)
      service.add_operation(:get_group_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#GetGroupQuery"
        operation.name = "GetGroupQuery"
        operation.input = GetGroupQueryInput
        operation.output = GetGroupQueryOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << MethodNotAllowedException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/get-group-query", "code" => 200}}
      end)
      service.add_operation(:get_tag_sync_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#GetTagSyncTask"
        operation.name = "GetTagSyncTask"
        operation.input = GetTagSyncTaskInput
        operation.output = GetTagSyncTaskOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << MethodNotAllowedException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/get-tag-sync-task", "code" => 200}}
      end)
      service.add_operation(:get_tags, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#GetTags"
        operation.name = "GetTags"
        operation.input = GetTagsInput
        operation.output = GetTagsOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << MethodNotAllowedException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/resources/{Arn}/tags", "code" => 200}}
      end)
      service.add_operation(:group_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#GroupResources"
        operation.name = "GroupResources"
        operation.input = GroupResourcesInput
        operation.output = GroupResourcesOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << MethodNotAllowedException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/group-resources", "code" => 200}}
      end)
      service.add_operation(:list_group_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#ListGroupResources"
        operation.name = "ListGroupResources"
        operation.input = ListGroupResourcesInput
        operation.output = ListGroupResourcesOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << MethodNotAllowedException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-group-resources", "code" => 200}}
        operation[:paginator] = Paginators::ListGroupResources.new
      end)
      service.add_operation(:list_grouping_statuses, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#ListGroupingStatuses"
        operation.name = "ListGroupingStatuses"
        operation.input = ListGroupingStatusesInput
        operation.output = ListGroupingStatusesOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << MethodNotAllowedException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-grouping-statuses", "code" => 200}}
        operation[:paginator] = Paginators::ListGroupingStatuses.new
      end)
      service.add_operation(:list_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#ListGroups"
        operation.name = "ListGroups"
        operation.input = ListGroupsInput
        operation.output = ListGroupsOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << MethodNotAllowedException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/groups-list", "code" => 200}}
        operation[:paginator] = Paginators::ListGroups.new
      end)
      service.add_operation(:list_tag_sync_tasks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#ListTagSyncTasks"
        operation.name = "ListTagSyncTasks"
        operation.input = ListTagSyncTasksInput
        operation.output = ListTagSyncTasksOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << MethodNotAllowedException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-tag-sync-tasks", "code" => 200}}
        operation[:paginator] = Paginators::ListTagSyncTasks.new
      end)
      service.add_operation(:put_group_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#PutGroupConfiguration"
        operation.name = "PutGroupConfiguration"
        operation.input = PutGroupConfigurationInput
        operation.output = PutGroupConfigurationOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << MethodNotAllowedException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/put-group-configuration", "code" => 202}}
      end)
      service.add_operation(:search_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#SearchResources"
        operation.name = "SearchResources"
        operation.input = SearchResourcesInput
        operation.output = SearchResourcesOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << MethodNotAllowedException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/resources/search", "code" => 200}}
        operation[:paginator] = Paginators::SearchResources.new
      end)
      service.add_operation(:start_tag_sync_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#StartTagSyncTask"
        operation.name = "StartTagSyncTask"
        operation.input = StartTagSyncTaskInput
        operation.output = StartTagSyncTaskOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << MethodNotAllowedException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.errors << UnauthorizedException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/start-tag-sync-task", "code" => 200}}
      end)
      service.add_operation(:tag, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#Tag"
        operation.name = "Tag"
        operation.input = TagInput
        operation.output = TagOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << MethodNotAllowedException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/resources/{Arn}/tags", "code" => 200}}
      end)
      service.add_operation(:ungroup_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#UngroupResources"
        operation.name = "UngroupResources"
        operation.input = UngroupResourcesInput
        operation.output = UngroupResourcesOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << MethodNotAllowedException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ungroup-resources", "code" => 200}}
      end)
      service.add_operation(:untag, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#Untag"
        operation.name = "Untag"
        operation.input = UntagInput
        operation.output = UntagOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << MethodNotAllowedException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/resources/{Arn}/tags", "code" => 200}}
      end)
      service.add_operation(:update_account_settings, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#UpdateAccountSettings"
        operation.name = "UpdateAccountSettings"
        operation.input = UpdateAccountSettingsInput
        operation.output = UpdateAccountSettingsOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << MethodNotAllowedException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/update-account-settings", "code" => 200}}
      end)
      service.add_operation(:update_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#UpdateGroup"
        operation.name = "UpdateGroup"
        operation.input = UpdateGroupInput
        operation.output = UpdateGroupOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << MethodNotAllowedException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/update-group", "code" => 200}}
      end)
      service.add_operation(:update_group_query, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroups#UpdateGroupQuery"
        operation.name = "UpdateGroupQuery"
        operation.input = UpdateGroupQueryInput
        operation.output = UpdateGroupQueryOutput
        operation.errors << BadRequestException
        operation.errors << ForbiddenException
        operation.errors << InternalServerErrorException
        operation.errors << MethodNotAllowedException
        operation.errors << NotFoundException
        operation.errors << TooManyRequestsException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/update-group-query", "code" => 200}}
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
