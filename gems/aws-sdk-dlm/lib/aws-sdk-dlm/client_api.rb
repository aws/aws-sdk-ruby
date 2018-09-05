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

    Count = Shapes::IntegerShape.new(name: 'Count')
    CreateLifecyclePolicyRequest = Shapes::StructureShape.new(name: 'CreateLifecyclePolicyRequest')
    CreateLifecyclePolicyResponse = Shapes::StructureShape.new(name: 'CreateLifecyclePolicyResponse')
    CreateRule = Shapes::StructureShape.new(name: 'CreateRule')
    DeleteLifecyclePolicyRequest = Shapes::StructureShape.new(name: 'DeleteLifecyclePolicyRequest')
    DeleteLifecyclePolicyResponse = Shapes::StructureShape.new(name: 'DeleteLifecyclePolicyResponse')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ExecutionRoleArn = Shapes::StringShape.new(name: 'ExecutionRoleArn')
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
    Parameter = Shapes::StringShape.new(name: 'Parameter')
    ParameterList = Shapes::ListShape.new(name: 'ParameterList')
    PolicyDescription = Shapes::StringShape.new(name: 'PolicyDescription')
    PolicyDetails = Shapes::StructureShape.new(name: 'PolicyDetails')
    PolicyId = Shapes::StringShape.new(name: 'PolicyId')
    PolicyIdList = Shapes::ListShape.new(name: 'PolicyIdList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceTypeValues = Shapes::StringShape.new(name: 'ResourceTypeValues')
    ResourceTypeValuesList = Shapes::ListShape.new(name: 'ResourceTypeValuesList')
    RetainRule = Shapes::StructureShape.new(name: 'RetainRule')
    Schedule = Shapes::StructureShape.new(name: 'Schedule')
    ScheduleList = Shapes::ListShape.new(name: 'ScheduleList')
    ScheduleName = Shapes::StringShape.new(name: 'ScheduleName')
    SettablePolicyStateValues = Shapes::StringShape.new(name: 'SettablePolicyStateValues')
    String = Shapes::StringShape.new(name: 'String')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagFilter = Shapes::StringShape.new(name: 'TagFilter')
    TagsToAddFilterList = Shapes::ListShape.new(name: 'TagsToAddFilterList')
    TagsToAddList = Shapes::ListShape.new(name: 'TagsToAddList')
    TargetTagList = Shapes::ListShape.new(name: 'TargetTagList')
    TargetTagsFilterList = Shapes::ListShape.new(name: 'TargetTagsFilterList')
    Time = Shapes::StringShape.new(name: 'Time')
    TimesList = Shapes::ListShape.new(name: 'TimesList')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UpdateLifecyclePolicyRequest = Shapes::StructureShape.new(name: 'UpdateLifecyclePolicyRequest')
    UpdateLifecyclePolicyResponse = Shapes::StructureShape.new(name: 'UpdateLifecyclePolicyResponse')

    CreateLifecyclePolicyRequest.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: ExecutionRoleArn, required: true, location_name: "ExecutionRoleArn"))
    CreateLifecyclePolicyRequest.add_member(:description, Shapes::ShapeRef.new(shape: PolicyDescription, required: true, location_name: "Description"))
    CreateLifecyclePolicyRequest.add_member(:state, Shapes::ShapeRef.new(shape: SettablePolicyStateValues, required: true, location_name: "State"))
    CreateLifecyclePolicyRequest.add_member(:policy_details, Shapes::ShapeRef.new(shape: PolicyDetails, required: true, location_name: "PolicyDetails"))
    CreateLifecyclePolicyRequest.struct_class = Types::CreateLifecyclePolicyRequest

    CreateLifecyclePolicyResponse.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, location_name: "PolicyId"))
    CreateLifecyclePolicyResponse.struct_class = Types::CreateLifecyclePolicyResponse

    CreateRule.add_member(:interval, Shapes::ShapeRef.new(shape: Interval, required: true, location_name: "Interval"))
    CreateRule.add_member(:interval_unit, Shapes::ShapeRef.new(shape: IntervalUnitValues, required: true, location_name: "IntervalUnit"))
    CreateRule.add_member(:times, Shapes::ShapeRef.new(shape: TimesList, location_name: "Times"))
    CreateRule.struct_class = Types::CreateRule

    DeleteLifecyclePolicyRequest.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, required: true, location: "uri", location_name: "policyId"))
    DeleteLifecyclePolicyRequest.struct_class = Types::DeleteLifecyclePolicyRequest

    DeleteLifecyclePolicyResponse.struct_class = Types::DeleteLifecyclePolicyResponse

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

    LifecyclePolicy.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, location_name: "PolicyId"))
    LifecyclePolicy.add_member(:description, Shapes::ShapeRef.new(shape: PolicyDescription, location_name: "Description"))
    LifecyclePolicy.add_member(:state, Shapes::ShapeRef.new(shape: GettablePolicyStateValues, location_name: "State"))
    LifecyclePolicy.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: ExecutionRoleArn, location_name: "ExecutionRoleArn"))
    LifecyclePolicy.add_member(:date_created, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DateCreated"))
    LifecyclePolicy.add_member(:date_modified, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DateModified"))
    LifecyclePolicy.add_member(:policy_details, Shapes::ShapeRef.new(shape: PolicyDetails, location_name: "PolicyDetails"))
    LifecyclePolicy.struct_class = Types::LifecyclePolicy

    LifecyclePolicySummary.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, location_name: "PolicyId"))
    LifecyclePolicySummary.add_member(:description, Shapes::ShapeRef.new(shape: PolicyDescription, location_name: "Description"))
    LifecyclePolicySummary.add_member(:state, Shapes::ShapeRef.new(shape: GettablePolicyStateValues, location_name: "State"))
    LifecyclePolicySummary.struct_class = Types::LifecyclePolicySummary

    LifecyclePolicySummaryList.member = Shapes::ShapeRef.new(shape: LifecyclePolicySummary)

    ParameterList.member = Shapes::ShapeRef.new(shape: Parameter)

    PolicyDetails.add_member(:resource_types, Shapes::ShapeRef.new(shape: ResourceTypeValuesList, location_name: "ResourceTypes"))
    PolicyDetails.add_member(:target_tags, Shapes::ShapeRef.new(shape: TargetTagList, location_name: "TargetTags"))
    PolicyDetails.add_member(:schedules, Shapes::ShapeRef.new(shape: ScheduleList, location_name: "Schedules"))
    PolicyDetails.struct_class = Types::PolicyDetails

    PolicyIdList.member = Shapes::ShapeRef.new(shape: PolicyId)

    ResourceTypeValuesList.member = Shapes::ShapeRef.new(shape: ResourceTypeValues)

    RetainRule.add_member(:count, Shapes::ShapeRef.new(shape: Count, required: true, location_name: "Count"))
    RetainRule.struct_class = Types::RetainRule

    Schedule.add_member(:name, Shapes::ShapeRef.new(shape: ScheduleName, location_name: "Name"))
    Schedule.add_member(:tags_to_add, Shapes::ShapeRef.new(shape: TagsToAddList, location_name: "TagsToAdd"))
    Schedule.add_member(:create_rule, Shapes::ShapeRef.new(shape: CreateRule, location_name: "CreateRule"))
    Schedule.add_member(:retain_rule, Shapes::ShapeRef.new(shape: RetainRule, location_name: "RetainRule"))
    Schedule.struct_class = Types::Schedule

    ScheduleList.member = Shapes::ShapeRef.new(shape: Schedule)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagsToAddFilterList.member = Shapes::ShapeRef.new(shape: TagFilter)

    TagsToAddList.member = Shapes::ShapeRef.new(shape: Tag)

    TargetTagList.member = Shapes::ShapeRef.new(shape: Tag)

    TargetTagsFilterList.member = Shapes::ShapeRef.new(shape: TagFilter)

    TimesList.member = Shapes::ShapeRef.new(shape: Time)

    UpdateLifecyclePolicyRequest.add_member(:policy_id, Shapes::ShapeRef.new(shape: PolicyId, required: true, location: "uri", location_name: "policyId"))
    UpdateLifecyclePolicyRequest.add_member(:execution_role_arn, Shapes::ShapeRef.new(shape: ExecutionRoleArn, location_name: "ExecutionRoleArn"))
    UpdateLifecyclePolicyRequest.add_member(:state, Shapes::ShapeRef.new(shape: SettablePolicyStateValues, location_name: "State"))
    UpdateLifecyclePolicyRequest.add_member(:description, Shapes::ShapeRef.new(shape: PolicyDescription, location_name: "Description"))
    UpdateLifecyclePolicyRequest.add_member(:policy_details, Shapes::ShapeRef.new(shape: PolicyDetails, location_name: "PolicyDetails"))
    UpdateLifecyclePolicyRequest.struct_class = Types::UpdateLifecyclePolicyRequest

    UpdateLifecyclePolicyResponse.struct_class = Types::UpdateLifecyclePolicyResponse


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
