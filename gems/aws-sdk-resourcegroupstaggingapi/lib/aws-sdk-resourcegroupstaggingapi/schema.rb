# frozen_string_literal: true

# This is generated code!

module Aws::ResourceGroupsTaggingAPI
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AmazonResourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#AmazonResourceType', name: 'AmazonResourceType', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    ComplianceDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#ComplianceDetails', name: 'ComplianceDetails')
    ComplianceStatus = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#ComplianceStatus', name: 'ComplianceStatus')
    ConcurrentModificationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#ConcurrentModificationException', name: 'ConcurrentModificationException', traits: {"smithy.api#error" => "client"})
    ConstraintViolationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#ConstraintViolationException', name: 'ConstraintViolationException', traits: {"smithy.api#error" => "client"})
    DescribeReportCreationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#DescribeReportCreationInput', name: 'DescribeReportCreationInput')
    DescribeReportCreationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#DescribeReportCreationOutput', name: 'DescribeReportCreationOutput')
    ErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#ErrorCode', name: 'ErrorCode')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#ErrorMessage', name: 'ErrorMessage')
    ExceptionMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#ExceptionMessage', name: 'ExceptionMessage', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}})
    ExcludeCompliantResources = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#ExcludeCompliantResources', name: 'ExcludeCompliantResources')
    FailedResourcesMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#FailedResourcesMap', name: 'FailedResourcesMap')
    FailureInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#FailureInfo', name: 'FailureInfo')
    GetComplianceSummaryInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#GetComplianceSummaryInput', name: 'GetComplianceSummaryInput')
    GetComplianceSummaryOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#GetComplianceSummaryOutput', name: 'GetComplianceSummaryOutput')
    GetResourcesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#GetResourcesInput', name: 'GetResourcesInput')
    GetResourcesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#GetResourcesOutput', name: 'GetResourcesOutput')
    GetTagKeysInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#GetTagKeysInput', name: 'GetTagKeysInput')
    GetTagKeysOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#GetTagKeysOutput', name: 'GetTagKeysOutput')
    GetTagValuesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#GetTagValuesInput', name: 'GetTagValuesInput')
    GetTagValuesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#GetTagValuesOutput', name: 'GetTagValuesOutput')
    GroupBy = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#GroupBy', name: 'GroupBy')
    GroupByAttribute = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#GroupByAttribute', name: 'GroupByAttribute')
    IncludeComplianceDetails = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#IncludeComplianceDetails', name: 'IncludeComplianceDetails')
    InternalServiceException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#InternalServiceException', name: 'InternalServiceException', traits: {"smithy.api#error" => "server"})
    InvalidParameterException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#InvalidParameterException', name: 'InvalidParameterException', traits: {"smithy.api#error" => "client"})
    LastUpdated = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#LastUpdated', name: 'LastUpdated')
    MaxResultsGetComplianceSummary = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#MaxResultsGetComplianceSummary', name: 'MaxResultsGetComplianceSummary', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    NonCompliantResources = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#NonCompliantResources', name: 'NonCompliantResources', traits: {"smithy.api#default" => 0})
    PaginationToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    PaginationTokenExpiredException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#PaginationTokenExpiredException', name: 'PaginationTokenExpiredException', traits: {"smithy.api#error" => "client"})
    Region = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#Region', name: 'Region', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    RegionFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#RegionFilterList', name: 'RegionFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ResourceARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#ResourceARN', name: 'ResourceARN', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    ResourceARNListForGet = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#ResourceARNListForGet', name: 'ResourceARNListForGet', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    ResourceARNListForTagUntag = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#ResourceARNListForTagUntag', name: 'ResourceARNListForTagUntag', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    ResourceTagMapping = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#ResourceTagMapping', name: 'ResourceTagMapping')
    ResourceTagMappingList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#ResourceTagMappingList', name: 'ResourceTagMappingList')
    ResourceTypeFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#ResourceTypeFilterList', name: 'ResourceTypeFilterList')
    ResourcesPerPage = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#ResourcesPerPage', name: 'ResourcesPerPage')
    S3Bucket = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#S3Bucket', name: 'S3Bucket', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9.-]*$"})
    S3Location = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#S3Location', name: 'S3Location')
    StartDate = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#StartDate', name: 'StartDate')
    StartReportCreationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#StartReportCreationInput', name: 'StartReportCreationInput')
    StartReportCreationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#StartReportCreationOutput', name: 'StartReportCreationOutput')
    Status = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#Status', name: 'Status')
    StatusCode = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#StatusCode', name: 'StatusCode', traits: {"smithy.api#default" => 0})
    Summary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#Summary', name: 'Summary')
    SummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#SummaryList', name: 'SummaryList')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#Tag', name: 'Tag')
    TagFilter = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#TagFilter', name: 'TagFilter')
    TagFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#TagFilterList', name: 'TagFilterList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    TagKeyFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#TagKeyFilterList', name: 'TagKeyFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#TagKeyList', name: 'TagKeyList')
    TagKeyListForUntag = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#TagKeyListForUntag', name: 'TagKeyListForUntag', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#TagList', name: 'TagList')
    TagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourcesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#TagResourcesInput', name: 'TagResourcesInput')
    TagResourcesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#TagResourcesOutput', name: 'TagResourcesOutput')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\s\\S]*$"})
    TagValueList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#TagValueList', name: 'TagValueList', traits: {"smithy.api#length" => {"min" => 0, "max" => 20}})
    TagValuesOutputList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#TagValuesOutputList', name: 'TagValuesOutputList')
    TagsPerPage = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#TagsPerPage', name: 'TagsPerPage')
    TargetId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#TargetId', name: 'TargetId', traits: {"smithy.api#length" => {"min" => 6, "max" => 68}, "smithy.api#pattern" => "^[a-zA-Z0-9-]*$"})
    TargetIdFilterList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#TargetIdFilterList', name: 'TargetIdFilterList', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    TargetIdType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#TargetIdType', name: 'TargetIdType')
    ThrottledException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#ThrottledException', name: 'ThrottledException', traits: {"smithy.api#error" => "client"})
    UntagResourcesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#UntagResourcesInput', name: 'UntagResourcesInput')
    UntagResourcesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.resourcegroupstaggingapi#UntagResourcesOutput', name: 'UntagResourcesOutput')

    ComplianceDetails.add_member(:noncompliant_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'NoncompliantKeys', traits: {"smithy.api#documentation" => "<p>These tag keys on the resource are noncompliant with the effective tag policy.</p>"}))
    ComplianceDetails.add_member(:keys_with_noncompliant_values, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'KeysWithNoncompliantValues', traits: {"smithy.api#documentation" => "<p>These are keys defined in the effective policy that are on the resource with either\n            incorrect case treatment or noncompliant values. </p>"}))
    ComplianceDetails.add_member(:compliance_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ComplianceStatus, location_name: 'ComplianceStatus', traits: {"smithy.api#documentation" => "<p>Whether a resource is compliant with the effective tag policy.</p>"}))
    ComplianceDetails.type = Types::ComplianceDetails
    ConcurrentModificationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    ConstraintViolationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    ConstraintViolationException.type = Types::ConstraintViolationException
    DescribeReportCreationInput.type = Types::DescribeReportCreationInput
    DescribeReportCreationOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Status, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>Reports the status of the operation.</p>\n         <p>The operation status can be one of the following:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>RUNNING</code> - Report creation is in progress.</p>\n            </li>\n            <li>\n               <p>\n                  <code>SUCCEEDED</code> - Report creation is complete. You can open the report\n                    from the Amazon S3 bucket that you specified when you ran\n                        <code>StartReportCreation</code>.</p>\n            </li>\n            <li>\n               <p>\n                  <code>FAILED</code> - Report creation timed out or the Amazon S3 bucket is not\n                    accessible. </p>\n            </li>\n            <li>\n               <p>\n                  <code>NO REPORT</code> - No report was generated in the last 90 days.</p>\n            </li>\n         </ul>"}))
    DescribeReportCreationOutput.add_member(:s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 'S3Location', traits: {"smithy.api#documentation" => "<p>The path to the Amazon S3 bucket where the report was stored on creation.</p>"}))
    DescribeReportCreationOutput.add_member(:start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: StartDate, location_name: 'StartDate', traits: {"smithy.api#documentation" => "<p>The date and time that the report was started. </p>"}))
    DescribeReportCreationOutput.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>Details of the common errors that all operations return.</p>"}))
    DescribeReportCreationOutput.type = Types::DescribeReportCreationOutput
    ErrorCode.add_member(:internal_service_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_SERVICE_EXCEPTION', traits: {"smithy.api#enumValue" => "InternalServiceException"}))
    ErrorCode.add_member(:invalid_parameter_exception, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_PARAMETER_EXCEPTION', traits: {"smithy.api#enumValue" => "InvalidParameterException"}))
    FailedResourcesMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN)
    FailedResourcesMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: FailureInfo)
    FailureInfo.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusCode, location_name: 'StatusCode', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The HTTP status code of the common error.</p>"}))
    FailureInfo.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The code of the common error. Valid values include\n                <code>InternalServiceException</code>, <code>InvalidParameterException</code>, and\n            any valid error code returned by the Amazon Web Services service that hosts the resource that you want\n            to tag.</p>"}))
    FailureInfo.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The message of the common error.</p>"}))
    FailureInfo.type = Types::FailureInfo
    GetComplianceSummaryInput.add_member(:target_id_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetIdFilterList, location_name: 'TargetIdFilters', traits: {"smithy.api#documentation" => "<p>Specifies target identifiers (usually, specific account IDs) to limit the output by.\n            If you use this parameter, the count of returned noncompliant resources includes only\n            resources with the specified target IDs.</p>"}))
    GetComplianceSummaryInput.add_member(:region_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: RegionFilterList, location_name: 'RegionFilters', traits: {"smithy.api#documentation" => "<p>Specifies a list of Amazon Web Services Regions to limit the output to. If you use this parameter,\n            the count of returned noncompliant resources includes only resources in the specified\n            Regions.</p>"}))
    GetComplianceSummaryInput.add_member(:resource_type_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypeFilterList, location_name: 'ResourceTypeFilters', traits: {"smithy.api#documentation" => "<p>Specifies that you want the response to include information for only resources of the\n            specified types. The format of each resource type is\n            <code>service[:resourceType]</code>. For example, specifying a resource type of\n                <code>ec2</code> returns all Amazon EC2 resources (which includes EC2 instances).\n            Specifying a resource type of <code>ec2:instance</code> returns only EC2\n            instances.</p>\n         <p>The string for each service name and resource type is the same as that embedded in a\n            resource's Amazon Resource Name (ARN). Consult the <i>\n               <a href=\"https://docs.aws.amazon.com/general/latest/gr/\">Amazon Web Services General Reference</a>\n            </i>\n            for the following:</p>\n         <ul>\n            <li>\n               <p>For a list of service name strings, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces\">Amazon Web Services Service Namespaces</a>.</p>\n            </li>\n            <li>\n               <p>For resource type strings, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arns-syntax\">Example\n                        ARNs</a>.</p>\n            </li>\n            <li>\n               <p>For more information about ARNs, see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon Resource Names\n                        (ARNs) and Amazon Web Services Service Namespaces</a>.</p>\n            </li>\n         </ul>\n         <p>You can specify multiple resource types by using a comma separated array. The array\n            can include up to 100 items. Note that the length constraint requirement applies to each\n            resource type filter. </p>"}))
    GetComplianceSummaryInput.add_member(:tag_key_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyFilterList, location_name: 'TagKeyFilters', traits: {"smithy.api#documentation" => "<p>Specifies that you want the response to include information for only resources that\n            have tags with the specified tag keys. If you use this parameter, the count of returned\n            noncompliant resources includes only resources that have the specified tag keys.</p>"}))
    GetComplianceSummaryInput.add_member(:group_by, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupBy, location_name: 'GroupBy', traits: {"smithy.api#documentation" => "<p>Specifies a list of attributes to group the counts of noncompliant resources by. If\n            supplied, the counts are sorted by those attributes.</p>"}))
    GetComplianceSummaryInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResultsGetComplianceSummary, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>Specifies the maximum number of results to be returned in each page. A \n    query can return fewer than this maximum, even if there are more results still to return. You\n    should always check the <code>PaginationToken</code> response value to see if there are more\n    results. You can specify a minimum of 1 and a maximum value of 100.</p>"}))
    GetComplianceSummaryInput.add_member(:pagination_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'PaginationToken', traits: {"smithy.api#documentation" => "<p>Specifies a <code>PaginationToken</code> response value from a \n    previous request to indicate that you want the next page of results. Leave this parameter empty \n    in your initial request.</p>"}))
    GetComplianceSummaryInput.type = Types::GetComplianceSummaryInput
    GetComplianceSummaryOutput.add_member(:summary_list, Smithy::Schema::Shapes::ShapeRef.new(shape: SummaryList, location_name: 'SummaryList', traits: {"smithy.api#documentation" => "<p>A table that shows counts of noncompliant resources.</p>"}))
    GetComplianceSummaryOutput.add_member(:pagination_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'PaginationToken', traits: {"smithy.api#documentation" => "<p>A string that indicates that there is more data available than this\n    response contains. To receive the next part of the response, specify this response value \n    as the <code>PaginationToken</code> value in the request for the next page.</p>"}))
    GetComplianceSummaryOutput.type = Types::GetComplianceSummaryOutput
    GetResourcesInput.add_member(:pagination_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'PaginationToken', traits: {"smithy.api#documentation" => "<p>Specifies a <code>PaginationToken</code> response value from a \n    previous request to indicate that you want the next page of results. Leave this parameter empty \n    in your initial request.</p>"}))
    GetResourcesInput.add_member(:tag_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: TagFilterList, location_name: 'TagFilters', traits: {"smithy.api#documentation" => "<p>Specifies a list of TagFilters (keys and values) to restrict the output to only those\n            resources that have tags with the specified keys and, if included, the specified values.\n            Each <code>TagFilter</code> must contain a key with values optional. A request can\n            include up to 50 keys, and each key can include up to 20 values. </p>\n         <p>Note the following when deciding how to use TagFilters:</p>\n         <ul>\n            <li>\n               <p>If you <i>don't</i> specify a <code>TagFilter</code>, the\n                    response includes all resources that are currently tagged or ever had a tag.\n                    Resources that currently don't have tags are shown with an empty tag set, like\n                    this: <code>\"Tags\": []</code>.</p>\n            </li>\n            <li>\n               <p>If you specify more than one filter in a single request, the response returns\n                    only those resources that satisfy all filters.</p>\n            </li>\n            <li>\n               <p>If you specify a filter that contains more than one value for a key, the\n                    response returns resources that match <i>any</i> of the specified\n                    values for that key.</p>\n            </li>\n            <li>\n               <p>If you don't specify a value for a key, the response returns all resources\n                    that are tagged with that key, with any or no value.</p>\n               <p>For example, for the following filters: <code>filter1= {keyA,{value1}}</code>,\n                        <code>filter2={keyB,{value2,value3,value4}}</code>, <code>filter3=\n                        {keyC}</code>:</p>\n               <ul>\n                  <li>\n                     <p>\n                        <code>GetResources({filter1})</code> returns resources tagged with\n                                <code>key1=value1</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>GetResources({filter2})</code> returns resources tagged with\n                                <code>key2=value2</code> or <code>key2=value3</code> or\n                                <code>key2=value4</code>\n                     </p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>GetResources({filter3})</code> returns resources tagged with any\n                            tag with the key <code>key3</code>, and with any or no value</p>\n                  </li>\n                  <li>\n                     <p>\n                        <code>GetResources({filter1,filter2,filter3})</code> returns resources\n                            tagged with <code>(key1=value1) and (key2=value2 or key2=value3 or\n                                key2=value4) and (key3, any or no value)</code>\n                     </p>\n                  </li>\n               </ul>\n            </li>\n         </ul>"}))
    GetResourcesInput.add_member(:resources_per_page, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcesPerPage, location_name: 'ResourcesPerPage', traits: {"smithy.api#documentation" => "<p>Specifies the maximum number of results to be returned in each page. A \n    query can return fewer than this maximum, even if there are more results still to return. You\n    should always check the <code>PaginationToken</code> response value to see if there are more\n    results. You can specify a minimum of 1 and a maximum value of 100.</p>"}))
    GetResourcesInput.add_member(:tags_per_page, Smithy::Schema::Shapes::ShapeRef.new(shape: TagsPerPage, location_name: 'TagsPerPage', traits: {"smithy.api#documentation" => "<p>Amazon Web Services recommends using <code>ResourcesPerPage</code> instead of this parameter.</p>\n         <p>A limit that restricts the number of tags (key and value pairs) returned by\n                <code>GetResources</code> in paginated output. A resource with no tags is counted as\n            having one tag (one key and value pair).</p>\n         <p>\n            <code>GetResources</code> does not split a resource and its associated tags across\n            pages. If the specified <code>TagsPerPage</code> would cause such a break, a\n                <code>PaginationToken</code> is returned in place of the affected resource and its\n            tags. Use that token in another request to get the remaining data. For example, if you\n            specify a <code>TagsPerPage</code> of <code>100</code> and the account has 22 resources\n            with 10 tags each (meaning that each resource has 10 key and value pairs), the output\n            will consist of three pages. The first page displays the first 10 resources, each with\n            its 10 tags. The second page displays the next 10 resources, each with its 10 tags. The\n            third page displays the remaining 2 resources, each with its 10 tags.</p>\n         <p>You can set <code>TagsPerPage</code> to a minimum of 100 items up to a maximum of 500\n            items.</p>"}))
    GetResourcesInput.add_member(:resource_type_filters, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTypeFilterList, location_name: 'ResourceTypeFilters', traits: {"smithy.api#documentation" => "<p>Specifies the resource types that you want included in the response. The format of\n            each resource type is <code>service[:resourceType]</code>. For example, specifying a\n            resource type of <code>ec2</code> returns all Amazon EC2 resources (which includes EC2\n            instances). Specifying a resource type of <code>ec2:instance</code> returns only EC2\n            instances. </p>\n         <p>The string for each service name and resource type is the same as that embedded in a\n            resource's Amazon Resource Name (ARN). For the list of services whose resources you can\n            use in this parameter, see <a href=\"https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/supported-services.html\">Services that support the Resource Groups Tagging API</a>.</p>\n         <p>You can specify multiple resource types by using an array. The array can include up to\n            100 items. Note that the length constraint requirement applies to each resource type\n            filter. For example, the following string would limit the response to only Amazon EC2\n            instances, Amazon S3 buckets, or any Audit Manager resource:</p>\n         <p>\n            <code>ec2:instance,s3:bucket,auditmanager</code>\n         </p>"}))
    GetResourcesInput.add_member(:include_compliance_details, Smithy::Schema::Shapes::ShapeRef.new(shape: IncludeComplianceDetails, location_name: 'IncludeComplianceDetails', traits: {"smithy.api#documentation" => "<p>Specifies whether to include details regarding the compliance with the effective tag\n            policy. Set this to <code>true</code> to determine whether resources are compliant with\n            the tag policy and to get details.</p>"}))
    GetResourcesInput.add_member(:exclude_compliant_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: ExcludeCompliantResources, location_name: 'ExcludeCompliantResources', traits: {"smithy.api#documentation" => "<p>Specifies whether to exclude resources that are compliant with the tag policy. Set\n            this to <code>true</code> if you are interested in retrieving information on\n            noncompliant resources only.</p>\n         <p>You can use this parameter only if the <code>IncludeComplianceDetails</code> parameter\n            is also set to <code>true</code>.</p>"}))
    GetResourcesInput.add_member(:resource_arn_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARNListForGet, location_name: 'ResourceARNList', traits: {"smithy.api#documentation" => "<p>Specifies a list of ARNs of resources for which you want to retrieve tag data. You\n            can't specify both this parameter and any of the pagination parameters\n                (<code>ResourcesPerPage</code>, <code>TagsPerPage</code>,\n                <code>PaginationToken</code>) in the same request. If you specify both, you get an\n                <code>Invalid Parameter</code> exception.</p>\n         <p>If a resource specified by this parameter doesn't exist, it doesn't generate an error;\n            it simply isn't included in the response.</p>\n         <p>An ARN (Amazon Resource Name) uniquely identifies a resource. For more information,\n            see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon\n                Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the\n                <i>Amazon Web Services General Reference</i>.</p>"}))
    GetResourcesInput.type = Types::GetResourcesInput
    GetResourcesOutput.add_member(:pagination_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'PaginationToken', traits: {"smithy.api#documentation" => "<p>A string that indicates that there is more data available than this\n    response contains. To receive the next part of the response, specify this response value \n    as the <code>PaginationToken</code> value in the request for the next page.</p>"}))
    GetResourcesOutput.add_member(:resource_tag_mapping_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagMappingList, location_name: 'ResourceTagMappingList', traits: {"smithy.api#documentation" => "<p>A list of resource ARNs and the tags (keys and values) associated with \n    each.</p>"}))
    GetResourcesOutput.type = Types::GetResourcesOutput
    GetTagKeysInput.add_member(:pagination_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'PaginationToken', traits: {"smithy.api#documentation" => "<p>Specifies a <code>PaginationToken</code> response value from a \n    previous request to indicate that you want the next page of results. Leave this parameter empty \n    in your initial request.</p>"}))
    GetTagKeysInput.type = Types::GetTagKeysInput
    GetTagKeysOutput.add_member(:pagination_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'PaginationToken', traits: {"smithy.api#documentation" => "<p>A string that indicates that there is more data available than this\n    response contains. To receive the next part of the response, specify this response value \n    as the <code>PaginationToken</code> value in the request for the next page.</p>"}))
    GetTagKeysOutput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>A list of all tag keys in the Amazon Web Services account.</p>"}))
    GetTagKeysOutput.type = Types::GetTagKeysOutput
    GetTagValuesInput.add_member(:pagination_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'PaginationToken', traits: {"smithy.api#documentation" => "<p>Specifies a <code>PaginationToken</code> response value from a \n    previous request to indicate that you want the next page of results. Leave this parameter empty \n    in your initial request.</p>"}))
    GetTagValuesInput.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>Specifies the tag key for which you want to list all existing values that are\n            currently used in the specified Amazon Web Services Region for the calling account.</p>", "smithy.api#required" => {}}))
    GetTagValuesInput.type = Types::GetTagValuesInput
    GetTagValuesOutput.add_member(:pagination_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'PaginationToken', traits: {"smithy.api#documentation" => "<p>A string that indicates that there is more data available than this\n    response contains. To receive the next part of the response, specify this response value \n    as the <code>PaginationToken</code> value in the request for the next page.</p>"}))
    GetTagValuesOutput.add_member(:tag_values, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValuesOutputList, location_name: 'TagValues', traits: {"smithy.api#documentation" => "<p>A list of all tag values for the specified key currently used in the specified Amazon Web Services\n            Region for the calling account.</p>"}))
    GetTagValuesOutput.type = Types::GetTagValuesOutput
    GroupBy.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GroupByAttribute)
    GroupByAttribute.add_member(:target_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TARGET_ID', traits: {"smithy.api#enumValue" => "TARGET_ID"}))
    GroupByAttribute.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REGION', traits: {"smithy.api#enumValue" => "REGION"}))
    GroupByAttribute.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_TYPE', traits: {"smithy.api#enumValue" => "RESOURCE_TYPE"}))
    InternalServiceException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    InternalServiceException.type = Types::InternalServiceException
    InvalidParameterException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    InvalidParameterException.type = Types::InvalidParameterException
    PaginationTokenExpiredException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    PaginationTokenExpiredException.type = Types::PaginationTokenExpiredException
    RegionFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Region)
    ResourceARNListForGet.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN)
    ResourceARNListForTagUntag.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN)
    ResourceTagMapping.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARN, location_name: 'ResourceARN', traits: {"smithy.api#documentation" => "<p>The ARN of the resource.</p>"}))
    ResourceTagMapping.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags that have been applied to one or more Amazon Web Services resources.</p>"}))
    ResourceTagMapping.add_member(:compliance_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ComplianceDetails, location_name: 'ComplianceDetails', traits: {"smithy.api#documentation" => "<p>Information that shows whether a resource is compliant with the effective tag policy,\n            including details on any noncompliant tag keys.</p>"}))
    ResourceTagMapping.type = Types::ResourceTagMapping
    ResourceTagMappingList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceTagMapping)
    ResourceTypeFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceType)
    StartReportCreationInput.add_member(:s3_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 'S3Bucket', traits: {"smithy.api#documentation" => "<p>The name of the Amazon S3 bucket where the report will be stored; for example:</p>\n         <p>\n            <code>awsexamplebucket</code>\n         </p>\n         <p>For more information on S3 bucket requirements, including an example bucket policy,\n            see the example S3 bucket policy on this page.</p>", "smithy.api#required" => {}}))
    StartReportCreationInput.type = Types::StartReportCreationInput
    StartReportCreationOutput.type = Types::StartReportCreationOutput
    Summary.add_member(:last_updated, Smithy::Schema::Shapes::ShapeRef.new(shape: LastUpdated, location_name: 'LastUpdated', traits: {"smithy.api#documentation" => "<p>The timestamp that shows when this summary was generated in this Region. </p>"}))
    Summary.add_member(:target_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetId, location_name: 'TargetId', traits: {"smithy.api#documentation" => "<p>The account identifier or the root identifier of the organization. If you don't know\n            the root ID, you can call the Organizations <a href=\"https://docs.aws.amazon.com/organizations/latest/APIReference/API_ListRoots.html\">ListRoots</a> API.</p>"}))
    Summary.add_member(:target_id_type, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetIdType, location_name: 'TargetIdType', traits: {"smithy.api#documentation" => "<p>Whether the target is an account, an OU, or the organization root.</p>"}))
    Summary.add_member(:region, Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'Region', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services Region that the summary applies to.</p>"}))
    Summary.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services resource type.</p>"}))
    Summary.add_member(:non_compliant_resources, Smithy::Schema::Shapes::ShapeRef.new(shape: NonCompliantResources, location_name: 'NonCompliantResources', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The count of noncompliant resources.</p>"}))
    Summary.type = Types::Summary
    SummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Summary)
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>One part of a key-value pair that makes up a tag. A key is a general label \n    that acts like a category for more specific tag values.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'Value', traits: {"smithy.api#documentation" => "<p>One part of a key-value pair that make up a tag. A value acts as a \n    descriptor within a tag category (key). The value can be empty or null.</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagFilter.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>One part of a key-value pair that makes up a tag. A key is a general label \n    that acts like a category for more specific tag values.</p>"}))
    TagFilter.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValueList, location_name: 'Values', traits: {"smithy.api#documentation" => "<p>One part of a key-value pair that make up a tag. A value acts as a \n    descriptor within a tag category (key). The value can be empty or null.</p>"}))
    TagFilter.type = Types::TagFilter
    TagFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagFilter)
    TagKeyFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagKeyListForUntag.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourcesInput.add_member(:resource_arn_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARNListForTagUntag, location_name: 'ResourceARNList', traits: {"smithy.api#documentation" => "<p>Specifies the list of ARNs of the resources that you want to apply tags to.</p>\n         <p>An ARN (Amazon Resource Name) uniquely identifies a resource. For more information,\n            see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon\n                Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services\n                General Reference</i>.</p>", "smithy.api#required" => {}}))
    TagResourcesInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Specifies a list of tags that you want to add to the specified resources. A tag\n            consists of a key and a value that you define.</p>", "smithy.api#required" => {}}))
    TagResourcesInput.type = Types::TagResourcesInput
    TagResourcesOutput.add_member(:failed_resources_map, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedResourcesMap, location_name: 'FailedResourcesMap', traits: {"smithy.api#documentation" => "<p>A map containing a key-value pair for each failed item that couldn't be tagged. The\n            key is the ARN of the failed resource. The value is a <code>FailureInfo</code> object\n            that contains an error code, a status code, and an error message. If there are no\n            errors, the <code>FailedResourcesMap</code> is empty.</p>"}))
    TagResourcesOutput.type = Types::TagResourcesOutput
    TagValueList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagValuesOutputList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TargetIdFilterList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TargetId)
    TargetIdType.add_member(:account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCOUNT', traits: {"smithy.api#enumValue" => "ACCOUNT"}))
    TargetIdType.add_member(:ou, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OU', traits: {"smithy.api#enumValue" => "OU"}))
    TargetIdType.add_member(:root, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROOT', traits: {"smithy.api#enumValue" => "ROOT"}))
    ThrottledException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionMessage, location_name: 'Message'))
    ThrottledException.type = Types::ThrottledException
    UntagResourcesInput.add_member(:resource_arn_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceARNListForTagUntag, location_name: 'ResourceARNList', traits: {"smithy.api#documentation" => "<p>Specifies a list of ARNs of the resources that you want to remove tags from.</p>\n         <p>An ARN (Amazon Resource Name) uniquely identifies a resource. For more information,\n            see <a href=\"https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html\">Amazon\n                Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services\n                General Reference</i>.</p>", "smithy.api#required" => {}}))
    UntagResourcesInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyListForUntag, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>Specifies a list of tag keys that you want to remove from the specified\n            resources.</p>", "smithy.api#required" => {}}))
    UntagResourcesInput.type = Types::UntagResourcesInput
    UntagResourcesOutput.add_member(:failed_resources_map, Smithy::Schema::Shapes::ShapeRef.new(shape: FailedResourcesMap, location_name: 'FailedResourcesMap', traits: {"smithy.api#documentation" => "<p>A map containing a key-value pair for each failed item that couldn't be untagged. The\n            key is the ARN of the failed resource. The value is a <code>FailureInfo</code> object\n            that contains an error code, a status code, and an error message. If there are no\n            errors, the <code>FailedResourcesMap</code> is empty.</p>"}))
    UntagResourcesOutput.type = Types::UntagResourcesOutput

    ResourceGroupsTaggingAPI20170126 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.resourcegroupstaggingapi#ResourceGroupsTaggingAPI_20170126"
      service.name = "ResourceGroupsTaggingAPI20170126"
      service.version = "2017-01-26"
      service.traits = {"aws.api#service" => {"sdkId" => "Resource Groups Tagging API", "arnNamespace" => "tagging", "cloudFormationName" => "ResourceGroupsTaggingAPI", "cloudTrailEventSource" => "resourcegroupstaggingapi.amazonaws.com", "docId" => "resourcegroupstaggingapi-2017-01-26", "endpointPrefix" => "tagging"}, "aws.auth#sigv4" => {"name" => "tagging"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Resource Groups Tagging API"}
      service.add_operation(:describe_report_creation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroupstaggingapi#DescribeReportCreation"
        operation.name = "DescribeReportCreation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReportCreationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeReportCreationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {}
      end)
      service.add_operation(:get_compliance_summary, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroupstaggingapi#GetComplianceSummary"
        operation.name = "GetComplianceSummary"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetComplianceSummaryInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetComplianceSummaryOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetComplianceSummary.new
      end)
      service.add_operation(:get_resources, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroupstaggingapi#GetResources"
        operation.name = "GetResources"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetResourcesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationTokenExpiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetResources.new
      end)
      service.add_operation(:get_tag_keys, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroupstaggingapi#GetTagKeys"
        operation.name = "GetTagKeys"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTagKeysInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTagKeysOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationTokenExpiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetTagKeys.new
      end)
      service.add_operation(:get_tag_values, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroupstaggingapi#GetTagValues"
        operation.name = "GetTagValues"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTagValuesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetTagValuesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationTokenExpiredException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {}
        operation[:paginator] = Paginators::GetTagValues.new
      end)
      service.add_operation(:start_report_creation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroupstaggingapi#StartReportCreation"
        operation.name = "StartReportCreation"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartReportCreationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartReportCreationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConstraintViolationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resources, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroupstaggingapi#TagResources"
        operation.name = "TagResources"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourcesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourcesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resources, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.resourcegroupstaggingapi#UntagResources"
        operation.name = "UntagResources"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourcesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourcesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServiceException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottledException)
        operation.traits = {}
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
