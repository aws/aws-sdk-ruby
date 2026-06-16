# frozen_string_literal: true

# This is generated code!

module Aws::ResourceGroupsTaggingAPI
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AmazonResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourcegroupstaggingapi#AmazonResourceType", name: "AmazonResourceType", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    ComplianceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroupstaggingapi#ComplianceDetails", name: "ComplianceDetails")
    ComplianceStatus = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.resourcegroupstaggingapi#ComplianceStatus", name: "ComplianceStatus")
    ConcurrentModificationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroupstaggingapi#ConcurrentModificationException", name: "ConcurrentModificationException", traits: {"smithy.api#error" => "client"})
    ConstraintViolationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroupstaggingapi#ConstraintViolationException", name: "ConstraintViolationException", traits: {"smithy.api#error" => "client"})
    DescribeReportCreationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroupstaggingapi#DescribeReportCreationInput", name: "DescribeReportCreationInput")
    DescribeReportCreationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroupstaggingapi#DescribeReportCreationOutput", name: "DescribeReportCreationOutput")
    ErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resourcegroupstaggingapi#ErrorCode", name: "ErrorCode")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourcegroupstaggingapi#ErrorMessage", name: "ErrorMessage")
    ExceptionMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourcegroupstaggingapi#ExceptionMessage", name: "ExceptionMessage", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    ExcludeCompliantResources = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.resourcegroupstaggingapi#ExcludeCompliantResources", name: "ExcludeCompliantResources")
    FailedResourcesMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.resourcegroupstaggingapi#FailedResourcesMap", name: "FailedResourcesMap")
    FailureInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroupstaggingapi#FailureInfo", name: "FailureInfo")
    GetComplianceSummaryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroupstaggingapi#GetComplianceSummaryInput", name: "GetComplianceSummaryInput")
    GetComplianceSummaryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroupstaggingapi#GetComplianceSummaryOutput", name: "GetComplianceSummaryOutput")
    GetResourcesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroupstaggingapi#GetResourcesInput", name: "GetResourcesInput")
    GetResourcesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroupstaggingapi#GetResourcesOutput", name: "GetResourcesOutput")
    GetTagKeysInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroupstaggingapi#GetTagKeysInput", name: "GetTagKeysInput")
    GetTagKeysOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroupstaggingapi#GetTagKeysOutput", name: "GetTagKeysOutput")
    GetTagValuesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroupstaggingapi#GetTagValuesInput", name: "GetTagValuesInput")
    GetTagValuesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroupstaggingapi#GetTagValuesOutput", name: "GetTagValuesOutput")
    GroupBy = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourcegroupstaggingapi#GroupBy", name: "GroupBy")
    GroupByAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resourcegroupstaggingapi#GroupByAttribute", name: "GroupByAttribute")
    IncludeComplianceDetails = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.resourcegroupstaggingapi#IncludeComplianceDetails", name: "IncludeComplianceDetails")
    InternalServiceException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroupstaggingapi#InternalServiceException", name: "InternalServiceException", traits: {"smithy.api#error" => "server"})
    InvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroupstaggingapi#InvalidParameterException", name: "InvalidParameterException", traits: {"smithy.api#error" => "client"})
    LastUpdated = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourcegroupstaggingapi#LastUpdated", name: "LastUpdated")
    MaxResultsGetComplianceSummary = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.resourcegroupstaggingapi#MaxResultsGetComplianceSummary", name: "MaxResultsGetComplianceSummary", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    NonCompliantResources = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.resourcegroupstaggingapi#NonCompliantResources", name: "NonCompliantResources", traits: {"smithy.api#default" => 0})
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourcegroupstaggingapi#PaginationToken", name: "PaginationToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    PaginationTokenExpiredException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroupstaggingapi#PaginationTokenExpiredException", name: "PaginationTokenExpiredException", traits: {"smithy.api#error" => "client"})
    Region = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourcegroupstaggingapi#Region", name: "Region", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    RegionFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourcegroupstaggingapi#RegionFilterList", name: "RegionFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ResourceARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourcegroupstaggingapi#ResourceARN", name: "ResourceARN", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    ResourceARNListForGet = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourcegroupstaggingapi#ResourceARNListForGet", name: "ResourceARNListForGet", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ResourceARNListForTagUntag = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourcegroupstaggingapi#ResourceARNListForTagUntag", name: "ResourceARNListForTagUntag", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    ResourceTagMapping = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroupstaggingapi#ResourceTagMapping", name: "ResourceTagMapping")
    ResourceTagMappingList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourcegroupstaggingapi#ResourceTagMappingList", name: "ResourceTagMappingList")
    ResourceTypeFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourcegroupstaggingapi#ResourceTypeFilterList", name: "ResourceTypeFilterList")
    ResourcesPerPage = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.resourcegroupstaggingapi#ResourcesPerPage", name: "ResourcesPerPage")
    S3Bucket = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourcegroupstaggingapi#S3Bucket", name: "S3Bucket", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9.-]*$"})
    S3Location = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourcegroupstaggingapi#S3Location", name: "S3Location")
    StartDate = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourcegroupstaggingapi#StartDate", name: "StartDate")
    StartReportCreationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroupstaggingapi#StartReportCreationInput", name: "StartReportCreationInput")
    StartReportCreationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroupstaggingapi#StartReportCreationOutput", name: "StartReportCreationOutput")
    Status = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourcegroupstaggingapi#Status", name: "Status")
    StatusCode = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.resourcegroupstaggingapi#StatusCode", name: "StatusCode", traits: {"smithy.api#default" => 0})
    Summary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroupstaggingapi#Summary", name: "Summary")
    SummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourcegroupstaggingapi#SummaryList", name: "SummaryList")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroupstaggingapi#Tag", name: "Tag")
    TagFilter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroupstaggingapi#TagFilter", name: "TagFilter")
    TagFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourcegroupstaggingapi#TagFilterList", name: "TagFilterList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourcegroupstaggingapi#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    TagKeyFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourcegroupstaggingapi#TagKeyFilterList", name: "TagKeyFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourcegroupstaggingapi#TagKeyList", name: "TagKeyList")
    TagKeyListForUntag = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourcegroupstaggingapi#TagKeyListForUntag", name: "TagKeyListForUntag", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourcegroupstaggingapi#TagList", name: "TagList")
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.resourcegroupstaggingapi#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourcesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroupstaggingapi#TagResourcesInput", name: "TagResourcesInput")
    TagResourcesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroupstaggingapi#TagResourcesOutput", name: "TagResourcesOutput")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourcegroupstaggingapi#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    TagValueList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourcegroupstaggingapi#TagValueList", name: "TagValueList", traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    TagValuesOutputList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourcegroupstaggingapi#TagValuesOutputList", name: "TagValuesOutputList")
    TagsPerPage = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.resourcegroupstaggingapi#TagsPerPage", name: "TagsPerPage")
    TargetId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.resourcegroupstaggingapi#TargetId", name: "TargetId", traits: {"smithy.api#length" => {"min" => 6, "max" => 68}, "smithy.api#pattern" => "^[a-zA-Z0-9-]*$"})
    TargetIdFilterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.resourcegroupstaggingapi#TargetIdFilterList", name: "TargetIdFilterList", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    TargetIdType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.resourcegroupstaggingapi#TargetIdType", name: "TargetIdType")
    ThrottledException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroupstaggingapi#ThrottledException", name: "ThrottledException", traits: {"smithy.api#error" => "client"})
    UntagResourcesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroupstaggingapi#UntagResourcesInput", name: "UntagResourcesInput")
    UntagResourcesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.resourcegroupstaggingapi#UntagResourcesOutput", name: "UntagResourcesOutput")

    ComplianceDetails.add_member(:noncompliant_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, location_name: "NoncompliantKeys"))
    ComplianceDetails.add_member(:keys_with_noncompliant_values, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, location_name: "KeysWithNoncompliantValues"))
    ComplianceDetails.add_member(:compliance_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceStatus, location_name: "ComplianceStatus"))
    ComplianceDetails.type = Types::ComplianceDetails
    ConcurrentModificationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "Message"))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    ConstraintViolationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "Message"))
    ConstraintViolationException.type = Types::ConstraintViolationException
    DescribeReportCreationInput.type = Types::DescribeReportCreationInput
    DescribeReportCreationOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Status, location_name: "Status"))
    DescribeReportCreationOutput.add_member(:s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, location_name: "S3Location"))
    DescribeReportCreationOutput.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: StartDate, location_name: "StartDate"))
    DescribeReportCreationOutput.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "ErrorMessage"))
    DescribeReportCreationOutput.type = Types::DescribeReportCreationOutput
    ErrorCode.add_member(:internal_service_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INTERNAL_SERVICE_EXCEPTION", traits: {"smithy.api#enumValue" => "InternalServiceException"}))
    ErrorCode.add_member(:invalid_parameter_exception, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "INVALID_PARAMETER_EXCEPTION", traits: {"smithy.api#enumValue" => "InvalidParameterException"}))
    FailedResourcesMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN)
    FailedResourcesMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: FailureInfo)
    FailureInfo.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusCode, location_name: "StatusCode", traits: {"smithy.api#default" => 0}))
    FailureInfo.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, location_name: "ErrorCode"))
    FailureInfo.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "ErrorMessage"))
    FailureInfo.type = Types::FailureInfo
    GetComplianceSummaryInput.add_member(:target_id_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetIdFilterList, location_name: "TargetIdFilters"))
    GetComplianceSummaryInput.add_member(:region_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionFilterList, location_name: "RegionFilters"))
    GetComplianceSummaryInput.add_member(:resource_type_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypeFilterList, location_name: "ResourceTypeFilters"))
    GetComplianceSummaryInput.add_member(:tag_key_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyFilterList, location_name: "TagKeyFilters"))
    GetComplianceSummaryInput.add_member(:group_by, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupBy, location_name: "GroupBy"))
    GetComplianceSummaryInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResultsGetComplianceSummary, location_name: "MaxResults"))
    GetComplianceSummaryInput.add_member(:pagination_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "PaginationToken"))
    GetComplianceSummaryInput.type = Types::GetComplianceSummaryInput
    GetComplianceSummaryOutput.add_member(:summary_list, ::Smithy::Schema::Shapes::MemberShape.new(target: SummaryList, location_name: "SummaryList"))
    GetComplianceSummaryOutput.add_member(:pagination_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "PaginationToken"))
    GetComplianceSummaryOutput.type = Types::GetComplianceSummaryOutput
    GetResourcesInput.add_member(:pagination_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "PaginationToken"))
    GetResourcesInput.add_member(:tag_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: TagFilterList, location_name: "TagFilters"))
    GetResourcesInput.add_member(:resources_per_page, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcesPerPage, location_name: "ResourcesPerPage"))
    GetResourcesInput.add_member(:tags_per_page, ::Smithy::Schema::Shapes::MemberShape.new(target: TagsPerPage, location_name: "TagsPerPage"))
    GetResourcesInput.add_member(:resource_type_filters, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTypeFilterList, location_name: "ResourceTypeFilters"))
    GetResourcesInput.add_member(:include_compliance_details, ::Smithy::Schema::Shapes::MemberShape.new(target: IncludeComplianceDetails, location_name: "IncludeComplianceDetails"))
    GetResourcesInput.add_member(:exclude_compliant_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ExcludeCompliantResources, location_name: "ExcludeCompliantResources"))
    GetResourcesInput.add_member(:resource_arn_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARNListForGet, location_name: "ResourceARNList"))
    GetResourcesInput.type = Types::GetResourcesInput
    GetResourcesOutput.add_member(:pagination_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "PaginationToken"))
    GetResourcesOutput.add_member(:resource_tag_mapping_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagMappingList, location_name: "ResourceTagMappingList"))
    GetResourcesOutput.type = Types::GetResourcesOutput
    GetTagKeysInput.add_member(:pagination_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "PaginationToken"))
    GetTagKeysInput.type = Types::GetTagKeysInput
    GetTagKeysOutput.add_member(:pagination_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "PaginationToken"))
    GetTagKeysOutput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, location_name: "TagKeys"))
    GetTagKeysOutput.type = Types::GetTagKeysOutput
    GetTagValuesInput.add_member(:pagination_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "PaginationToken"))
    GetTagValuesInput.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, location_name: "Key", traits: {"smithy.api#required" => {}}))
    GetTagValuesInput.type = Types::GetTagValuesInput
    GetTagValuesOutput.add_member(:pagination_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, location_name: "PaginationToken"))
    GetTagValuesOutput.add_member(:tag_values, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValuesOutputList, location_name: "TagValues"))
    GetTagValuesOutput.type = Types::GetTagValuesOutput
    GroupBy.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GroupByAttribute)
    GroupByAttribute.add_member(:target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "TARGET_ID", traits: {"smithy.api#enumValue" => "TARGET_ID"}))
    GroupByAttribute.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "REGION", traits: {"smithy.api#enumValue" => "REGION"}))
    GroupByAttribute.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RESOURCE_TYPE", traits: {"smithy.api#enumValue" => "RESOURCE_TYPE"}))
    InternalServiceException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "Message"))
    InternalServiceException.type = Types::InternalServiceException
    InvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "Message"))
    InvalidParameterException.type = Types::InvalidParameterException
    PaginationTokenExpiredException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "Message"))
    PaginationTokenExpiredException.type = Types::PaginationTokenExpiredException
    RegionFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Region)
    ResourceARNListForGet.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN)
    ResourceARNListForTagUntag.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN)
    ResourceTagMapping.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARN, location_name: "ResourceARN"))
    ResourceTagMapping.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, location_name: "Tags"))
    ResourceTagMapping.add_member(:compliance_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ComplianceDetails, location_name: "ComplianceDetails"))
    ResourceTagMapping.type = Types::ResourceTagMapping
    ResourceTagMappingList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceTagMapping)
    ResourceTypeFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceType)
    StartReportCreationInput.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Bucket, location_name: "S3Bucket", traits: {"smithy.api#required" => {}}))
    StartReportCreationInput.type = Types::StartReportCreationInput
    StartReportCreationOutput.type = Types::StartReportCreationOutput
    Summary.add_member(:last_updated, ::Smithy::Schema::Shapes::MemberShape.new(target: LastUpdated, location_name: "LastUpdated"))
    Summary.add_member(:target_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetId, location_name: "TargetId"))
    Summary.add_member(:target_id_type, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetIdType, location_name: "TargetIdType"))
    Summary.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: Region, location_name: "Region"))
    Summary.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonResourceType, location_name: "ResourceType"))
    Summary.add_member(:non_compliant_resources, ::Smithy::Schema::Shapes::MemberShape.new(target: NonCompliantResources, location_name: "NonCompliantResources", traits: {"smithy.api#default" => 0}))
    Summary.type = Types::Summary
    SummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Summary)
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, location_name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, location_name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagFilter.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, location_name: "Key"))
    TagFilter.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValueList, location_name: "Values"))
    TagFilter.type = Types::TagFilter
    TagFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagFilter)
    TagKeyFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagKeyListForUntag.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag)
    TagMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue)
    TagResourcesInput.add_member(:resource_arn_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARNListForTagUntag, location_name: "ResourceARNList", traits: {"smithy.api#required" => {}}))
    TagResourcesInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, location_name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourcesInput.type = Types::TagResourcesInput
    TagResourcesOutput.add_member(:failed_resources_map, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedResourcesMap, location_name: "FailedResourcesMap"))
    TagResourcesOutput.type = Types::TagResourcesOutput
    TagValueList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue)
    TagValuesOutputList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue)
    TargetIdFilterList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TargetId)
    TargetIdType.add_member(:account, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACCOUNT", traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    TargetIdType.add_member(:ou, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "OU", traits: {"smithy.api#enumValue" => "OU"}))
    TargetIdType.add_member(:root, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ROOT", traits: {"smithy.api#enumValue" => "ROOT"}))
    ThrottledException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionMessage, location_name: "Message"))
    ThrottledException.type = Types::ThrottledException
    UntagResourcesInput.add_member(:resource_arn_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceARNListForTagUntag, location_name: "ResourceARNList", traits: {"smithy.api#required" => {}}))
    UntagResourcesInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyListForUntag, location_name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourcesInput.type = Types::UntagResourcesInput
    UntagResourcesOutput.add_member(:failed_resources_map, ::Smithy::Schema::Shapes::MemberShape.new(target: FailedResourcesMap, location_name: "FailedResourcesMap"))
    UntagResourcesOutput.type = Types::UntagResourcesOutput

    ResourceGroupsTaggingAPI20170126 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.resourcegroupstaggingapi#ResourceGroupsTaggingAPI_20170126"
      service.name = "ResourceGroupsTaggingAPI20170126"
      service.version = "2017-01-26"
      service.traits = {"aws.api#service" => {"sdkId" => "Resource Groups Tagging API", "arnNamespace" => "tagging", "cloudFormationName" => "ResourceGroupsTaggingAPI", "cloudTrailEventSource" => "resourcegroupstaggingapi.amazonaws.com", "docId" => "resourcegroupstaggingapi-2017-01-26", "endpointPrefix" => "tagging"}, "aws.auth#sigv4" => {"name" => "tagging"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Resource Groups Tagging API"}
      service.add_operation(:describe_report_creation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroupstaggingapi#DescribeReportCreation"
        operation.name = "DescribeReportCreation"
        operation.input = DescribeReportCreationInput
        operation.output = DescribeReportCreationOutput
        operation.errors << ConstraintViolationException
        operation.errors << InternalServiceException
        operation.errors << InvalidParameterException
        operation.errors << ThrottledException
        operation.traits = {}
      end)
      service.add_operation(:get_compliance_summary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroupstaggingapi#GetComplianceSummary"
        operation.name = "GetComplianceSummary"
        operation.input = GetComplianceSummaryInput
        operation.output = GetComplianceSummaryOutput
        operation.errors << ConstraintViolationException
        operation.errors << InternalServiceException
        operation.errors << InvalidParameterException
        operation.errors << ThrottledException
        operation.traits = {}
        operation[:paginator] = Paginators::GetComplianceSummary.new
      end)
      service.add_operation(:get_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroupstaggingapi#GetResources"
        operation.name = "GetResources"
        operation.input = GetResourcesInput
        operation.output = GetResourcesOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidParameterException
        operation.errors << PaginationTokenExpiredException
        operation.errors << ThrottledException
        operation.traits = {}
        operation[:paginator] = Paginators::GetResources.new
      end)
      service.add_operation(:get_tag_keys, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroupstaggingapi#GetTagKeys"
        operation.name = "GetTagKeys"
        operation.input = GetTagKeysInput
        operation.output = GetTagKeysOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidParameterException
        operation.errors << PaginationTokenExpiredException
        operation.errors << ThrottledException
        operation.traits = {}
        operation[:paginator] = Paginators::GetTagKeys.new
      end)
      service.add_operation(:get_tag_values, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroupstaggingapi#GetTagValues"
        operation.name = "GetTagValues"
        operation.input = GetTagValuesInput
        operation.output = GetTagValuesOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidParameterException
        operation.errors << PaginationTokenExpiredException
        operation.errors << ThrottledException
        operation.traits = {}
        operation[:paginator] = Paginators::GetTagValues.new
      end)
      service.add_operation(:start_report_creation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroupstaggingapi#StartReportCreation"
        operation.name = "StartReportCreation"
        operation.input = StartReportCreationInput
        operation.output = StartReportCreationOutput
        operation.errors << ConcurrentModificationException
        operation.errors << ConstraintViolationException
        operation.errors << InternalServiceException
        operation.errors << InvalidParameterException
        operation.errors << ThrottledException
        operation.traits = {}
      end)
      service.add_operation(:tag_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroupstaggingapi#TagResources"
        operation.name = "TagResources"
        operation.input = TagResourcesInput
        operation.output = TagResourcesOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidParameterException
        operation.errors << ThrottledException
        operation.traits = {}
      end)
      service.add_operation(:untag_resources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroupstaggingapi#UntagResources"
        operation.name = "UntagResources"
        operation.input = UntagResourcesInput
        operation.output = UntagResourcesOutput
        operation.errors << InternalServiceException
        operation.errors << InvalidParameterException
        operation.errors << ThrottledException
        operation.traits = {}
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
