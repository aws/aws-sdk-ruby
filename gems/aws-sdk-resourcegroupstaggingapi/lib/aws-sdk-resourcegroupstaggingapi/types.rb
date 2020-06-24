# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ResourceGroupsTaggingAPI
  module Types

    # Information that shows whether a resource is compliant with the
    # effective tag policy, including details on any noncompliant tag keys.
    #
    # @!attribute [rw] noncompliant_keys
    #   These tag keys on the resource are noncompliant with the effective
    #   tag policy.
    #   @return [Array<String>]
    #
    # @!attribute [rw] keys_with_noncompliant_values
    #   These are keys defined in the effective policy that are on the
    #   resource with either incorrect case treatment or noncompliant
    #   values.
    #   @return [Array<String>]
    #
    # @!attribute [rw] compliance_status
    #   Whether a resource is compliant with the effective tag policy.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/ComplianceDetails AWS API Documentation
    #
    class ComplianceDetails < Struct.new(
      :noncompliant_keys,
      :keys_with_noncompliant_values,
      :compliance_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The target of the operation is currently being modified by a different
    # request. Try again later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/ConcurrentModificationException AWS API Documentation
    #
    class ConcurrentModificationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied because performing this operation violates a
    # constraint.
    #
    # Some of the reasons in the following list might not apply to this
    # specific operation.
    #
    # * You must meet the prerequisites for using tag policies. For
    #   information, see [Prerequisites and Permissions for Using Tag
    #   Policies][1] in the *AWS Organizations User Guide.*
    #
    # * You must enable the tag policies service principal
    #   (`tagpolicies.tag.amazonaws.com`) to integrate with AWS
    #   Organizations For information, see [EnableAWSServiceAccess][2].
    #
    # * You must have a tag policy attached to the organization root, an OU,
    #   or an account.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies-prereqs.html
    # [2]: http://docs.aws.amazon.com/organizations/latest/APIReference/API_EnableAWSServiceAccess.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/ConstraintViolationException AWS API Documentation
    #
    class ConstraintViolationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/DescribeReportCreationInput AWS API Documentation
    #
    class DescribeReportCreationInput < Aws::EmptyStructure; end

    # @!attribute [rw] status
    #   Reports the status of the operation.
    #
    #   The operation status can be one of the following:
    #
    #   * `RUNNING` - Report creation is in progress.
    #
    #   * `SUCCEEDED` - Report creation is complete. You can open the report
    #     from the Amazon S3 bucket that you specified when you ran
    #     `StartReportCreation`.
    #
    #   * `FAILED` - Report creation timed out or the Amazon S3 bucket is
    #     not accessible.
    #
    #   * `NO REPORT` - No report was generated in the last 90 days.
    #   @return [String]
    #
    # @!attribute [rw] s3_location
    #   The path to the Amazon S3 bucket where the report was stored on
    #   creation.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   Details of the common errors that all operations return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/DescribeReportCreationOutput AWS API Documentation
    #
    class DescribeReportCreationOutput < Struct.new(
      :status,
      :s3_location,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the errors that are returned for each failed
    # resource. This information can include `InternalServiceException` and
    # `InvalidParameterException` errors. It can also include any valid
    # error code returned by the AWS service that hosts the resource that
    # the ARN key represents.
    #
    # The following are common error codes that you might receive from other
    # AWS services:
    #
    # * **InternalServiceException** – This can mean that the Resource
    #   Groups Tagging API didn't receive a response from another AWS
    #   service. It can also mean the the resource type in the request is
    #   not supported by the Resource Groups Tagging API. In these cases,
    #   it's safe to retry the request and then call [GetResources][1] to
    #   verify the changes.
    #
    # * **AccessDeniedException** – This can mean that you need permission
    #   to calling tagging operations in the AWS service that contains the
    #   resource. For example, to use the Resource Groups Tagging API to tag
    #   a CloudWatch alarm resource, you need permission to call [
    #   `TagResources` ][2] *and* [ `TagResource` ][3] in the CloudWatch
    #   API.
    #
    # For more information on errors that are generated from other AWS
    # services, see the documentation for that service.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/API_GetResources.html
    # [2]: http://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/API_TagResources.html
    # [3]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_TagResource.html
    #
    # @!attribute [rw] status_code
    #   The HTTP status code of the common error.
    #   @return [Integer]
    #
    # @!attribute [rw] error_code
    #   The code of the common error. Valid values include
    #   `InternalServiceException`, `InvalidParameterException`, and any
    #   valid error code returned by the AWS service that hosts the resource
    #   that you want to tag.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The message of the common error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/FailureInfo AWS API Documentation
    #
    class FailureInfo < Struct.new(
      :status_code,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetComplianceSummaryInput
    #   data as a hash:
    #
    #       {
    #         target_id_filters: ["TargetId"],
    #         region_filters: ["Region"],
    #         resource_type_filters: ["AmazonResourceType"],
    #         tag_key_filters: ["TagKey"],
    #         group_by: ["TARGET_ID"], # accepts TARGET_ID, REGION, RESOURCE_TYPE
    #         max_results: 1,
    #         pagination_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] target_id_filters
    #   The target identifiers (usually, specific account IDs) to limit the
    #   output by. If you use this parameter, the count of returned
    #   noncompliant resources includes only resources with the specified
    #   target IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] region_filters
    #   A list of Regions to limit the output by. If you use this parameter,
    #   the count of returned noncompliant resources includes only resources
    #   in the specified Regions.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_type_filters
    #   The constraints on the resources that you want returned. The format
    #   of each resource type is `service[:resourceType]`. For example,
    #   specifying a resource type of `ec2` returns all Amazon EC2 resources
    #   (which includes EC2 instances). Specifying a resource type of
    #   `ec2:instance` returns only EC2 instances.
    #
    #   The string for each service name and resource type is the same as
    #   that embedded in a resource's Amazon Resource Name (ARN). Consult
    #   the *AWS General Reference* for the following:
    #
    #   * For a list of service name strings, see [AWS Service
    #     Namespaces][1].
    #
    #   * For resource type strings, see [Example ARNs][2].
    #
    #   * For more information about ARNs, see [Amazon Resource Names (ARNs)
    #     and AWS Service Namespaces][3].
    #
    #   You can specify multiple resource types by using an array. The array
    #   can include up to 100 items. Note that the length constraint
    #   requirement applies to each resource type filter.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces
    #   [2]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arns-syntax
    #   [3]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] tag_key_filters
    #   A list of tag keys to limit the output by. If you use this
    #   parameter, the count of returned noncompliant resources includes
    #   only resources that have the specified tag keys.
    #   @return [Array<String>]
    #
    # @!attribute [rw] group_by
    #   A list of attributes to group the counts of noncompliant resources
    #   by. If supplied, the counts are sorted by those attributes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   A limit that restricts the number of results that are returned per
    #   page.
    #   @return [Integer]
    #
    # @!attribute [rw] pagination_token
    #   A string that indicates that additional data is available. Leave
    #   this value empty for your initial request. If the response includes
    #   a `PaginationToken`, use that string for this value to request an
    #   additional page of data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/GetComplianceSummaryInput AWS API Documentation
    #
    class GetComplianceSummaryInput < Struct.new(
      :target_id_filters,
      :region_filters,
      :resource_type_filters,
      :tag_key_filters,
      :group_by,
      :max_results,
      :pagination_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] summary_list
    #   A table that shows counts of noncompliant resources.
    #   @return [Array<Types::Summary>]
    #
    # @!attribute [rw] pagination_token
    #   A string that indicates that the response contains more data than
    #   can be returned in a single response. To receive additional data,
    #   specify this string for the `PaginationToken` value in a subsequent
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/GetComplianceSummaryOutput AWS API Documentation
    #
    class GetComplianceSummaryOutput < Struct.new(
      :summary_list,
      :pagination_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetResourcesInput
    #   data as a hash:
    #
    #       {
    #         pagination_token: "PaginationToken",
    #         tag_filters: [
    #           {
    #             key: "TagKey",
    #             values: ["TagValue"],
    #           },
    #         ],
    #         resources_per_page: 1,
    #         tags_per_page: 1,
    #         resource_type_filters: ["AmazonResourceType"],
    #         include_compliance_details: false,
    #         exclude_compliant_resources: false,
    #       }
    #
    # @!attribute [rw] pagination_token
    #   A string that indicates that additional data is available. Leave
    #   this value empty for your initial request. If the response includes
    #   a `PaginationToken`, use that string for this value to request an
    #   additional page of data.
    #   @return [String]
    #
    # @!attribute [rw] tag_filters
    #   A list of TagFilters (keys and values). Each TagFilter specified
    #   must contain a key with values as optional. A request can include up
    #   to 50 keys, and each key can include up to 20 values.
    #
    #   Note the following when deciding how to use TagFilters:
    #
    #   * If you *do* specify a TagFilter, the response returns only those
    #     resources that are currently associated with the specified tag.
    #
    #   * If you *don't* specify a TagFilter, the response includes all
    #     resources that were ever associated with tags. Resources that
    #     currently don't have associated tags are shown with an empty tag
    #     set, like this: `"Tags": []`.
    #
    #   * If you specify more than one filter in a single request, the
    #     response returns only those resources that satisfy all specified
    #     filters.
    #
    #   * If you specify a filter that contains more than one value for a
    #     key, the response returns resources that match any of the
    #     specified values for that key.
    #
    #   * If you don't specify any values for a key, the response returns
    #     resources that are tagged with that key irrespective of the value.
    #
    #     For example, for filters: filter1 = \\\{key1, \\\{value1\\}\\},
    #     filter2 = \\\{key2, \\\{value2,value3,value4\\}\\} , filter3 =
    #     \\\{key3\\}:
    #
    #     * GetResources( \\\{filter1\\} ) returns resources tagged with
    #       key1=value1
    #
    #     * GetResources( \\\{filter2\\} ) returns resources tagged with
    #       key2=value2 or key2=value3 or key2=value4
    #
    #     * GetResources( \\\{filter3\\} ) returns resources tagged with any
    #       tag containing key3 as its tag key, irrespective of its value
    #
    #     * GetResources( \\\{filter1,filter2,filter3\\} ) returns resources
    #       tagged with ( key1=value1) and ( key2=value2 or key2=value3 or
    #       key2=value4) and (key3, irrespective of the value)
    #   @return [Array<Types::TagFilter>]
    #
    # @!attribute [rw] resources_per_page
    #   A limit that restricts the number of resources returned by
    #   GetResources in paginated output. You can set ResourcesPerPage to a
    #   minimum of 1 item and the maximum of 100 items.
    #   @return [Integer]
    #
    # @!attribute [rw] tags_per_page
    #   AWS recommends using `ResourcesPerPage` instead of this parameter.
    #
    #   A limit that restricts the number of tags (key and value pairs)
    #   returned by GetResources in paginated output. A resource with no
    #   tags is counted as having one tag (one key and value pair).
    #
    #   `GetResources` does not split a resource and its associated tags
    #   across pages. If the specified `TagsPerPage` would cause such a
    #   break, a `PaginationToken` is returned in place of the affected
    #   resource and its tags. Use that token in another request to get the
    #   remaining data. For example, if you specify a `TagsPerPage` of `100`
    #   and the account has 22 resources with 10 tags each (meaning that
    #   each resource has 10 key and value pairs), the output will consist
    #   of three pages. The first page displays the first 10 resources, each
    #   with its 10 tags. The second page displays the next 10 resources,
    #   each with its 10 tags. The third page displays the remaining 2
    #   resources, each with its 10 tags.
    #
    #   You can set `TagsPerPage` to a minimum of 100 items and the maximum
    #   of 500 items.
    #   @return [Integer]
    #
    # @!attribute [rw] resource_type_filters
    #   The constraints on the resources that you want returned. The format
    #   of each resource type is `service[:resourceType]`. For example,
    #   specifying a resource type of `ec2` returns all Amazon EC2 resources
    #   (which includes EC2 instances). Specifying a resource type of
    #   `ec2:instance` returns only EC2 instances.
    #
    #   The string for each service name and resource type is the same as
    #   that embedded in a resource's Amazon Resource Name (ARN). Consult
    #   the *AWS General Reference* for the following:
    #
    #   * For a list of service name strings, see [AWS Service
    #     Namespaces][1].
    #
    #   * For resource type strings, see [Example ARNs][2].
    #
    #   * For more information about ARNs, see [Amazon Resource Names (ARNs)
    #     and AWS Service Namespaces][3].
    #
    #   You can specify multiple resource types by using an array. The array
    #   can include up to 100 items. Note that the length constraint
    #   requirement applies to each resource type filter.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces
    #   [2]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arns-syntax
    #   [3]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] include_compliance_details
    #   Specifies whether to include details regarding the compliance with
    #   the effective tag policy. Set this to `true` to determine whether
    #   resources are compliant with the tag policy and to get details.
    #   @return [Boolean]
    #
    # @!attribute [rw] exclude_compliant_resources
    #   Specifies whether to exclude resources that are compliant with the
    #   tag policy. Set this to `true` if you are interested in retrieving
    #   information on noncompliant resources only.
    #
    #   You can use this parameter only if the `IncludeComplianceDetails`
    #   parameter is also set to `true`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/GetResourcesInput AWS API Documentation
    #
    class GetResourcesInput < Struct.new(
      :pagination_token,
      :tag_filters,
      :resources_per_page,
      :tags_per_page,
      :resource_type_filters,
      :include_compliance_details,
      :exclude_compliant_resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pagination_token
    #   A string that indicates that the response contains more data than
    #   can be returned in a single response. To receive additional data,
    #   specify this string for the `PaginationToken` value in a subsequent
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] resource_tag_mapping_list
    #   A list of resource ARNs and the tags (keys and values) associated
    #   with each.
    #   @return [Array<Types::ResourceTagMapping>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/GetResourcesOutput AWS API Documentation
    #
    class GetResourcesOutput < Struct.new(
      :pagination_token,
      :resource_tag_mapping_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetTagKeysInput
    #   data as a hash:
    #
    #       {
    #         pagination_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] pagination_token
    #   A string that indicates that additional data is available. Leave
    #   this value empty for your initial request. If the response includes
    #   a `PaginationToken`, use that string for this value to request an
    #   additional page of data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/GetTagKeysInput AWS API Documentation
    #
    class GetTagKeysInput < Struct.new(
      :pagination_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pagination_token
    #   A string that indicates that the response contains more data than
    #   can be returned in a single response. To receive additional data,
    #   specify this string for the `PaginationToken` value in a subsequent
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of all tag keys in the AWS account.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/GetTagKeysOutput AWS API Documentation
    #
    class GetTagKeysOutput < Struct.new(
      :pagination_token,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetTagValuesInput
    #   data as a hash:
    #
    #       {
    #         pagination_token: "PaginationToken",
    #         key: "TagKey", # required
    #       }
    #
    # @!attribute [rw] pagination_token
    #   A string that indicates that additional data is available. Leave
    #   this value empty for your initial request. If the response includes
    #   a `PaginationToken`, use that string for this value to request an
    #   additional page of data.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The key for which you want to list all existing values in the
    #   specified Region for the AWS account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/GetTagValuesInput AWS API Documentation
    #
    class GetTagValuesInput < Struct.new(
      :pagination_token,
      :key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pagination_token
    #   A string that indicates that the response contains more data than
    #   can be returned in a single response. To receive additional data,
    #   specify this string for the `PaginationToken` value in a subsequent
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] tag_values
    #   A list of all tag values for the specified key in the AWS account.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/GetTagValuesOutput AWS API Documentation
    #
    class GetTagValuesOutput < Struct.new(
      :pagination_token,
      :tag_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request processing failed because of an unknown error, exception,
    # or failure. You can retry the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/InternalServiceException AWS API Documentation
    #
    class InternalServiceException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This error indicates one of the following:
    #
    # * A parameter is missing.
    #
    # * A malformed string was supplied for the request parameter.
    #
    # * An out-of-range value was supplied for the request parameter.
    #
    # * The target ID is invalid, unsupported, or doesn't exist.
    #
    # * You can't access the Amazon S3 bucket for report storage. For more
    #   information, see [Additional Requirements for Organization-wide Tag
    #   Compliance Reports][1] in the *AWS Organizations User Guide.*
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies-prereqs.html#bucket-policies-org-report
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/InvalidParameterException AWS API Documentation
    #
    class InvalidParameterException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A `PaginationToken` is valid for a maximum of 15 minutes. Your request
    # was denied because the specified `PaginationToken` has expired.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/PaginationTokenExpiredException AWS API Documentation
    #
    class PaginationTokenExpiredException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of resource ARNs and the tags (keys and values) that are
    # associated with each.
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags that have been applied to one or more AWS resources.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] compliance_details
    #   Information that shows whether a resource is compliant with the
    #   effective tag policy, including details on any noncompliant tag
    #   keys.
    #   @return [Types::ComplianceDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/ResourceTagMapping AWS API Documentation
    #
    class ResourceTagMapping < Struct.new(
      :resource_arn,
      :tags,
      :compliance_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartReportCreationInput
    #   data as a hash:
    #
    #       {
    #         s3_bucket: "S3Bucket", # required
    #       }
    #
    # @!attribute [rw] s3_bucket
    #   The name of the Amazon S3 bucket where the report will be stored;
    #   for example:
    #
    #   `awsexamplebucket`
    #
    #   For more information on S3 bucket requirements, including an example
    #   bucket policy, see the example S3 bucket policy on this page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/StartReportCreationInput AWS API Documentation
    #
    class StartReportCreationInput < Struct.new(
      :s3_bucket)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/StartReportCreationOutput AWS API Documentation
    #
    class StartReportCreationOutput < Aws::EmptyStructure; end

    # A count of noncompliant resources.
    #
    # @!attribute [rw] last_updated
    #   The timestamp that shows when this summary was generated in this
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] target_id
    #   The account identifier or the root identifier of the organization.
    #   If you don't know the root ID, you can call the AWS Organizations
    #   [ListRoots][1] API.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/organizations/latest/APIReference/API_ListRoots.html
    #   @return [String]
    #
    # @!attribute [rw] target_id_type
    #   Whether the target is an account, an OU, or the organization root.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The AWS Region that the summary applies to.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The AWS resource type.
    #   @return [String]
    #
    # @!attribute [rw] non_compliant_resources
    #   The count of noncompliant resources.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/Summary AWS API Documentation
    #
    class Summary < Struct.new(
      :last_updated,
      :target_id,
      :target_id_type,
      :region,
      :resource_type,
      :non_compliant_resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metadata that you apply to AWS resources to help you categorize
    # and organize them. Each tag consists of a key and a value, both of
    # which you define. For more information, see [Tagging AWS Resources][1]
    # in the *AWS General Reference*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #
    # @!attribute [rw] key
    #   One part of a key-value pair that makes up a tag. A key is a general
    #   label that acts like a category for more specific tag values.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   One part of a key-value pair that make up a tag. A value acts as a
    #   descriptor within a tag category (key). The value can be empty or
    #   null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of tags (keys and values) that are used to specify the
    # associated resources.
    #
    # @note When making an API call, you may pass TagFilter
    #   data as a hash:
    #
    #       {
    #         key: "TagKey",
    #         values: ["TagValue"],
    #       }
    #
    # @!attribute [rw] key
    #   One part of a key-value pair that makes up a tag. A key is a general
    #   label that acts like a category for more specific tag values.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   One part of a key-value pair that make up a tag. A value acts as a
    #   descriptor within a tag category (key). The value can be empty or
    #   null.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/TagFilter AWS API Documentation
    #
    class TagFilter < Struct.new(
      :key,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourcesInput
    #   data as a hash:
    #
    #       {
    #         resource_arn_list: ["ResourceARN"], # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn_list
    #   A list of ARNs. An ARN (Amazon Resource Name) uniquely identifies a
    #   resource. For more information, see [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tags that you want to add to the specified resources. A tag
    #   consists of a key and a value that you define.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/TagResourcesInput AWS API Documentation
    #
    class TagResourcesInput < Struct.new(
      :resource_arn_list,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_resources_map
    #   A map containing a key-value pair for each failed item that
    #   couldn't be tagged. The key is the ARN of the failed resource. The
    #   value is a `FailureInfo` object that contains an error code, a
    #   status code, and an error message. If there are no errors, the
    #   `FailedResourcesMap` is empty.
    #   @return [Hash<String,Types::FailureInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/TagResourcesOutput AWS API Documentation
    #
    class TagResourcesOutput < Struct.new(
      :failed_resources_map)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied to limit the frequency of submitted requests.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/ThrottledException AWS API Documentation
    #
    class ThrottledException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourcesInput
    #   data as a hash:
    #
    #       {
    #         resource_arn_list: ["ResourceARN"], # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn_list
    #   A list of ARNs. An ARN (Amazon Resource Name) uniquely identifies a
    #   resource. For more information, see [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] tag_keys
    #   A list of the tag keys that you want to remove from the specified
    #   resources.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/UntagResourcesInput AWS API Documentation
    #
    class UntagResourcesInput < Struct.new(
      :resource_arn_list,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_resources_map
    #   Details of resources that could not be untagged. An error code,
    #   status code, and error message are returned for each failed item.
    #   @return [Hash<String,Types::FailureInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/resourcegroupstaggingapi-2017-01-26/UntagResourcesOutput AWS API Documentation
    #
    class UntagResourcesOutput < Struct.new(
      :failed_resources_map)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
