# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DLM
  # @api private
  module ClientApi

    include Seahorse::Model

    AvailabilityZone = Shapes::StringShape.new(name: 'AvailabilityZone')
    AvailabilityZoneList = Shapes::ListShape.new(name: 'AvailabilityZoneList')
    CmkArn = Shapes::StringShape.new(name: 'CmkArn')
    CopyTags = Shapes::BooleanShape.new(name: 'CopyTags')
    CopyTagsNullable = Shapes::BooleanShape.new(name: 'CopyTagsNullable')
    Count = Shapes::IntegerShape.new(name: 'Count')
    CreateLifecyclePolicyRequest = Shapes::StructureShape.new(name: 'CreateLifecyclePolicyRequest')
    CreateLifecyclePolicyResponse = Shapes::StructureShape.new(name: 'CreateLifecyclePolicyResponse')
    CreateRule = Shapes::StructureShape.new(name: 'CreateRule')
    CronExpression = Shapes::StringShape.new(name: 'CronExpression')
    CrossRegionCopyRetainRule = Shapes::StructureShape.new(name: 'CrossRegionCopyRetainRule')
    CrossRegionCopyRule = Shapes::StructureShape.new(name: 'CrossRegionCopyRule')
    CrossRegionCopyRules = Shapes::ListShape.new(name: 'CrossRegionCopyRules')
    DeleteLifecyclePolicyRequest = Shapes::StructureShape.new(name: 'DeleteLifecyclePolicyRequest')
    DeleteLifecyclePolicyResponse = Shapes::StructureShape.new(name: 'DeleteLifecyclePolicyResponse')
    Encrypted = Shapes::BooleanShape.new(name: 'Encrypted')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ExcludeBootVolume = Shapes::BooleanShape.new(name: 'ExcludeBootVolume')
    ExecutionRoleArn = Shapes::StringShape.new(name: 'ExecutionRoleArn')
    FastRestoreRule = Shapes::StructureShape.new(name: 'FastRestoreRule')
    GetLifecyclePoliciesRequest = Shapes::StructureShape.new(name: 'GetLifecyclePoliciesRequest')
    GetLifecyclePoliciesResponse = Shapes::StructureShape.new(name: 'GetLifecyclePoliciesResponse')
    GetLifecyclePolicyRequest = Shapes::StructureShape.new(name: 'GetLifecyclePolicyRequest')
    GetLifecyclePolicyResponse = Shapes::StructureShape.new(name: 'GetLifecyclePolicyResponse')
    GettablePolicyStateValues = Shapes::StringShape.new(name: 'GettablePolicyStateValues')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    Interval = Shapes::IntegerShape.new(name: 'Interval')
    IntervalUnitValues = Shapes::StringShape.new(name: 'IntervalUnitValues')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    LifecyclePolicy = Shapes::StructureShape.new(name: 'LifecyclePolicy')
    LifecyclePolicySummary = Shapes::StructureShape.new(name: 'LifecyclePolicySummary')
    LifecyclePolicySummaryList = Shapes::ListShape.new(name: 'LifecyclePolicySummaryList')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    Parameter = Shapes::StringShape.new(name: 'Parameter')
    ParameterList = Shapes::ListShape.new(name: 'ParameterList')
    Parameters = Shapes::StructureShape.new(name: 'Parameters')
    PolicyArn = Shapes::StringShape.new(name: 'PolicyArn')
    PolicyDescription = Shapes::StringShape.new(name: 'PolicyDescription')
    PolicyDetails = Shapes::StructureShape.new(name: 'PolicyDetails')
    PolicyId = Shapes::StringShape.new(name: 'PolicyId')
    PolicyIdList = Shapes::ListShape.new(name: 'PolicyIdList')
    PolicyTypeValues = Shapes::StringShape.new(name: 'PolicyTypeValues')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceTypeValues = Shapes::StringShape.new(name: 'ResourceTypeValues')
    ResourceTypeValuesList = Shapes::ListShape.new(name: 'ResourceTypeValuesList')
    RetainRule = Shapes::StructureShape.new(name: 'RetainRule')
    RetentionIntervalUnitValues = Shapes::StringShape.new(name: 'RetentionIntervalUnitValues')
    Schedule = Shapes::StructureShape.new(name: 'Schedule')
    ScheduleList = Shapes::ListShape.new(name: 'ScheduleList')
    ScheduleName = Shapes::StringShape.new(name: 'ScheduleName')
    SettablePolicyStateValues = Shapes::StringShape.new(name: 'SettablePolicyStateValues')
    StatusMessage = Shapes::StringShape.new(name: 'StatusMessage')
    String = Shapes::StringShape.new(name: 'String')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagFilter = Shapes::StringShape.new(name: 'TagFilter')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TagsToAddFilterList = Shapes::ListShape.new(name: 'TagsToAddFilterList')
    TagsToAddList = Shapes::ListShape.new(name: 'TagsToAddList')
    TargetRegion = Shapes::StringShape.new(name: 'TargetRegion')
    TargetTagList = Shapes::ListShape.new(name: 'TargetTagList')
    TargetTagsFilterList = Shapes::ListShape.new(name: 'TargetTagsFilterList')
    Time = Shapes::StringShape.new(name: 'Time')
    TimesList = Shapes::ListShape.new(name: 'TimesList')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp', timestampFormat: "iso8601")
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateLifecyclePolicyRequest = Shapes::StructureShape.new(name: 'UpdateLifecyclePolicyRequest')
    UpdateLifecyclePolicyResponse = Shapes::StructureShape.new(name: 'UpdateLifecyclePolicyResponse')
    VariableTagsList = Shapes::ListShape.new(name: 'VariableTagsList')

    AvailabilityZoneList.member = Shapes::ShapeRef.new(shape: AvailabilityZone)

    CreateLifecyclePolicyRequest.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: ExecutionRoleArn, required: true, location_name: "ExecutionRoleArn"))
    CreateLifecyclePolicyRequest.add_member(:description, Shapes::ShapeRef.new(shape: PolicyDescription, required: true, location_name: "Description"))
    CreateLifecyclePolicyRequest.add_member(:state, Shapes::ShapeRef.new(shape: SettablePolicyStateValues, required: true, location_name: "State"))
    CreateLifecyclePolicyRequest.add_member(:policy_details, Shapes::ShapeRef.new(shape: PolicyDetails, required: true, location_name: "PolicyDetails"))
    CreateLifecyclePolicyRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateLifecyclePolicyRequest.struct_class = Types::CreateLifecyclePolicyRequest

    CreateLifecyclePolicyResponse.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, location_name: "PolicyId"))
    CreateLifecyclePolicyResponse.struct_class = Types::CreateLifecyclePolicyResponse

    CreateRule.add_member(:interval, Shapes::ShapeRef.new(shape: Interval, location_name: "Interval"))
    CreateRule.add_member(:interval_unit, Shapes::ShapeRef.new(shape: IntervalUnitValues, location_name: "IntervalUnit"))
    CreateRule.add_member(:times, Shapes::ShapeRef.new(shape: TimesList, location_name: "Times"))
    CreateRule.add_member(:cron_expression, Shapes::ShapeRef.new(shape: CronExpression, location_name: "CronExpression"))
    CreateRule.struct_class = Types::CreateRule

    CrossRegionCopyRetainRule.add_member(:interval, Shapes::ShapeRef.new(shape: Interval, location_name: "Interval"))
    CrossRegionCopyRetainRule.add_member(:interval_unit, Shapes::ShapeRef.new(shape: RetentionIntervalUnitValues, location_name: "IntervalUnit"))
    CrossRegionCopyRetainRule.struct_class = Types::CrossRegionCopyRetainRule

    CrossRegionCopyRule.add_member(:target_region, Shapes::ShapeRef.new(shape: TargetRegion, required: true, location_name: "TargetRegion"))
    CrossRegionCopyRule.add_member(:encrypted, Shapes::ShapeRef.new(shape: Encrypted, required: true, location_name: "Encrypted"))
    CrossRegionCopyRule.add_member(:cmk_arn, Shapes::ShapeRef.new(shape: CmkArn, location_name: "CmkArn"))
    CrossRegionCopyRule.add_member(:copy_tags, Shapes::ShapeRef.new(shape: CopyTagsNullable, location_name: "CopyTags"))
    CrossRegionCopyRule.add_member(:retain_rule, Shapes::ShapeRef.new(shape: CrossRegionCopyRetainRule, location_name: "RetainRule"))
    CrossRegionCopyRule.struct_class = Types::CrossRegionCopyRule

    CrossRegionCopyRules.member = Shapes::ShapeRef.new(shape: CrossRegionCopyRule)

    DeleteLifecyclePolicyRequest.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, required: true, location: "uri", location_name: "policyId"))
    DeleteLifecyclePolicyRequest.struct_class = Types::DeleteLifecyclePolicyRequest

    DeleteLifecyclePolicyResponse.struct_class = Types::DeleteLifecyclePolicyResponse

    FastRestoreRule.add_member(:count, Shapes::ShapeRef.new(shape: Count, location_name: "Count"))
    FastRestoreRule.add_member(:interval, Shapes::ShapeRef.new(shape: Interval, location_name: "Interval"))
    FastRestoreRule.add_member(:interval_unit, Shapes::ShapeRef.new(shape: RetentionIntervalUnitValues, location_name: "IntervalUnit"))
    FastRestoreRule.add_member(:availability_zones, Shapes::ShapeRef.new(shape: AvailabilityZoneList, required: true, location_name: "AvailabilityZones"))
    FastRestoreRule.struct_class = Types::FastRestoreRule

    GetLifecyclePoliciesRequest.add_member(:policy_ids, Shapes::ShapeRef.new(shape: PolicyIdList, location: "querystring", location_name: "policyIds"))
    GetLifecyclePoliciesRequest.add_member(:state, Shapes::ShapeRef.new(shape: GettablePolicyStateValues, location: "querystring", location_name: "state"))
    GetLifecyclePoliciesRequest.add_member(:resource_types, Shapes::ShapeRef.new(shape: ResourceTypeValuesList, location: "querystring", location_name: "resourceTypes"))
    GetLifecyclePoliciesRequest.add_member(:target_tags, Shapes::ShapeRef.new(shape: TargetTagsFilterList, location: "querystring", location_name: "targetTags"))
    GetLifecyclePoliciesRequest.add_member(:tags_to_add, Shapes::ShapeRef.new(shape: TagsToAddFilterList, location: "querystring", location_name: "tagsToAdd"))
    GetLifecyclePoliciesRequest.struct_class = Types::GetLifecyclePoliciesRequest

    GetLifecyclePoliciesResponse.add_member(:policies, Shapes::ShapeRef.new(shape: LifecyclePolicySummaryList, location_name: "Policies"))
    GetLifecyclePoliciesResponse.struct_class = Types::GetLifecyclePoliciesResponse

    GetLifecyclePolicyRequest.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, required: true, location: "uri", location_name: "policyId"))
    GetLifecyclePolicyRequest.struct_class = Types::GetLifecyclePolicyRequest

    GetLifecyclePolicyResponse.add_member(:policy, Shapes::ShapeRef.new(shape: LifecyclePolicy, location_name: "Policy"))
    GetLifecyclePolicyResponse.struct_class = Types::GetLifecyclePolicyResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InternalServerException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    InternalServerException.struct_class = Types::InternalServerException

    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    InvalidRequestException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    InvalidRequestException.add_member(:required_parameters, Shapes::ShapeRef.new(shape: ParameterList, location_name: "RequiredParameters"))
    InvalidRequestException.add_member(:mutually_exclusive_parameters, Shapes::ShapeRef.new(shape: ParameterList, location_name: "MutuallyExclusiveParameters"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    LifecyclePolicy.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, location_name: "PolicyId"))
    LifecyclePolicy.add_member(:description, Shapes::ShapeRef.new(shape: PolicyDescription, location_name: "Description"))
    LifecyclePolicy.add_member(:state, Shapes::ShapeRef.new(shape: GettablePolicyStateValues, location_name: "State"))
    LifecyclePolicy.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "StatusMessage"))
    LifecyclePolicy.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: ExecutionRoleArn, location_name: "ExecutionRoleArn"))
    LifecyclePolicy.add_member(:date_created, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DateCreated"))
    LifecyclePolicy.add_member(:date_modified, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DateModified"))
    LifecyclePolicy.add_member(:policy_details, Shapes::ShapeRef.new(shape: PolicyDetails, location_name: "PolicyDetails"))
    LifecyclePolicy.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    LifecyclePolicy.add_member(:policy_arn, Shapes::ShapeRef.new(shape: PolicyArn, location_name: "PolicyArn"))
    LifecyclePolicy.struct_class = Types::LifecyclePolicy

    LifecyclePolicySummary.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, location_name: "PolicyId"))
    LifecyclePolicySummary.add_member(:description, Shapes::ShapeRef.new(shape: PolicyDescription, location_name: "Description"))
    LifecyclePolicySummary.add_member(:state, Shapes::ShapeRef.new(shape: GettablePolicyStateValues, location_name: "State"))
    LifecyclePolicySummary.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    LifecyclePolicySummary.struct_class = Types::LifecyclePolicySummary

    LifecyclePolicySummaryList.member = Shapes::ShapeRef.new(shape: LifecyclePolicySummary)

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    LimitExceededException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    LimitExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: PolicyArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ParameterList.member = Shapes::ShapeRef.new(shape: Parameter)

    Parameters.add_member(:exclude_boot_volume, Shapes::ShapeRef.new(shape: ExcludeBootVolume, location_name: "ExcludeBootVolume"))
    Parameters.struct_class = Types::Parameters

    PolicyDetails.add_member(:policy_type, Shapes::ShapeRef.new(shape: PolicyTypeValues, location_name: "PolicyType"))
    PolicyDetails.add_member(:resource_types, Shapes::ShapeRef.new(shape: ResourceTypeValuesList, location_name: "ResourceTypes"))
    PolicyDetails.add_member(:target_tags, Shapes::ShapeRef.new(shape: TargetTagList, location_name: "TargetTags"))
    PolicyDetails.add_member(:schedules, Shapes::ShapeRef.new(shape: ScheduleList, location_name: "Schedules"))
    PolicyDetails.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
    PolicyDetails.struct_class = Types::PolicyDetails

    PolicyIdList.member = Shapes::ShapeRef.new(shape: PolicyId)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.add_member(:code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "Code"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "ResourceType"))
    ResourceNotFoundException.add_member(:resource_ids, Shapes::ShapeRef.new(shape: PolicyIdList, location_name: "ResourceIds"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceTypeValuesList.member = Shapes::ShapeRef.new(shape: ResourceTypeValues)

    RetainRule.add_member(:count, Shapes::ShapeRef.new(shape: Count, location_name: "Count"))
    RetainRule.add_member(:interval, Shapes::ShapeRef.new(shape: Interval, location_name: "Interval"))
    RetainRule.add_member(:interval_unit, Shapes::ShapeRef.new(shape: RetentionIntervalUnitValues, location_name: "IntervalUnit"))
    RetainRule.struct_class = Types::RetainRule

    Schedule.add_member(:name, Shapes::ShapeRef.new(shape: ScheduleName, location_name: "Name"))
    Schedule.add_member(:copy_tags, Shapes::ShapeRef.new(shape: CopyTags, location_name: "CopyTags"))
    Schedule.add_member(:tags_to_add, Shapes::ShapeRef.new(shape: TagsToAddList, location_name: "TagsToAdd"))
    Schedule.add_member(:variable_tags, Shapes::ShapeRef.new(shape: VariableTagsList, location_name: "VariableTags"))
    Schedule.add_member(:create_rule, Shapes::ShapeRef.new(shape: CreateRule, location_name: "CreateRule"))
    Schedule.add_member(:retain_rule, Shapes::ShapeRef.new(shape: RetainRule, location_name: "RetainRule"))
    Schedule.add_member(:fast_restore_rule, Shapes::ShapeRef.new(shape: FastRestoreRule, location_name: "FastRestoreRule"))
    Schedule.add_member(:cross_region_copy_rules, Shapes::ShapeRef.new(shape: CrossRegionCopyRules, location_name: "CrossRegionCopyRules"))
    Schedule.struct_class = Types::Schedule

    ScheduleList.member = Shapes::ShapeRef.new(shape: Schedule)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: PolicyArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TagsToAddFilterList.member = Shapes::ShapeRef.new(shape: TagFilter)

    TagsToAddList.member = Shapes::ShapeRef.new(shape: Tag)

    TargetTagList.member = Shapes::ShapeRef.new(shape: Tag)

    TargetTagsFilterList.member = Shapes::ShapeRef.new(shape: TagFilter)

    TimesList.member = Shapes::ShapeRef.new(shape: Time)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: PolicyArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateLifecyclePolicyRequest.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, required: true, location: "uri", location_name: "policyId"))
    UpdateLifecyclePolicyRequest.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: ExecutionRoleArn, location_name: "ExecutionRoleArn"))
    UpdateLifecyclePolicyRequest.add_member(:state, Shapes::ShapeRef.new(shape: SettablePolicyStateValues, location_name: "State"))
    UpdateLifecyclePolicyRequest.add_member(:description, Shapes::ShapeRef.new(shape: PolicyDescription, location_name: "Description"))
    UpdateLifecyclePolicyRequest.add_member(:policy_details, Shapes::ShapeRef.new(shape: PolicyDetails, location_name: "PolicyDetails"))
    UpdateLifecyclePolicyRequest.struct_class = Types::UpdateLifecyclePolicyRequest

    UpdateLifecyclePolicyResponse.struct_class = Types::UpdateLifecyclePolicyResponse

    VariableTagsList.member = Shapes::ShapeRef.new(shape: Tag)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-01-12"

      api.metadata = {
        "apiVersion" => "2018-01-12",
        "endpointPrefix" => "dlm",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "Amazon DLM",
        "serviceFullName" => "Amazon Data Lifecycle Manager",
        "serviceId" => "DLM",
        "signatureVersion" => "v4",
        "signingName" => "dlm",
        "uid" => "dlm-2018-01-12",
      }

      api.add_operation(:create_lifecycle_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateLifecyclePolicy"
        o.http_method = "POST"
        o.http_request_uri = "/policies"
        o.input = Shapes::ShapeRef.new(shape: CreateLifecyclePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateLifecyclePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_lifecycle_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteLifecyclePolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/policies/{policyId}/"
        o.input = Shapes::ShapeRef.new(shape: DeleteLifecyclePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteLifecyclePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:get_lifecycle_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLifecyclePolicies"
        o.http_method = "GET"
        o.http_request_uri = "/policies"
        o.input = Shapes::ShapeRef.new(shape: GetLifecyclePoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLifecyclePoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:get_lifecycle_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLifecyclePolicy"
        o.http_method = "GET"
        o.http_request_uri = "/policies/{policyId}/"
        o.input = Shapes::ShapeRef.new(shape: GetLifecyclePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLifecyclePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_lifecycle_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateLifecyclePolicy"
        o.http_method = "PATCH"
        o.http_request_uri = "/policies/{policyId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateLifecyclePolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateLifecyclePolicyResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)
    end

  end
end
