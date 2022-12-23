# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Detective
  module Types

    # @!attribute [rw] graph_arn
    #   The ARN of the behavior graph that the member account is accepting
    #   the invitation for.
    #
    #   The member account status in the behavior graph must be `INVITED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/AcceptInvitationRequest AWS API Documentation
    #
    class AcceptInvitationRequest < Struct.new(
      :graph_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request issuer does not have permission to access this resource or
    # perform this operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The SDK default error code associated with the access denied
    #   exception.
    #   @return [String]
    #
    # @!attribute [rw] error_code_reason
    #   The SDK default explanation of why access was denied.
    #   @return [String]
    #
    # @!attribute [rw] sub_error_code
    #   The error code associated with the access denied exception.
    #   @return [String]
    #
    # @!attribute [rw] sub_error_code_reason
    #   An explanation of why access was denied.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message,
      :error_code,
      :error_code_reason,
      :sub_error_code,
      :sub_error_code_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Amazon Web Services account that is the administrator account of or
    # a member of a behavior graph.
    #
    # @!attribute [rw] account_id
    #   The account identifier of the Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] email_address
    #   The Amazon Web Services account root user email address for the
    #   Amazon Web Services account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/Account AWS API Documentation
    #
    class Account < Struct.new(
      :account_id,
      :email_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the Detective administrator account for an
    # organization.
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account identifier of the Detective
    #   administrator account for the organization.
    #   @return [String]
    #
    # @!attribute [rw] graph_arn
    #   The ARN of the organization behavior graph.
    #   @return [String]
    #
    # @!attribute [rw] delegation_time
    #   The date and time when the Detective administrator account was
    #   enabled. The value is an ISO8601 formatted string. For example,
    #   `2021-08-18T16:35:56.284Z`.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/Administrator AWS API Documentation
    #
    class Administrator < Struct.new(
      :account_id,
      :graph_arn,
      :delegation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_arn
    #   The ARN of the behavior graph.
    #   @return [String]
    #
    # @!attribute [rw] account_ids
    #   The list of Amazon Web Services accounts to get data source package
    #   information on.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/BatchGetGraphMemberDatasourcesRequest AWS API Documentation
    #
    class BatchGetGraphMemberDatasourcesRequest < Struct.new(
      :graph_arn,
      :account_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] member_datasources
    #   Details on the status of data source packages for members of the
    #   behavior graph.
    #   @return [Array<Types::MembershipDatasources>]
    #
    # @!attribute [rw] unprocessed_accounts
    #   Accounts that data source package information could not be retrieved
    #   for.
    #   @return [Array<Types::UnprocessedAccount>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/BatchGetGraphMemberDatasourcesResponse AWS API Documentation
    #
    class BatchGetGraphMemberDatasourcesResponse < Struct.new(
      :member_datasources,
      :unprocessed_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_arns
    #   The ARN of the behavior graph.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/BatchGetMembershipDatasourcesRequest AWS API Documentation
    #
    class BatchGetMembershipDatasourcesRequest < Struct.new(
      :graph_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] membership_datasources
    #   Details on the data source package history for an member of the
    #   behavior graph.
    #   @return [Array<Types::MembershipDatasources>]
    #
    # @!attribute [rw] unprocessed_graphs
    #   Graphs that data source package information could not be retrieved
    #   for.
    #   @return [Array<Types::UnprocessedGraph>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/BatchGetMembershipDatasourcesResponse AWS API Documentation
    #
    class BatchGetMembershipDatasourcesResponse < Struct.new(
      :membership_datasources,
      :unprocessed_graphs)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request attempted an invalid action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags to assign to the new behavior graph. You can add up to 50
    #   tags. For each tag, you provide the tag key and the tag value. Each
    #   tag key can contain up to 128 characters. Each tag value can contain
    #   up to 256 characters.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/CreateGraphRequest AWS API Documentation
    #
    class CreateGraphRequest < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_arn
    #   The ARN of the new behavior graph.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/CreateGraphResponse AWS API Documentation
    #
    class CreateGraphResponse < Struct.new(
      :graph_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_arn
    #   The ARN of the behavior graph.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Customized message text to include in the invitation email message
    #   to the invited member accounts.
    #   @return [String]
    #
    # @!attribute [rw] disable_email_notification
    #   if set to `true`, then the invited accounts do not receive email
    #   notifications. By default, this is set to `false`, and the invited
    #   accounts receive email notifications.
    #
    #   Organization accounts in the organization behavior graph do not
    #   receive email notifications.
    #   @return [Boolean]
    #
    # @!attribute [rw] accounts
    #   The list of Amazon Web Services accounts to invite or to enable. You
    #   can invite or enable up to 50 accounts at a time. For each invited
    #   account, the account list contains the account identifier and the
    #   Amazon Web Services account root user email address. For
    #   organization accounts in the organization behavior graph, the email
    #   address is not required.
    #   @return [Array<Types::Account>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/CreateMembersRequest AWS API Documentation
    #
    class CreateMembersRequest < Struct.new(
      :graph_arn,
      :message,
      :disable_email_notification,
      :accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] members
    #   The set of member account invitation or enablement requests that
    #   Detective was able to process. This includes accounts that are being
    #   verified, that failed verification, and that passed verification and
    #   are being sent an invitation or are being enabled.
    #   @return [Array<Types::MemberDetail>]
    #
    # @!attribute [rw] unprocessed_accounts
    #   The list of accounts for which Detective was unable to process the
    #   invitation or enablement request. For each account, the list
    #   provides the reason why the request could not be processed. The list
    #   includes accounts that are already member accounts in the behavior
    #   graph.
    #   @return [Array<Types::UnprocessedAccount>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/CreateMembersResponse AWS API Documentation
    #
    class CreateMembersResponse < Struct.new(
      :members,
      :unprocessed_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the data source packages ingested by your behavior
    # graph.
    #
    # @!attribute [rw] datasource_package_ingest_state
    #   Details on which data source packages are ingested for a member
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] last_ingest_state_change
    #   The date a data source package was enabled for this account
    #   @return [Hash<String,Types::TimestampForCollection>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/DatasourcePackageIngestDetail AWS API Documentation
    #
    class DatasourcePackageIngestDetail < Struct.new(
      :datasource_package_ingest_state,
      :last_ingest_state_change)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information on the usage of a data source package in the behavior
    # graph.
    #
    # @!attribute [rw] volume_usage_in_bytes
    #   Total volume of data in bytes per day ingested for a given data
    #   source package.
    #   @return [Integer]
    #
    # @!attribute [rw] volume_usage_update_time
    #   The data and time when the member account data volume was last
    #   updated. The value is an ISO8601 formatted string. For example,
    #   `2021-08-18T16:35:56.284Z`.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/DatasourcePackageUsageInfo AWS API Documentation
    #
    class DatasourcePackageUsageInfo < Struct.new(
      :volume_usage_in_bytes,
      :volume_usage_update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_arn
    #   The ARN of the behavior graph to disable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/DeleteGraphRequest AWS API Documentation
    #
    class DeleteGraphRequest < Struct.new(
      :graph_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_arn
    #   The ARN of the behavior graph to remove members from.
    #   @return [String]
    #
    # @!attribute [rw] account_ids
    #   The list of Amazon Web Services account identifiers for the member
    #   accounts to remove from the behavior graph. You can remove up to 50
    #   member accounts at a time.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/DeleteMembersRequest AWS API Documentation
    #
    class DeleteMembersRequest < Struct.new(
      :graph_arn,
      :account_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_ids
    #   The list of Amazon Web Services account identifiers for the member
    #   accounts that Detective successfully removed from the behavior
    #   graph.
    #   @return [Array<String>]
    #
    # @!attribute [rw] unprocessed_accounts
    #   The list of member accounts that Detective was not able to remove
    #   from the behavior graph. For each member account, provides the
    #   reason that the deletion could not be processed.
    #   @return [Array<Types::UnprocessedAccount>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/DeleteMembersResponse AWS API Documentation
    #
    class DeleteMembersResponse < Struct.new(
      :account_ids,
      :unprocessed_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_arn
    #   The ARN of the organization behavior graph.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/DescribeOrganizationConfigurationRequest AWS API Documentation
    #
    class DescribeOrganizationConfigurationRequest < Struct.new(
      :graph_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] auto_enable
    #   Indicates whether to automatically enable new organization accounts
    #   as member accounts in the organization behavior graph.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/DescribeOrganizationConfigurationResponse AWS API Documentation
    #
    class DescribeOrganizationConfigurationResponse < Struct.new(
      :auto_enable)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_arn
    #   The ARN of the behavior graph to remove the member account from.
    #
    #   The member account's member status in the behavior graph must be
    #   `ENABLED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/DisassociateMembershipRequest AWS API Documentation
    #
    class DisassociateMembershipRequest < Struct.new(
      :graph_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The Amazon Web Services account identifier of the account to
    #   designate as the Detective administrator account for the
    #   organization.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/EnableOrganizationAdminAccountRequest AWS API Documentation
    #
    class EnableOrganizationAdminAccountRequest < Struct.new(
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_arn
    #   The ARN of the behavior graph for which to request the member
    #   details.
    #   @return [String]
    #
    # @!attribute [rw] account_ids
    #   The list of Amazon Web Services account identifiers for the member
    #   account for which to return member details. You can request details
    #   for up to 50 member accounts at a time.
    #
    #   You cannot use `GetMembers` to retrieve information about member
    #   accounts that were removed from the behavior graph.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/GetMembersRequest AWS API Documentation
    #
    class GetMembersRequest < Struct.new(
      :graph_arn,
      :account_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] member_details
    #   The member account details that Detective is returning in response
    #   to the request.
    #   @return [Array<Types::MemberDetail>]
    #
    # @!attribute [rw] unprocessed_accounts
    #   The requested member accounts for which Detective was unable to
    #   return member details.
    #
    #   For each account, provides the reason why the request could not be
    #   processed.
    #   @return [Array<Types::UnprocessedAccount>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/GetMembersResponse AWS API Documentation
    #
    class GetMembersResponse < Struct.new(
      :member_details,
      :unprocessed_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # A behavior graph in Detective.
    #
    # @!attribute [rw] arn
    #   The ARN of the behavior graph.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The date and time that the behavior graph was created. The value is
    #   an ISO8601 formatted string. For example,
    #   `2021-08-18T16:35:56.284Z`.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/Graph AWS API Documentation
    #
    class Graph < Struct.new(
      :arn,
      :created_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was valid but failed because of a problem with the
    # service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_arn
    #   The ARN of the behavior graph.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   For requests to get the next page of results, the pagination token
    #   that was returned with the previous set of results. The initial
    #   request does not include a pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/ListDatasourcePackagesRequest AWS API Documentation
    #
    class ListDatasourcePackagesRequest < Struct.new(
      :graph_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datasource_packages
    #   Details on the data source packages active in the behavior graph.
    #   @return [Hash<String,Types::DatasourcePackageIngestDetail>]
    #
    # @!attribute [rw] next_token
    #   For requests to get the next page of results, the pagination token
    #   that was returned with the previous set of results. The initial
    #   request does not include a pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/ListDatasourcePackagesResponse AWS API Documentation
    #
    class ListDatasourcePackagesResponse < Struct.new(
      :datasource_packages,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   For requests to get the next page of results, the pagination token
    #   that was returned with the previous set of results. The initial
    #   request does not include a pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of graphs to return at a time. The total must be
    #   less than the overall limit on the number of results to return,
    #   which is currently 200.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/ListGraphsRequest AWS API Documentation
    #
    class ListGraphsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_list
    #   A list of behavior graphs that the account is an administrator
    #   account for.
    #   @return [Array<Types::Graph>]
    #
    # @!attribute [rw] next_token
    #   If there are more behavior graphs remaining in the results, then
    #   this is the pagination token to use to request the next page of
    #   behavior graphs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/ListGraphsResponse AWS API Documentation
    #
    class ListGraphsResponse < Struct.new(
      :graph_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   For requests to retrieve the next page of results, the pagination
    #   token that was returned with the previous page of results. The
    #   initial request does not include a pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of behavior graph invitations to return in the
    #   response. The total must be less than the overall limit on the
    #   number of results to return, which is currently 200.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/ListInvitationsRequest AWS API Documentation
    #
    class ListInvitationsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] invitations
    #   The list of behavior graphs for which the member account has open or
    #   accepted invitations.
    #   @return [Array<Types::MemberDetail>]
    #
    # @!attribute [rw] next_token
    #   If there are more behavior graphs remaining in the results, then
    #   this is the pagination token to use to request the next page of
    #   behavior graphs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/ListInvitationsResponse AWS API Documentation
    #
    class ListInvitationsResponse < Struct.new(
      :invitations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_arn
    #   The ARN of the behavior graph for which to retrieve the list of
    #   member accounts.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   For requests to retrieve the next page of member account results,
    #   the pagination token that was returned with the previous page of
    #   results. The initial request does not include a pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of member accounts to include in the response.
    #   The total must be less than the overall limit on the number of
    #   results to return, which is currently 200.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/ListMembersRequest AWS API Documentation
    #
    class ListMembersRequest < Struct.new(
      :graph_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] member_details
    #   The list of member accounts in the behavior graph.
    #
    #   For invited accounts, the results include member accounts that did
    #   not pass verification and member accounts that have not yet accepted
    #   the invitation to the behavior graph. The results do not include
    #   member accounts that were removed from the behavior graph.
    #
    #   For the organization behavior graph, the results do not include
    #   organization accounts that the Detective administrator account has
    #   not enabled as member accounts.
    #   @return [Array<Types::MemberDetail>]
    #
    # @!attribute [rw] next_token
    #   If there are more member accounts remaining in the results, then use
    #   this pagination token to request the next page of member accounts.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/ListMembersResponse AWS API Documentation
    #
    class ListMembersResponse < Struct.new(
      :member_details,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   For requests to get the next page of results, the pagination token
    #   that was returned with the previous set of results. The initial
    #   request does not include a pagination token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/ListOrganizationAdminAccountsRequest AWS API Documentation
    #
    class ListOrganizationAdminAccountsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] administrators
    #   The list of Detective administrator accounts.
    #   @return [Array<Types::Administrator>]
    #
    # @!attribute [rw] next_token
    #   If there are more accounts remaining in the results, then this is
    #   the pagination token to use to request the next page of accounts.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/ListOrganizationAdminAccountsResponse AWS API Documentation
    #
    class ListOrganizationAdminAccountsResponse < Struct.new(
      :administrators,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the behavior graph for which to retrieve the tag values.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tag values that are assigned to the behavior graph. The request
    #   returns up to 50 tag values.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a member account in a behavior graph.
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account identifier for the member account.
    #   @return [String]
    #
    # @!attribute [rw] email_address
    #   The Amazon Web Services account root user email address for the
    #   member account.
    #   @return [String]
    #
    # @!attribute [rw] graph_arn
    #   The ARN of the behavior graph.
    #   @return [String]
    #
    # @!attribute [rw] master_id
    #   The Amazon Web Services account identifier of the administrator
    #   account for the behavior graph.
    #   @return [String]
    #
    # @!attribute [rw] administrator_id
    #   The Amazon Web Services account identifier of the administrator
    #   account for the behavior graph.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current membership status of the member account. The status can
    #   have one of the following values:
    #
    #   * `INVITED` - For invited accounts only. Indicates that the member
    #     was sent an invitation but has not yet responded.
    #
    #   * `VERIFICATION_IN_PROGRESS` - For invited accounts only, indicates
    #     that Detective is verifying that the account identifier and email
    #     address provided for the member account match. If they do match,
    #     then Detective sends the invitation. If the email address and
    #     account identifier don't match, then the member cannot be added
    #     to the behavior graph.
    #
    #     For organization accounts in the organization behavior graph,
    #     indicates that Detective is verifying that the account belongs to
    #     the organization.
    #
    #   * `VERIFICATION_FAILED` - For invited accounts only. Indicates that
    #     the account and email address provided for the member account do
    #     not match, and Detective did not send an invitation to the
    #     account.
    #
    #   * `ENABLED` - Indicates that the member account currently
    #     contributes data to the behavior graph. For invited accounts, the
    #     member account accepted the invitation. For organization accounts
    #     in the organization behavior graph, the Detective administrator
    #     account enabled the organization account as a member account.
    #
    #   * `ACCEPTED_BUT_DISABLED` - The account accepted the invitation, or
    #     was enabled by the Detective administrator account, but is
    #     prevented from contributing data to the behavior graph.
    #     `DisabledReason` provides the reason why the member account is not
    #     enabled.
    #
    #   Invited accounts that declined an invitation or that were removed
    #   from the behavior graph are not included. In the organization
    #   behavior graph, organization accounts that the Detective
    #   administrator account did not enable are not included.
    #   @return [String]
    #
    # @!attribute [rw] disabled_reason
    #   For member accounts with a status of `ACCEPTED_BUT_DISABLED`, the
    #   reason that the member account is not enabled.
    #
    #   The reason can have one of the following values:
    #
    #   * `VOLUME_TOO_HIGH` - Indicates that adding the member account would
    #     cause the data volume for the behavior graph to be too high.
    #
    #   * `VOLUME_UNKNOWN` - Indicates that Detective is unable to verify
    #     the data volume for the member account. This is usually because
    #     the member account is not enrolled in Amazon GuardDuty.
    #   @return [String]
    #
    # @!attribute [rw] invited_time
    #   For invited accounts, the date and time that Detective sent the
    #   invitation to the account. The value is an ISO8601 formatted string.
    #   For example, `2021-08-18T16:35:56.284Z`.
    #   @return [Time]
    #
    # @!attribute [rw] updated_time
    #   The date and time that the member account was last updated. The
    #   value is an ISO8601 formatted string. For example,
    #   `2021-08-18T16:35:56.284Z`.
    #   @return [Time]
    #
    # @!attribute [rw] volume_usage_in_bytes
    #   The data volume in bytes per day for the member account.
    #   @return [Integer]
    #
    # @!attribute [rw] volume_usage_updated_time
    #   The data and time when the member account data volume was last
    #   updated. The value is an ISO8601 formatted string. For example,
    #   `2021-08-18T16:35:56.284Z`.
    #   @return [Time]
    #
    # @!attribute [rw] percent_of_graph_utilization
    #   The member account data volume as a percentage of the maximum
    #   allowed data volume. 0 indicates 0 percent, and 100 indicates 100
    #   percent.
    #
    #   Note that this is not the percentage of the behavior graph data
    #   volume.
    #
    #   For example, the data volume for the behavior graph is 80 GB per
    #   day. The maximum data volume is 160 GB per day. If the data volume
    #   for the member account is 40 GB per day, then
    #   `PercentOfGraphUtilization` is 25. It represents 25% of the maximum
    #   allowed data volume.
    #   @return [Float]
    #
    # @!attribute [rw] percent_of_graph_utilization_updated_time
    #   The date and time when the graph utilization percentage was last
    #   updated. The value is an ISO8601 formatted string. For example,
    #   `2021-08-18T16:35:56.284Z`.
    #   @return [Time]
    #
    # @!attribute [rw] invitation_type
    #   The type of behavior graph membership.
    #
    #   For an organization account in the organization behavior graph, the
    #   type is `ORGANIZATION`.
    #
    #   For an account that was invited to a behavior graph, the type is
    #   `INVITATION`.
    #   @return [String]
    #
    # @!attribute [rw] volume_usage_by_datasource_package
    #   Details on the volume of usage for each data source package in a
    #   behavior graph.
    #   @return [Hash<String,Types::DatasourcePackageUsageInfo>]
    #
    # @!attribute [rw] datasource_package_ingest_states
    #   The state of a data source package for the behavior graph.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/MemberDetail AWS API Documentation
    #
    class MemberDetail < Struct.new(
      :account_id,
      :email_address,
      :graph_arn,
      :master_id,
      :administrator_id,
      :status,
      :disabled_reason,
      :invited_time,
      :updated_time,
      :volume_usage_in_bytes,
      :volume_usage_updated_time,
      :percent_of_graph_utilization,
      :percent_of_graph_utilization_updated_time,
      :invitation_type,
      :volume_usage_by_datasource_package,
      :datasource_package_ingest_states)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details on data source packages for members of the behavior graph.
    #
    # @!attribute [rw] account_id
    #   The account identifier of the Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] graph_arn
    #   The ARN of the organization behavior graph.
    #   @return [String]
    #
    # @!attribute [rw] datasource_package_ingest_history
    #   Details on when a data source package was added to a behavior graph.
    #   @return [Hash<String,Hash<String,Types::TimestampForCollection>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/MembershipDatasources AWS API Documentation
    #
    class MembershipDatasources < Struct.new(
      :account_id,
      :graph_arn,
      :datasource_package_ingest_history)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_arn
    #   The ARN of the behavior graph to reject the invitation to.
    #
    #   The member account's current member status in the behavior graph
    #   must be `INVITED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/RejectInvitationRequest AWS API Documentation
    #
    class RejectInvitationRequest < Struct.new(
      :graph_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request refers to a nonexistent resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This request cannot be completed for one of the following reasons.
    #
    # * The request would cause the number of member accounts in the
    #   behavior graph to exceed the maximum allowed. A behavior graph
    #   cannot have more than 1200 member accounts.
    #
    # * The request would cause the data rate for the behavior graph to
    #   exceed the maximum allowed.
    #
    # * Detective is unable to verify the data rate for the member account.
    #   This is usually because the member account is not enrolled in Amazon
    #   GuardDuty.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   The type of resource that has exceeded the service quota.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_arn
    #   The ARN of the behavior graph.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The account ID of the member account to try to enable.
    #
    #   The account must be an invited member account with a status of
    #   `ACCEPTED_BUT_DISABLED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/StartMonitoringMemberRequest AWS API Documentation
    #
    class StartMonitoringMemberRequest < Struct.new(
      :graph_arn,
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the behavior graph to assign the tags to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to assign to the behavior graph. You can add up to 50 tags.
    #   For each tag, you provide the tag key and the tag value. Each tag
    #   key can contain up to 128 characters. Each tag value can contain up
    #   to 256 characters.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Details on when data collection began for a source package.
    #
    # @!attribute [rw] timestamp
    #   The data and time when data collection began for a source package.
    #   The value is an ISO8601 formatted string. For example,
    #   `2021-08-18T16:35:56.284Z`.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/TimestampForCollection AWS API Documentation
    #
    class TimestampForCollection < Struct.new(
      :timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request cannot be completed because too many other requests are
    # occurring at the same time.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A member account that was included in a request but for which the
    # request could not be processed.
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account identifier of the member account
    #   that was not processed.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason that the member account request could not be processed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/UnprocessedAccount AWS API Documentation
    #
    class UnprocessedAccount < Struct.new(
      :account_id,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Behavior graphs that could not be processed in the request.
    #
    # @!attribute [rw] graph_arn
    #   The ARN of the organization behavior graph.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason data source package information could not be processed
    #   for a behavior graph.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/UnprocessedGraph AWS API Documentation
    #
    class UnprocessedGraph < Struct.new(
      :graph_arn,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the behavior graph to remove the tags from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys of the tags to remove from the behavior graph. You can
    #   remove up to 50 tags at a time.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] graph_arn
    #   The ARN of the behavior graph.
    #   @return [String]
    #
    # @!attribute [rw] datasource_packages
    #   The data source package start for the behavior graph.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/UpdateDatasourcePackagesRequest AWS API Documentation
    #
    class UpdateDatasourcePackagesRequest < Struct.new(
      :graph_arn,
      :datasource_packages)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_arn
    #   The ARN of the organization behavior graph.
    #   @return [String]
    #
    # @!attribute [rw] auto_enable
    #   Indicates whether to automatically enable new organization accounts
    #   as member accounts in the organization behavior graph.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/UpdateOrganizationConfigurationRequest AWS API Documentation
    #
    class UpdateOrganizationConfigurationRequest < Struct.new(
      :graph_arn,
      :auto_enable)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters are invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code associated with the validation failure.
    #   @return [String]
    #
    # @!attribute [rw] error_code_reason
    #   An explanation of why validation failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :error_code,
      :error_code_reason)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
