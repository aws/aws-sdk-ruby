# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ResourceGroups
  # @api private
  module ClientApi

    include Seahorse::Model

    AccountSettings = Shapes::StructureShape.new(name: 'AccountSettings')
    ApplicationArn = Shapes::StringShape.new(name: 'ApplicationArn')
    ApplicationTag = Shapes::MapShape.new(name: 'ApplicationTag')
    ApplicationTagKey = Shapes::StringShape.new(name: 'ApplicationTagKey')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    CancelTagSyncTaskInput = Shapes::StructureShape.new(name: 'CancelTagSyncTaskInput')
    CreateGroupInput = Shapes::StructureShape.new(name: 'CreateGroupInput')
    CreateGroupName = Shapes::StringShape.new(name: 'CreateGroupName')
    CreateGroupOutput = Shapes::StructureShape.new(name: 'CreateGroupOutput')
    Criticality = Shapes::IntegerShape.new(name: 'Criticality')
    DeleteGroupInput = Shapes::StructureShape.new(name: 'DeleteGroupInput')
    DeleteGroupOutput = Shapes::StructureShape.new(name: 'DeleteGroupOutput')
    Description = Shapes::StringShape.new(name: 'Description')
    DisplayName = Shapes::StringShape.new(name: 'DisplayName')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    FailedResource = Shapes::StructureShape.new(name: 'FailedResource')
    FailedResourceList = Shapes::ListShape.new(name: 'FailedResourceList')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    GetAccountSettingsOutput = Shapes::StructureShape.new(name: 'GetAccountSettingsOutput')
    GetGroupConfigurationInput = Shapes::StructureShape.new(name: 'GetGroupConfigurationInput')
    GetGroupConfigurationOutput = Shapes::StructureShape.new(name: 'GetGroupConfigurationOutput')
    GetGroupInput = Shapes::StructureShape.new(name: 'GetGroupInput')
    GetGroupOutput = Shapes::StructureShape.new(name: 'GetGroupOutput')
    GetGroupQueryInput = Shapes::StructureShape.new(name: 'GetGroupQueryInput')
    GetGroupQueryOutput = Shapes::StructureShape.new(name: 'GetGroupQueryOutput')
    GetTagSyncTaskInput = Shapes::StructureShape.new(name: 'GetTagSyncTaskInput')
    GetTagSyncTaskOutput = Shapes::StructureShape.new(name: 'GetTagSyncTaskOutput')
    GetTagsInput = Shapes::StructureShape.new(name: 'GetTagsInput')
    GetTagsOutput = Shapes::StructureShape.new(name: 'GetTagsOutput')
    Group = Shapes::StructureShape.new(name: 'Group')
    GroupArn = Shapes::StringShape.new(name: 'GroupArn')
    GroupArnV2 = Shapes::StringShape.new(name: 'GroupArnV2')
    GroupConfiguration = Shapes::StructureShape.new(name: 'GroupConfiguration')
    GroupConfigurationFailureReason = Shapes::StringShape.new(name: 'GroupConfigurationFailureReason')
    GroupConfigurationItem = Shapes::StructureShape.new(name: 'GroupConfigurationItem')
    GroupConfigurationList = Shapes::ListShape.new(name: 'GroupConfigurationList')
    GroupConfigurationParameter = Shapes::StructureShape.new(name: 'GroupConfigurationParameter')
    GroupConfigurationParameterName = Shapes::StringShape.new(name: 'GroupConfigurationParameterName')
    GroupConfigurationParameterValue = Shapes::StringShape.new(name: 'GroupConfigurationParameterValue')
    GroupConfigurationParameterValueList = Shapes::ListShape.new(name: 'GroupConfigurationParameterValueList')
    GroupConfigurationStatus = Shapes::StringShape.new(name: 'GroupConfigurationStatus')
    GroupConfigurationType = Shapes::StringShape.new(name: 'GroupConfigurationType')
    GroupFilter = Shapes::StructureShape.new(name: 'GroupFilter')
    GroupFilterList = Shapes::ListShape.new(name: 'GroupFilterList')
    GroupFilterName = Shapes::StringShape.new(name: 'GroupFilterName')
    GroupFilterValue = Shapes::StringShape.new(name: 'GroupFilterValue')
    GroupFilterValues = Shapes::ListShape.new(name: 'GroupFilterValues')
    GroupIdentifier = Shapes::StructureShape.new(name: 'GroupIdentifier')
    GroupIdentifierList = Shapes::ListShape.new(name: 'GroupIdentifierList')
    GroupLifecycleEventsDesiredStatus = Shapes::StringShape.new(name: 'GroupLifecycleEventsDesiredStatus')
    GroupLifecycleEventsStatus = Shapes::StringShape.new(name: 'GroupLifecycleEventsStatus')
    GroupLifecycleEventsStatusMessage = Shapes::StringShape.new(name: 'GroupLifecycleEventsStatusMessage')
    GroupList = Shapes::ListShape.new(name: 'GroupList')
    GroupName = Shapes::StringShape.new(name: 'GroupName')
    GroupParameterList = Shapes::ListShape.new(name: 'GroupParameterList')
    GroupQuery = Shapes::StructureShape.new(name: 'GroupQuery')
    GroupResourcesInput = Shapes::StructureShape.new(name: 'GroupResourcesInput')
    GroupResourcesOutput = Shapes::StructureShape.new(name: 'GroupResourcesOutput')
    GroupString = Shapes::StringShape.new(name: 'GroupString')
    GroupStringV2 = Shapes::StringShape.new(name: 'GroupStringV2')
    GroupingStatus = Shapes::StringShape.new(name: 'GroupingStatus')
    GroupingStatusesItem = Shapes::StructureShape.new(name: 'GroupingStatusesItem')
    GroupingStatusesList = Shapes::ListShape.new(name: 'GroupingStatusesList')
    GroupingType = Shapes::StringShape.new(name: 'GroupingType')
    InternalServerErrorException = Shapes::StructureShape.new(name: 'InternalServerErrorException')
    ListGroupResourcesInput = Shapes::StructureShape.new(name: 'ListGroupResourcesInput')
    ListGroupResourcesItem = Shapes::StructureShape.new(name: 'ListGroupResourcesItem')
    ListGroupResourcesItemList = Shapes::ListShape.new(name: 'ListGroupResourcesItemList')
    ListGroupResourcesOutput = Shapes::StructureShape.new(name: 'ListGroupResourcesOutput')
    ListGroupingStatusesFilter = Shapes::StructureShape.new(name: 'ListGroupingStatusesFilter')
    ListGroupingStatusesFilterList = Shapes::ListShape.new(name: 'ListGroupingStatusesFilterList')
    ListGroupingStatusesFilterName = Shapes::StringShape.new(name: 'ListGroupingStatusesFilterName')
    ListGroupingStatusesFilterValue = Shapes::StringShape.new(name: 'ListGroupingStatusesFilterValue')
    ListGroupingStatusesFilterValues = Shapes::ListShape.new(name: 'ListGroupingStatusesFilterValues')
    ListGroupingStatusesInput = Shapes::StructureShape.new(name: 'ListGroupingStatusesInput')
    ListGroupingStatusesOutput = Shapes::StructureShape.new(name: 'ListGroupingStatusesOutput')
    ListGroupsInput = Shapes::StructureShape.new(name: 'ListGroupsInput')
    ListGroupsOutput = Shapes::StructureShape.new(name: 'ListGroupsOutput')
    ListTagSyncTasksFilter = Shapes::StructureShape.new(name: 'ListTagSyncTasksFilter')
    ListTagSyncTasksFilterList = Shapes::ListShape.new(name: 'ListTagSyncTasksFilterList')
    ListTagSyncTasksInput = Shapes::StructureShape.new(name: 'ListTagSyncTasksInput')
    ListTagSyncTasksOutput = Shapes::StructureShape.new(name: 'ListTagSyncTasksOutput')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MethodNotAllowedException = Shapes::StructureShape.new(name: 'MethodNotAllowedException')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    Owner = Shapes::StringShape.new(name: 'Owner')
    PendingResource = Shapes::StructureShape.new(name: 'PendingResource')
    PendingResourceList = Shapes::ListShape.new(name: 'PendingResourceList')
    PutGroupConfigurationInput = Shapes::StructureShape.new(name: 'PutGroupConfigurationInput')
    PutGroupConfigurationOutput = Shapes::StructureShape.new(name: 'PutGroupConfigurationOutput')
    Query = Shapes::StringShape.new(name: 'Query')
    QueryError = Shapes::StructureShape.new(name: 'QueryError')
    QueryErrorCode = Shapes::StringShape.new(name: 'QueryErrorCode')
    QueryErrorList = Shapes::ListShape.new(name: 'QueryErrorList')
    QueryErrorMessage = Shapes::StringShape.new(name: 'QueryErrorMessage')
    QueryType = Shapes::StringShape.new(name: 'QueryType')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceArnList = Shapes::ListShape.new(name: 'ResourceArnList')
    ResourceFilter = Shapes::StructureShape.new(name: 'ResourceFilter')
    ResourceFilterList = Shapes::ListShape.new(name: 'ResourceFilterList')
    ResourceFilterName = Shapes::StringShape.new(name: 'ResourceFilterName')
    ResourceFilterValue = Shapes::StringShape.new(name: 'ResourceFilterValue')
    ResourceFilterValues = Shapes::ListShape.new(name: 'ResourceFilterValues')
    ResourceIdentifier = Shapes::StructureShape.new(name: 'ResourceIdentifier')
    ResourceIdentifierList = Shapes::ListShape.new(name: 'ResourceIdentifierList')
    ResourceQuery = Shapes::StructureShape.new(name: 'ResourceQuery')
    ResourceStatus = Shapes::StructureShape.new(name: 'ResourceStatus')
    ResourceStatusValue = Shapes::StringShape.new(name: 'ResourceStatusValue')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    SearchResourcesInput = Shapes::StructureShape.new(name: 'SearchResourcesInput')
    SearchResourcesOutput = Shapes::StructureShape.new(name: 'SearchResourcesOutput')
    StartTagSyncTaskInput = Shapes::StructureShape.new(name: 'StartTagSyncTaskInput')
    StartTagSyncTaskOutput = Shapes::StructureShape.new(name: 'StartTagSyncTaskOutput')
    TagInput = Shapes::StructureShape.new(name: 'TagInput')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagOutput = Shapes::StructureShape.new(name: 'TagOutput')
    TagSyncTaskArn = Shapes::StringShape.new(name: 'TagSyncTaskArn')
    TagSyncTaskItem = Shapes::StructureShape.new(name: 'TagSyncTaskItem')
    TagSyncTaskList = Shapes::ListShape.new(name: 'TagSyncTaskList')
    TagSyncTaskStatus = Shapes::StringShape.new(name: 'TagSyncTaskStatus')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::MapShape.new(name: 'Tags')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    UnauthorizedException = Shapes::StructureShape.new(name: 'UnauthorizedException')
    UngroupResourcesInput = Shapes::StructureShape.new(name: 'UngroupResourcesInput')
    UngroupResourcesOutput = Shapes::StructureShape.new(name: 'UngroupResourcesOutput')
    UntagInput = Shapes::StructureShape.new(name: 'UntagInput')
    UntagOutput = Shapes::StructureShape.new(name: 'UntagOutput')
    UpdateAccountSettingsInput = Shapes::StructureShape.new(name: 'UpdateAccountSettingsInput')
    UpdateAccountSettingsOutput = Shapes::StructureShape.new(name: 'UpdateAccountSettingsOutput')
    UpdateGroupInput = Shapes::StructureShape.new(name: 'UpdateGroupInput')
    UpdateGroupOutput = Shapes::StructureShape.new(name: 'UpdateGroupOutput')
    UpdateGroupQueryInput = Shapes::StructureShape.new(name: 'UpdateGroupQueryInput')
    UpdateGroupQueryOutput = Shapes::StructureShape.new(name: 'UpdateGroupQueryOutput')
    timestamp = Shapes::TimestampShape.new(name: 'timestamp')

    AccountSettings.add_member(:group_lifecycle_events_desired_status, Shapes::ShapeRef.new(shape: GroupLifecycleEventsDesiredStatus, location_name: "GroupLifecycleEventsDesiredStatus"))
    AccountSettings.add_member(:group_lifecycle_events_status, Shapes::ShapeRef.new(shape: GroupLifecycleEventsStatus, location_name: "GroupLifecycleEventsStatus"))
    AccountSettings.add_member(:group_lifecycle_events_status_message, Shapes::ShapeRef.new(shape: GroupLifecycleEventsStatusMessage, location_name: "GroupLifecycleEventsStatusMessage"))
    AccountSettings.struct_class = Types::AccountSettings

    ApplicationTag.key = Shapes::ShapeRef.new(shape: ApplicationTagKey)
    ApplicationTag.value = Shapes::ShapeRef.new(shape: ApplicationArn)

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    BadRequestException.struct_class = Types::BadRequestException

    CancelTagSyncTaskInput.add_member(:task_arn, Shapes::ShapeRef.new(shape: TagSyncTaskArn, required: true, location_name: "TaskArn"))
    CancelTagSyncTaskInput.struct_class = Types::CancelTagSyncTaskInput

    CreateGroupInput.add_member(:name, Shapes::ShapeRef.new(shape: CreateGroupName, required: true, location_name: "Name"))
    CreateGroupInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateGroupInput.add_member(:resource_query, Shapes::ShapeRef.new(shape: ResourceQuery, location_name: "ResourceQuery"))
    CreateGroupInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateGroupInput.add_member(:configuration, Shapes::ShapeRef.new(shape: GroupConfigurationList, location_name: "Configuration"))
    CreateGroupInput.add_member(:criticality, Shapes::ShapeRef.new(shape: Criticality, location_name: "Criticality"))
    CreateGroupInput.add_member(:owner, Shapes::ShapeRef.new(shape: Owner, location_name: "Owner"))
    CreateGroupInput.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "DisplayName"))
    CreateGroupInput.struct_class = Types::CreateGroupInput

    CreateGroupOutput.add_member(:group, Shapes::ShapeRef.new(shape: Group, location_name: "Group"))
    CreateGroupOutput.add_member(:resource_query, Shapes::ShapeRef.new(shape: ResourceQuery, location_name: "ResourceQuery"))
    CreateGroupOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    CreateGroupOutput.add_member(:group_configuration, Shapes::ShapeRef.new(shape: GroupConfiguration, location_name: "GroupConfiguration"))
    CreateGroupOutput.struct_class = Types::CreateGroupOutput

    DeleteGroupInput.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, deprecated: true, location_name: "GroupName", metadata: {"deprecatedMessage"=>"This field is deprecated, use Group instead."}))
    DeleteGroupInput.add_member(:group, Shapes::ShapeRef.new(shape: GroupStringV2, location_name: "Group"))
    DeleteGroupInput.struct_class = Types::DeleteGroupInput

    DeleteGroupOutput.add_member(:group, Shapes::ShapeRef.new(shape: Group, location_name: "Group"))
    DeleteGroupOutput.struct_class = Types::DeleteGroupOutput

    FailedResource.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn"))
    FailedResource.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    FailedResource.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    FailedResource.struct_class = Types::FailedResource

    FailedResourceList.member = Shapes::ShapeRef.new(shape: FailedResource)

    ForbiddenException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ForbiddenException.struct_class = Types::ForbiddenException

    GetAccountSettingsOutput.add_member(:account_settings, Shapes::ShapeRef.new(shape: AccountSettings, location_name: "AccountSettings"))
    GetAccountSettingsOutput.struct_class = Types::GetAccountSettingsOutput

    GetGroupConfigurationInput.add_member(:group, Shapes::ShapeRef.new(shape: GroupString, location_name: "Group"))
    GetGroupConfigurationInput.struct_class = Types::GetGroupConfigurationInput

    GetGroupConfigurationOutput.add_member(:group_configuration, Shapes::ShapeRef.new(shape: GroupConfiguration, location_name: "GroupConfiguration"))
    GetGroupConfigurationOutput.struct_class = Types::GetGroupConfigurationOutput

    GetGroupInput.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, deprecated: true, location_name: "GroupName", metadata: {"deprecatedMessage"=>"This field is deprecated, use Group instead."}))
    GetGroupInput.add_member(:group, Shapes::ShapeRef.new(shape: GroupStringV2, location_name: "Group"))
    GetGroupInput.struct_class = Types::GetGroupInput

    GetGroupOutput.add_member(:group, Shapes::ShapeRef.new(shape: Group, location_name: "Group"))
    GetGroupOutput.struct_class = Types::GetGroupOutput

    GetGroupQueryInput.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, deprecated: true, location_name: "GroupName", metadata: {"deprecatedMessage"=>"This field is deprecated, use Group instead."}))
    GetGroupQueryInput.add_member(:group, Shapes::ShapeRef.new(shape: GroupString, location_name: "Group"))
    GetGroupQueryInput.struct_class = Types::GetGroupQueryInput

    GetGroupQueryOutput.add_member(:group_query, Shapes::ShapeRef.new(shape: GroupQuery, location_name: "GroupQuery"))
    GetGroupQueryOutput.struct_class = Types::GetGroupQueryOutput

    GetTagSyncTaskInput.add_member(:task_arn, Shapes::ShapeRef.new(shape: TagSyncTaskArn, required: true, location_name: "TaskArn"))
    GetTagSyncTaskInput.struct_class = Types::GetTagSyncTaskInput

    GetTagSyncTaskOutput.add_member(:group_arn, Shapes::ShapeRef.new(shape: GroupArnV2, location_name: "GroupArn"))
    GetTagSyncTaskOutput.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, location_name: "GroupName"))
    GetTagSyncTaskOutput.add_member(:task_arn, Shapes::ShapeRef.new(shape: TagSyncTaskArn, location_name: "TaskArn"))
    GetTagSyncTaskOutput.add_member(:tag_key, Shapes::ShapeRef.new(shape: TagKey, location_name: "TagKey"))
    GetTagSyncTaskOutput.add_member(:tag_value, Shapes::ShapeRef.new(shape: TagValue, location_name: "TagValue"))
    GetTagSyncTaskOutput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    GetTagSyncTaskOutput.add_member(:status, Shapes::ShapeRef.new(shape: TagSyncTaskStatus, location_name: "Status"))
    GetTagSyncTaskOutput.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    GetTagSyncTaskOutput.add_member(:created_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreatedAt"))
    GetTagSyncTaskOutput.struct_class = Types::GetTagSyncTaskOutput

    GetTagsInput.add_member(:arn, Shapes::ShapeRef.new(shape: GroupArnV2, required: true, location: "uri", location_name: "Arn"))
    GetTagsInput.struct_class = Types::GetTagsInput

    GetTagsOutput.add_member(:arn, Shapes::ShapeRef.new(shape: GroupArnV2, location_name: "Arn"))
    GetTagsOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    GetTagsOutput.struct_class = Types::GetTagsOutput

    Group.add_member(:group_arn, Shapes::ShapeRef.new(shape: GroupArnV2, required: true, location_name: "GroupArn"))
    Group.add_member(:name, Shapes::ShapeRef.new(shape: GroupName, required: true, location_name: "Name"))
    Group.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    Group.add_member(:criticality, Shapes::ShapeRef.new(shape: Criticality, location_name: "Criticality"))
    Group.add_member(:owner, Shapes::ShapeRef.new(shape: Owner, location_name: "Owner"))
    Group.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "DisplayName"))
    Group.add_member(:application_tag, Shapes::ShapeRef.new(shape: ApplicationTag, location_name: "ApplicationTag"))
    Group.struct_class = Types::Group

    GroupConfiguration.add_member(:configuration, Shapes::ShapeRef.new(shape: GroupConfigurationList, location_name: "Configuration"))
    GroupConfiguration.add_member(:proposed_configuration, Shapes::ShapeRef.new(shape: GroupConfigurationList, location_name: "ProposedConfiguration"))
    GroupConfiguration.add_member(:status, Shapes::ShapeRef.new(shape: GroupConfigurationStatus, location_name: "Status"))
    GroupConfiguration.add_member(:failure_reason, Shapes::ShapeRef.new(shape: GroupConfigurationFailureReason, location_name: "FailureReason"))
    GroupConfiguration.struct_class = Types::GroupConfiguration

    GroupConfigurationItem.add_member(:type, Shapes::ShapeRef.new(shape: GroupConfigurationType, required: true, location_name: "Type"))
    GroupConfigurationItem.add_member(:parameters, Shapes::ShapeRef.new(shape: GroupParameterList, location_name: "Parameters"))
    GroupConfigurationItem.struct_class = Types::GroupConfigurationItem

    GroupConfigurationList.member = Shapes::ShapeRef.new(shape: GroupConfigurationItem)

    GroupConfigurationParameter.add_member(:name, Shapes::ShapeRef.new(shape: GroupConfigurationParameterName, required: true, location_name: "Name"))
    GroupConfigurationParameter.add_member(:values, Shapes::ShapeRef.new(shape: GroupConfigurationParameterValueList, location_name: "Values"))
    GroupConfigurationParameter.struct_class = Types::GroupConfigurationParameter

    GroupConfigurationParameterValueList.member = Shapes::ShapeRef.new(shape: GroupConfigurationParameterValue)

    GroupFilter.add_member(:name, Shapes::ShapeRef.new(shape: GroupFilterName, required: true, location_name: "Name"))
    GroupFilter.add_member(:values, Shapes::ShapeRef.new(shape: GroupFilterValues, required: true, location_name: "Values"))
    GroupFilter.struct_class = Types::GroupFilter

    GroupFilterList.member = Shapes::ShapeRef.new(shape: GroupFilter)

    GroupFilterValues.member = Shapes::ShapeRef.new(shape: GroupFilterValue)

    GroupIdentifier.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, location_name: "GroupName"))
    GroupIdentifier.add_member(:group_arn, Shapes::ShapeRef.new(shape: GroupArn, location_name: "GroupArn"))
    GroupIdentifier.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    GroupIdentifier.add_member(:criticality, Shapes::ShapeRef.new(shape: Criticality, location_name: "Criticality"))
    GroupIdentifier.add_member(:owner, Shapes::ShapeRef.new(shape: Owner, location_name: "Owner"))
    GroupIdentifier.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "DisplayName"))
    GroupIdentifier.struct_class = Types::GroupIdentifier

    GroupIdentifierList.member = Shapes::ShapeRef.new(shape: GroupIdentifier)

    GroupList.member = Shapes::ShapeRef.new(shape: Group)

    GroupParameterList.member = Shapes::ShapeRef.new(shape: GroupConfigurationParameter)

    GroupQuery.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, required: true, location_name: "GroupName"))
    GroupQuery.add_member(:resource_query, Shapes::ShapeRef.new(shape: ResourceQuery, required: true, location_name: "ResourceQuery"))
    GroupQuery.struct_class = Types::GroupQuery

    GroupResourcesInput.add_member(:group, Shapes::ShapeRef.new(shape: GroupStringV2, required: true, location_name: "Group"))
    GroupResourcesInput.add_member(:resource_arns, Shapes::ShapeRef.new(shape: ResourceArnList, required: true, location_name: "ResourceArns"))
    GroupResourcesInput.struct_class = Types::GroupResourcesInput

    GroupResourcesOutput.add_member(:succeeded, Shapes::ShapeRef.new(shape: ResourceArnList, location_name: "Succeeded"))
    GroupResourcesOutput.add_member(:failed, Shapes::ShapeRef.new(shape: FailedResourceList, location_name: "Failed"))
    GroupResourcesOutput.add_member(:pending, Shapes::ShapeRef.new(shape: PendingResourceList, location_name: "Pending"))
    GroupResourcesOutput.struct_class = Types::GroupResourcesOutput

    GroupingStatusesItem.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn"))
    GroupingStatusesItem.add_member(:action, Shapes::ShapeRef.new(shape: GroupingType, location_name: "Action"))
    GroupingStatusesItem.add_member(:status, Shapes::ShapeRef.new(shape: GroupingStatus, location_name: "Status"))
    GroupingStatusesItem.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    GroupingStatusesItem.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    GroupingStatusesItem.add_member(:updated_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "UpdatedAt"))
    GroupingStatusesItem.struct_class = Types::GroupingStatusesItem

    GroupingStatusesList.member = Shapes::ShapeRef.new(shape: GroupingStatusesItem)

    InternalServerErrorException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalServerErrorException.struct_class = Types::InternalServerErrorException

    ListGroupResourcesInput.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, deprecated: true, location_name: "GroupName", metadata: {"deprecatedMessage"=>"This field is deprecated, use Group instead."}))
    ListGroupResourcesInput.add_member(:group, Shapes::ShapeRef.new(shape: GroupStringV2, location_name: "Group"))
    ListGroupResourcesInput.add_member(:filters, Shapes::ShapeRef.new(shape: ResourceFilterList, location_name: "Filters"))
    ListGroupResourcesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListGroupResourcesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGroupResourcesInput.struct_class = Types::ListGroupResourcesInput

    ListGroupResourcesItem.add_member(:identifier, Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: "Identifier"))
    ListGroupResourcesItem.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "Status"))
    ListGroupResourcesItem.struct_class = Types::ListGroupResourcesItem

    ListGroupResourcesItemList.member = Shapes::ShapeRef.new(shape: ListGroupResourcesItem)

    ListGroupResourcesOutput.add_member(:resources, Shapes::ShapeRef.new(shape: ListGroupResourcesItemList, location_name: "Resources"))
    ListGroupResourcesOutput.add_member(:resource_identifiers, Shapes::ShapeRef.new(shape: ResourceIdentifierList, deprecated: true, location_name: "ResourceIdentifiers", metadata: {"deprecatedMessage"=>"This field is deprecated, use Resources instead."}))
    ListGroupResourcesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGroupResourcesOutput.add_member(:query_errors, Shapes::ShapeRef.new(shape: QueryErrorList, location_name: "QueryErrors"))
    ListGroupResourcesOutput.struct_class = Types::ListGroupResourcesOutput

    ListGroupingStatusesFilter.add_member(:name, Shapes::ShapeRef.new(shape: ListGroupingStatusesFilterName, required: true, location_name: "Name"))
    ListGroupingStatusesFilter.add_member(:values, Shapes::ShapeRef.new(shape: ListGroupingStatusesFilterValues, required: true, location_name: "Values"))
    ListGroupingStatusesFilter.struct_class = Types::ListGroupingStatusesFilter

    ListGroupingStatusesFilterList.member = Shapes::ShapeRef.new(shape: ListGroupingStatusesFilter)

    ListGroupingStatusesFilterValues.member = Shapes::ShapeRef.new(shape: ListGroupingStatusesFilterValue)

    ListGroupingStatusesInput.add_member(:group, Shapes::ShapeRef.new(shape: GroupStringV2, required: true, location_name: "Group"))
    ListGroupingStatusesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListGroupingStatusesInput.add_member(:filters, Shapes::ShapeRef.new(shape: ListGroupingStatusesFilterList, location_name: "Filters"))
    ListGroupingStatusesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGroupingStatusesInput.struct_class = Types::ListGroupingStatusesInput

    ListGroupingStatusesOutput.add_member(:group, Shapes::ShapeRef.new(shape: GroupStringV2, location_name: "Group"))
    ListGroupingStatusesOutput.add_member(:grouping_statuses, Shapes::ShapeRef.new(shape: GroupingStatusesList, location_name: "GroupingStatuses"))
    ListGroupingStatusesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGroupingStatusesOutput.struct_class = Types::ListGroupingStatusesOutput

    ListGroupsInput.add_member(:filters, Shapes::ShapeRef.new(shape: GroupFilterList, location_name: "Filters"))
    ListGroupsInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListGroupsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListGroupsInput.struct_class = Types::ListGroupsInput

    ListGroupsOutput.add_member(:group_identifiers, Shapes::ShapeRef.new(shape: GroupIdentifierList, location_name: "GroupIdentifiers"))
    ListGroupsOutput.add_member(:groups, Shapes::ShapeRef.new(shape: GroupList, deprecated: true, location_name: "Groups", metadata: {"deprecatedMessage"=>"This field is deprecated, use GroupIdentifiers instead."}))
    ListGroupsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListGroupsOutput.struct_class = Types::ListGroupsOutput

    ListTagSyncTasksFilter.add_member(:group_arn, Shapes::ShapeRef.new(shape: GroupArnV2, location_name: "GroupArn"))
    ListTagSyncTasksFilter.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, location_name: "GroupName"))
    ListTagSyncTasksFilter.struct_class = Types::ListTagSyncTasksFilter

    ListTagSyncTasksFilterList.member = Shapes::ShapeRef.new(shape: ListTagSyncTasksFilter)

    ListTagSyncTasksInput.add_member(:filters, Shapes::ShapeRef.new(shape: ListTagSyncTasksFilterList, location_name: "Filters"))
    ListTagSyncTasksInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    ListTagSyncTasksInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagSyncTasksInput.struct_class = Types::ListTagSyncTasksInput

    ListTagSyncTasksOutput.add_member(:tag_sync_tasks, Shapes::ShapeRef.new(shape: TagSyncTaskList, location_name: "TagSyncTasks"))
    ListTagSyncTasksOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListTagSyncTasksOutput.struct_class = Types::ListTagSyncTasksOutput

    MethodNotAllowedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    MethodNotAllowedException.struct_class = Types::MethodNotAllowedException

    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    NotFoundException.struct_class = Types::NotFoundException

    PendingResource.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn"))
    PendingResource.struct_class = Types::PendingResource

    PendingResourceList.member = Shapes::ShapeRef.new(shape: PendingResource)

    PutGroupConfigurationInput.add_member(:group, Shapes::ShapeRef.new(shape: GroupString, location_name: "Group"))
    PutGroupConfigurationInput.add_member(:configuration, Shapes::ShapeRef.new(shape: GroupConfigurationList, location_name: "Configuration"))
    PutGroupConfigurationInput.struct_class = Types::PutGroupConfigurationInput

    PutGroupConfigurationOutput.struct_class = Types::PutGroupConfigurationOutput

    QueryError.add_member(:error_code, Shapes::ShapeRef.new(shape: QueryErrorCode, location_name: "ErrorCode"))
    QueryError.add_member(:message, Shapes::ShapeRef.new(shape: QueryErrorMessage, location_name: "Message"))
    QueryError.struct_class = Types::QueryError

    QueryErrorList.member = Shapes::ShapeRef.new(shape: QueryError)

    ResourceArnList.member = Shapes::ShapeRef.new(shape: ResourceArn)

    ResourceFilter.add_member(:name, Shapes::ShapeRef.new(shape: ResourceFilterName, required: true, location_name: "Name"))
    ResourceFilter.add_member(:values, Shapes::ShapeRef.new(shape: ResourceFilterValues, required: true, location_name: "Values"))
    ResourceFilter.struct_class = Types::ResourceFilter

    ResourceFilterList.member = Shapes::ShapeRef.new(shape: ResourceFilter)

    ResourceFilterValues.member = Shapes::ShapeRef.new(shape: ResourceFilterValue)

    ResourceIdentifier.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "ResourceArn"))
    ResourceIdentifier.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "ResourceType"))
    ResourceIdentifier.struct_class = Types::ResourceIdentifier

    ResourceIdentifierList.member = Shapes::ShapeRef.new(shape: ResourceIdentifier)

    ResourceQuery.add_member(:type, Shapes::ShapeRef.new(shape: QueryType, required: true, location_name: "Type"))
    ResourceQuery.add_member(:query, Shapes::ShapeRef.new(shape: Query, required: true, location_name: "Query"))
    ResourceQuery.struct_class = Types::ResourceQuery

    ResourceStatus.add_member(:name, Shapes::ShapeRef.new(shape: ResourceStatusValue, location_name: "Name"))
    ResourceStatus.struct_class = Types::ResourceStatus

    SearchResourcesInput.add_member(:resource_query, Shapes::ShapeRef.new(shape: ResourceQuery, required: true, location_name: "ResourceQuery"))
    SearchResourcesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults"))
    SearchResourcesInput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    SearchResourcesInput.struct_class = Types::SearchResourcesInput

    SearchResourcesOutput.add_member(:resource_identifiers, Shapes::ShapeRef.new(shape: ResourceIdentifierList, location_name: "ResourceIdentifiers"))
    SearchResourcesOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    SearchResourcesOutput.add_member(:query_errors, Shapes::ShapeRef.new(shape: QueryErrorList, location_name: "QueryErrors"))
    SearchResourcesOutput.struct_class = Types::SearchResourcesOutput

    StartTagSyncTaskInput.add_member(:group, Shapes::ShapeRef.new(shape: GroupStringV2, required: true, location_name: "Group"))
    StartTagSyncTaskInput.add_member(:tag_key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "TagKey"))
    StartTagSyncTaskInput.add_member(:tag_value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "TagValue"))
    StartTagSyncTaskInput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    StartTagSyncTaskInput.struct_class = Types::StartTagSyncTaskInput

    StartTagSyncTaskOutput.add_member(:group_arn, Shapes::ShapeRef.new(shape: GroupArnV2, location_name: "GroupArn"))
    StartTagSyncTaskOutput.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, location_name: "GroupName"))
    StartTagSyncTaskOutput.add_member(:task_arn, Shapes::ShapeRef.new(shape: TagSyncTaskArn, location_name: "TaskArn"))
    StartTagSyncTaskOutput.add_member(:tag_key, Shapes::ShapeRef.new(shape: TagKey, location_name: "TagKey"))
    StartTagSyncTaskOutput.add_member(:tag_value, Shapes::ShapeRef.new(shape: TagValue, location_name: "TagValue"))
    StartTagSyncTaskOutput.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    StartTagSyncTaskOutput.struct_class = Types::StartTagSyncTaskOutput

    TagInput.add_member(:arn, Shapes::ShapeRef.new(shape: GroupArnV2, required: true, location: "uri", location_name: "Arn"))
    TagInput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, required: true, location_name: "Tags"))
    TagInput.struct_class = Types::TagInput

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagOutput.add_member(:arn, Shapes::ShapeRef.new(shape: GroupArnV2, location_name: "Arn"))
    TagOutput.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "Tags"))
    TagOutput.struct_class = Types::TagOutput

    TagSyncTaskItem.add_member(:group_arn, Shapes::ShapeRef.new(shape: GroupArnV2, location_name: "GroupArn"))
    TagSyncTaskItem.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, location_name: "GroupName"))
    TagSyncTaskItem.add_member(:task_arn, Shapes::ShapeRef.new(shape: TagSyncTaskArn, location_name: "TaskArn"))
    TagSyncTaskItem.add_member(:tag_key, Shapes::ShapeRef.new(shape: TagKey, location_name: "TagKey"))
    TagSyncTaskItem.add_member(:tag_value, Shapes::ShapeRef.new(shape: TagValue, location_name: "TagValue"))
    TagSyncTaskItem.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    TagSyncTaskItem.add_member(:status, Shapes::ShapeRef.new(shape: TagSyncTaskStatus, location_name: "Status"))
    TagSyncTaskItem.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    TagSyncTaskItem.add_member(:created_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreatedAt"))
    TagSyncTaskItem.struct_class = Types::TagSyncTaskItem

    TagSyncTaskList.member = Shapes::ShapeRef.new(shape: TagSyncTaskItem)

    Tags.key = Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Shapes::ShapeRef.new(shape: TagValue)

    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    UnauthorizedException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    UnauthorizedException.struct_class = Types::UnauthorizedException

    UngroupResourcesInput.add_member(:group, Shapes::ShapeRef.new(shape: GroupStringV2, required: true, location_name: "Group"))
    UngroupResourcesInput.add_member(:resource_arns, Shapes::ShapeRef.new(shape: ResourceArnList, required: true, location_name: "ResourceArns"))
    UngroupResourcesInput.struct_class = Types::UngroupResourcesInput

    UngroupResourcesOutput.add_member(:succeeded, Shapes::ShapeRef.new(shape: ResourceArnList, location_name: "Succeeded"))
    UngroupResourcesOutput.add_member(:failed, Shapes::ShapeRef.new(shape: FailedResourceList, location_name: "Failed"))
    UngroupResourcesOutput.add_member(:pending, Shapes::ShapeRef.new(shape: PendingResourceList, location_name: "Pending"))
    UngroupResourcesOutput.struct_class = Types::UngroupResourcesOutput

    UntagInput.add_member(:arn, Shapes::ShapeRef.new(shape: GroupArnV2, required: true, location: "uri", location_name: "Arn"))
    UntagInput.add_member(:keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "Keys"))
    UntagInput.struct_class = Types::UntagInput

    UntagOutput.add_member(:arn, Shapes::ShapeRef.new(shape: GroupArnV2, location_name: "Arn"))
    UntagOutput.add_member(:keys, Shapes::ShapeRef.new(shape: TagKeyList, location_name: "Keys"))
    UntagOutput.struct_class = Types::UntagOutput

    UpdateAccountSettingsInput.add_member(:group_lifecycle_events_desired_status, Shapes::ShapeRef.new(shape: GroupLifecycleEventsDesiredStatus, location_name: "GroupLifecycleEventsDesiredStatus"))
    UpdateAccountSettingsInput.struct_class = Types::UpdateAccountSettingsInput

    UpdateAccountSettingsOutput.add_member(:account_settings, Shapes::ShapeRef.new(shape: AccountSettings, location_name: "AccountSettings"))
    UpdateAccountSettingsOutput.struct_class = Types::UpdateAccountSettingsOutput

    UpdateGroupInput.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, deprecated: true, location_name: "GroupName", metadata: {"deprecatedMessage"=>"This field is deprecated, use Group instead."}))
    UpdateGroupInput.add_member(:group, Shapes::ShapeRef.new(shape: GroupStringV2, location_name: "Group"))
    UpdateGroupInput.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateGroupInput.add_member(:criticality, Shapes::ShapeRef.new(shape: Criticality, location_name: "Criticality"))
    UpdateGroupInput.add_member(:owner, Shapes::ShapeRef.new(shape: Owner, location_name: "Owner"))
    UpdateGroupInput.add_member(:display_name, Shapes::ShapeRef.new(shape: DisplayName, location_name: "DisplayName"))
    UpdateGroupInput.struct_class = Types::UpdateGroupInput

    UpdateGroupOutput.add_member(:group, Shapes::ShapeRef.new(shape: Group, location_name: "Group"))
    UpdateGroupOutput.struct_class = Types::UpdateGroupOutput

    UpdateGroupQueryInput.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, deprecated: true, location_name: "GroupName", metadata: {"deprecatedMessage"=>"This field is deprecated, use Group instead."}))
    UpdateGroupQueryInput.add_member(:group, Shapes::ShapeRef.new(shape: GroupString, location_name: "Group"))
    UpdateGroupQueryInput.add_member(:resource_query, Shapes::ShapeRef.new(shape: ResourceQuery, required: true, location_name: "ResourceQuery"))
    UpdateGroupQueryInput.struct_class = Types::UpdateGroupQueryInput

    UpdateGroupQueryOutput.add_member(:group_query, Shapes::ShapeRef.new(shape: GroupQuery, location_name: "GroupQuery"))
    UpdateGroupQueryOutput.struct_class = Types::UpdateGroupQueryOutput


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-11-27"

      api.metadata = {
        "apiVersion" => "2017-11-27",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "resource-groups",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceAbbreviation" => "Resource Groups",
        "serviceFullName" => "AWS Resource Groups",
        "serviceId" => "Resource Groups",
        "signatureVersion" => "v4",
        "signingName" => "resource-groups",
        "uid" => "resource-groups-2017-11-27",
      }

      api.add_operation(:cancel_tag_sync_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelTagSyncTask"
        o.http_method = "POST"
        o.http_request_uri = "/cancel-tag-sync-task"
        o.input = Shapes::ShapeRef.new(shape: CancelTagSyncTaskInput)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:create_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGroup"
        o.http_method = "POST"
        o.http_request_uri = "/groups"
        o.input = Shapes::ShapeRef.new(shape: CreateGroupInput)
        o.output = Shapes::ShapeRef.new(shape: CreateGroupOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:delete_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGroup"
        o.http_method = "POST"
        o.http_request_uri = "/delete-group"
        o.input = Shapes::ShapeRef.new(shape: DeleteGroupInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteGroupOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:get_account_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAccountSettings"
        o.http_method = "POST"
        o.http_request_uri = "/get-account-settings"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: GetAccountSettingsOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:get_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGroup"
        o.http_method = "POST"
        o.http_request_uri = "/get-group"
        o.input = Shapes::ShapeRef.new(shape: GetGroupInput)
        o.output = Shapes::ShapeRef.new(shape: GetGroupOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:get_group_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGroupConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/get-group-configuration"
        o.input = Shapes::ShapeRef.new(shape: GetGroupConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: GetGroupConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:get_group_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetGroupQuery"
        o.http_method = "POST"
        o.http_request_uri = "/get-group-query"
        o.input = Shapes::ShapeRef.new(shape: GetGroupQueryInput)
        o.output = Shapes::ShapeRef.new(shape: GetGroupQueryOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:get_tag_sync_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTagSyncTask"
        o.http_method = "POST"
        o.http_request_uri = "/get-tag-sync-task"
        o.input = Shapes::ShapeRef.new(shape: GetTagSyncTaskInput)
        o.output = Shapes::ShapeRef.new(shape: GetTagSyncTaskOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:get_tags, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTags"
        o.http_method = "GET"
        o.http_request_uri = "/resources/{Arn}/tags"
        o.input = Shapes::ShapeRef.new(shape: GetTagsInput)
        o.output = Shapes::ShapeRef.new(shape: GetTagsOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:group_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GroupResources"
        o.http_method = "POST"
        o.http_request_uri = "/group-resources"
        o.input = Shapes::ShapeRef.new(shape: GroupResourcesInput)
        o.output = Shapes::ShapeRef.new(shape: GroupResourcesOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:list_group_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGroupResources"
        o.http_method = "POST"
        o.http_request_uri = "/list-group-resources"
        o.input = Shapes::ShapeRef.new(shape: ListGroupResourcesInput)
        o.output = Shapes::ShapeRef.new(shape: ListGroupResourcesOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_grouping_statuses, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGroupingStatuses"
        o.http_method = "POST"
        o.http_request_uri = "/list-grouping-statuses"
        o.input = Shapes::ShapeRef.new(shape: ListGroupingStatusesInput)
        o.output = Shapes::ShapeRef.new(shape: ListGroupingStatusesOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
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
        o.http_request_uri = "/groups-list"
        o.input = Shapes::ShapeRef.new(shape: ListGroupsInput)
        o.output = Shapes::ShapeRef.new(shape: ListGroupsOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tag_sync_tasks, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagSyncTasks"
        o.http_method = "POST"
        o.http_request_uri = "/list-tag-sync-tasks"
        o.input = Shapes::ShapeRef.new(shape: ListTagSyncTasksInput)
        o.output = Shapes::ShapeRef.new(shape: ListTagSyncTasksOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_group_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutGroupConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/put-group-configuration"
        o.input = Shapes::ShapeRef.new(shape: PutGroupConfigurationInput)
        o.output = Shapes::ShapeRef.new(shape: PutGroupConfigurationOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:search_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchResources"
        o.http_method = "POST"
        o.http_request_uri = "/resources/search"
        o.input = Shapes::ShapeRef.new(shape: SearchResourcesInput)
        o.output = Shapes::ShapeRef.new(shape: SearchResourcesOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:start_tag_sync_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartTagSyncTask"
        o.http_method = "POST"
        o.http_request_uri = "/start-tag-sync-task"
        o.input = Shapes::ShapeRef.new(shape: StartTagSyncTaskInput)
        o.output = Shapes::ShapeRef.new(shape: StartTagSyncTaskOutput)
        o.errors << Shapes::ShapeRef.new(shape: UnauthorizedException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:tag, Seahorse::Model::Operation.new.tap do |o|
        o.name = "Tag"
        o.http_method = "PUT"
        o.http_request_uri = "/resources/{Arn}/tags"
        o.input = Shapes::ShapeRef.new(shape: TagInput)
        o.output = Shapes::ShapeRef.new(shape: TagOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:ungroup_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UngroupResources"
        o.http_method = "POST"
        o.http_request_uri = "/ungroup-resources"
        o.input = Shapes::ShapeRef.new(shape: UngroupResourcesInput)
        o.output = Shapes::ShapeRef.new(shape: UngroupResourcesOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:untag, Seahorse::Model::Operation.new.tap do |o|
        o.name = "Untag"
        o.http_method = "PATCH"
        o.http_request_uri = "/resources/{Arn}/tags"
        o.input = Shapes::ShapeRef.new(shape: UntagInput)
        o.output = Shapes::ShapeRef.new(shape: UntagOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:update_account_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAccountSettings"
        o.http_method = "POST"
        o.http_request_uri = "/update-account-settings"
        o.input = Shapes::ShapeRef.new(shape: UpdateAccountSettingsInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateAccountSettingsOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:update_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGroup"
        o.http_method = "POST"
        o.http_request_uri = "/update-group"
        o.input = Shapes::ShapeRef.new(shape: UpdateGroupInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateGroupOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:update_group_query, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGroupQuery"
        o.http_method = "POST"
        o.http_request_uri = "/update-group-query"
        o.input = Shapes::ShapeRef.new(shape: UpdateGroupQueryInput)
        o.output = Shapes::ShapeRef.new(shape: UpdateGroupQueryOutput)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: MethodNotAllowedException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)
    end

  end
end
