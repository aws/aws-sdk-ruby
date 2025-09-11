# frozen_string_literal: true

# This is generated code!

module Aws::ResourceGroupsTaggingAPI
  # This module contains the types returned by client operations.
  module Types

    # <p>Information that shows whether a resource is compliant with the effective tag policy,
    #             including details on any noncompliant tag keys.</p>
    # @!attribute noncompliant_keys
    #   <p>These tag keys on the resource are noncompliant with the effective tag policy.</p>
    #   @return [Array<String>]
    # @!attribute keys_with_noncompliant_values
    #   <p>These are keys defined in the effective policy that are on the resource with either
    #               incorrect case treatment or noncompliant values. </p>
    #   @return [Array<String>]
    # @!attribute compliance_status
    #   <p>Whether a resource is compliant with the effective tag policy.</p>
    #   @return [Boolean]
    class ComplianceDetails < Struct.new(
      :noncompliant_keys,
      :keys_with_noncompliant_values,
      :compliance_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The target of the operation is currently being modified by a different request. Try
    #             again later.</p>
    # @!attribute message
    #   @return [String]
    class ConcurrentModificationException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied because performing this operation violates a constraint. </p>
    #          <p>Some of the reasons in the following list might not apply to this specific
    #             operation.</p>
    #          <ul>
    #             <li>
    #                <p>You must meet the prerequisites for using tag policies. For information, see
    #                         <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies-prereqs.html">Prerequisites and Permissions for Using Tag Policies</a> in the
    #                         <i>Organizations User Guide.</i>
    #                </p>
    #             </li>
    #             <li>
    #                <p>You must enable the tag policies service principal
    #                         (<code>tagpolicies.tag.amazonaws.com</code>) to integrate with Organizations For
    #                     information, see <a href="https://docs.aws.amazon.com/organizations/latest/APIReference/API_EnableAWSServiceAccess.html">EnableAWSServiceAccess</a>.</p>
    #             </li>
    #             <li>
    #                <p>You must have a tag policy attached to the organization root, an OU, or an
    #                     account.</p>
    #             </li>
    #          </ul>
    # @!attribute message
    #   @return [String]
    class ConstraintViolationException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DescribeReportCreationInput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>Reports the status of the operation.</p>
    #            <p>The operation status can be one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>RUNNING</code> - Report creation is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUCCEEDED</code> - Report creation is complete. You can open the report
    #                       from the Amazon S3 bucket that you specified when you ran
    #                           <code>StartReportCreation</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code> - Report creation timed out or the Amazon S3 bucket is not
    #                       accessible. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NO REPORT</code> - No report was generated in the last 90 days.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute s3_location
    #   <p>The path to the Amazon S3 bucket where the report was stored on creation.</p>
    #   @return [String]
    # @!attribute start_date
    #   <p>The date and time that the report was started. </p>
    #   @return [String]
    # @!attribute error_message
    #   <p>Details of the common errors that all operations return.</p>
    #   @return [String]
    class DescribeReportCreationOutput < Struct.new(
      :status,
      :s3_location,
      :start_date,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the errors that are returned for each failed resource. This
    #             information can include <code>InternalServiceException</code> and
    #                 <code>InvalidParameterException</code> errors. It can also include any valid error
    #             code returned by the Amazon Web Services service that hosts the resource that the ARN key
    #             represents.</p>
    #          <p>The following are common error codes that you might receive from other Amazon Web Services
    #             services:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>InternalServiceException</b> – This can
    #                     mean that the Resource Groups Tagging API didn't receive a response from another Amazon Web Services service. It
    #                     can also mean that the resource type in the request is not supported by the
    #                     Resource Groups Tagging API. In these cases, it's safe to retry the request and then call <a href="https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/API_GetResources.html">GetResources</a> to verify the changes.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>AccessDeniedException</b> – This can mean
    #                     that you need permission to call the tagging operations in the Amazon Web Services service
    #                     that contains the resource. For example, to use the Resource Groups Tagging API to tag a Amazon CloudWatch
    #                     alarm resource, you need permission to call both <a href="https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/API_TagResources.html">
    #                      <code>TagResources</code>
    #                   </a>
    #                   <i>and</i>
    #                   <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_TagResource.html">
    #                      <code>TagResource</code>
    #                   </a> in the CloudWatch API. </p>
    #             </li>
    #          </ul>
    #          <p>For more information on errors that are generated from other Amazon Web Services services, see the
    #             documentation for that service. </p>
    # @!attribute status_code
    #   <p>The HTTP status code of the common error.</p>
    #   @return [Integer]
    # @!attribute error_code
    #   <p>The code of the common error. Valid values include
    #                   <code>InternalServiceException</code>, <code>InvalidParameterException</code>, and
    #               any valid error code returned by the Amazon Web Services service that hosts the resource that you want
    #               to tag.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The message of the common error.</p>
    #   @return [String]
    class FailureInfo < Struct.new(
      :status_code,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:status_code] = 0 unless options.key?(:status_code)
        super
      end
    end

    # @!attribute target_id_filters
    #   <p>Specifies target identifiers (usually, specific account IDs) to limit the output by.
    #               If you use this parameter, the count of returned noncompliant resources includes only
    #               resources with the specified target IDs.</p>
    #   @return [Array<String>]
    # @!attribute region_filters
    #   <p>Specifies a list of Amazon Web Services Regions to limit the output to. If you use this parameter,
    #               the count of returned noncompliant resources includes only resources in the specified
    #               Regions.</p>
    #   @return [Array<String>]
    # @!attribute resource_type_filters
    #   <p>Specifies that you want the response to include information for only resources of the
    #               specified types. The format of each resource type is
    #               <code>service[:resourceType]</code>. For example, specifying a resource type of
    #                   <code>ec2</code> returns all Amazon EC2 resources (which includes EC2 instances).
    #               Specifying a resource type of <code>ec2:instance</code> returns only EC2
    #               instances.</p>
    #            <p>The string for each service name and resource type is the same as that embedded in a
    #               resource's Amazon Resource Name (ARN). Consult the <i>
    #                  <a href="https://docs.aws.amazon.com/general/latest/gr/">Amazon Web Services General Reference</a>
    #               </i>
    #               for the following:</p>
    #            <ul>
    #               <li>
    #                  <p>For a list of service name strings, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces">Amazon Web Services Service Namespaces</a>.</p>
    #               </li>
    #               <li>
    #                  <p>For resource type strings, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arns-syntax">Example
    #                           ARNs</a>.</p>
    #               </li>
    #               <li>
    #                  <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names
    #                           (ARNs) and Amazon Web Services Service Namespaces</a>.</p>
    #               </li>
    #            </ul>
    #            <p>You can specify multiple resource types by using a comma separated array. The array
    #               can include up to 100 items. Note that the length constraint requirement applies to each
    #               resource type filter. </p>
    #   @return [Array<String>]
    # @!attribute tag_key_filters
    #   <p>Specifies that you want the response to include information for only resources that
    #               have tags with the specified tag keys. If you use this parameter, the count of returned
    #               noncompliant resources includes only resources that have the specified tag keys.</p>
    #   @return [Array<String>]
    # @!attribute group_by
    #   <p>Specifies a list of attributes to group the counts of noncompliant resources by. If
    #               supplied, the counts are sorted by those attributes.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>Specifies the maximum number of results to be returned in each page. A 
    #       query can return fewer than this maximum, even if there are more results still to return. You
    #       should always check the <code>PaginationToken</code> response value to see if there are more
    #       results. You can specify a minimum of 1 and a maximum value of 100.</p>
    #   @return [Integer]
    # @!attribute pagination_token
    #   <p>Specifies a <code>PaginationToken</code> response value from a 
    #       previous request to indicate that you want the next page of results. Leave this parameter empty 
    #       in your initial request.</p>
    #   @return [String]
    class GetComplianceSummaryInput < Struct.new(
      :target_id_filters,
      :region_filters,
      :resource_type_filters,
      :tag_key_filters,
      :group_by,
      :max_results,
      :pagination_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute summary_list
    #   <p>A table that shows counts of noncompliant resources.</p>
    #   @return [Array<Types::Summary>]
    # @!attribute pagination_token
    #   <p>A string that indicates that there is more data available than this
    #       response contains. To receive the next part of the response, specify this response value 
    #       as the <code>PaginationToken</code> value in the request for the next page.</p>
    #   @return [String]
    class GetComplianceSummaryOutput < Struct.new(
      :summary_list,
      :pagination_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pagination_token
    #   <p>Specifies a <code>PaginationToken</code> response value from a 
    #       previous request to indicate that you want the next page of results. Leave this parameter empty 
    #       in your initial request.</p>
    #   @return [String]
    # @!attribute tag_filters
    #   <p>Specifies a list of TagFilters (keys and values) to restrict the output to only those
    #               resources that have tags with the specified keys and, if included, the specified values.
    #               Each <code>TagFilter</code> must contain a key with values optional. A request can
    #               include up to 50 keys, and each key can include up to 20 values. </p>
    #            <p>Note the following when deciding how to use TagFilters:</p>
    #            <ul>
    #               <li>
    #                  <p>If you <i>don't</i> specify a <code>TagFilter</code>, the
    #                       response includes all resources that are currently tagged or ever had a tag.
    #                       Resources that currently don't have tags are shown with an empty tag set, like
    #                       this: <code>"Tags": []</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you specify more than one filter in a single request, the response returns
    #                       only those resources that satisfy all filters.</p>
    #               </li>
    #               <li>
    #                  <p>If you specify a filter that contains more than one value for a key, the
    #                       response returns resources that match <i>any</i> of the specified
    #                       values for that key.</p>
    #               </li>
    #               <li>
    #                  <p>If you don't specify a value for a key, the response returns all resources
    #                       that are tagged with that key, with any or no value.</p>
    #                  <p>For example, for the following filters: <code>filter1= {keyA,{value1}}</code>,
    #                           <code>filter2={keyB,{value2,value3,value4}}</code>, <code>filter3=
    #                           {keyC}</code>:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>GetResources({filter1})</code> returns resources tagged with
    #                                   <code>key1=value1</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>GetResources({filter2})</code> returns resources tagged with
    #                                   <code>key2=value2</code> or <code>key2=value3</code> or
    #                                   <code>key2=value4</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>GetResources({filter3})</code> returns resources tagged with any
    #                               tag with the key <code>key3</code>, and with any or no value</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>GetResources({filter1,filter2,filter3})</code> returns resources
    #                               tagged with <code>(key1=value1) and (key2=value2 or key2=value3 or
    #                                   key2=value4) and (key3, any or no value)</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #   @return [Array<Types::TagFilter>]
    # @!attribute resources_per_page
    #   <p>Specifies the maximum number of results to be returned in each page. A 
    #       query can return fewer than this maximum, even if there are more results still to return. You
    #       should always check the <code>PaginationToken</code> response value to see if there are more
    #       results. You can specify a minimum of 1 and a maximum value of 100.</p>
    #   @return [Integer]
    # @!attribute tags_per_page
    #   <p>Amazon Web Services recommends using <code>ResourcesPerPage</code> instead of this parameter.</p>
    #            <p>A limit that restricts the number of tags (key and value pairs) returned by
    #                   <code>GetResources</code> in paginated output. A resource with no tags is counted as
    #               having one tag (one key and value pair).</p>
    #            <p>
    #               <code>GetResources</code> does not split a resource and its associated tags across
    #               pages. If the specified <code>TagsPerPage</code> would cause such a break, a
    #                   <code>PaginationToken</code> is returned in place of the affected resource and its
    #               tags. Use that token in another request to get the remaining data. For example, if you
    #               specify a <code>TagsPerPage</code> of <code>100</code> and the account has 22 resources
    #               with 10 tags each (meaning that each resource has 10 key and value pairs), the output
    #               will consist of three pages. The first page displays the first 10 resources, each with
    #               its 10 tags. The second page displays the next 10 resources, each with its 10 tags. The
    #               third page displays the remaining 2 resources, each with its 10 tags.</p>
    #            <p>You can set <code>TagsPerPage</code> to a minimum of 100 items up to a maximum of 500
    #               items.</p>
    #   @return [Integer]
    # @!attribute resource_type_filters
    #   <p>Specifies the resource types that you want included in the response. The format of
    #               each resource type is <code>service[:resourceType]</code>. For example, specifying a
    #               resource type of <code>ec2</code> returns all Amazon EC2 resources (which includes EC2
    #               instances). Specifying a resource type of <code>ec2:instance</code> returns only EC2
    #               instances. </p>
    #            <p>The string for each service name and resource type is the same as that embedded in a
    #               resource's Amazon Resource Name (ARN). For the list of services whose resources you can
    #               use in this parameter, see <a href="https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/supported-services.html">Services that support the Resource Groups Tagging API</a>.</p>
    #            <p>You can specify multiple resource types by using an array. The array can include up to
    #               100 items. Note that the length constraint requirement applies to each resource type
    #               filter. For example, the following string would limit the response to only Amazon EC2
    #               instances, Amazon S3 buckets, or any Audit Manager resource:</p>
    #            <p>
    #               <code>ec2:instance,s3:bucket,auditmanager</code>
    #            </p>
    #   @return [Array<String>]
    # @!attribute include_compliance_details
    #   <p>Specifies whether to include details regarding the compliance with the effective tag
    #               policy. Set this to <code>true</code> to determine whether resources are compliant with
    #               the tag policy and to get details.</p>
    #   @return [Boolean]
    # @!attribute exclude_compliant_resources
    #   <p>Specifies whether to exclude resources that are compliant with the tag policy. Set
    #               this to <code>true</code> if you are interested in retrieving information on
    #               noncompliant resources only.</p>
    #            <p>You can use this parameter only if the <code>IncludeComplianceDetails</code> parameter
    #               is also set to <code>true</code>.</p>
    #   @return [Boolean]
    # @!attribute resource_arn_list
    #   <p>Specifies a list of ARNs of resources for which you want to retrieve tag data. You
    #               can't specify both this parameter and any of the pagination parameters
    #                   (<code>ResourcesPerPage</code>, <code>TagsPerPage</code>,
    #                   <code>PaginationToken</code>) in the same request. If you specify both, you get an
    #                   <code>Invalid Parameter</code> exception.</p>
    #            <p>If a resource specified by this parameter doesn't exist, it doesn't generate an error;
    #               it simply isn't included in the response.</p>
    #            <p>An ARN (Amazon Resource Name) uniquely identifies a resource. For more information,
    #               see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon
    #                   Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the
    #                   <i>Amazon Web Services General Reference</i>.</p>
    #   @return [Array<String>]
    class GetResourcesInput < Struct.new(
      :pagination_token,
      :tag_filters,
      :resources_per_page,
      :tags_per_page,
      :resource_type_filters,
      :include_compliance_details,
      :exclude_compliant_resources,
      :resource_arn_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pagination_token
    #   <p>A string that indicates that there is more data available than this
    #       response contains. To receive the next part of the response, specify this response value 
    #       as the <code>PaginationToken</code> value in the request for the next page.</p>
    #   @return [String]
    # @!attribute resource_tag_mapping_list
    #   <p>A list of resource ARNs and the tags (keys and values) associated with 
    #       each.</p>
    #   @return [Array<Types::ResourceTagMapping>]
    class GetResourcesOutput < Struct.new(
      :pagination_token,
      :resource_tag_mapping_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pagination_token
    #   <p>Specifies a <code>PaginationToken</code> response value from a 
    #       previous request to indicate that you want the next page of results. Leave this parameter empty 
    #       in your initial request.</p>
    #   @return [String]
    class GetTagKeysInput < Struct.new(
      :pagination_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pagination_token
    #   <p>A string that indicates that there is more data available than this
    #       response contains. To receive the next part of the response, specify this response value 
    #       as the <code>PaginationToken</code> value in the request for the next page.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of all tag keys in the Amazon Web Services account.</p>
    #   @return [Array<String>]
    class GetTagKeysOutput < Struct.new(
      :pagination_token,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pagination_token
    #   <p>Specifies a <code>PaginationToken</code> response value from a 
    #       previous request to indicate that you want the next page of results. Leave this parameter empty 
    #       in your initial request.</p>
    #   @return [String]
    # @!attribute key
    #   <p>Specifies the tag key for which you want to list all existing values that are
    #               currently used in the specified Amazon Web Services Region for the calling account.</p>
    #   @return [String]
    class GetTagValuesInput < Struct.new(
      :pagination_token,
      :key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pagination_token
    #   <p>A string that indicates that there is more data available than this
    #       response contains. To receive the next part of the response, specify this response value 
    #       as the <code>PaginationToken</code> value in the request for the next page.</p>
    #   @return [String]
    # @!attribute tag_values
    #   <p>A list of all tag values for the specified key currently used in the specified Amazon Web Services
    #               Region for the calling account.</p>
    #   @return [Array<String>]
    class GetTagValuesOutput < Struct.new(
      :pagination_token,
      :tag_values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request processing failed because of an unknown error, exception, or failure. You
    #             can retry the request.</p>
    # @!attribute message
    #   @return [String]
    class InternalServiceException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This error indicates one of the following:</p>
    #          <ul>
    #             <li>
    #                <p>A parameter is missing.</p>
    #             </li>
    #             <li>
    #                <p>A malformed string was supplied for the request parameter.</p>
    #             </li>
    #             <li>
    #                <p>An out-of-range value was supplied for the request parameter.</p>
    #             </li>
    #             <li>
    #                <p>The target ID is invalid, unsupported, or doesn't exist.</p>
    #             </li>
    #             <li>
    #                <p>You can't access the Amazon S3 bucket for report storage. For more information, see
    #                         <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies-prereqs.html#bucket-policies-org-report">Additional Requirements for Organization-wide Tag Compliance
    #                         Reports</a> in the <i>Organizations User Guide.</i>
    #                </p>
    #             </li>
    #          </ul>
    # @!attribute message
    #   @return [String]
    class InvalidParameterException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A <code>PaginationToken</code> is valid for a maximum of 15 minutes. Your request was
    #             denied because the specified <code>PaginationToken</code> has expired.</p>
    # @!attribute message
    #   @return [String]
    class PaginationTokenExpiredException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A list of resource ARNs and the tags (keys and values) that are associated with
    #             each.</p>
    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags that have been applied to one or more Amazon Web Services resources.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute compliance_details
    #   <p>Information that shows whether a resource is compliant with the effective tag policy,
    #               including details on any noncompliant tag keys.</p>
    #   @return [Types::ComplianceDetails]
    class ResourceTagMapping < Struct.new(
      :resource_arn,
      :tags,
      :compliance_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute s3_bucket
    #   <p>The name of the Amazon S3 bucket where the report will be stored; for example:</p>
    #            <p>
    #               <code>awsexamplebucket</code>
    #            </p>
    #            <p>For more information on S3 bucket requirements, including an example bucket policy,
    #               see the example S3 bucket policy on this page.</p>
    #   @return [String]
    class StartReportCreationInput < Struct.new(
      :s3_bucket,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StartReportCreationOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A count of noncompliant resources.</p>
    # @!attribute last_updated
    #   <p>The timestamp that shows when this summary was generated in this Region. </p>
    #   @return [String]
    # @!attribute target_id
    #   <p>The account identifier or the root identifier of the organization. If you don't know
    #               the root ID, you can call the Organizations <a href="https://docs.aws.amazon.com/organizations/latest/APIReference/API_ListRoots.html">ListRoots</a> API.</p>
    #   @return [String]
    # @!attribute target_id_type
    #   <p>Whether the target is an account, an OU, or the organization root.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region that the summary applies to.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The Amazon Web Services resource type.</p>
    #   @return [String]
    # @!attribute non_compliant_resources
    #   <p>The count of noncompliant resources.</p>
    #   @return [Integer]
    class Summary < Struct.new(
      :last_updated,
      :target_id,
      :target_id_type,
      :region,
      :resource_type,
      :non_compliant_resources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:non_compliant_resources] = 0 unless options.key?(:non_compliant_resources)
        super
      end
    end

    # <p>The metadata that you apply to Amazon Web Services resources to help you categorize and organize
    #             them. Each tag consists of a key and a value, both of which you define. For more
    #             information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services Resources</a> in the <i>Amazon Web Services General Reference</i>.</p>
    # @!attribute key
    #   <p>One part of a key-value pair that makes up a tag. A key is a general label 
    #       that acts like a category for more specific tag values.</p>
    #   @return [String]
    # @!attribute value
    #   <p>One part of a key-value pair that make up a tag. A value acts as a 
    #       descriptor within a tag category (key). The value can be empty or null.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A list of tags (keys and values) that are used to specify the associated
    #             resources.</p>
    # @!attribute key
    #   <p>One part of a key-value pair that makes up a tag. A key is a general label 
    #       that acts like a category for more specific tag values.</p>
    #   @return [String]
    # @!attribute values
    #   <p>One part of a key-value pair that make up a tag. A value acts as a 
    #       descriptor within a tag category (key). The value can be empty or null.</p>
    #   @return [Array<String>]
    class TagFilter < Struct.new(
      :key,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn_list
    #   <p>Specifies the list of ARNs of the resources that you want to apply tags to.</p>
    #            <p>An ARN (Amazon Resource Name) uniquely identifies a resource. For more information,
    #               see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon
    #                   Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services
    #                   General Reference</i>.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>Specifies a list of tags that you want to add to the specified resources. A tag
    #               consists of a key and a value that you define.</p>
    #   @return [Hash<String, String>]
    class TagResourcesInput < Struct.new(
      :resource_arn_list,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute failed_resources_map
    #   <p>A map containing a key-value pair for each failed item that couldn't be tagged. The
    #               key is the ARN of the failed resource. The value is a <code>FailureInfo</code> object
    #               that contains an error code, a status code, and an error message. If there are no
    #               errors, the <code>FailedResourcesMap</code> is empty.</p>
    #   @return [Hash<String, Types::FailureInfo>]
    class TagResourcesOutput < Struct.new(
      :failed_resources_map,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied to limit the frequency of submitted requests.</p>
    # @!attribute message
    #   @return [String]
    class ThrottledException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn_list
    #   <p>Specifies a list of ARNs of the resources that you want to remove tags from.</p>
    #            <p>An ARN (Amazon Resource Name) uniquely identifies a resource. For more information,
    #               see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon
    #                   Resource Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services
    #                   General Reference</i>.</p>
    #   @return [Array<String>]
    # @!attribute tag_keys
    #   <p>Specifies a list of tag keys that you want to remove from the specified
    #               resources.</p>
    #   @return [Array<String>]
    class UntagResourcesInput < Struct.new(
      :resource_arn_list,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute failed_resources_map
    #   <p>A map containing a key-value pair for each failed item that couldn't be untagged. The
    #               key is the ARN of the failed resource. The value is a <code>FailureInfo</code> object
    #               that contains an error code, a status code, and an error message. If there are no
    #               errors, the <code>FailedResourcesMap</code> is empty.</p>
    #   @return [Hash<String, Types::FailureInfo>]
    class UntagResourcesOutput < Struct.new(
      :failed_resources_map,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
