# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Detective
  module Types

    # @note When making an API call, you may pass AcceptInvitationRequest
    #   data as a hash:
    #
    #       {
    #         graph_arn: "GraphArn", # required
    #       }
    #
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

    # An AWS account that is the master of or a member of a behavior graph.
    #
    # @note When making an API call, you may pass Account
    #   data as a hash:
    #
    #       {
    #         account_id: "AccountId", # required
    #         email_address: "EmailAddress", # required
    #       }
    #
    # @!attribute [rw] account_id
    #   The account identifier of the AWS account.
    #   @return [String]
    #
    # @!attribute [rw] email_address
    #   The AWS account root user email address for the AWS account.
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

    # @note When making an API call, you may pass CreateMembersRequest
    #   data as a hash:
    #
    #       {
    #         graph_arn: "GraphArn", # required
    #         message: "EmailMessage",
    #         accounts: [ # required
    #           {
    #             account_id: "AccountId", # required
    #             email_address: "EmailAddress", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] graph_arn
    #   The ARN of the behavior graph to invite the member accounts to
    #   contribute their data to.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Customized message text to include in the invitation email message
    #   to the invited member accounts.
    #   @return [String]
    #
    # @!attribute [rw] accounts
    #   The list of AWS accounts to invite to become member accounts in the
    #   behavior graph. For each invited account, the account list contains
    #   the account identifier and the AWS account root user email address.
    #   @return [Array<Types::Account>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/CreateMembersRequest AWS API Documentation
    #
    class CreateMembersRequest < Struct.new(
      :graph_arn,
      :message,
      :accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] members
    #   The set of member account invitation requests that Detective was
    #   able to process. This includes accounts that are being verified,
    #   that failed verification, and that passed verification and are being
    #   sent an invitation.
    #   @return [Array<Types::MemberDetail>]
    #
    # @!attribute [rw] unprocessed_accounts
    #   The list of accounts for which Detective was unable to process the
    #   invitation request. For each account, the list provides the reason
    #   why the request could not be processed. The list includes accounts
    #   that are already member accounts in the behavior graph.
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

    # @note When making an API call, you may pass DeleteGraphRequest
    #   data as a hash:
    #
    #       {
    #         graph_arn: "GraphArn", # required
    #       }
    #
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

    # @note When making an API call, you may pass DeleteMembersRequest
    #   data as a hash:
    #
    #       {
    #         graph_arn: "GraphArn", # required
    #         account_ids: ["AccountId"], # required
    #       }
    #
    # @!attribute [rw] graph_arn
    #   The ARN of the behavior graph to delete members from.
    #   @return [String]
    #
    # @!attribute [rw] account_ids
    #   The list of AWS account identifiers for the member accounts to
    #   delete from the behavior graph.
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
    #   The list of AWS account identifiers for the member accounts that
    #   Detective successfully deleted from the behavior graph.
    #   @return [Array<String>]
    #
    # @!attribute [rw] unprocessed_accounts
    #   The list of member accounts that Detective was not able to delete
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

    # @note When making an API call, you may pass DisassociateMembershipRequest
    #   data as a hash:
    #
    #       {
    #         graph_arn: "GraphArn", # required
    #       }
    #
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

    # @note When making an API call, you may pass GetMembersRequest
    #   data as a hash:
    #
    #       {
    #         graph_arn: "GraphArn", # required
    #         account_ids: ["AccountId"], # required
    #       }
    #
    # @!attribute [rw] graph_arn
    #   The ARN of the behavior graph for which to request the member
    #   details.
    #   @return [String]
    #
    # @!attribute [rw] account_ids
    #   The list of AWS account identifiers for the member account for which
    #   to return member details.
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
    #   in milliseconds since the epoch.
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

    # @note When making an API call, you may pass ListGraphsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
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
    #   A list of behavior graphs that the account is a master for.
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

    # @note When making an API call, you may pass ListInvitationsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
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

    # @note When making an API call, you may pass ListMembersRequest
    #   data as a hash:
    #
    #       {
    #         graph_arn: "GraphArn", # required
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
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
    #   The results include member accounts that did not pass verification
    #   and member accounts that have not yet accepted the invitation to the
    #   behavior graph. The results do not include member accounts that were
    #   removed from the behavior graph.
    #   @return [Array<Types::MemberDetail>]
    #
    # @!attribute [rw] next_token
    #   If there are more member accounts remaining in the results, then
    #   this is the pagination token to use to request the next page of
    #   member accounts.
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

    # Details about a member account that was invited to contribute to a
    # behavior graph.
    #
    # @!attribute [rw] account_id
    #   The AWS account identifier for the member account.
    #   @return [String]
    #
    # @!attribute [rw] email_address
    #   The AWS account root user email address for the member account.
    #   @return [String]
    #
    # @!attribute [rw] graph_arn
    #   The ARN of the behavior graph that the member account was invited
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] master_id
    #   The AWS account identifier of the master account for the behavior
    #   graph.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current membership status of the member account. The status can
    #   have one of the following values:
    #
    #   * `INVITED` - Indicates that the member was sent an invitation but
    #     has not yet responded.
    #
    #   * `VERIFICATION_IN_PROGRESS` - Indicates that Detective is verifying
    #     that the account identifier and email address provided for the
    #     member account match. If they do match, then Detective sends the
    #     invitation. If the email address and account identifier don't
    #     match, then the member cannot be added to the behavior graph.
    #
    #   * `VERIFICATION_FAILED` - Indicates that the account and email
    #     address provided for the member account do not match, and
    #     Detective did not send an invitation to the account.
    #
    #   * `ENABLED` - Indicates that the member account accepted the
    #     invitation to contribute to the behavior graph.
    #
    #   * `ACCEPTED_BUT_DISABLED` - Indicates that the member account
    #     accepted the invitation but is prevented from contributing data to
    #     the behavior graph. `DisabledReason` provides the reason why the
    #     member account is not enabled.
    #
    #   Member accounts that declined an invitation or that were removed
    #   from the behavior graph are not included.
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
    #   The date and time that Detective sent the invitation to the member
    #   account. The value is in milliseconds since the epoch.
    #   @return [Time]
    #
    # @!attribute [rw] updated_time
    #   The date and time that the member account was last updated. The
    #   value is in milliseconds since the epoch.
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
    #   updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/MemberDetail AWS API Documentation
    #
    class MemberDetail < Struct.new(
      :account_id,
      :email_address,
      :graph_arn,
      :master_id,
      :status,
      :disabled_reason,
      :invited_time,
      :updated_time,
      :percent_of_graph_utilization,
      :percent_of_graph_utilization_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RejectInvitationRequest
    #   data as a hash:
    #
    #       {
    #         graph_arn: "GraphArn", # required
    #       }
    #
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
    #   cannot have more than 1000 member accounts.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartMonitoringMemberRequest
    #   data as a hash:
    #
    #       {
    #         graph_arn: "GraphArn", # required
    #         account_id: "AccountId", # required
    #       }
    #
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

    # A member account that was included in a request but for which the
    # request could not be processed.
    #
    # @!attribute [rw] account_id
    #   The AWS account identifier of the member account that was not
    #   processed.
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

    # The request parameters are invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
