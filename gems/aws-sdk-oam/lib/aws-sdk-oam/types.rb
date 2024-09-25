# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::OAM
  module Types

    # A resource was in an inconsistent state during an update or a
    # deletion.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] amzn_error_type
    #   The name of the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :amzn_error_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] label_template
    #   Specify a friendly human-readable name to use to identify this
    #   source account when you are viewing data from it in the monitoring
    #   account.
    #
    #   You can use a custom label or use the following variables:
    #
    #   * `$AccountName` is the name of the account
    #
    #   * `$AccountEmail` is the globally unique email address of the
    #     account
    #
    #   * `$AccountEmailNoDomain` is the email address of the account
    #     without the domain name
    #   @return [String]
    #
    # @!attribute [rw] link_configuration
    #   Use this structure to optionally create filters that specify that
    #   only some metric namespaces or log groups are to be shared from the
    #   source account to the monitoring account.
    #   @return [Types::LinkConfiguration]
    #
    # @!attribute [rw] resource_types
    #   An array of strings that define which types of data that the source
    #   account shares with the monitoring account.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sink_identifier
    #   The ARN of the sink to use to create this link. You can use
    #   [ListSinks][1] to find the ARNs of sinks.
    #
    #   For more information about sinks, see [CreateSink][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/OAM/latest/APIReference/API_ListSinks.html
    #   [2]: https://docs.aws.amazon.com/OAM/latest/APIReference/API_CreateSink.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Assigns one or more tags (key-value pairs) to the link.
    #
    #   Tags can help you organize and categorize your resources. You can
    #   also use them to scope user permissions by granting a user
    #   permission to access or change only resources with certain tag
    #   values.
    #
    #   For more information about using tags to control access, see
    #   [Controlling access to Amazon Web Services resources using tags][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/CreateLinkInput AWS API Documentation
    #
    class CreateLinkInput < Struct.new(
      :label_template,
      :link_configuration,
      :resource_types,
      :sink_identifier,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the link that is newly created.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The random ID string that Amazon Web Services generated as part of
    #   the link ARN.
    #   @return [String]
    #
    # @!attribute [rw] label
    #   The label that you assigned to this link. If the `labelTemplate`
    #   includes variables, this field displays the variables resolved to
    #   their actual values.
    #   @return [String]
    #
    # @!attribute [rw] label_template
    #   The exact label template that you specified, with the variables not
    #   resolved.
    #   @return [String]
    #
    # @!attribute [rw] link_configuration
    #   This structure includes filters that specify which metric namespaces
    #   and which log groups are shared from the source account to the
    #   monitoring account.
    #   @return [Types::LinkConfiguration]
    #
    # @!attribute [rw] resource_types
    #   The resource types supported by this link.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sink_arn
    #   The ARN of the sink that is used for this link.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the link.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/CreateLinkOutput AWS API Documentation
    #
    class CreateLinkOutput < Struct.new(
      :arn,
      :id,
      :label,
      :label_template,
      :link_configuration,
      :resource_types,
      :sink_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A name for the sink.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Assigns one or more tags (key-value pairs) to the link.
    #
    #   Tags can help you organize and categorize your resources. You can
    #   also use them to scope user permissions by granting a user
    #   permission to access or change only resources with certain tag
    #   values.
    #
    #   For more information about using tags to control access, see
    #   [Controlling access to Amazon Web Services resources using tags][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/CreateSinkInput AWS API Documentation
    #
    class CreateSinkInput < Struct.new(
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the sink that is newly created.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The random ID string that Amazon Web Services generated as part of
    #   the sink ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the sink.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the sink.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/CreateSinkOutput AWS API Documentation
    #
    class CreateSinkOutput < Struct.new(
      :arn,
      :id,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The ARN of the link to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/DeleteLinkInput AWS API Documentation
    #
    class DeleteLinkInput < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/DeleteLinkOutput AWS API Documentation
    #
    class DeleteLinkOutput < Aws::EmptyStructure; end

    # @!attribute [rw] identifier
    #   The ARN of the sink to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/DeleteSinkInput AWS API Documentation
    #
    class DeleteSinkInput < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/DeleteSinkOutput AWS API Documentation
    #
    class DeleteSinkOutput < Aws::EmptyStructure; end

    # @!attribute [rw] identifier
    #   The ARN of the link to retrieve information for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/GetLinkInput AWS API Documentation
    #
    class GetLinkInput < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the link.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The random ID string that Amazon Web Services generated as part of
    #   the link ARN.
    #   @return [String]
    #
    # @!attribute [rw] label
    #   The label that you assigned to this link, with the variables
    #   resolved to their actual values.
    #   @return [String]
    #
    # @!attribute [rw] label_template
    #   The exact label template that was specified when the link was
    #   created, with the template variables not resolved.
    #   @return [String]
    #
    # @!attribute [rw] link_configuration
    #   This structure includes filters that specify which metric namespaces
    #   and which log groups are shared from the source account to the
    #   monitoring account.
    #   @return [Types::LinkConfiguration]
    #
    # @!attribute [rw] resource_types
    #   The resource types supported by this link.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sink_arn
    #   The ARN of the sink that is used for this link.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the link.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/GetLinkOutput AWS API Documentation
    #
    class GetLinkOutput < Struct.new(
      :arn,
      :id,
      :label,
      :label_template,
      :link_configuration,
      :resource_types,
      :sink_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   The ARN of the sink to retrieve information for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/GetSinkInput AWS API Documentation
    #
    class GetSinkInput < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the sink.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The random ID string that Amazon Web Services generated as part of
    #   the sink ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the sink.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the sink.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/GetSinkOutput AWS API Documentation
    #
    class GetSinkOutput < Struct.new(
      :arn,
      :id,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sink_identifier
    #   The ARN of the sink to retrieve the policy of.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/GetSinkPolicyInput AWS API Documentation
    #
    class GetSinkPolicyInput < Struct.new(
      :sink_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   The policy that you specified, in JSON format.
    #   @return [String]
    #
    # @!attribute [rw] sink_arn
    #   The ARN of the sink.
    #   @return [String]
    #
    # @!attribute [rw] sink_id
    #   The random ID string that Amazon Web Services generated as part of
    #   the sink ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/GetSinkPolicyOutput AWS API Documentation
    #
    class GetSinkPolicyOutput < Struct.new(
      :policy,
      :sink_arn,
      :sink_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Unexpected error while processing the request. Retry the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] amzn_error_type
    #   The name of the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/InternalServiceFault AWS API Documentation
    #
    class InternalServiceFault < Struct.new(
      :message,
      :amzn_error_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A parameter is specified incorrectly.
    #
    # @!attribute [rw] amzn_error_type
    #   The name of the exception.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/InvalidParameterException AWS API Documentation
    #
    class InvalidParameterException < Struct.new(
      :amzn_error_type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Use this structure to optionally create filters that specify that only
    # some metric namespaces or log groups are to be shared from the source
    # account to the monitoring account.
    #
    # @!attribute [rw] log_group_configuration
    #   Use this structure to filter which log groups are to send log events
    #   from the source account to the monitoring account.
    #   @return [Types::LogGroupConfiguration]
    #
    # @!attribute [rw] metric_configuration
    #   Use this structure to filter which metric namespaces are to be
    #   shared from the source account to the monitoring account.
    #   @return [Types::MetricConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/LinkConfiguration AWS API Documentation
    #
    class LinkConfiguration < Struct.new(
      :log_group_configuration,
      :metric_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   Limits the number of returned links to the specified number.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. You received this
    #   token from a previous call.
    #   @return [String]
    #
    # @!attribute [rw] sink_identifier
    #   The ARN of the sink that you want to retrieve links for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/ListAttachedLinksInput AWS API Documentation
    #
    class ListAttachedLinksInput < Struct.new(
      :max_results,
      :next_token,
      :sink_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains information about one link attached to this
    # monitoring account sink.
    #
    # @!attribute [rw] label
    #   The label that was assigned to this link at creation, with the
    #   variables resolved to their actual values.
    #   @return [String]
    #
    # @!attribute [rw] link_arn
    #   The ARN of the link.
    #   @return [String]
    #
    # @!attribute [rw] resource_types
    #   The resource types supported by this link.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/ListAttachedLinksItem AWS API Documentation
    #
    class ListAttachedLinksItem < Struct.new(
      :label,
      :link_arn,
      :resource_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   An array of structures that contain the information about the
    #   attached links.
    #   @return [Array<Types::ListAttachedLinksItem>]
    #
    # @!attribute [rw] next_token
    #   The token to use when requesting the next set of links.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/ListAttachedLinksOutput AWS API Documentation
    #
    class ListAttachedLinksOutput < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   Limits the number of returned links to the specified number.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. You received this
    #   token from a previous call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/ListLinksInput AWS API Documentation
    #
    class ListLinksInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains information about one of this source
    # account's links to a monitoring account.
    #
    # @!attribute [rw] arn
    #   The ARN of the link.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The random ID string that Amazon Web Services generated as part of
    #   the link ARN.
    #   @return [String]
    #
    # @!attribute [rw] label
    #   The label that was assigned to this link at creation, with the
    #   variables resolved to their actual values.
    #   @return [String]
    #
    # @!attribute [rw] resource_types
    #   The resource types supported by this link.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sink_arn
    #   The ARN of the sink that this link is attached to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/ListLinksItem AWS API Documentation
    #
    class ListLinksItem < Struct.new(
      :arn,
      :id,
      :label,
      :resource_types,
      :sink_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   An array of structures that contain the information about the
    #   returned links.
    #   @return [Array<Types::ListLinksItem>]
    #
    # @!attribute [rw] next_token
    #   The token to use when requesting the next set of links.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/ListLinksOutput AWS API Documentation
    #
    class ListLinksOutput < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   Limits the number of returned links to the specified number.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of items to return. You received this
    #   token from a previous call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/ListSinksInput AWS API Documentation
    #
    class ListSinksInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains information about one of this monitoring
    # account's sinks.
    #
    # @!attribute [rw] arn
    #   The ARN of the sink.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The random ID string that Amazon Web Services generated as part of
    #   the sink ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the sink.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/ListSinksItem AWS API Documentation
    #
    class ListSinksItem < Struct.new(
      :arn,
      :id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   An array of structures that contain the information about the
    #   returned sinks.
    #   @return [Array<Types::ListSinksItem>]
    #
    # @!attribute [rw] next_token
    #   The token to use when requesting the next set of sinks.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/ListSinksOutput AWS API Documentation
    #
    class ListSinksOutput < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource that you want to view tags for.
    #
    #   The ARN format of a sink is
    #   `arn:aws:oam:Region:account-id:sink/sink-id `
    #
    #   The ARN format of a link is
    #   `arn:aws:oam:Region:account-id:link/link-id `
    #
    #   For more information about ARN format, see [CloudWatch Logs
    #   resources and operations][1].
    #
    #   Unlike tagging permissions in other Amazon Web Services services, to
    #   retrieve the list of tags for links or sinks you must have the
    #   `oam:RequestTag` permission. The `aws:ReguestTag` permission does
    #   not allow you to tag and untag links and sinks.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/iam-access-control-overview-cwl.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tags associated with the requested resource.&gt;
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains the `Filter` parameter which you can use to
    # specify which log groups are to share log events from this source
    # account to the monitoring account.
    #
    # @!attribute [rw] filter
    #   Use this field to specify which log groups are to share their log
    #   events with the monitoring account. Use the term `LogGroupName` and
    #   one or more of the following operands. Use single quotation marks
    #   (') around log group names. The matching of log group names is case
    #   sensitive. Each filter has a limit of five conditional operands.
    #   Conditional operands are `AND` and `OR`.
    #
    #   * `=` and `!=`
    #
    #   * `AND`
    #
    #   * `OR`
    #
    #   * `LIKE` and `NOT LIKE`. These can be used only as prefix searches.
    #     Include a `%` at the end of the string that you want to search for
    #     and include.
    #
    #   * `IN` and `NOT IN`, using parentheses `( )`
    #
    #   Examples:
    #
    #   * `LogGroupName IN ('This-Log-Group', 'Other-Log-Group')` includes
    #     only the log groups with names `This-Log-Group` and
    #     `Other-Log-Group`.
    #
    #   * `LogGroupName NOT IN ('Private-Log-Group', 'Private-Log-Group-2')`
    #     includes all log groups except the log groups with names
    #     `Private-Log-Group` and `Private-Log-Group-2`.
    #
    #   * `LogGroupName LIKE 'aws/lambda/%' OR LogGroupName LIKE 'AWSLogs%'`
    #     includes all log groups that have names that start with
    #     `aws/lambda/` or `AWSLogs`.
    #
    #   <note markdown="1"> If you are updating a link that uses filters, you can specify `*` as
    #   the only value for the `filter` parameter to delete the filter and
    #   share all log groups with the monitoring account.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/LogGroupConfiguration AWS API Documentation
    #
    class LogGroupConfiguration < Struct.new(
      :filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains the `Filter` parameter which you can use to
    # specify which metric namespaces are to be shared from this source
    # account to the monitoring account.
    #
    # @!attribute [rw] filter
    #   Use this field to specify which metrics are to be shared with the
    #   monitoring account. Use the term `Namespace` and one or more of the
    #   following operands. Use single quotation marks (') around namespace
    #   names. The matching of namespace names is case sensitive. Each
    #   filter has a limit of five conditional operands. Conditional
    #   operands are `AND` and `OR`.
    #
    #   * `=` and `!=`
    #
    #   * `AND`
    #
    #   * `OR`
    #
    #   * `LIKE` and `NOT LIKE`. These can be used only as prefix searches.
    #     Include a `%` at the end of the string that you want to search for
    #     and include.
    #
    #   * `IN` and `NOT IN`, using parentheses `( )`
    #
    #   Examples:
    #
    #   * `Namespace NOT LIKE 'AWS/%'` includes only namespaces that don't
    #     start with `AWS/`, such as custom namespaces.
    #
    #   * `Namespace IN ('AWS/EC2', 'AWS/ELB', 'AWS/S3')` includes only the
    #     metrics in the EC2, Elastic Load Balancing, and Amazon S3
    #     namespaces.
    #
    #   * `Namespace = 'AWS/EC2' OR Namespace NOT LIKE 'AWS/%'` includes
    #     only the EC2 namespace and your custom namespaces.
    #
    #   <note markdown="1"> If you are updating a link that uses filters, you can specify `*` as
    #   the only value for the `filter` parameter to delete the filter and
    #   share all metric namespaces with the monitoring account.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/MetricConfiguration AWS API Documentation
    #
    class MetricConfiguration < Struct.new(
      :filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # A required parameter is missing from the request.
    #
    # @!attribute [rw] amzn_error_type
    #   The name of the exception.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/MissingRequiredParameterException AWS API Documentation
    #
    class MissingRequiredParameterException < Struct.new(
      :amzn_error_type,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   The JSON policy to use. If you are updating an existing policy, the
    #   entire existing policy is replaced by what you specify here.
    #
    #   The policy must be in JSON string format with quotation marks
    #   escaped and no newlines.
    #
    #   For examples of different types of policies, see the **Examples**
    #   section on this page.
    #   @return [String]
    #
    # @!attribute [rw] sink_identifier
    #   The ARN of the sink to attach this policy to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/PutSinkPolicyInput AWS API Documentation
    #
    class PutSinkPolicyInput < Struct.new(
      :policy,
      :sink_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   The policy that you specified.
    #   @return [String]
    #
    # @!attribute [rw] sink_arn
    #   The ARN of the sink.
    #   @return [String]
    #
    # @!attribute [rw] sink_id
    #   The random ID string that Amazon Web Services generated as part of
    #   the sink ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/PutSinkPolicyOutput AWS API Documentation
    #
    class PutSinkPolicyOutput < Struct.new(
      :policy,
      :sink_arn,
      :sink_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request references a resource that does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] amzn_error_type
    #   The name of the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :amzn_error_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request would cause a service quota to be exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] amzn_error_type
    #   The name of the exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :amzn_error_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource that you're adding tags to.
    #
    #   The ARN format of a sink is
    #   `arn:aws:oam:Region:account-id:sink/sink-id `
    #
    #   The ARN format of a link is
    #   `arn:aws:oam:Region:account-id:link/link-id `
    #
    #   For more information about ARN format, see [CloudWatch Logs
    #   resources and operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/iam-access-control-overview-cwl.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of key-value pairs to associate with the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/TagResourceOutput AWS API Documentation
    #
    class TagResourceOutput < Aws::EmptyStructure; end

    # A resource can have no more than 50 tags.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/TooManyTagsException AWS API Documentation
    #
    class TooManyTagsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource that you're removing tags from.
    #
    #   The ARN format of a sink is
    #   `arn:aws:oam:Region:account-id:sink/sink-id `
    #
    #   The ARN format of a link is
    #   `arn:aws:oam:Region:account-id:link/link-id `
    #
    #   For more information about ARN format, see [CloudWatch Logs
    #   resources and operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/iam-access-control-overview-cwl.html
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The list of tag keys to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/UntagResourceOutput AWS API Documentation
    #
    class UntagResourceOutput < Aws::EmptyStructure; end

    # @!attribute [rw] identifier
    #   The ARN of the link that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] link_configuration
    #   Use this structure to filter which metric namespaces and which log
    #   groups are to be shared from the source account to the monitoring
    #   account.
    #   @return [Types::LinkConfiguration]
    #
    # @!attribute [rw] resource_types
    #   An array of strings that define which types of data that the source
    #   account will send to the monitoring account.
    #
    #   Your input here replaces the current set of data types that are
    #   shared.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/UpdateLinkInput AWS API Documentation
    #
    class UpdateLinkInput < Struct.new(
      :identifier,
      :link_configuration,
      :resource_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the link that you have updated.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The random ID string that Amazon Web Services generated as part of
    #   the sink ARN.
    #   @return [String]
    #
    # @!attribute [rw] label
    #   The label assigned to this link, with the variables resolved to
    #   their actual values.
    #   @return [String]
    #
    # @!attribute [rw] label_template
    #   The exact label template that was specified when the link was
    #   created, with the template variables not resolved.
    #   @return [String]
    #
    # @!attribute [rw] link_configuration
    #   This structure includes filters that specify which metric namespaces
    #   and which log groups are shared from the source account to the
    #   monitoring account.
    #   @return [Types::LinkConfiguration]
    #
    # @!attribute [rw] resource_types
    #   The resource types now supported by this link.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sink_arn
    #   The ARN of the sink that is used for this link.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the link.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/UpdateLinkOutput AWS API Documentation
    #
    class UpdateLinkOutput < Struct.new(
      :arn,
      :id,
      :label,
      :label_template,
      :link_configuration,
      :resource_types,
      :sink_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The value of a parameter in the request caused an error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/oam-2022-06-10/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

