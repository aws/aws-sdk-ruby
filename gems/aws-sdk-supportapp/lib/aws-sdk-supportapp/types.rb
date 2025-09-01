# frozen_string_literal: true

# This is generated code!

module Aws::SupportApp
  # This module contains the types returned by client operations.
  module Types

    # <p>You don't have sufficient permission to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Your request has a conflict. For example, you might receive this error if you try the
    #       following:</p>
    #          <ul>
    #             <li>
    #                <p>Add, update, or delete a Slack channel configuration before you add a Slack workspace
    #           to your Amazon Web Services account.</p>
    #             </li>
    #             <li>
    #                <p>Add a Slack channel configuration that already exists in your Amazon Web Services account.</p>
    #             </li>
    #             <li>
    #                <p>Delete a Slack channel configuration for a live chat channel.</p>
    #             </li>
    #             <li>
    #                <p>Delete a Slack workspace from your Amazon Web Services account that has an active live chat
    #           channel.</p>
    #             </li>
    #             <li>
    #                <p>Call the <code>RegisterSlackWorkspaceForOrganization</code> API from an Amazon Web Services account
    #           that doesn't belong to an organization.</p>
    #             </li>
    #             <li>
    #                <p>Call the <code>RegisterSlackWorkspaceForOrganization</code> API from a member account,
    #           but the management account hasn't registered that workspace yet for the
    #           organization.</p>
    #             </li>
    #          </ul>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute team_id
    #   <p>The team ID in Slack. This ID uniquely identifies a Slack workspace, such as
    #   <code>T012ABCDEFG</code>.</p>
    #   @return [String]
    # @!attribute channel_id
    #   <p>The channel ID in Slack. This ID identifies a channel within a Slack workspace.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name of the Slack channel that you configure for the Amazon Web Services Support App.</p>
    #   @return [String]
    # @!attribute notify_on_create_or_reopen_case
    #   <p>Whether you want to get notified when a support case is created or reopened.</p>
    #   @return [Boolean]
    # @!attribute notify_on_add_correspondence_to_case
    #   <p>Whether you want to get notified when a support case has a new correspondence.</p>
    #   @return [Boolean]
    # @!attribute notify_on_resolve_case
    #   <p>Whether you want to get notified when a support case is resolved.</p>
    #   @return [Boolean]
    # @!attribute notify_on_case_severity
    #   <p>The case severity for a support case that you want to receive notifications.</p>
    #            <p>If you specify <code>high</code> or <code>all</code>, you must specify <code>true</code>
    #         for at least one of the following parameters:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>notifyOnAddCorrespondenceToCase</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>notifyOnCreateOrReopenCase</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>notifyOnResolveCase</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>If you specify <code>none</code>, the following parameters must be null or
    #           <code>false</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>notifyOnAddCorrespondenceToCase</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>notifyOnCreateOrReopenCase</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>notifyOnResolveCase</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>If you don't specify these parameters in your request, they default to
    #             <code>false</code>.</p>
    #            </note>
    #   @return [String]
    # @!attribute channel_role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that you want to
    #   use to perform operations on Amazon Web Services. For more information, see <a href="https://docs.aws.amazon.com/awssupport/latest/user/support-app-permissions.html">Managing access to
    #   the Amazon Web Services Support App</a> in the <i>Amazon Web Services Support User Guide</i>.</p>
    #   @return [String]
    class CreateSlackChannelConfigurationInput < Struct.new(
      :team_id,
      :channel_id,
      :channel_name,
      :notify_on_create_or_reopen_case,
      :notify_on_add_correspondence_to_case,
      :notify_on_resolve_case,
      :notify_on_case_severity,
      :channel_role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class CreateSlackChannelConfigurationOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteAccountAliasInput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteAccountAliasOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute team_id
    #   <p>The team ID in Slack. This ID uniquely identifies a Slack workspace, such as
    #   <code>T012ABCDEFG</code>.</p>
    #   @return [String]
    # @!attribute channel_id
    #   <p>The channel ID in Slack. This ID identifies a channel within a Slack workspace.</p>
    #   @return [String]
    class DeleteSlackChannelConfigurationInput < Struct.new(
      :team_id,
      :channel_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteSlackChannelConfigurationOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute team_id
    #   <p>The team ID in Slack. This ID uniquely identifies a Slack workspace, such as
    #   <code>T012ABCDEFG</code>.</p>
    #   @return [String]
    class DeleteSlackWorkspaceConfigurationInput < Struct.new(
      :team_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteSlackWorkspaceConfigurationOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class GetAccountAliasInput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_alias
    #   <p>An alias or short name for an Amazon Web Services account.</p>
    #   @return [String]
    class GetAccountAliasOutput < Struct.new(
      :account_alias,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>We can’t process your request right now because of a server issue. Try again later.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the results of a search are large, the API only returns a portion of the results and 
    #   includes a <code>nextToken</code> pagination token in the response. To retrieve the next batch of results, reissue the search request and include the returned token. 
    #   When the API returns the last set of results, the response doesn't include a pagination token value.</p>
    #   @return [String]
    class ListSlackChannelConfigurationsInput < Struct.new(
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The point where pagination should resume when the response returns only partial
    #         results.</p>
    #   @return [String]
    # @!attribute slack_channel_configurations
    #   <p>The configurations for a Slack channel.</p>
    #   @return [Array<Types::SlackChannelConfiguration>]
    class ListSlackChannelConfigurationsOutput < Struct.new(
      :next_token,
      :slack_channel_configurations,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the results of a search are large, the API only returns a portion of the results and 
    #   includes a <code>nextToken</code> pagination token in the response. To retrieve the next batch of results, reissue the search request and include the returned token. 
    #   When the API returns the last set of results, the response doesn't include a pagination token value.</p>
    #   @return [String]
    class ListSlackWorkspaceConfigurationsInput < Struct.new(
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The point where pagination should resume when the response returns only partial
    #         results.</p>
    #   @return [String]
    # @!attribute slack_workspace_configurations
    #   <p>The configurations for a Slack workspace.</p>
    #   @return [Array<Types::SlackWorkspaceConfiguration>]
    class ListSlackWorkspaceConfigurationsOutput < Struct.new(
      :next_token,
      :slack_workspace_configurations,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute account_alias
    #   <p>An alias or short name for an Amazon Web Services account.</p>
    #   @return [String]
    class PutAccountAliasInput < Struct.new(
      :account_alias,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class PutAccountAliasOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute team_id
    #   <p>The team ID in Slack. This ID uniquely identifies a Slack workspace, such as
    #   <code>T012ABCDEFG</code>. Specify the Slack workspace that you want to use for your organization.</p>
    #   @return [String]
    class RegisterSlackWorkspaceForOrganizationInput < Struct.new(
      :team_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute team_id
    #   <p>The team ID in Slack. This ID uniquely identifies a Slack workspace, such as
    #   <code>T012ABCDEFG</code>.</p>
    #   @return [String]
    # @!attribute team_name
    #   <p>The name of the Slack workspace.</p>
    #   @return [String]
    # @!attribute account_type
    #   <p>Whether the Amazon Web Services account is a management or member account that's part of an organization
    #         in Organizations.</p>
    #   @return [String]
    class RegisterSlackWorkspaceForOrganizationOutput < Struct.new(
      :team_id,
      :team_name,
      :account_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified resource is missing or doesn't exist, such as an account alias, Slack
    #       channel configuration, or Slack workspace configuration.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Your Service Quotas request exceeds the quota for the service. For example, your Service Quotas request to
    #       Amazon Web Services Support App might exceed the maximum number of workspaces or channels per account, or the maximum
    #       number of accounts per Slack channel.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The configuration for a Slack channel that you added for your Amazon Web Services account.</p>
    # @!attribute team_id
    #   <p>The team ID in Slack. This ID uniquely identifies a Slack workspace, such as
    #   <code>T012ABCDEFG</code>.</p>
    #   @return [String]
    # @!attribute channel_id
    #   <p>The channel ID in Slack. This ID identifies a channel within a Slack workspace.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name of the Slack channel that you configured with the Amazon Web Services Support App for your
    #         Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute notify_on_create_or_reopen_case
    #   <p>Whether you want to get notified when a support case is created or reopened.</p>
    #   @return [Boolean]
    # @!attribute notify_on_add_correspondence_to_case
    #   <p>Whether you want to get notified when a support case has a new correspondence.</p>
    #   @return [Boolean]
    # @!attribute notify_on_resolve_case
    #   <p>Whether you want to get notified when a support case is resolved.</p>
    #   @return [Boolean]
    # @!attribute notify_on_case_severity
    #   <p>The case severity for a support case that you want to receive notifications.</p>
    #   @return [String]
    # @!attribute channel_role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that you want to
    #   use to perform operations on Amazon Web Services. For more information, see <a href="https://docs.aws.amazon.com/awssupport/latest/user/support-app-permissions.html">Managing access to
    #   the Amazon Web Services Support App</a> in the <i>Amazon Web Services Support User Guide</i>.</p>
    #   @return [String]
    class SlackChannelConfiguration < Struct.new(
      :team_id,
      :channel_id,
      :channel_name,
      :notify_on_create_or_reopen_case,
      :notify_on_add_correspondence_to_case,
      :notify_on_resolve_case,
      :notify_on_case_severity,
      :channel_role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The configuration for a Slack workspace that you added to an Amazon Web Services account.</p>
    # @!attribute team_id
    #   <p>The team ID in Slack. This ID uniquely identifies a Slack workspace, such as
    #   <code>T012ABCDEFG</code>.</p>
    #   @return [String]
    # @!attribute team_name
    #   <p>The name of the Slack workspace.</p>
    #   @return [String]
    # @!attribute allow_organization_member_account
    #   <p>Whether to allow member accounts to authorize Slack workspaces. Member accounts must be
    #         part of an organization in Organizations.</p>
    #   @return [Boolean]
    class SlackWorkspaceConfiguration < Struct.new(
      :team_id,
      :team_name,
      :allow_organization_member_account,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute team_id
    #   <p>The team ID in Slack. This ID uniquely identifies a Slack workspace, such as
    #   <code>T012ABCDEFG</code>.</p>
    #   @return [String]
    # @!attribute channel_id
    #   <p>The channel ID in Slack. This ID identifies a channel within a Slack workspace.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The Slack channel name that you want to update.</p>
    #   @return [String]
    # @!attribute notify_on_create_or_reopen_case
    #   <p>Whether you want to get notified when a support case is created or reopened.</p>
    #   @return [Boolean]
    # @!attribute notify_on_add_correspondence_to_case
    #   <p>Whether you want to get notified when a support case has a new correspondence.</p>
    #   @return [Boolean]
    # @!attribute notify_on_resolve_case
    #   <p>Whether you want to get notified when a support case is resolved.</p>
    #   @return [Boolean]
    # @!attribute notify_on_case_severity
    #   <p>The case severity for a support case that you want to receive notifications.</p>
    #            <p>If you specify <code>high</code> or <code>all</code>, at least one of the following
    #         parameters must be <code>true</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>notifyOnAddCorrespondenceToCase</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>notifyOnCreateOrReopenCase</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>notifyOnResolveCase</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>If you specify <code>none</code>, any of the following parameters that you specify in your
    #         request must be <code>false</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>notifyOnAddCorrespondenceToCase</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>notifyOnCreateOrReopenCase</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>notifyOnResolveCase</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>If you don't specify these parameters in your request, the Amazon Web Services Support App uses the current
    #           values by default.</p>
    #            </note>
    #   @return [String]
    # @!attribute channel_role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that you want to
    #   use to perform operations on Amazon Web Services. For more information, see <a href="https://docs.aws.amazon.com/awssupport/latest/user/support-app-permissions.html">Managing access to
    #   the Amazon Web Services Support App</a> in the <i>Amazon Web Services Support User Guide</i>.</p>
    #   @return [String]
    class UpdateSlackChannelConfigurationInput < Struct.new(
      :team_id,
      :channel_id,
      :channel_name,
      :notify_on_create_or_reopen_case,
      :notify_on_add_correspondence_to_case,
      :notify_on_resolve_case,
      :notify_on_case_severity,
      :channel_role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute team_id
    #   <p>The team ID in Slack. This ID uniquely identifies a Slack workspace, such as
    #   <code>T012ABCDEFG</code>.</p>
    #   @return [String]
    # @!attribute channel_id
    #   <p>The channel ID in Slack. This ID identifies a channel within a Slack workspace.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name of the Slack channel that you configure for the Amazon Web Services Support App.</p>
    #   @return [String]
    # @!attribute notify_on_create_or_reopen_case
    #   <p>Whether you want to get notified when a support case is created or reopened.</p>
    #   @return [Boolean]
    # @!attribute notify_on_add_correspondence_to_case
    #   <p>Whether you want to get notified when a support case has a new correspondence.</p>
    #   @return [Boolean]
    # @!attribute notify_on_resolve_case
    #   <p>Whether you want to get notified when a support case is resolved.</p>
    #   @return [Boolean]
    # @!attribute notify_on_case_severity
    #   <p>The case severity for a support case that you want to receive notifications.</p>
    #   @return [String]
    # @!attribute channel_role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that you want to
    #   use to perform operations on Amazon Web Services. For more information, see <a href="https://docs.aws.amazon.com/awssupport/latest/user/support-app-permissions.html">Managing access to
    #   the Amazon Web Services Support App</a> in the <i>Amazon Web Services Support User Guide</i>.</p>
    #   @return [String]
    class UpdateSlackChannelConfigurationOutput < Struct.new(
      :team_id,
      :channel_id,
      :channel_name,
      :notify_on_create_or_reopen_case,
      :notify_on_add_correspondence_to_case,
      :notify_on_resolve_case,
      :notify_on_case_severity,
      :channel_role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Your request input doesn't meet the constraints that the Amazon Web Services Support App specifies.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end
