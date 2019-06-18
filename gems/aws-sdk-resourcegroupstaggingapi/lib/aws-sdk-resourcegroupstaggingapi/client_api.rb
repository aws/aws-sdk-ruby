# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ResourceGroupsTaggingAPI
  # @api private
  module ClientApi

    include Seahorse::Model

    AmazonResourceType = Shapes::StringShape.new(name: 'AmazonResourceType')
    ComplianceDetails = Shapes::StructureShape.new(name: 'ComplianceDetails')
    ComplianceStatus = Shapes::BooleanShape.new(name: 'ComplianceStatus')
    ConcurrentModificationException = Shapes::StructureShape.new(name: 'ConcurrentModificationException')
    ConstraintViolationException = Shapes::StructureShape.new(name: 'ConstraintViolationException')
    DeleteTagPolicyInput = Shapes::StructureShape.new(name: 'DeleteTagPolicyInput')
    DeleteTagPolicyOutput = Shapes::StructureShape.new(name: 'DeleteTagPolicyOutput')
    DescribeReportCreationInput = Shapes::StructureShape.new(name: 'DescribeReportCreationInput')
    DescribeReportCreationOutput = Shapes::StructureShape.new(name: 'DescribeReportCreationOutput')
    DisableTagPoliciesInput = Shapes::StructureShape.new(name: 'DisableTagPoliciesInput')
    DisableTagPoliciesOutput = Shapes::StructureShape.new(name: 'DisableTagPoliciesOutput')
    EnableTagPoliciesInput = Shapes::StructureShape.new(name: 'EnableTagPoliciesInput')
    EnableTagPoliciesOutput = Shapes::StructureShape.new(name: 'EnableTagPoliciesOutput')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ExceptionMessage = Shapes::StringShape.new(name: 'ExceptionMessage')
    ExcludeCompliantResources = Shapes::BooleanShape.new(name: 'ExcludeCompliantResources')
    FailedResourcesMap = Shapes::MapShape.new(name: 'FailedResourcesMap')
    FailureInfo = Shapes::StructureShape.new(name: 'FailureInfo')
    GetComplianceSummaryInput = Shapes::StructureShape.new(name: 'GetComplianceSummaryInput')
    GetComplianceSummaryOutput = Shapes::StructureShape.new(name: 'GetComplianceSummaryOutput')
    GetEffectiveTagPolicyInput = Shapes::StructureShape.new(name: 'GetEffectiveTagPolicyInput')
    GetEffectiveTagPolicyOutput = Shapes::StructureShape.new(name: 'GetEffectiveTagPolicyOutput')
    GetResourcesInput = Shapes::StructureShape.new(name: 'GetResourcesInput')
    GetResourcesOutput = Shapes::StructureShape.new(name: 'GetResourcesOutput')
    GetTagKeysInput = Shapes::StructureShape.new(name: 'GetTagKeysInput')
    GetTagKeysOutput = Shapes::StructureShape.new(name: 'GetTagKeysOutput')
    GetTagPolicyInput = Shapes::StructureShape.new(name: 'GetTagPolicyInput')
    GetTagPolicyOutput = Shapes::StructureShape.new(name: 'GetTagPolicyOutput')
    GetTagValuesInput = Shapes::StructureShape.new(name: 'GetTagValuesInput')
    GetTagValuesOutput = Shapes::StructureShape.new(name: 'GetTagValuesOutput')
    GroupBy = Shapes::ListShape.new(name: 'GroupBy')
    GroupByAttribute = Shapes::StringShape.new(name: 'GroupByAttribute')
    IncludeComplianceDetails = Shapes::BooleanShape.new(name: 'IncludeComplianceDetails')
    InternalServiceException = Shapes::StructureShape.new(name: 'InternalServiceException')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    LastUpdated = Shapes::TimestampShape.new(name: 'LastUpdated', timestampFormat: "iso8601")
    MaxResultTagsDS1 = Shapes::IntegerShape.new(name: 'MaxResultTagsDS1')
    MaxResultsGetComplianceSummary = Shapes::IntegerShape.new(name: 'MaxResultsGetComplianceSummary')
    NonCompliantResources = Shapes::IntegerShape.new(name: 'NonCompliantResources')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    PaginationTokenExpiredException = Shapes::StructureShape.new(name: 'PaginationTokenExpiredException')
    Policy = Shapes::StringShape.new(name: 'Policy')
    PutTagPolicyInput = Shapes::StructureShape.new(name: 'PutTagPolicyInput')
    PutTagPolicyOutput = Shapes::StructureShape.new(name: 'PutTagPolicyOutput')
    Region = Shapes::StringShape.new(name: 'Region')
    RegionFilterList = Shapes::ListShape.new(name: 'RegionFilterList')
    ResourceARN = Shapes::StringShape.new(name: 'ResourceARN')
    ResourceARNList = Shapes::ListShape.new(name: 'ResourceARNList')
    ResourceTagMapping = Shapes::StructureShape.new(name: 'ResourceTagMapping')
    ResourceTagMappingList = Shapes::ListShape.new(name: 'ResourceTagMappingList')
    ResourceTypeFilterList = Shapes::ListShape.new(name: 'ResourceTypeFilterList')
    ResourcesPerPage = Shapes::IntegerShape.new(name: 'ResourcesPerPage')
    RootId = Shapes::StringShape.new(name: 'RootId')
    S3Bucket = Shapes::StringShape.new(name: 'S3Bucket')
    S3Location = Shapes::StringShape.new(name: 'S3Location')
    StartReportCreationInput = Shapes::StructureShape.new(name: 'StartReportCreationInput')
    StartReportCreationOutput = Shapes::StructureShape.new(name: 'StartReportCreationOutput')
    Status = Shapes::StringShape.new(name: 'Status')
    StatusCode = Shapes::IntegerShape.new(name: 'StatusCode')
    Summary = Shapes::StructureShape.new(name: 'Summary')
    SummaryList = Shapes::ListShape.new(name: 'SummaryList')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagFilter = Shapes::StructureShape.new(name: 'TagFilter')
    TagFilterList = Shapes::ListShape.new(name: 'TagFilterList')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyFilterList = Shapes::ListShape.new(name: 'TagKeyFilterList')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagKeyListForUntag = Shapes::ListShape.new(name: 'TagKeyListForUntag')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourcesInput = Shapes::StructureShape.new(name: 'TagResourcesInput')
    TagResourcesOutput = Shapes::StructureShape.new(name: 'TagResourcesOutput')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TagValueList = Shapes::ListShape.new(name: 'TagValueList')
    TagValuesOutputList = Shapes::ListShape.new(name: 'TagValuesOutputList')
    TagsPerPage = Shapes::IntegerShape.new(name: 'TagsPerPage')
    TargetId = Shapes::StringShape.new(name: 'TargetId')
    TargetIdFilterList = Shapes::ListShape.new(name: 'TargetIdFilterList')
    ThrottledException = Shapes::StructureShape.new(name: 'ThrottledException')
    UntagResourcesInput = Shapes::StructureShape.new(name: 'UntagResourcesInput')
    UntagResourcesOutput = Shapes::StructureShape.new(name: 'UntagResourcesOutput')

    ComplianceDetails.add_member(:missing_keys, Shapes::ShapeRef.new(shape: TagKeyList, location_name: "MissingKeys"))
    ComplianceDetails.add_member(:invalid_keys, Shapes::ShapeRef.new(shape: TagKeyList, location_name: "InvalidKeys"))
    ComplianceDetails.add_member(:invalid_values, Shapes::ShapeRef.new(shape: TagKeyList, location_name: "InvalidValues"))
    ComplianceDetails.add_member(:compliance_status, Shapes::ShapeRef.new(shape: ComplianceStatus, location_name: "ComplianceStatus"))
    ComplianceDetails.struct_class = Types::ComplianceDetails

    ConcurrentModificationException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ConcurrentModificationException.struct_class = Types::ConcurrentModificationException

    ConstraintViolationException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ConstraintViolationException.struct_class = Types::ConstraintViolationException

    DeleteTagPolicyInput.add_member(:target_id, Shapes::ShapeRef.new(shape: TargetId, required: true, location_name: "TargetId"))
    DeleteTagPolicyInput.struct_class = Types::DeleteTagPolicyInput

    DeleteTagPolicyOutput.struct_class = Types::DeleteTagPolicyOutput

    DescribeReportCreationInput.struct_class = Types::DescribeReportCreationInput

    DescribeReportCreationOutput.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    DescribeReportCreationOutput.add_member(:s3_location, Shapes::ShapeRef.new(shape: S3Location, location_name: "S3Location"))
    DescribeReportCreationOutput.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    DescribeReportCreationOutput.struct_class = Types::DescribeReportCreationOutput

    DisableTagPoliciesInput.struct_class = Types::DisableTagPoliciesInput

    DisableTagPoliciesOutput.struct_class = Types::DisableTagPoliciesOutput

    EnableTagPoliciesInput.add_member(:root_id, Shapes::ShapeRef.new(shape: RootId, required: true, location_name: "RootId"))
    EnableTagPoliciesInput.struct_class = Types::EnableTagPoliciesInput

    EnableTagPoliciesOutput.struct_class = Types::EnableTagPoliciesOutput

    FailedResourcesMap.key = Shapes::ShapeRef.new(shape: ResourceARN)
    FailedResourcesMap.value = Shapes::ShapeRef.new(shape: FailureInfo)

    FailureInfo.add_member(:status_code, Shapes::ShapeRef.new(shape: StatusCode, location_name: "StatusCode"))
    FailureInfo.add_member(:error_code, Shapes::ShapeRef.new(shape: ErrorCode, location_name: "ErrorCode"))
    FailureInfo.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "ErrorMessage"))
    FailureInfo.struct_class = Types::FailureInfo

    GetComplianceSummaryInput.add_member(:target_id_filters, Shapes::ShapeRef.new(shape: TargetIdFilterList, location_name: "TargetIdFilters"))
    GetComplianceSummaryInput.add_member(:region_filters, Shapes::ShapeRef.new(shape: RegionFilterList, location_name: "RegionFilters"))
    GetComplianceSummaryInput.add_member(:resource_type_filters, Shapes::ShapeRef.new(shape: ResourceTypeFilterList, location_name: "ResourceTypeFilters"))
    GetComplianceSummaryInput.add_member(:tag_key_filters, Shapes::ShapeRef.new(shape: TagKeyFilterList, location_name: "TagKeyFilters"))
    GetComplianceSummaryInput.add_member(:group_by, Shapes::ShapeRef.new(shape: GroupBy, location_name: "GroupBy"))
    GetComplianceSummaryInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultsGetComplianceSummary, location_name: "MaxResults"))
    GetComplianceSummaryInput.add_member(:pagination_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "PaginationToken"))
    GetComplianceSummaryInput.struct_class = Types::GetComplianceSummaryInput

    GetComplianceSummaryOutput.add_member(:summary_list, Shapes::ShapeRef.new(shape: SummaryList, location_name: "SummaryList"))
    GetComplianceSummaryOutput.add_member(:pagination_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "PaginationToken"))
    GetComplianceSummaryOutput.struct_class = Types::GetComplianceSummaryOutput

    GetEffectiveTagPolicyInput.add_member(:target_id, Shapes::ShapeRef.new(shape: TargetId, location_name: "TargetId"))
    GetEffectiveTagPolicyInput.struct_class = Types::GetEffectiveTagPolicyInput

    GetEffectiveTagPolicyOutput.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, location_name: "Policy"))
    GetEffectiveTagPolicyOutput.add_member(:last_updated, Shapes::ShapeRef.new(shape: LastUpdated, location_name: "LastUpdated"))
    GetEffectiveTagPolicyOutput.struct_class = Types::GetEffectiveTagPolicyOutput

    GetResourcesInput.add_member(:pagination_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "PaginationToken"))
    GetResourcesInput.add_member(:tag_filters, Shapes::ShapeRef.new(shape: TagFilterList, location_name: "TagFilters"))
    GetResourcesInput.add_member(:resources_per_page, Shapes::ShapeRef.new(shape: ResourcesPerPage, location_name: "ResourcesPerPage"))
    GetResourcesInput.add_member(:tags_per_page, Shapes::ShapeRef.new(shape: TagsPerPage, location_name: "TagsPerPage"))
    GetResourcesInput.add_member(:resource_type_filters, Shapes::ShapeRef.new(shape: ResourceTypeFilterList, location_name: "ResourceTypeFilters"))
    GetResourcesInput.add_member(:include_compliance_details, Shapes::ShapeRef.new(shape: IncludeComplianceDetails, location_name: "IncludeComplianceDetails"))
    GetResourcesInput.add_member(:exclude_compliant_resources, Shapes::ShapeRef.new(shape: ExcludeCompliantResources, location_name: "ExcludeCompliantResources"))
    GetResourcesInput.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, location_name: "Policy"))
    GetResourcesInput.struct_class = Types::GetResourcesInput

    GetResourcesOutput.add_member(:pagination_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "PaginationToken"))
    GetResourcesOutput.add_member(:resource_tag_mapping_list, Shapes::ShapeRef.new(shape: ResourceTagMappingList, location_name: "ResourceTagMappingList"))
    GetResourcesOutput.struct_class = Types::GetResourcesOutput

    GetTagKeysInput.add_member(:pagination_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "PaginationToken"))
    GetTagKeysInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultTagsDS1, location_name: "MaxResults"))
    GetTagKeysInput.struct_class = Types::GetTagKeysInput

    GetTagKeysOutput.add_member(:pagination_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "PaginationToken"))
    GetTagKeysOutput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, location_name: "TagKeys"))
    GetTagKeysOutput.struct_class = Types::GetTagKeysOutput

    GetTagPolicyInput.add_member(:target_id, Shapes::ShapeRef.new(shape: TargetId, required: true, location_name: "TargetId"))
    GetTagPolicyInput.struct_class = Types::GetTagPolicyInput

    GetTagPolicyOutput.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, location_name: "Policy"))
    GetTagPolicyOutput.add_member(:last_updated, Shapes::ShapeRef.new(shape: LastUpdated, location_name: "LastUpdated"))
    GetTagPolicyOutput.struct_class = Types::GetTagPolicyOutput

    GetTagValuesInput.add_member(:pagination_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "PaginationToken"))
    GetTagValuesInput.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    GetTagValuesInput.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResultTagsDS1, location_name: "MaxResults"))
    GetTagValuesInput.struct_class = Types::GetTagValuesInput

    GetTagValuesOutput.add_member(:pagination_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "PaginationToken"))
    GetTagValuesOutput.add_member(:tag_values, Shapes::ShapeRef.new(shape: TagValuesOutputList, location_name: "TagValues"))
    GetTagValuesOutput.struct_class = Types::GetTagValuesOutput

    GroupBy.member = Shapes::ShapeRef.new(shape: GroupByAttribute)

    InternalServiceException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    InternalServiceException.struct_class = Types::InternalServiceException

    InvalidParameterException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    InvalidParameterException.struct_class = Types::InvalidParameterException

    PaginationTokenExpiredException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    PaginationTokenExpiredException.struct_class = Types::PaginationTokenExpiredException

    PutTagPolicyInput.add_member(:target_id, Shapes::ShapeRef.new(shape: TargetId, required: true, location_name: "TargetId"))
    PutTagPolicyInput.add_member(:policy, Shapes::ShapeRef.new(shape: Policy, required: true, location_name: "Policy"))
    PutTagPolicyInput.struct_class = Types::PutTagPolicyInput

    PutTagPolicyOutput.struct_class = Types::PutTagPolicyOutput

    RegionFilterList.member = Shapes::ShapeRef.new(shape: Region)

    ResourceARNList.member = Shapes::ShapeRef.new(shape: ResourceARN)

    ResourceTagMapping.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceARN, location_name: "ResourceARN"))
    ResourceTagMapping.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ResourceTagMapping.add_member(:compliance_details, Shapes::ShapeRef.new(shape: ComplianceDetails, location_name: "ComplianceDetails"))
    ResourceTagMapping.struct_class = Types::ResourceTagMapping

    ResourceTagMappingList.member = Shapes::ShapeRef.new(shape: ResourceTagMapping)

    ResourceTypeFilterList.member = Shapes::ShapeRef.new(shape: AmazonResourceType)

    StartReportCreationInput.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3Bucket, required: true, location_name: "S3Bucket"))
    StartReportCreationInput.struct_class = Types::StartReportCreationInput

    StartReportCreationOutput.struct_class = Types::StartReportCreationOutput

    Summary.add_member(:last_updated, Shapes::ShapeRef.new(shape: LastUpdated, location_name: "LastUpdated"))
    Summary.add_member(:target_id, Shapes::ShapeRef.new(shape: TargetId, location_name: "TargetId"))
    Summary.add_member(:region, Shapes::ShapeRef.new(shape: Region, location_name: "Region"))
    Summary.add_member(:resource_type, Shapes::ShapeRef.new(shape: AmazonResourceType, location_name: "ResourceType"))
    Summary.add_member(:non_compliant_resources, Shapes::ShapeRef.new(shape: NonCompliantResources, location_name: "NonCompliantResources"))
    Summary.struct_class = Types::Summary

    SummaryList.member = Shapes::ShapeRef.new(shape: Summary)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagFilter.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, location_name: "Key"))
    TagFilter.add_member(:values, Shapes::ShapeRef.new(shape: TagValueList, location_name: "Values"))
    TagFilter.struct_class = Types::TagFilter

    TagFilterList.member = Shapes::ShapeRef.new(shape: TagFilter)

    TagKeyFilterList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagKeyListForUntag.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourcesInput.add_member(:resource_arn_list, Shapes::ShapeRef.new(shape: ResourceARNList, required: true, location_name: "ResourceARNList"))
    TagResourcesInput.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "Tags"))
    TagResourcesInput.struct_class = Types::TagResourcesInput

    TagResourcesOutput.add_member(:failed_resources_map, Shapes::ShapeRef.new(shape: FailedResourcesMap, location_name: "FailedResourcesMap"))
    TagResourcesOutput.struct_class = Types::TagResourcesOutput

    TagValueList.member = Shapes::ShapeRef.new(shape: TagValue)

    TagValuesOutputList.member = Shapes::ShapeRef.new(shape: TagValue)

    TargetIdFilterList.member = Shapes::ShapeRef.new(shape: TargetId)

    ThrottledException.add_member(:message, Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: "Message"))
    ThrottledException.struct_class = Types::ThrottledException

    UntagResourcesInput.add_member(:resource_arn_list, Shapes::ShapeRef.new(shape: ResourceARNList, required: true, location_name: "ResourceARNList"))
    UntagResourcesInput.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyListForUntag, required: true, location_name: "TagKeys"))
    UntagResourcesInput.struct_class = Types::UntagResourcesInput

    UntagResourcesOutput.add_member(:failed_resources_map, Shapes::ShapeRef.new(shape: FailedResourcesMap, location_name: "FailedResourcesMap"))
    UntagResourcesOutput.struct_class = Types::UntagResourcesOutput


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2017-01-26"

      api.metadata = {
        "apiVersion" => "2017-01-26",
        "endpointPrefix" => "tagging",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "AWS Resource Groups Tagging API",
        "serviceId" => "Resource Groups Tagging API",
        "signatureVersion" => "v4",
        "targetPrefix" => "ResourceGroupsTaggingAPI_20170126",
        "uid" => "resourcegroupstaggingapi-2017-01-26",
      }

      api.add_operation(:delete_tag_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTagPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteTagPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: DeleteTagPolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:describe_report_creation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeReportCreation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeReportCreationInput)
        o.output = Shapes::ShapeRef.new(shape: DescribeReportCreationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
      end)

      api.add_operation(:disable_tag_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisableTagPolicies"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DisableTagPoliciesInput)
        o.output = Shapes::ShapeRef.new(shape: DisableTagPoliciesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:enable_tag_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "EnableTagPolicies"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: EnableTagPoliciesInput)
        o.output = Shapes::ShapeRef.new(shape: EnableTagPoliciesOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:get_compliance_summary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetComplianceSummary"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetComplianceSummaryInput)
        o.output = Shapes::ShapeRef.new(shape: GetComplianceSummaryOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "pagination_token" => "pagination_token"
          }
        )
      end)

      api.add_operation(:get_effective_tag_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEffectiveTagPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetEffectiveTagPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: GetEffectiveTagPolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:get_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetResources"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetResourcesInput)
        o.output = Shapes::ShapeRef.new(shape: GetResourcesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: PaginationTokenExpiredException)
        o[:pager] = Aws::Pager.new(
          limit_key: "resources_per_page",
          tokens: {
            "pagination_token" => "pagination_token"
          }
        )
      end)

      api.add_operation(:get_tag_keys, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTagKeys"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetTagKeysInput)
        o.output = Shapes::ShapeRef.new(shape: GetTagKeysOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: PaginationTokenExpiredException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "pagination_token" => "pagination_token"
          }
        )
      end)

      api.add_operation(:get_tag_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTagPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetTagPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: GetTagPolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:get_tag_values, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetTagValues"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: GetTagValuesInput)
        o.output = Shapes::ShapeRef.new(shape: GetTagValuesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: PaginationTokenExpiredException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "pagination_token" => "pagination_token"
          }
        )
      end)

      api.add_operation(:put_tag_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutTagPolicy"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: PutTagPolicyInput)
        o.output = Shapes::ShapeRef.new(shape: PutTagPolicyOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:start_report_creation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartReportCreation"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: StartReportCreationInput)
        o.output = Shapes::ShapeRef.new(shape: StartReportCreationOutput)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: ConstraintViolationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
      end)

      api.add_operation(:tag_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResources"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourcesInput)
        o.output = Shapes::ShapeRef.new(shape: TagResourcesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)

      api.add_operation(:untag_resources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResources"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourcesInput)
        o.output = Shapes::ShapeRef.new(shape: UntagResourcesOutput)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottledException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceException)
      end)
    end

  end
end
