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
      SENSITIVE = [:email_address]
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
      SENSITIVE = [:message]
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

    # Contains details on the time range used to filter data.
    #
    # @!attribute [rw] start_inclusive
    #   A timestamp representing the start of the time period from when data
    #   is filtered, including the start date.
    #   @return [Time]
    #
    # @!attribute [rw] end_inclusive
    #   A timestamp representing the end date of the time period until when
    #   data is filtered, including the end date.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/DateFilter AWS API Documentation
    #
    class DateFilter < Struct.new(
      :start_inclusive,
      :end_inclusive)
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

    # Details on the criteria used to define the filter for investigation
    # results.
    #
    # @!attribute [rw] severity
    #   Filter the investigation results based on the severity.
    #   @return [Types::StringFilter]
    #
    # @!attribute [rw] status
    #   Filter the investigation results based on the status.
    #   @return [Types::StringFilter]
    #
    # @!attribute [rw] state
    #   Filter the investigation results based on the state.
    #   @return [Types::StringFilter]
    #
    # @!attribute [rw] entity_arn
    #   Filter the investigation results based on the Amazon Resource Name
    #   (ARN) of the entity.
    #   @return [Types::StringFilter]
    #
    # @!attribute [rw] created_time
    #   Filter the investigation results based on when the investigation was
    #   created.
    #   @return [Types::DateFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/FilterCriteria AWS API Documentation
    #
    class FilterCriteria < Struct.new(
      :severity,
      :status,
      :state,
      :entity_arn,
      :created_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information on suspicious IP addresses identified as
    # indicators of compromise. This indicator is derived from Amazon Web
    # Services threat intelligence.
    #
    # @!attribute [rw] ip_address
    #   IP address of the suspicious entity.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   Details the reason the IP address was flagged as suspicious.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/FlaggedIpAddressDetail AWS API Documentation
    #
    class FlaggedIpAddressDetail < Struct.new(
      :ip_address,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_arn
    #   The Amazon Resource Name (ARN) of the behavior graph.
    #   @return [String]
    #
    # @!attribute [rw] investigation_id
    #   The investigation ID of the investigation report.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/GetInvestigationRequest AWS API Documentation
    #
    class GetInvestigationRequest < Struct.new(
      :graph_arn,
      :investigation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_arn
    #   The Amazon Resource Name (ARN) of the behavior graph.
    #   @return [String]
    #
    # @!attribute [rw] investigation_id
    #   The investigation ID of the investigation report.
    #   @return [String]
    #
    # @!attribute [rw] entity_arn
    #   The unique Amazon Resource Name (ARN). Detective supports IAM user
    #   ARNs and IAM role ARNs.
    #   @return [String]
    #
    # @!attribute [rw] entity_type
    #   Type of entity. For example, Amazon Web Services accounts, such as
    #   an IAM user and/or IAM role.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The creation time of the investigation report in UTC time stamp
    #   format.
    #   @return [Time]
    #
    # @!attribute [rw] scope_start_time
    #   The start date and time used to set the scope time within which you
    #   want to generate the investigation report. The value is an UTC
    #   ISO8601 formatted string. For example, `2021-08-18T16:35:56.284Z`.
    #   @return [Time]
    #
    # @!attribute [rw] scope_end_time
    #   The data and time when the investigation began. The value is an UTC
    #   ISO8601 formatted string. For example, `2021-08-18T16:35:56.284Z`.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status based on the completion status of the investigation.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   The severity assigned is based on the likelihood and impact of the
    #   indicators of compromise discovered in the investigation.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the investigation. An archived investigation
    #   indicates that you have completed reviewing the investigation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/GetInvestigationResponse AWS API Documentation
    #
    class GetInvestigationResponse < Struct.new(
      :graph_arn,
      :investigation_id,
      :entity_arn,
      :entity_type,
      :created_time,
      :scope_start_time,
      :scope_end_time,
      :status,
      :severity,
      :state)
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

    # Contains information on unusual and impossible travel in an account.
    #
    # @!attribute [rw] starting_ip_address
    #   IP address where the resource was first used in the impossible
    #   travel.
    #   @return [String]
    #
    # @!attribute [rw] ending_ip_address
    #   IP address where the resource was last used in the impossible
    #   travel.
    #   @return [String]
    #
    # @!attribute [rw] starting_location
    #   Location where the resource was first used in the impossible travel.
    #   @return [String]
    #
    # @!attribute [rw] ending_location
    #   Location where the resource was last used in the impossible travel.
    #   @return [String]
    #
    # @!attribute [rw] hourly_time_delta
    #   Returns the time difference between the first and last timestamp the
    #   resource was used.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/ImpossibleTravelDetail AWS API Documentation
    #
    class ImpossibleTravelDetail < Struct.new(
      :starting_ip_address,
      :ending_ip_address,
      :starting_location,
      :ending_location,
      :hourly_time_delta)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detective investigations triages indicators of compromises such as a
    # finding and surfaces only the most critical and suspicious issues, so
    # you can focus on high-level investigations. An `Indicator` lets you
    # determine if an Amazon Web Services resource is involved in unusual
    # activity that could indicate malicious behavior and its impact.
    #
    # @!attribute [rw] indicator_type
    #   The type of indicator.
    #   @return [String]
    #
    # @!attribute [rw] indicator_detail
    #   Details about the indicators of compromise that are used to
    #   determine if a resource is involved in a security incident. An
    #   indicator of compromise (IOC) is an artifact observed in or on a
    #   network, system, or environment that can (with a high level of
    #   confidence) identify malicious activity or a security incident.
    #   @return [Types::IndicatorDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/Indicator AWS API Documentation
    #
    class Indicator < Struct.new(
      :indicator_type,
      :indicator_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the indicators of compromise which are used to determine
    # if a resource is involved in a security incident. An indicator of
    # compromise (IOC) is an artifact observed in or on a network, system,
    # or environment that can (with a high level of confidence) identify
    # malicious activity or a security incident. For the list of indicators
    # of compromise that are generated by Detective investigations, see
    # [Detective investigations][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/detective/latest/userguide/detective-investigation-about.html
    #
    # @!attribute [rw] tt_ps_observed_detail
    #   Details about the indicator of compromise.
    #   @return [Types::TTPsObservedDetail]
    #
    # @!attribute [rw] impossible_travel_detail
    #   Identifies unusual and impossible user activity for an account.
    #   @return [Types::ImpossibleTravelDetail]
    #
    # @!attribute [rw] flagged_ip_address_detail
    #   Suspicious IP addresses that are flagged, which indicates critical
    #   or severe threats based on threat intelligence by Detective. This
    #   indicator is derived from Amazon Web Services threat intelligence.
    #   @return [Types::FlaggedIpAddressDetail]
    #
    # @!attribute [rw] new_geolocation_detail
    #   Contains details about the new geographic location.
    #   @return [Types::NewGeolocationDetail]
    #
    # @!attribute [rw] new_aso_detail
    #   Contains details about the new Autonomous System Organization (ASO).
    #   @return [Types::NewAsoDetail]
    #
    # @!attribute [rw] new_user_agent_detail
    #   Contains details about the new user agent.
    #   @return [Types::NewUserAgentDetail]
    #
    # @!attribute [rw] related_finding_detail
    #   Contains details about related findings.
    #   @return [Types::RelatedFindingDetail]
    #
    # @!attribute [rw] related_finding_group_detail
    #   Contains details about related finding groups.
    #   @return [Types::RelatedFindingGroupDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/IndicatorDetail AWS API Documentation
    #
    class IndicatorDetail < Struct.new(
      :tt_ps_observed_detail,
      :impossible_travel_detail,
      :flagged_ip_address_detail,
      :new_geolocation_detail,
      :new_aso_detail,
      :new_user_agent_detail,
      :related_finding_detail,
      :related_finding_group_detail)
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

    # Details about the investigation related to a potential security event
    # identified by Detective.
    #
    # @!attribute [rw] investigation_id
    #   The investigation ID of the investigation report.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   Severity based on the likelihood and impact of the indicators of
    #   compromise discovered in the investigation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status based on the completion status of the investigation.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the investigation. An archived investigation
    #   indicates you have completed reviewing the investigation.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The time stamp of the creation time of the investigation report. The
    #   value is an UTC ISO8601 formatted string. For example,
    #   `2021-08-18T16:35:56.284Z`.
    #   @return [Time]
    #
    # @!attribute [rw] entity_arn
    #   The unique Amazon Resource Name (ARN) of the IAM user and IAM role.
    #   @return [String]
    #
    # @!attribute [rw] entity_type
    #   Type of entity. For example, Amazon Web Services accounts, such as
    #   IAM user and role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/InvestigationDetail AWS API Documentation
    #
    class InvestigationDetail < Struct.new(
      :investigation_id,
      :severity,
      :status,
      :state,
      :created_time,
      :entity_arn,
      :entity_type)
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

    # @!attribute [rw] graph_arn
    #   The Amazon Resource Name (ARN) of the behavior graph.
    #   @return [String]
    #
    # @!attribute [rw] investigation_id
    #   The investigation ID of the investigation report.
    #   @return [String]
    #
    # @!attribute [rw] indicator_type
    #   For the list of indicators of compromise that are generated by
    #   Detective investigations, see [Detective investigations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/detective/latest/userguide/detective-investigation-about.html
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Lists if there are more results available. The value of nextToken is
    #   a unique pagination token for each page. Repeat the call using the
    #   returned token to retrieve the next page. Keep all other arguments
    #   unchanged.
    #
    #   Each pagination token expires after 24 hours. Using an expired
    #   pagination token will return a Validation Exception error.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Lists the maximum number of indicators in a page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/ListIndicatorsRequest AWS API Documentation
    #
    class ListIndicatorsRequest < Struct.new(
      :graph_arn,
      :investigation_id,
      :indicator_type,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_arn
    #   The Amazon Resource Name (ARN) of the behavior graph.
    #   @return [String]
    #
    # @!attribute [rw] investigation_id
    #   The investigation ID of the investigation report.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Lists if there are more results available. The value of nextToken is
    #   a unique pagination token for each page. Repeat the call using the
    #   returned token to retrieve the next page. Keep all other arguments
    #   unchanged.
    #
    #   Each pagination token expires after 24 hours. Using an expired
    #   pagination token will return a Validation Exception error.
    #   @return [String]
    #
    # @!attribute [rw] indicators
    #   Lists the indicators of compromise.
    #   @return [Array<Types::Indicator>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/ListIndicatorsResponse AWS API Documentation
    #
    class ListIndicatorsResponse < Struct.new(
      :graph_arn,
      :investigation_id,
      :next_token,
      :indicators)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_arn
    #   The Amazon Resource Name (ARN) of the behavior graph.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Lists if there are more results available. The value of nextToken is
    #   a unique pagination token for each page. Repeat the call using the
    #   returned token to retrieve the next page. Keep all other arguments
    #   unchanged.
    #
    #   Each pagination token expires after 24 hours. Using an expired
    #   pagination token will return a Validation Exception error.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Lists the maximum number of investigations in a page.
    #   @return [Integer]
    #
    # @!attribute [rw] filter_criteria
    #   Filters the investigation results based on a criteria.
    #   @return [Types::FilterCriteria]
    #
    # @!attribute [rw] sort_criteria
    #   Sorts the investigation results based on a criteria.
    #   @return [Types::SortCriteria]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/ListInvestigationsRequest AWS API Documentation
    #
    class ListInvestigationsRequest < Struct.new(
      :graph_arn,
      :next_token,
      :max_results,
      :filter_criteria,
      :sort_criteria)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] investigation_details
    #   Lists the summary of uncommon behavior or malicious activity which
    #   indicates a compromise.
    #   @return [Array<Types::InvestigationDetail>]
    #
    # @!attribute [rw] next_token
    #   Lists if there are more results available. The value of nextToken is
    #   a unique pagination token for each page. Repeat the call using the
    #   returned token to retrieve the next page. Keep all other arguments
    #   unchanged.
    #
    #   Each pagination token expires after 24 hours.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/ListInvestigationsResponse AWS API Documentation
    #
    class ListInvestigationsResponse < Struct.new(
      :investigation_details,
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
      SENSITIVE = [:email_address]
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

    # Details new Autonomous System Organizations (ASOs) used either at the
    # resource or account level.
    #
    # @!attribute [rw] aso
    #   Details about the new Autonomous System Organization (ASO).
    #   @return [String]
    #
    # @!attribute [rw] is_new_for_entire_account
    #   Checks if the Autonomous System Organization (ASO) is new for the
    #   entire account.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/NewAsoDetail AWS API Documentation
    #
    class NewAsoDetail < Struct.new(
      :aso,
      :is_new_for_entire_account)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details new geolocations used either at the resource or account level.
    # For example, lists an observed geolocation that is an infrequent or
    # unused location based on previous user activity.
    #
    # @!attribute [rw] location
    #   Location where the resource was accessed.
    #   @return [String]
    #
    # @!attribute [rw] ip_address
    #   IP address using which the resource was accessed.
    #   @return [String]
    #
    # @!attribute [rw] is_new_for_entire_account
    #   Checks if the geolocation is new for the entire account.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/NewGeolocationDetail AWS API Documentation
    #
    class NewGeolocationDetail < Struct.new(
      :location,
      :ip_address,
      :is_new_for_entire_account)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details new user agents used either at the resource or account level.
    #
    # @!attribute [rw] user_agent
    #   New user agent which accessed the resource.
    #   @return [String]
    #
    # @!attribute [rw] is_new_for_entire_account
    #   Checks if the user agent is new for the entire account.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/NewUserAgentDetail AWS API Documentation
    #
    class NewUserAgentDetail < Struct.new(
      :user_agent,
      :is_new_for_entire_account)
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

    # Details related activities associated with a potential security event.
    # Lists all distinct categories of evidence that are connected to the
    # resource or the finding group.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the related finding.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of finding.
    #   @return [String]
    #
    # @!attribute [rw] ip_address
    #   The IP address of the finding.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/RelatedFindingDetail AWS API Documentation
    #
    class RelatedFindingDetail < Struct.new(
      :arn,
      :type,
      :ip_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details multiple activities as they related to a potential security
    # event. Detective uses graph analysis technique that infers
    # relationships between findings and entities, and groups them together
    # as a finding group.
    #
    # @!attribute [rw] id
    #   The unique identifier for the finding group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/RelatedFindingGroupDetail AWS API Documentation
    #
    class RelatedFindingGroupDetail < Struct.new(
      :id)
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
    # * This request cannot be completed if it would cause the number of
    #   member accounts in the behavior graph to exceed the maximum allowed.
    #   A behavior graph cannot have more than 1,200 member accounts.
    #
    # * This request cannot be completed if the current volume ingested is
    #   above the limit of 10 TB per day. Detective will not allow you to
    #   add additional member accounts.
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

    # Details about the criteria used for sorting investigations.
    #
    # @!attribute [rw] field
    #   Represents the `Field` attribute to sort investigations.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   The order by which the sorted findings are displayed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/SortCriteria AWS API Documentation
    #
    class SortCriteria < Struct.new(
      :field,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] graph_arn
    #   The Amazon Resource Name (ARN) of the behavior graph.
    #   @return [String]
    #
    # @!attribute [rw] entity_arn
    #   The unique Amazon Resource Name (ARN) of the IAM user and IAM role.
    #   @return [String]
    #
    # @!attribute [rw] scope_start_time
    #   The data and time when the investigation began. The value is an UTC
    #   ISO8601 formatted string. For example, `2021-08-18T16:35:56.284Z`.
    #   @return [Time]
    #
    # @!attribute [rw] scope_end_time
    #   The data and time when the investigation ended. The value is an UTC
    #   ISO8601 formatted string. For example, `2021-08-18T16:35:56.284Z`.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/StartInvestigationRequest AWS API Documentation
    #
    class StartInvestigationRequest < Struct.new(
      :graph_arn,
      :entity_arn,
      :scope_start_time,
      :scope_end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] investigation_id
    #   The investigation ID of the investigation report.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/StartInvestigationResponse AWS API Documentation
    #
    class StartInvestigationResponse < Struct.new(
      :investigation_id)
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

    # A string for filtering Detective investigations.
    #
    # @!attribute [rw] value
    #   The string filter value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/StringFilter AWS API Documentation
    #
    class StringFilter < Struct.new(
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details tactics, techniques, and procedures (TTPs) used in a potential
    # security event. Tactics are based on [MITRE ATT&amp;CK Matrix for
    # Enterprise][1].
    #
    #
    #
    # [1]: https://attack.mitre.org/matrices/enterprise/
    #
    # @!attribute [rw] tactic
    #   The tactic used, identified by the investigation.
    #   @return [String]
    #
    # @!attribute [rw] technique
    #   The technique used, identified by the investigation.
    #   @return [String]
    #
    # @!attribute [rw] procedure
    #   The procedure used, identified by the investigation.
    #   @return [String]
    #
    # @!attribute [rw] ip_address
    #   The IP address where the tactics, techniques, and procedure (TTP)
    #   was observed.
    #   @return [String]
    #
    # @!attribute [rw] api_name
    #   The name of the API where the tactics, techniques, and procedure
    #   (TTP) was observed.
    #   @return [String]
    #
    # @!attribute [rw] api_success_count
    #   The total number of successful API requests.
    #   @return [Integer]
    #
    # @!attribute [rw] api_failure_count
    #   The total number of failed API requests.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/TTPsObservedDetail AWS API Documentation
    #
    class TTPsObservedDetail < Struct.new(
      :tactic,
      :technique,
      :procedure,
      :ip_address,
      :api_name,
      :api_success_count,
      :api_failure_count)
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
    #   The data source package to start for the behavior graph.
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
    #   The Amazon Resource Name (ARN) of the behavior graph.
    #   @return [String]
    #
    # @!attribute [rw] investigation_id
    #   The investigation ID of the investigation report.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the investigation. An archived investigation
    #   indicates you have completed reviewing the investigation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/detective-2018-10-26/UpdateInvestigationStateRequest AWS API Documentation
    #
    class UpdateInvestigationStateRequest < Struct.new(
      :graph_arn,
      :investigation_id,
      :state)
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

