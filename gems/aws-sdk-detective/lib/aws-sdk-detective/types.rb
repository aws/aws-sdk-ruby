# frozen_string_literal: true

# This is generated code!

module Aws::Detective
  # This module contains the types returned by client operations.
  module Types

    # @!attribute graph_arn
    #   <p>The ARN of the behavior graph that the member account is accepting the invitation
    #            for.</p>
    #            <p>The member account status in the behavior graph must be <code>INVITED</code>.</p>
    #   @return [String]
    class AcceptInvitationRequest < Struct.new(
      :graph_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request issuer does not have permission to access this resource or perform this
    #          operation.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute error_code
    #   <p>The SDK default error code associated with the access denied exception.</p>
    #   @return [String]
    # @!attribute error_code_reason
    #   <p>The SDK default explanation of why access was denied.</p>
    #   @return [String]
    # @!attribute sub_error_code
    #   <p>The error code associated with the access denied exception.</p>
    #   @return [String]
    # @!attribute sub_error_code_reason
    #   <p> An explanation of why access was denied.</p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      :error_code,
      :error_code_reason,
      :sub_error_code,
      :sub_error_code_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An Amazon Web Services account that is the administrator account of or a member of a
    #          behavior graph.</p>
    # @!attribute account_id
    #   <p>The account identifier of the Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute email_address
    #   <p>The Amazon Web Services account root user email address for the Amazon Web Services
    #            account.</p>
    #   @return [String]
    class Account < Struct.new(
      :account_id,
      :email_address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the Detective administrator account for an
    #          organization.</p>
    # @!attribute account_id
    #   <p>The Amazon Web Services account identifier of the Detective administrator
    #            account for the organization.</p>
    #   @return [String]
    # @!attribute graph_arn
    #   <p>The ARN of the organization behavior graph.</p>
    #   @return [String]
    # @!attribute delegation_time
    #   <p>The date and time when the Detective administrator account was enabled. The
    #            value is an ISO8601 formatted string. For example,
    #            <code>2021-08-18T16:35:56.284Z</code>.</p>
    #   @return [Time]
    class Administrator < Struct.new(
      :account_id,
      :graph_arn,
      :delegation_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_arn
    #   <p>The ARN of the behavior graph.</p>
    #   @return [String]
    # @!attribute account_ids
    #   <p>The list of Amazon Web Services accounts to get data source package information
    #            on.</p>
    #   @return [Array<String>]
    class BatchGetGraphMemberDatasourcesRequest < Struct.new(
      :graph_arn,
      :account_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute member_datasources
    #   <p>Details on the status of data source packages for members of the behavior graph.</p>
    #   @return [Array<Types::MembershipDatasources>]
    # @!attribute unprocessed_accounts
    #   <p>Accounts that data source package information could not be retrieved for.</p>
    #   @return [Array<Types::UnprocessedAccount>]
    class BatchGetGraphMemberDatasourcesResponse < Struct.new(
      :member_datasources,
      :unprocessed_accounts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_arns
    #   <p>The ARN of the behavior graph.</p>
    #   @return [Array<String>]
    class BatchGetMembershipDatasourcesRequest < Struct.new(
      :graph_arns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute membership_datasources
    #   <p>Details on the data source package history for an member of the behavior graph.</p>
    #   @return [Array<Types::MembershipDatasources>]
    # @!attribute unprocessed_graphs
    #   <p>Graphs that data source package information could not be retrieved for.</p>
    #   @return [Array<Types::UnprocessedGraph>]
    class BatchGetMembershipDatasourcesResponse < Struct.new(
      :membership_datasources,
      :unprocessed_graphs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request attempted an invalid action.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags to assign to the new behavior graph. You can add up to 50 tags. For each tag,
    #            you provide the tag key and the tag value. Each tag key can contain up to 128 characters.
    #            Each tag value can contain up to 256 characters.</p>
    #   @return [Hash<String, String>]
    class CreateGraphRequest < Struct.new(
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_arn
    #   <p>The ARN of the new behavior graph.</p>
    #   @return [String]
    class CreateGraphResponse < Struct.new(
      :graph_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_arn
    #   <p>The ARN of the behavior graph.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Customized message text to include in the invitation email message to the invited member
    #            accounts.</p>
    #   @return [String]
    # @!attribute disable_email_notification
    #   <p>if set to <code>true</code>, then the invited accounts do not receive email
    #            notifications. By default, this is set to <code>false</code>, and the invited accounts
    #            receive email notifications.</p>
    #            <p>Organization accounts in the organization behavior graph do not receive email
    #            notifications.</p>
    #   @return [Boolean]
    # @!attribute accounts
    #   <p>The list of Amazon Web Services accounts to invite or to enable. You can invite or enable
    #            up to 50 accounts at a time. For each invited account, the account list contains the
    #            account identifier and the Amazon Web Services account root user email address. For
    #            organization accounts in the organization behavior graph, the email address is not
    #            required.</p>
    #   @return [Array<Types::Account>]
    class CreateMembersRequest < Struct.new(
      :graph_arn,
      :message,
      :disable_email_notification,
      :accounts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute members
    #   <p>The set of member account invitation or enablement requests that Detective was
    #            able to process. This includes accounts that are being verified, that failed verification,
    #            and that passed verification and are being sent an invitation or are being enabled.</p>
    #   @return [Array<Types::MemberDetail>]
    # @!attribute unprocessed_accounts
    #   <p>The list of accounts for which Detective was unable to process the invitation
    #            or enablement request. For each account, the list provides the reason why the request could
    #            not be processed. The list includes accounts that are already member accounts in the
    #            behavior graph.</p>
    #   @return [Array<Types::UnprocessedAccount>]
    class CreateMembersResponse < Struct.new(
      :members,
      :unprocessed_accounts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the data source packages ingested by your behavior graph.</p>
    # @!attribute datasource_package_ingest_state
    #   <p>Details on which data source packages are ingested for a member account.</p>
    #   @return [String]
    # @!attribute last_ingest_state_change
    #   <p>The date a data source package was enabled for this account</p>
    #   @return [Hash<String, Types::TimestampForCollection>]
    class DatasourcePackageIngestDetail < Struct.new(
      :datasource_package_ingest_state,
      :last_ingest_state_change,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information on the usage of a data source package in the behavior graph.</p>
    # @!attribute volume_usage_in_bytes
    #   <p>Total volume of data in bytes per day ingested for a given data source package.</p>
    #   @return [Integer]
    # @!attribute volume_usage_update_time
    #   <p>The data and time when the member account data volume was last updated. The value is an
    #            ISO8601 formatted string. For example, <code>2021-08-18T16:35:56.284Z</code>.</p>
    #   @return [Time]
    class DatasourcePackageUsageInfo < Struct.new(
      :volume_usage_in_bytes,
      :volume_usage_update_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains details on the time range used to filter data.</p>
    # @!attribute start_inclusive
    #   <p>A timestamp representing the start of the time period from when data is filtered, including the start date.</p>
    #   @return [Time]
    # @!attribute end_inclusive
    #   <p>A timestamp representing the end date of the time period until when data is filtered, including the end date.</p>
    #   @return [Time]
    class DateFilter < Struct.new(
      :start_inclusive,
      :end_inclusive,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_arn
    #   <p>The ARN of the behavior graph to disable.</p>
    #   @return [String]
    class DeleteGraphRequest < Struct.new(
      :graph_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_arn
    #   <p>The ARN of the behavior graph to remove members from.</p>
    #   @return [String]
    # @!attribute account_ids
    #   <p>The list of Amazon Web Services account identifiers for the member accounts to remove
    #            from the behavior graph. You can remove up to 50 member accounts at a time.</p>
    #   @return [Array<String>]
    class DeleteMembersRequest < Struct.new(
      :graph_arn,
      :account_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_ids
    #   <p>The list of Amazon Web Services account identifiers for the member accounts that Detective successfully removed from the behavior graph.</p>
    #   @return [Array<String>]
    # @!attribute unprocessed_accounts
    #   <p>The list of member accounts that Detective was not able to remove from the
    #            behavior graph. For each member account, provides the reason that the deletion could not be
    #            processed.</p>
    #   @return [Array<Types::UnprocessedAccount>]
    class DeleteMembersResponse < Struct.new(
      :account_ids,
      :unprocessed_accounts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_arn
    #   <p>The ARN of the organization behavior graph.</p>
    #   @return [String]
    class DescribeOrganizationConfigurationRequest < Struct.new(
      :graph_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_enable
    #   <p>Indicates whether to automatically enable new organization accounts as member accounts
    #            in the organization behavior graph.</p>
    #   @return [Boolean]
    class DescribeOrganizationConfigurationResponse < Struct.new(
      :auto_enable,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:auto_enable] = false unless options.key?(:auto_enable)
        super
      end
    end

    # @!attribute graph_arn
    #   <p>The ARN of the behavior graph to remove the member account from.</p>
    #            <p>The member account's member status in the behavior graph must be
    #            <code>ENABLED</code>.</p>
    #   @return [String]
    class DisassociateMembershipRequest < Struct.new(
      :graph_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account identifier of the account to designate as the Detective administrator account for the organization.</p>
    #   @return [String]
    class EnableOrganizationAdminAccountRequest < Struct.new(
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details on the criteria used to define the filter for investigation results.</p>
    # @!attribute severity
    #   <p>Filter the investigation results based on the severity.</p>
    #   @return [Types::StringFilter]
    # @!attribute status
    #   <p>Filter the investigation results based on the status.</p>
    #   @return [Types::StringFilter]
    # @!attribute state
    #   <p>Filter the investigation results based on the state.</p>
    #   @return [Types::StringFilter]
    # @!attribute entity_arn
    #   <p>Filter the investigation results based on the Amazon Resource Name (ARN) of the entity.</p>
    #   @return [Types::StringFilter]
    # @!attribute created_time
    #   <p>Filter the investigation results based on when the investigation was created.</p>
    #   @return [Types::DateFilter]
    class FilterCriteria < Struct.new(
      :severity,
      :status,
      :state,
      :entity_arn,
      :created_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information on suspicious IP addresses identified as indicators of compromise. This indicator is derived from Amazon Web Services threat intelligence.</p>
    # @!attribute ip_address
    #   <p>IP address of the suspicious entity.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>Details the reason the IP address was flagged as suspicious.</p>
    #   @return [String]
    class FlaggedIpAddressDetail < Struct.new(
      :ip_address,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_arn
    #   <p>The Amazon Resource Name (ARN) of the behavior graph.</p>
    #   @return [String]
    # @!attribute investigation_id
    #   <p>The investigation ID of the investigation report.</p>
    #   @return [String]
    class GetInvestigationRequest < Struct.new(
      :graph_arn,
      :investigation_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_arn
    #   <p>The Amazon Resource Name (ARN) of the behavior graph.</p>
    #   @return [String]
    # @!attribute investigation_id
    #   <p>The investigation ID of the investigation report.</p>
    #   @return [String]
    # @!attribute entity_arn
    #   <p>The unique Amazon Resource Name (ARN). Detective supports IAM user ARNs and IAM role ARNs.</p>
    #   @return [String]
    # @!attribute entity_type
    #   <p>Type of entity. For example, Amazon Web Services accounts, such as an IAM user and/or IAM role.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The creation time of the investigation report in UTC time stamp format.</p>
    #   @return [Time]
    # @!attribute scope_start_time
    #   <p>The start date and time used to set the scope time within which you want to generate the investigation report. The value is an UTC ISO8601 formatted
    #            string. For example, <code>2021-08-18T16:35:56.284Z</code>.</p>
    #   @return [Time]
    # @!attribute scope_end_time
    #   <p>The data and time when the investigation began. The value is an UTC ISO8601 formatted
    #            string. For example, <code>2021-08-18T16:35:56.284Z</code>.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status based on the completion status of the investigation.</p>
    #   @return [String]
    # @!attribute severity
    #   <p>The severity assigned is based on the likelihood and impact of the indicators of
    #            compromise discovered in the investigation.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the investigation. An archived investigation indicates that you
    #            have completed reviewing the investigation.</p>
    #   @return [String]
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
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_arn
    #   <p>The ARN of the behavior graph for which to request the member details.</p>
    #   @return [String]
    # @!attribute account_ids
    #   <p>The list of Amazon Web Services account identifiers for the member account for which to
    #            return member details. You can request details for up to 50 member accounts at a
    #            time.</p>
    #            <p>You cannot use <code>GetMembers</code> to retrieve information about member accounts
    #            that were removed from the behavior graph.</p>
    #   @return [Array<String>]
    class GetMembersRequest < Struct.new(
      :graph_arn,
      :account_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute member_details
    #   <p>The member account details that Detective is returning in response to the
    #            request.</p>
    #   @return [Array<Types::MemberDetail>]
    # @!attribute unprocessed_accounts
    #   <p>The requested member accounts for which Detective was unable to return member
    #            details.</p>
    #            <p>For each account, provides the reason why the request could not be processed.</p>
    #   @return [Array<Types::UnprocessedAccount>]
    class GetMembersResponse < Struct.new(
      :member_details,
      :unprocessed_accounts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A behavior graph in Detective.</p>
    # @!attribute arn
    #   <p>The ARN of the behavior graph.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The date and time that the behavior graph was created. The value is an ISO8601 formatted
    #            string. For example, <code>2021-08-18T16:35:56.284Z</code>.</p>
    #   @return [Time]
    class Graph < Struct.new(
      :arn,
      :created_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information on unusual and impossible travel in an account.</p>
    # @!attribute starting_ip_address
    #   <p>IP address where the resource was first used in the impossible travel.</p>
    #   @return [String]
    # @!attribute ending_ip_address
    #   <p>IP address where the resource was last used in the impossible travel.</p>
    #   @return [String]
    # @!attribute starting_location
    #   <p>Location where the resource was first used in the impossible travel.</p>
    #   @return [String]
    # @!attribute ending_location
    #   <p>Location where the resource was last used in the impossible travel.</p>
    #   @return [String]
    # @!attribute hourly_time_delta
    #   <p>Returns the time difference between the first and last timestamp the resource was used.</p>
    #   @return [Integer]
    class ImpossibleTravelDetail < Struct.new(
      :starting_ip_address,
      :ending_ip_address,
      :starting_location,
      :ending_location,
      :hourly_time_delta,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Detective investigations triages indicators of compromises such as a finding
    #          and surfaces only the most critical and suspicious issues, so you can focus on high-level
    #          investigations. An <code>Indicator</code> lets you determine if an Amazon Web Services
    #          resource is involved in unusual activity that could indicate malicious behavior and its
    #          impact.</p>
    # @!attribute indicator_type
    #   <p>The type of indicator. </p>
    #   @return [String]
    # @!attribute indicator_detail
    #   <p>Details about the indicators of compromise that are used to determine if a resource is involved in a security incident. An indicator of compromise (IOC) is an artifact observed in or on a network, system, or environment that can (with a high level of confidence) identify malicious activity or a security incident.</p>
    #   @return [Types::IndicatorDetail]
    class Indicator < Struct.new(
      :indicator_type,
      :indicator_detail,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the indicators of compromise which are used to determine if a resource is involved in a security incident. An indicator of compromise (IOC) is an artifact observed in or on a network, system, or environment that can (with a high level of confidence) identify malicious activity or a security incident. For the list of indicators of compromise that are generated by Detective investigations, see <a href="https://docs.aws.amazon.com/detective/latest/userguide/detective-investigation-about.html">Detective investigations</a>.</p>
    # @!attribute tt_ps_observed_detail
    #   <p>Details about the indicator of compromise.</p>
    #   @return [Types::TTPsObservedDetail]
    # @!attribute impossible_travel_detail
    #   <p>Identifies unusual and impossible user activity for an account. </p>
    #   @return [Types::ImpossibleTravelDetail]
    # @!attribute flagged_ip_address_detail
    #   <p>Suspicious IP addresses that are flagged, which indicates critical or severe threats based on threat intelligence by Detective. This indicator is derived from Amazon Web Services threat intelligence.</p>
    #   @return [Types::FlaggedIpAddressDetail]
    # @!attribute new_geolocation_detail
    #   <p>Contains details about the new geographic location.</p>
    #   @return [Types::NewGeolocationDetail]
    # @!attribute new_aso_detail
    #   <p>Contains details about the new Autonomous System Organization (ASO).</p>
    #   @return [Types::NewAsoDetail]
    # @!attribute new_user_agent_detail
    #   <p>Contains details about the new user agent.</p>
    #   @return [Types::NewUserAgentDetail]
    # @!attribute related_finding_detail
    #   <p>Contains details about related findings.</p>
    #   @return [Types::RelatedFindingDetail]
    # @!attribute related_finding_group_detail
    #   <p>Contains details about related finding groups.</p>
    #   @return [Types::RelatedFindingGroupDetail]
    class IndicatorDetail < Struct.new(
      :tt_ps_observed_detail,
      :impossible_travel_detail,
      :flagged_ip_address_detail,
      :new_geolocation_detail,
      :new_aso_detail,
      :new_user_agent_detail,
      :related_finding_detail,
      :related_finding_group_detail,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was valid but failed because of a problem with the service.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the investigation related to a potential security event identified by Detective.</p>
    # @!attribute investigation_id
    #   <p>The investigation ID of the investigation report.</p>
    #   @return [String]
    # @!attribute severity
    #   <p>Severity based on the likelihood and impact of the indicators of compromise discovered in the investigation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Status based on the completion status of the investigation.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the investigation. An archived investigation indicates you have completed reviewing the investigation.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The time stamp of the creation time of the investigation report. The value is an UTC ISO8601 formatted
    #            string. For example, <code>2021-08-18T16:35:56.284Z</code>.</p>
    #   @return [Time]
    # @!attribute entity_arn
    #   <p>The unique Amazon Resource Name (ARN) of the IAM user and IAM role.</p>
    #   @return [String]
    # @!attribute entity_type
    #   <p>Type of entity. For example, Amazon Web Services accounts, such as IAM user and role.</p>
    #   @return [String]
    class InvestigationDetail < Struct.new(
      :investigation_id,
      :severity,
      :status,
      :state,
      :created_time,
      :entity_arn,
      :entity_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_arn
    #   <p>The ARN of the behavior graph.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>For requests to get the next page of results, the pagination token that was returned
    #            with the previous set of results. The initial request does not include a pagination
    #            token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    class ListDatasourcePackagesRequest < Struct.new(
      :graph_arn,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute datasource_packages
    #   <p>Details on the data source packages active in the behavior graph.</p>
    #   @return [Hash<String, Types::DatasourcePackageIngestDetail>]
    # @!attribute next_token
    #   <p>For requests to get the next page of results, the pagination token that was returned
    #            with the previous set of results. The initial request does not include a pagination
    #            token.</p>
    #   @return [String]
    class ListDatasourcePackagesResponse < Struct.new(
      :datasource_packages,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>For requests to get the next page of results, the pagination token that was returned
    #            with the previous set of results. The initial request does not include a pagination
    #            token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of graphs to return at a time. The total must be less than the
    #            overall limit on the number of results to return, which is currently 200.</p>
    #   @return [Integer]
    class ListGraphsRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_list
    #   <p>A list of behavior graphs that the account is an administrator account for.</p>
    #   @return [Array<Types::Graph>]
    # @!attribute next_token
    #   <p>If there are more behavior graphs remaining in the results, then this is the pagination
    #            token to use to request the next page of behavior graphs.</p>
    #   @return [String]
    class ListGraphsResponse < Struct.new(
      :graph_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_arn
    #   <p>The Amazon Resource Name (ARN) of the behavior graph.</p>
    #   @return [String]
    # @!attribute investigation_id
    #   <p>The investigation ID of the investigation report.</p>
    #   @return [String]
    # @!attribute indicator_type
    #   <p>For the list of indicators of compromise that are generated by Detective investigations, see <a href="https://docs.aws.amazon.com/detective/latest/userguide/detective-investigation-about.html">Detective investigations</a>.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Lists if there are more results available. The value of nextToken is a unique pagination token for each page. Repeat the call using the returned token to retrieve the next page. Keep all other arguments unchanged.</p>
    #            <p>Each pagination token expires after 24 hours. Using an expired pagination token will return a Validation Exception error.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Lists the maximum number of indicators in a page.</p>
    #   @return [Integer]
    class ListIndicatorsRequest < Struct.new(
      :graph_arn,
      :investigation_id,
      :indicator_type,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_arn
    #   <p>The Amazon Resource Name (ARN) of the behavior graph.</p>
    #   @return [String]
    # @!attribute investigation_id
    #   <p>The investigation ID of the investigation report.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Lists if there are more results available. The value of nextToken is a unique pagination token for each page. Repeat the call using the returned token to retrieve the next page. Keep all other arguments unchanged.</p>
    #            <p>Each pagination token expires after 24 hours. Using an expired pagination token will return a Validation Exception error.</p>
    #   @return [String]
    # @!attribute indicators
    #   <p>Lists the indicators of compromise.</p>
    #   @return [Array<Types::Indicator>]
    class ListIndicatorsResponse < Struct.new(
      :graph_arn,
      :investigation_id,
      :next_token,
      :indicators,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_arn
    #   <p>The Amazon Resource Name (ARN) of the behavior graph.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Lists if there are more results available. The value of nextToken is a unique pagination token for each page. Repeat the call using the returned token to retrieve the next page. Keep all other arguments unchanged.</p>
    #            <p>Each pagination token expires after 24 hours. Using an expired pagination token will return a Validation Exception error.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Lists the maximum number of investigations in a page.</p>
    #   @return [Integer]
    # @!attribute filter_criteria
    #   <p>Filters the investigation results based on a criteria.</p>
    #   @return [Types::FilterCriteria]
    # @!attribute sort_criteria
    #   <p>Sorts the investigation results based on a criteria.</p>
    #   @return [Types::SortCriteria]
    class ListInvestigationsRequest < Struct.new(
      :graph_arn,
      :next_token,
      :max_results,
      :filter_criteria,
      :sort_criteria,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute investigation_details
    #   <p>Lists the summary of uncommon behavior or malicious activity which indicates a compromise.</p>
    #   @return [Array<Types::InvestigationDetail>]
    # @!attribute next_token
    #   <p>Lists if there are more results available. The value of nextToken is a unique pagination token for each page. Repeat the call using the returned token to retrieve the next page. Keep all other arguments unchanged.</p>
    #            <p>Each pagination token expires after 24 hours. </p>
    #   @return [String]
    class ListInvestigationsResponse < Struct.new(
      :investigation_details,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>For requests to retrieve the next page of results, the pagination token that was
    #            returned with the previous page of results. The initial request does not include a
    #            pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of behavior graph invitations to return in the response. The total
    #            must be less than the overall limit on the number of results to return, which is currently
    #            200.</p>
    #   @return [Integer]
    class ListInvitationsRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute invitations
    #   <p>The list of behavior graphs for which the member account has open or accepted
    #            invitations.</p>
    #   @return [Array<Types::MemberDetail>]
    # @!attribute next_token
    #   <p>If there are more behavior graphs remaining in the results, then this is the pagination
    #            token to use to request the next page of behavior graphs.</p>
    #   @return [String]
    class ListInvitationsResponse < Struct.new(
      :invitations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_arn
    #   <p>The ARN of the behavior graph for which to retrieve the list of member accounts.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>For requests to retrieve the next page of member account results, the pagination token
    #            that was returned with the previous page of results. The initial request does not include a
    #            pagination token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of member accounts to include in the response. The total must be less
    #            than the overall limit on the number of results to return, which is currently 200.</p>
    #   @return [Integer]
    class ListMembersRequest < Struct.new(
      :graph_arn,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute member_details
    #   <p>The list of member accounts in the behavior graph.</p>
    #            <p>For invited accounts, the results include member accounts that did not pass verification
    #            and member accounts that have not yet accepted the invitation to the behavior graph. The
    #            results do not include member accounts that were removed from the behavior graph.</p>
    #            <p>For the organization behavior graph, the results do not include organization accounts
    #            that the Detective administrator account has not enabled as member
    #            accounts.</p>
    #   @return [Array<Types::MemberDetail>]
    # @!attribute next_token
    #   <p>If there are more member accounts remaining in the results, then use this pagination
    #            token to request the next page of member accounts.</p>
    #   @return [String]
    class ListMembersResponse < Struct.new(
      :member_details,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>For requests to get the next page of results, the pagination token that was returned
    #            with the previous set of results. The initial request does not include a pagination
    #            token.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    class ListOrganizationAdminAccountsRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute administrators
    #   <p>The list of Detective administrator accounts.</p>
    #   @return [Array<Types::Administrator>]
    # @!attribute next_token
    #   <p>If there are more accounts remaining in the results, then this is the pagination token
    #            to use to request the next page of accounts.</p>
    #   @return [String]
    class ListOrganizationAdminAccountsResponse < Struct.new(
      :administrators,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the behavior graph for which to retrieve the tag values.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tag values that are assigned to the behavior graph. The request returns up to 50 tag
    #            values.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a member account in a behavior graph.</p>
    # @!attribute account_id
    #   <p>The Amazon Web Services account identifier for the member account.</p>
    #   @return [String]
    # @!attribute email_address
    #   <p>The Amazon Web Services account root user email address for the member account.</p>
    #   @return [String]
    # @!attribute graph_arn
    #   <p>The ARN of the behavior graph.</p>
    #   @return [String]
    # @!attribute master_id
    #   <p>The Amazon Web Services account identifier of the administrator account for the behavior
    #            graph.</p>
    #   @deprecated
    #     This property is deprecated. Use AdministratorId instead.
    #   @return [String]
    # @!attribute administrator_id
    #   <p>The Amazon Web Services account identifier of the administrator account for the behavior
    #            graph.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current membership status of the member account. The status can have one of the
    #            following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INVITED</code> - For invited accounts only. Indicates that the member was
    #                  sent an invitation but has not yet responded.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VERIFICATION_IN_PROGRESS</code> - For invited accounts only, indicates that
    #                     Detective is verifying that the account identifier and email address
    #                  provided for the member account match. If they do match, then Detective
    #                  sends the invitation. If the email address and account identifier don't match, then
    #                  the member cannot be added to the behavior graph.</p>
    #                  <p>For organization accounts in the organization behavior graph, indicates that
    #                     Detective is verifying that the account belongs to the
    #                  organization.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VERIFICATION_FAILED</code> - For invited accounts only. Indicates that the
    #                  account and email address provided for the member account do not match, and Detective did not send an invitation to the account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> - Indicates that the member account currently contributes
    #                  data to the behavior graph. For invited accounts, the member account accepted the
    #                  invitation. For organization accounts in the organization behavior graph, the Detective administrator account enabled the organization account as a member
    #                  account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACCEPTED_BUT_DISABLED</code> - The account accepted the invitation, or was
    #                  enabled by the Detective administrator account, but is prevented from
    #                  contributing data to the behavior graph. <code>DisabledReason</code> provides the
    #                  reason why the member account is not enabled.</p>
    #               </li>
    #            </ul>
    #            <p>Invited accounts that declined an invitation or that were removed from the behavior
    #            graph are not included. In the organization behavior graph, organization accounts that the
    #               Detective administrator account did not enable are not included.</p>
    #   @return [String]
    # @!attribute disabled_reason
    #   <p>For member accounts with a status of <code>ACCEPTED_BUT_DISABLED</code>, the reason that
    #            the member account is not enabled.</p>
    #            <p>The reason can have one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>VOLUME_TOO_HIGH</code> - Indicates that adding the member account would
    #                  cause the data volume for the behavior graph to be too high.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VOLUME_UNKNOWN</code> - Indicates that Detective is unable to
    #                  verify the data volume for the member account. This is usually because the member
    #                  account is not enrolled in Amazon GuardDuty. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute invited_time
    #   <p>For invited accounts, the date and time that Detective sent the invitation to
    #            the account. The value is an ISO8601 formatted string. For example,
    #               <code>2021-08-18T16:35:56.284Z</code>.</p>
    #   @return [Time]
    # @!attribute updated_time
    #   <p>The date and time that the member account was last updated. The value is an ISO8601
    #            formatted string. For example, <code>2021-08-18T16:35:56.284Z</code>.</p>
    #   @return [Time]
    # @!attribute volume_usage_in_bytes
    #   <p>The data volume in bytes per day for the member account.</p>
    #   @deprecated
    #     This property is deprecated. Use VolumeUsageByDatasourcePackage instead.
    #   @return [Integer]
    # @!attribute volume_usage_updated_time
    #   <p>The data and time when the member account data volume was last updated. The value is an
    #            ISO8601 formatted string. For example, <code>2021-08-18T16:35:56.284Z</code>.</p>
    #   @deprecated
    #     This property is deprecated. Use VolumeUsageByDatasourcePackage instead.
    #   @return [Time]
    # @!attribute percent_of_graph_utilization
    #   <p>The member account data volume as a percentage of the maximum allowed data volume. 0
    #            indicates 0 percent, and 100 indicates 100 percent.</p>
    #            <p>Note that this is not the percentage of the behavior graph data volume.</p>
    #            <p>For example, the data volume for the behavior graph is 80 GB per day. The maximum data
    #            volume is 160 GB per day. If the data volume for the member account is 40 GB per day, then
    #               <code>PercentOfGraphUtilization</code> is 25. It represents 25% of the maximum allowed
    #            data volume. </p>
    #   @deprecated
    #     This property is deprecated. Use VolumeUsageByDatasourcePackage instead.
    #   @return [Float]
    # @!attribute percent_of_graph_utilization_updated_time
    #   <p>The date and time when the graph utilization percentage was last updated. The value is
    #            an ISO8601 formatted string. For example, <code>2021-08-18T16:35:56.284Z</code>.</p>
    #   @deprecated
    #     This property is deprecated. Use VolumeUsageByDatasourcePackage instead.
    #   @return [Time]
    # @!attribute invitation_type
    #   <p>The type of behavior graph membership.</p>
    #            <p>For an organization account in the organization behavior graph, the type is
    #               <code>ORGANIZATION</code>.</p>
    #            <p>For an account that was invited to a behavior graph, the type is
    #            <code>INVITATION</code>. </p>
    #   @return [String]
    # @!attribute volume_usage_by_datasource_package
    #   <p>Details on the volume of usage for each data source package in a behavior graph.</p>
    #   @return [Hash<String, Types::DatasourcePackageUsageInfo>]
    # @!attribute datasource_package_ingest_states
    #   <p>The state of a data source package for the behavior graph.</p>
    #   @return [Hash<String, String>]
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
      :datasource_package_ingest_states,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details on data source packages for members of the behavior graph.</p>
    # @!attribute account_id
    #   <p>The account identifier of the Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute graph_arn
    #   <p>The ARN of the organization behavior graph.</p>
    #   @return [String]
    # @!attribute datasource_package_ingest_history
    #   <p>Details on when a data source package was added to a behavior graph.</p>
    #   @return [Hash<String, Hash<String, Types::TimestampForCollection>>]
    class MembershipDatasources < Struct.new(
      :account_id,
      :graph_arn,
      :datasource_package_ingest_history,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details new Autonomous System Organizations (ASOs) used either at the resource or account level. </p>
    # @!attribute aso
    #   <p>Details about the new Autonomous System Organization (ASO).</p>
    #   @return [String]
    # @!attribute is_new_for_entire_account
    #   <p>Checks if the Autonomous System Organization (ASO) is new for the entire account.</p>
    #   @return [Boolean]
    class NewAsoDetail < Struct.new(
      :aso,
      :is_new_for_entire_account,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_new_for_entire_account] = false unless options.key?(:is_new_for_entire_account)
        super
      end
    end

    # <p>Details new geolocations used either at the resource or account level. For example, lists an observed geolocation that is an infrequent or unused location based on previous user activity.</p>
    # @!attribute location
    #   <p>Location where the resource was accessed.</p>
    #   @return [String]
    # @!attribute ip_address
    #   <p>IP address using which the resource was accessed.</p>
    #   @return [String]
    # @!attribute is_new_for_entire_account
    #   <p>Checks if the geolocation is new for the entire account.</p>
    #   @return [Boolean]
    class NewGeolocationDetail < Struct.new(
      :location,
      :ip_address,
      :is_new_for_entire_account,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_new_for_entire_account] = false unless options.key?(:is_new_for_entire_account)
        super
      end
    end

    # <p>Details new user agents used either at the resource or account level.</p>
    # @!attribute user_agent
    #   <p>New user agent which accessed the resource.</p>
    #   @return [String]
    # @!attribute is_new_for_entire_account
    #   <p>Checks if the user agent is new for the entire account.</p>
    #   @return [Boolean]
    class NewUserAgentDetail < Struct.new(
      :user_agent,
      :is_new_for_entire_account,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_new_for_entire_account] = false unless options.key?(:is_new_for_entire_account)
        super
      end
    end

    # @!attribute graph_arn
    #   <p>The ARN of the behavior graph to reject the invitation to.</p>
    #            <p>The member account's current member status in the behavior graph must be
    #               <code>INVITED</code>.</p>
    #   @return [String]
    class RejectInvitationRequest < Struct.new(
      :graph_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details related activities associated with a potential security event. Lists all distinct categories of evidence that are connected to the resource or the finding group.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the related finding.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of finding.</p>
    #   @return [String]
    # @!attribute ip_address
    #   <p>The IP address of the finding.</p>
    #   @return [String]
    class RelatedFindingDetail < Struct.new(
      :arn,
      :type,
      :ip_address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details multiple activities as they related to a potential security event. Detective uses graph analysis technique that infers relationships between findings and entities, and groups them together as a finding group.</p>
    # @!attribute id
    #   <p>The unique identifier for the finding group.</p>
    #   @return [String]
    class RelatedFindingGroupDetail < Struct.new(
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request refers to a nonexistent resource.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This request cannot be completed for one of the following reasons.</p>
    #          <ul>
    #             <li>
    #                <p>This request cannot be completed if it would cause the number of member accounts in the
    #             behavior graph to exceed the maximum allowed. A behavior graph cannot have more than 1,200
    #             member accounts.</p>
    #             </li>
    #             <li>
    #                <p>This request cannot be completed if the current volume ingested is above the limit of 10 TB per day. Detective will not allow you to add additional member accounts.</p>
    #             </li>
    #          </ul>
    # @!attribute message
    #   @return [String]
    # @!attribute resources
    #   <p>The type of resource that has exceeded the service quota.</p>
    #   @return [Array<String>]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the criteria used for sorting investigations.</p>
    # @!attribute field
    #   <p>Represents the <code>Field</code> attribute to sort investigations.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>The order by which the sorted findings are displayed.</p>
    #   @return [String]
    class SortCriteria < Struct.new(
      :field,
      :sort_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_arn
    #   <p>The Amazon Resource Name (ARN) of the behavior graph.</p>
    #   @return [String]
    # @!attribute entity_arn
    #   <p>The unique Amazon Resource Name (ARN) of the IAM user and IAM role.</p>
    #   @return [String]
    # @!attribute scope_start_time
    #   <p>The data and time when the investigation began. The value is an UTC ISO8601 formatted string. For example, <code>2021-08-18T16:35:56.284Z</code>.</p>
    #   @return [Time]
    # @!attribute scope_end_time
    #   <p>The data and time when the investigation ended. The value is an UTC ISO8601 formatted
    #            string. For example, <code>2021-08-18T16:35:56.284Z</code>.</p>
    #   @return [Time]
    class StartInvestigationRequest < Struct.new(
      :graph_arn,
      :entity_arn,
      :scope_start_time,
      :scope_end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute investigation_id
    #   <p>The investigation ID of the investigation report.</p>
    #   @return [String]
    class StartInvestigationResponse < Struct.new(
      :investigation_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_arn
    #   <p>The ARN of the behavior graph.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The account ID of the member account to try to enable.</p>
    #            <p>The account must be an invited member account with a status of
    #               <code>ACCEPTED_BUT_DISABLED</code>. </p>
    #   @return [String]
    class StartMonitoringMemberRequest < Struct.new(
      :graph_arn,
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A string for filtering Detective investigations.</p>
    # @!attribute value
    #   <p>The string filter value.</p>
    #   @return [String]
    class StringFilter < Struct.new(
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details tactics, techniques, and procedures (TTPs) used in a potential security event. Tactics are based on <a href="https://attack.mitre.org/matrices/enterprise/">MITRE ATT&CK Matrix for
    #          Enterprise</a>. </p>
    # @!attribute tactic
    #   <p>The tactic used, identified by the investigation.</p>
    #   @return [String]
    # @!attribute technique
    #   <p>The technique used, identified by the investigation. </p>
    #   @return [String]
    # @!attribute procedure
    #   <p>The procedure used, identified by the investigation.</p>
    #   @return [String]
    # @!attribute ip_address
    #   <p>The IP address where the tactics, techniques, and procedure (TTP) was observed.</p>
    #   @return [String]
    # @!attribute api_name
    #   <p>The name of the API where the tactics, techniques, and procedure (TTP) was observed.</p>
    #   @return [String]
    # @!attribute api_success_count
    #   <p>The total number of successful API requests.</p>
    #   @return [Integer]
    # @!attribute api_failure_count
    #   <p>The total number of failed API requests.</p>
    #   @return [Integer]
    class TTPsObservedDetail < Struct.new(
      :tactic,
      :technique,
      :procedure,
      :ip_address,
      :api_name,
      :api_success_count,
      :api_failure_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:api_success_count] = 0 unless options.key?(:api_success_count)
        options[:api_failure_count] = 0 unless options.key?(:api_failure_count)
        super
      end
    end

    # @!attribute resource_arn
    #   <p>The ARN of the behavior graph to assign the tags to.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to assign to the behavior graph. You can add up to 50 tags. For each tag, you
    #            provide the tag key and the tag value. Each tag key can contain up to 128 characters. Each
    #            tag value can contain up to 256 characters.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details on when data collection began for a source package.</p>
    # @!attribute timestamp
    #   <p>The data and time when data collection began for a source package. The value is an
    #            ISO8601 formatted string. For example, <code>2021-08-18T16:35:56.284Z</code>.</p>
    #   @return [Time]
    class TimestampForCollection < Struct.new(
      :timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request cannot be completed because too many other requests are occurring at the
    #          same time.</p>
    # @!attribute message
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A member account that was included in a request but for which the request could not be
    #          processed.</p>
    # @!attribute account_id
    #   <p>The Amazon Web Services account identifier of the member account that was not
    #            processed.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason that the member account request could not be processed.</p>
    #   @return [String]
    class UnprocessedAccount < Struct.new(
      :account_id,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Behavior graphs that could not be processed in the request.</p>
    # @!attribute graph_arn
    #   <p>The ARN of the organization behavior graph.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason data source package information could not be processed for a behavior
    #            graph.</p>
    #   @return [String]
    class UnprocessedGraph < Struct.new(
      :graph_arn,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the behavior graph to remove the tags from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag keys of the tags to remove from the behavior graph. You can remove up to 50 tags
    #            at a time.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_arn
    #   <p>The ARN of the behavior graph.</p>
    #   @return [String]
    # @!attribute datasource_packages
    #   <p>The data source package to start for the behavior graph.</p>
    #   @return [Array<String>]
    class UpdateDatasourcePackagesRequest < Struct.new(
      :graph_arn,
      :datasource_packages,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_arn
    #   <p>The Amazon Resource Name (ARN) of the behavior graph.</p>
    #   @return [String]
    # @!attribute investigation_id
    #   <p>The investigation ID of the investigation report.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the investigation. An archived investigation indicates you have completed reviewing the investigation.</p>
    #   @return [String]
    class UpdateInvestigationStateRequest < Struct.new(
      :graph_arn,
      :investigation_id,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute graph_arn
    #   <p>The ARN of the organization behavior graph.</p>
    #   @return [String]
    # @!attribute auto_enable
    #   <p>Indicates whether to automatically enable new organization accounts as member accounts
    #            in the organization behavior graph.</p>
    #   @return [Boolean]
    class UpdateOrganizationConfigurationRequest < Struct.new(
      :graph_arn,
      :auto_enable,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters are invalid.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute error_code
    #   <p>The error code associated with the validation failure.</p>
    #   @return [String]
    # @!attribute error_code_reason
    #   <p> An explanation of why validation failed.</p>
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      :error_code,
      :error_code_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
