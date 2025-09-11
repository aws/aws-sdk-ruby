# frozen_string_literal: true

# This is generated code!

module Aws::OAM
  # This module contains the types returned by client operations.
  module Types

    # <p>A resource was in an inconsistent state during an update or a deletion.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute amzn_error_type
    #   <p>The name of the exception.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      :amzn_error_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute label_template
    #   <p>Specify a friendly human-readable name to use to identify this source account when you are viewing data from it in the monitoring account.</p> <p>You can use a custom label or use the following variables:</p> <ul> <li> <p> <code>$AccountName</code> is the name of the account</p> </li> <li> <p> <code>$AccountEmail</code> is the globally unique email address of the account</p> </li> <li> <p> <code>$AccountEmailNoDomain</code> is the email address of the account without the domain name</p> </li> </ul> <note> <p>In the Amazon Web Services GovCloud (US-East) and Amazon Web Services GovCloud (US-West) Regions, the only supported option is to use custom labels, and the <code>$AccountName</code>, <code>$AccountEmail</code>, and <code>$AccountEmailNoDomain</code> variables all resolve as <i>account-id</i> instead of the specified variable.</p> </note>
    #   @return [String]
    # @!attribute resource_types
    #   <p>An array of strings that define which types of data that the source account shares with the monitoring account.</p>
    #   @return [Array<String>]
    # @!attribute sink_identifier
    #   <p>The ARN of the sink to use to create this link. You can use <a href="https://docs.aws.amazon.com/OAM/latest/APIReference/API_ListSinks.html">ListSinks</a> to find the ARNs of sinks.</p> <p>For more information about sinks, see <a href="https://docs.aws.amazon.com/OAM/latest/APIReference/API_CreateSink.html">CreateSink</a>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Assigns one or more tags (key-value pairs) to the link. </p> <p>Tags can help you organize and categorize your resources. You can also use them to scope user permissions by granting a user permission to access or change only resources with certain tag values.</p> <p>For more information about using tags to control access, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html">Controlling access to Amazon Web Services resources using tags</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute link_configuration
    #   <p>Use this structure to optionally create filters that specify that only some metric namespaces or log groups are to be shared from the source account to the monitoring account.</p>
    #   @return [Types::LinkConfiguration]
    class CreateLinkInput < Struct.new(
      :label_template,
      :resource_types,
      :sink_identifier,
      :tags,
      :link_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the link that is newly created.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The random ID string that Amazon Web Services generated as part of the link ARN.</p>
    #   @return [String]
    # @!attribute label
    #   <p>The label that you assigned to this link. If the <code>labelTemplate</code> includes variables, this field displays the variables resolved to their actual values.</p>
    #   @return [String]
    # @!attribute label_template
    #   <p>The exact label template that you specified, with the variables not resolved.</p>
    #   @return [String]
    # @!attribute resource_types
    #   <p>The resource types supported by this link.</p>
    #   @return [Array<String>]
    # @!attribute sink_arn
    #   <p>The ARN of the sink that is used for this link.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags assigned to the link.</p>
    #   @return [Hash<String, String>]
    # @!attribute link_configuration
    #   <p>This structure includes filters that specify which metric namespaces and which log groups are shared from the source account to the monitoring account.</p>
    #   @return [Types::LinkConfiguration]
    class CreateLinkOutput < Struct.new(
      :arn,
      :id,
      :label,
      :label_template,
      :resource_types,
      :sink_arn,
      :tags,
      :link_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>A name for the sink.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Assigns one or more tags (key-value pairs) to the link. </p> <p>Tags can help you organize and categorize your resources. You can also use them to scope user permissions by granting a user permission to access or change only resources with certain tag values.</p> <p>For more information about using tags to control access, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html">Controlling access to Amazon Web Services resources using tags</a>.</p>
    #   @return [Hash<String, String>]
    class CreateSinkInput < Struct.new(
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the sink that is newly created.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The random ID string that Amazon Web Services generated as part of the sink ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the sink.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags assigned to the sink.</p>
    #   @return [Hash<String, String>]
    class CreateSinkOutput < Struct.new(
      :arn,
      :id,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The ARN of the link to delete.</p>
    #   @return [String]
    class DeleteLinkInput < Struct.new(
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteLinkOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The ARN of the sink to delete.</p>
    #   @return [String]
    class DeleteSinkInput < Struct.new(
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteSinkOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The ARN of the link to retrieve information for.</p>
    #   @return [String]
    # @!attribute include_tags
    #   <p>Specifies whether to include the tags associated with the link in the response. When <code>IncludeTags</code> is set to <code>true</code> and the caller has the required permission, <code>oam:ListTagsForResource</code>, the API will return the tags for the specified resource. If the caller doesn't have the required permission, <code>oam:ListTagsForResource</code>, the API will raise an exception.</p> <p>The default value is <code>false</code>.</p>
    #   @return [Boolean]
    class GetLinkInput < Struct.new(
      :identifier,
      :include_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the link.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The random ID string that Amazon Web Services generated as part of the link ARN.</p>
    #   @return [String]
    # @!attribute label
    #   <p>The label that you assigned to this link, with the variables resolved to their actual values.</p>
    #   @return [String]
    # @!attribute label_template
    #   <p>The exact label template that was specified when the link was created, with the template variables not resolved.</p>
    #   @return [String]
    # @!attribute resource_types
    #   <p>The resource types supported by this link.</p>
    #   @return [Array<String>]
    # @!attribute sink_arn
    #   <p>The ARN of the sink that is used for this link.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags assigned to the link.</p>
    #   @return [Hash<String, String>]
    # @!attribute link_configuration
    #   <p>This structure includes filters that specify which metric namespaces and which log groups are shared from the source account to the monitoring account.</p>
    #   @return [Types::LinkConfiguration]
    class GetLinkOutput < Struct.new(
      :arn,
      :id,
      :label,
      :label_template,
      :resource_types,
      :sink_arn,
      :tags,
      :link_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The ARN of the sink to retrieve information for.</p>
    #   @return [String]
    # @!attribute include_tags
    #   <p>Specifies whether to include the tags associated with the sink in the response. When <code>IncludeTags</code> is set to <code>true</code> and the caller has the required permission, <code>oam:ListTagsForResource</code>, the API will return the tags for the specified resource. If the caller doesn't have the required permission, <code>oam:ListTagsForResource</code>, the API will raise an exception.</p> <p>The default value is <code>false</code>.</p>
    #   @return [Boolean]
    class GetSinkInput < Struct.new(
      :identifier,
      :include_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the sink.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The random ID string that Amazon Web Services generated as part of the sink ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the sink.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags assigned to the sink.</p>
    #   @return [Hash<String, String>]
    class GetSinkOutput < Struct.new(
      :arn,
      :id,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sink_identifier
    #   <p>The ARN of the sink to retrieve the policy of.</p>
    #   @return [String]
    class GetSinkPolicyInput < Struct.new(
      :sink_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sink_arn
    #   <p>The ARN of the sink.</p>
    #   @return [String]
    # @!attribute sink_id
    #   <p>The random ID string that Amazon Web Services generated as part of the sink ARN.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The policy that you specified, in JSON format.</p>
    #   @return [String]
    class GetSinkPolicyOutput < Struct.new(
      :sink_arn,
      :sink_id,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Unexpected error while processing the request. Retry the request.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute amzn_error_type
    #   <p>The name of the exception.</p>
    #   @return [String]
    class InternalServiceFault < Struct.new(
      :message,
      :amzn_error_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A parameter is specified incorrectly.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute amzn_error_type
    #   <p>The name of the exception.</p>
    #   @return [String]
    class InvalidParameterException < Struct.new(
      :message,
      :amzn_error_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Use this structure to optionally create filters that specify that only some metric namespaces or log groups are to be shared from the source account to the monitoring account.</p>
    # @!attribute log_group_configuration
    #   <p>Use this structure to filter which log groups are to send log events from the source account to the monitoring account.</p>
    #   @return [Types::LogGroupConfiguration]
    # @!attribute metric_configuration
    #   <p>Use this structure to filter which metric namespaces are to be shared from the source account to the monitoring account.</p>
    #   @return [Types::MetricConfiguration]
    class LinkConfiguration < Struct.new(
      :log_group_configuration,
      :metric_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>Limits the number of returned links to the specified number.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of items to return. You received this token from a previous call.</p>
    #   @return [String]
    # @!attribute sink_identifier
    #   <p>The ARN of the sink that you want to retrieve links for.</p>
    #   @return [String]
    class ListAttachedLinksInput < Struct.new(
      :max_results,
      :next_token,
      :sink_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains information about one link attached to this monitoring account sink.</p>
    # @!attribute label
    #   <p>The label that was assigned to this link at creation, with the variables resolved to their actual values.</p>
    #   @return [String]
    # @!attribute link_arn
    #   <p>The ARN of the link.</p>
    #   @return [String]
    # @!attribute resource_types
    #   <p>The resource types supported by this link.</p>
    #   @return [Array<String>]
    class ListAttachedLinksItem < Struct.new(
      :label,
      :link_arn,
      :resource_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>An array of structures that contain the information about the attached links.</p>
    #   @return [Array<Types::ListAttachedLinksItem>]
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of links.</p>
    #   @return [String]
    class ListAttachedLinksOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>Limits the number of returned links to the specified number.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of items to return. You received this token from a previous call.</p>
    #   @return [String]
    class ListLinksInput < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains information about one of this source account's links to a monitoring account.</p>
    # @!attribute arn
    #   <p>The ARN of the link.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The random ID string that Amazon Web Services generated as part of the link ARN.</p>
    #   @return [String]
    # @!attribute label
    #   <p>The label that was assigned to this link at creation, with the variables resolved to their actual values.</p>
    #   @return [String]
    # @!attribute resource_types
    #   <p>The resource types supported by this link.</p>
    #   @return [Array<String>]
    # @!attribute sink_arn
    #   <p>The ARN of the sink that this link is attached to.</p>
    #   @return [String]
    class ListLinksItem < Struct.new(
      :arn,
      :id,
      :label,
      :resource_types,
      :sink_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>An array of structures that contain the information about the returned links.</p>
    #   @return [Array<Types::ListLinksItem>]
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of links.</p>
    #   @return [String]
    class ListLinksOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>Limits the number of returned links to the specified number.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of items to return. You received this token from a previous call.</p>
    #   @return [String]
    class ListSinksInput < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains information about one of this monitoring account's sinks.</p>
    # @!attribute arn
    #   <p>The ARN of the sink.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The random ID string that Amazon Web Services generated as part of the sink ARN.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the sink.</p>
    #   @return [String]
    class ListSinksItem < Struct.new(
      :arn,
      :id,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>An array of structures that contain the information about the returned sinks.</p>
    #   @return [Array<Types::ListSinksItem>]
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of sinks.</p>
    #   @return [String]
    class ListSinksOutput < Struct.new(
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource that you want to view tags for.</p> <p>The ARN format of a sink is <code>arn:aws:oam:<i>Region</i>:<i>account-id</i>:sink/<i>sink-id</i> </code> </p> <p>The ARN format of a link is <code>arn:aws:oam:<i>Region</i>:<i>account-id</i>:link/<i>link-id</i> </code> </p> <p>For more information about ARN format, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/iam-access-control-overview-cwl.html">CloudWatch Logs resources and operations</a>.</p> <important> <p>Unlike tagging permissions in other Amazon Web Services services, to retrieve the list of tags for links or sinks you must have the <code>oam:RequestTag</code> permission. The <code>aws:ReguestTag</code> permission does not allow you to tag and untag links and sinks.</p> </important>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The list of tags associated with the requested resource.&gt;</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure contains the <code>Filter</code> parameter which you can use to specify which log groups are to share log events from this source account to the monitoring account.</p>
    # @!attribute filter
    #   <p>Use this field to specify which log groups are to share their log events with the monitoring account. Use the term <code>LogGroupName</code> and one or more of the following operands. Use single quotation marks (') around log group names. The matching of log group names is case sensitive. Each filter has a limit of five conditional operands. Conditional operands are <code>AND</code> and <code>OR</code>.</p> <ul> <li> <p> <code>=</code> and <code>!=</code> </p> </li> <li> <p> <code>AND</code> </p> </li> <li> <p> <code>OR</code> </p> </li> <li> <p> <code>LIKE</code> and <code>NOT LIKE</code>. These can be used only as prefix searches. Include a <code>%</code> at the end of the string that you want to search for and include.</p> </li> <li> <p> <code>IN</code> and <code>NOT IN</code>, using parentheses <code>( )</code> </p> </li> </ul> <p>Examples:</p> <ul> <li> <p> <code>LogGroupName IN ('This-Log-Group', 'Other-Log-Group')</code> includes only the log groups with names <code>This-Log-Group</code> and <code>Other-Log-Group</code>.</p> </li> <li> <p> <code>LogGroupName NOT IN ('Private-Log-Group', 'Private-Log-Group-2')</code> includes all log groups except the log groups with names <code>Private-Log-Group</code> and <code>Private-Log-Group-2</code>.</p> </li> <li> <p> <code>LogGroupName LIKE 'aws/lambda/%' OR LogGroupName LIKE 'AWSLogs%'</code> includes all log groups that have names that start with <code>aws/lambda/</code> or <code>AWSLogs</code>.</p> </li> </ul> <note> <p>If you are updating a link that uses filters, you can specify <code>*</code> as the only value for the <code>filter</code> parameter to delete the filter and share all log groups with the monitoring account.</p> </note>
    #   @return [String]
    class LogGroupConfiguration < Struct.new(
      :filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This structure contains the <code>Filter</code> parameter which you can use to specify which metric namespaces are to be shared from this source account to the monitoring account.</p>
    # @!attribute filter
    #   <p>Use this field to specify which metrics are to be shared with the monitoring account. Use the term <code>Namespace</code> and one or more of the following operands. Use single quotation marks (') around namespace names. The matching of namespace names is case sensitive. Each filter has a limit of five conditional operands. Conditional operands are <code>AND</code> and <code>OR</code>.</p> <ul> <li> <p> <code>=</code> and <code>!=</code> </p> </li> <li> <p> <code>AND</code> </p> </li> <li> <p> <code>OR</code> </p> </li> <li> <p> <code>LIKE</code> and <code>NOT LIKE</code>. These can be used only as prefix searches. Include a <code>%</code> at the end of the string that you want to search for and include.</p> </li> <li> <p> <code>IN</code> and <code>NOT IN</code>, using parentheses <code>( )</code> </p> </li> </ul> <p>Examples:</p> <ul> <li> <p> <code>Namespace NOT LIKE 'AWS/%'</code> includes only namespaces that don't start with <code>AWS/</code>, such as custom namespaces.</p> </li> <li> <p> <code>Namespace IN ('AWS/EC2', 'AWS/ELB', 'AWS/S3')</code> includes only the metrics in the EC2, Elastic Load Balancing, and Amazon S3 namespaces. </p> </li> <li> <p> <code>Namespace = 'AWS/EC2' OR Namespace NOT LIKE 'AWS/%'</code> includes only the EC2 namespace and your custom namespaces.</p> </li> </ul> <note> <p>If you are updating a link that uses filters, you can specify <code>*</code> as the only value for the <code>filter</code> parameter to delete the filter and share all metric namespaces with the monitoring account.</p> </note>
    #   @return [String]
    class MetricConfiguration < Struct.new(
      :filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A required parameter is missing from the request.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute amzn_error_type
    #   <p>The name of the exception.</p>
    #   @return [String]
    class MissingRequiredParameterException < Struct.new(
      :message,
      :amzn_error_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sink_identifier
    #   <p>The ARN of the sink to attach this policy to.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The JSON policy to use. If you are updating an existing policy, the entire existing policy is replaced by what you specify here.</p> <p>The policy must be in JSON string format with quotation marks escaped and no newlines.</p> <p>For examples of different types of policies, see the <b>Examples</b> section on this page.</p>
    #   @return [String]
    class PutSinkPolicyInput < Struct.new(
      :sink_identifier,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sink_arn
    #   <p>The ARN of the sink.</p>
    #   @return [String]
    # @!attribute sink_id
    #   <p>The random ID string that Amazon Web Services generated as part of the sink ARN.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The policy that you specified.</p>
    #   @return [String]
    class PutSinkPolicyOutput < Struct.new(
      :sink_arn,
      :sink_id,
      :policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request references a resource that does not exist.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute amzn_error_type
    #   <p>The name of the exception.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :amzn_error_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request would cause a service quota to be exceeded.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute amzn_error_type
    #   <p>The name of the exception.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :amzn_error_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource that you're adding tags to.</p> <p>The ARN format of a sink is <code>arn:aws:oam:<i>Region</i>:<i>account-id</i>:sink/<i>sink-id</i> </code> </p> <p>The ARN format of a link is <code>arn:aws:oam:<i>Region</i>:<i>account-id</i>:link/<i>link-id</i> </code> </p> <p>For more information about ARN format, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/iam-access-control-overview-cwl.html">CloudWatch Logs resources and operations</a>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of key-value pairs to associate with the resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A resource can have no more than 50 tags.</p>
    # @!attribute message
    #   @return [String]
    class TooManyTagsException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource that you're removing tags from.</p> <p>The ARN format of a sink is <code>arn:aws:oam:<i>Region</i>:<i>account-id</i>:sink/<i>sink-id</i> </code> </p> <p>The ARN format of a link is <code>arn:aws:oam:<i>Region</i>:<i>account-id</i>:link/<i>link-id</i> </code> </p> <p>For more information about ARN format, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/iam-access-control-overview-cwl.html">CloudWatch Logs resources and operations</a>.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The list of tag keys to remove from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>The ARN of the link that you want to update.</p>
    #   @return [String]
    # @!attribute resource_types
    #   <p>An array of strings that define which types of data that the source account will send to the monitoring account.</p> <p>Your input here replaces the current set of data types that are shared.</p>
    #   @return [Array<String>]
    # @!attribute link_configuration
    #   <p>Use this structure to filter which metric namespaces and which log groups are to be shared from the source account to the monitoring account.</p>
    #   @return [Types::LinkConfiguration]
    # @!attribute include_tags
    #   <p>Specifies whether to include the tags associated with the link in the response after the update operation. When <code>IncludeTags</code> is set to <code>true</code> and the caller has the required permission, <code>oam:ListTagsForResource</code>, the API will return the tags for the specified resource. If the caller doesn't have the required permission, <code>oam:ListTagsForResource</code>, the API will raise an exception. </p> <p>The default value is <code>false</code>.</p>
    #   @return [Boolean]
    class UpdateLinkInput < Struct.new(
      :identifier,
      :resource_types,
      :link_configuration,
      :include_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the link that you have updated.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The random ID string that Amazon Web Services generated as part of the sink ARN.</p>
    #   @return [String]
    # @!attribute label
    #   <p>The label assigned to this link, with the variables resolved to their actual values.</p>
    #   @return [String]
    # @!attribute label_template
    #   <p>The exact label template that was specified when the link was created, with the template variables not resolved.</p>
    #   @return [String]
    # @!attribute resource_types
    #   <p>The resource types now supported by this link.</p>
    #   @return [Array<String>]
    # @!attribute sink_arn
    #   <p>The ARN of the sink that is used for this link.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags assigned to the link.</p>
    #   @return [Hash<String, String>]
    # @!attribute link_configuration
    #   <p>This structure includes filters that specify which metric namespaces and which log groups are shared from the source account to the monitoring account.</p>
    #   @return [Types::LinkConfiguration]
    class UpdateLinkOutput < Struct.new(
      :arn,
      :id,
      :label,
      :label_template,
      :resource_types,
      :sink_arn,
      :tags,
      :link_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The value of a parameter in the request caused an error.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
