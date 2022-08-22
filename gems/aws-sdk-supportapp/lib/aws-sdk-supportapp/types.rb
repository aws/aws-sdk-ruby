# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SupportApp
  module Types

    # You don't have sufficient permission to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-app-2021-08-20/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your request has a conflict. For example, you might receive this error
    # if you try the following:
    #
    # * Add, update, or delete a Slack channel configuration before you add
    #   a Slack workspace to your Amazon Web Services account.
    #
    # * Add a Slack channel configuration that already exists in your Amazon
    #   Web Services account.
    #
    # * Delete a Slack channel configuration for a live chat channel.
    #
    # * Delete a Slack workspace from your Amazon Web Services account that
    #   has an active live chat channel.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-app-2021-08-20/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateSlackChannelConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         channel_id: "channelId", # required
    #         channel_name: "channelName",
    #         channel_role_arn: "roleArn", # required
    #         notify_on_add_correspondence_to_case: false,
    #         notify_on_case_severity: "none", # required, accepts none, all, high
    #         notify_on_create_or_reopen_case: false,
    #         notify_on_resolve_case: false,
    #         team_id: "teamId", # required
    #       }
    #
    # @!attribute [rw] channel_id
    #   The channel ID in Slack. This ID identifies a channel within a Slack
    #   workspace.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name of the Slack channel that you configure for the Amazon Web
    #   Services Support App.
    #   @return [String]
    #
    # @!attribute [rw] channel_role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that you want to use
    #   to perform operations on Amazon Web Services. For more information,
    #   see [Managing access to the Amazon Web Services Support App][1] in
    #   the *Amazon Web Services Support User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awssupport/latest/user/support-app-permissions.html
    #   @return [String]
    #
    # @!attribute [rw] notify_on_add_correspondence_to_case
    #   Whether you want to get notified when a support case has a new
    #   correspondence.
    #   @return [Boolean]
    #
    # @!attribute [rw] notify_on_case_severity
    #   The case severity for a support case that you want to receive
    #   notifications.
    #
    #        <p>If you specify <code>high</code> or <code>all</code>, you must specify <code>true</code> for at least one of the following parameters:</p> <ul> <li> <p> <code>notifyOnAddCorrespondenceToCase</code> </p> </li> <li> <p> <code>notifyOnCreateOrReopenCase</code> </p> </li> <li> <p> <code>notifyOnResolveCase</code> </p> </li> </ul> <p>If you specify <code>none</code>, the following parameters must be null or <code>false</code>:</p> <ul> <li> <p> <code>notifyOnAddCorrespondenceToCase</code> </p> </li> <li> <p> <code>notifyOnCreateOrReopenCase</code> </p> </li> <li> <p> <code>notifyOnResolveCase</code> </p> </li> </ul> <note> <p>If you don't specify these parameters in your request, they default to <code>false</code>.</p> </note>
    #   @return [String]
    #
    # @!attribute [rw] notify_on_create_or_reopen_case
    #   Whether you want to get notified when a support case is created or
    #   reopened.
    #   @return [Boolean]
    #
    # @!attribute [rw] notify_on_resolve_case
    #   Whether you want to get notified when a support case is resolved.
    #   @return [Boolean]
    #
    # @!attribute [rw] team_id
    #   The team ID in Slack. This ID uniquely identifies a Slack workspace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-app-2021-08-20/CreateSlackChannelConfigurationRequest AWS API Documentation
    #
    class CreateSlackChannelConfigurationRequest < Struct.new(
      :channel_id,
      :channel_name,
      :channel_role_arn,
      :notify_on_add_correspondence_to_case,
      :notify_on_case_severity,
      :notify_on_create_or_reopen_case,
      :notify_on_resolve_case,
      :team_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/support-app-2021-08-20/CreateSlackChannelConfigurationResult AWS API Documentation
    #
    class CreateSlackChannelConfigurationResult < Aws::EmptyStructure; end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-app-2021-08-20/DeleteAccountAliasRequest AWS API Documentation
    #
    class DeleteAccountAliasRequest < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/support-app-2021-08-20/DeleteAccountAliasResult AWS API Documentation
    #
    class DeleteAccountAliasResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteSlackChannelConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         channel_id: "channelId", # required
    #         team_id: "teamId", # required
    #       }
    #
    # @!attribute [rw] channel_id
    #   The channel ID in Slack. This ID identifies a channel within a Slack
    #   workspace.
    #   @return [String]
    #
    # @!attribute [rw] team_id
    #   The team ID in Slack. This ID uniquely identifies a Slack workspace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-app-2021-08-20/DeleteSlackChannelConfigurationRequest AWS API Documentation
    #
    class DeleteSlackChannelConfigurationRequest < Struct.new(
      :channel_id,
      :team_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/support-app-2021-08-20/DeleteSlackChannelConfigurationResult AWS API Documentation
    #
    class DeleteSlackChannelConfigurationResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteSlackWorkspaceConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         team_id: "teamId", # required
    #       }
    #
    # @!attribute [rw] team_id
    #   The team ID in Slack. This ID uniquely identifies a Slack workspace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-app-2021-08-20/DeleteSlackWorkspaceConfigurationRequest AWS API Documentation
    #
    class DeleteSlackWorkspaceConfigurationRequest < Struct.new(
      :team_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/support-app-2021-08-20/DeleteSlackWorkspaceConfigurationResult AWS API Documentation
    #
    class DeleteSlackWorkspaceConfigurationResult < Aws::EmptyStructure; end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-app-2021-08-20/GetAccountAliasRequest AWS API Documentation
    #
    class GetAccountAliasRequest < Aws::EmptyStructure; end

    # @!attribute [rw] account_alias
    #   An alias or short name for an Amazon Web Services account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-app-2021-08-20/GetAccountAliasResult AWS API Documentation
    #
    class GetAccountAliasResult < Struct.new(
      :account_alias)
      SENSITIVE = []
      include Aws::Structure
    end

    # We can’t process your request right now because of a server issue. Try
    # again later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-app-2021-08-20/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSlackChannelConfigurationsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "paginationToken",
    #       }
    #
    # @!attribute [rw] next_token
    #   If the results of a search are large, the API only returns a portion
    #   of the results and includes a `nextToken` pagination token in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When the API returns the
    #   last set of results, the response doesn't include a pagination
    #   token value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-app-2021-08-20/ListSlackChannelConfigurationsRequest AWS API Documentation
    #
    class ListSlackChannelConfigurationsRequest < Struct.new(
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The point where pagination should resume when the response returns
    #   only partial results.
    #   @return [String]
    #
    # @!attribute [rw] slack_channel_configurations
    #   The configurations for a Slack channel.
    #   @return [Array<Types::SlackChannelConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-app-2021-08-20/ListSlackChannelConfigurationsResult AWS API Documentation
    #
    class ListSlackChannelConfigurationsResult < Struct.new(
      :next_token,
      :slack_channel_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSlackWorkspaceConfigurationsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "paginationToken",
    #       }
    #
    # @!attribute [rw] next_token
    #   If the results of a search are large, the API only returns a portion
    #   of the results and includes a `nextToken` pagination token in the
    #   response. To retrieve the next batch of results, reissue the search
    #   request and include the returned token. When the API returns the
    #   last set of results, the response doesn't include a pagination
    #   token value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-app-2021-08-20/ListSlackWorkspaceConfigurationsRequest AWS API Documentation
    #
    class ListSlackWorkspaceConfigurationsRequest < Struct.new(
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The point where pagination should resume when the response returns
    #   only partial results.
    #   @return [String]
    #
    # @!attribute [rw] slack_workspace_configurations
    #   The configurations for a Slack workspace.
    #   @return [Array<Types::SlackWorkspaceConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-app-2021-08-20/ListSlackWorkspaceConfigurationsResult AWS API Documentation
    #
    class ListSlackWorkspaceConfigurationsResult < Struct.new(
      :next_token,
      :slack_workspace_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutAccountAliasRequest
    #   data as a hash:
    #
    #       {
    #         account_alias: "awsAccountAlias", # required
    #       }
    #
    # @!attribute [rw] account_alias
    #   An alias or short name for an Amazon Web Services account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-app-2021-08-20/PutAccountAliasRequest AWS API Documentation
    #
    class PutAccountAliasRequest < Struct.new(
      :account_alias)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/support-app-2021-08-20/PutAccountAliasResult AWS API Documentation
    #
    class PutAccountAliasResult < Aws::EmptyStructure; end

    # The specified resource is missing or doesn't exist, such as an
    # account alias or Slack channel configuration.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-app-2021-08-20/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your Service Quotas request exceeds the quota for the service. For
    # example, your Service Quotas request to Amazon Web Services Support
    # App might exceed the maximum number of workspaces or channels per
    # account, or the maximum number of accounts per Slack channel.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-app-2021-08-20/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for a Slack channel that you added to an Amazon Web
    # Services account.
    #
    # @!attribute [rw] channel_id
    #   The channel ID in Slack. This ID identifies a channel within a Slack
    #   workspace.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name of the Slack channel that you configured with the Amazon
    #   Web Services Support App.
    #   @return [String]
    #
    # @!attribute [rw] channel_role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that you want to use
    #   to perform operations on Amazon Web Services. For more information,
    #   see [Managing access to the Amazon Web Services Support App][1] in
    #   the *Amazon Web Services Support User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awssupport/latest/user/support-app-permissions.html
    #   @return [String]
    #
    # @!attribute [rw] notify_on_add_correspondence_to_case
    #   Whether you want to get notified when a support case has a new
    #   correspondence.
    #   @return [Boolean]
    #
    # @!attribute [rw] notify_on_case_severity
    #   The case severity for a support case that you want to receive
    #   notifications.
    #   @return [String]
    #
    # @!attribute [rw] notify_on_create_or_reopen_case
    #   Whether you want to get notified when a support case is created or
    #   reopened.
    #   @return [Boolean]
    #
    # @!attribute [rw] notify_on_resolve_case
    #   Whether you want to get notified when a support case is resolved.
    #   @return [Boolean]
    #
    # @!attribute [rw] team_id
    #   The team ID in Slack. This ID uniquely identifies a Slack workspace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-app-2021-08-20/SlackChannelConfiguration AWS API Documentation
    #
    class SlackChannelConfiguration < Struct.new(
      :channel_id,
      :channel_name,
      :channel_role_arn,
      :notify_on_add_correspondence_to_case,
      :notify_on_case_severity,
      :notify_on_create_or_reopen_case,
      :notify_on_resolve_case,
      :team_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for a Slack workspace that you added to an Amazon
    # Web Services account.
    #
    # @!attribute [rw] team_id
    #   The team ID in Slack. This ID uniquely identifies a Slack workspace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-app-2021-08-20/SlackWorkspaceConfiguration AWS API Documentation
    #
    class SlackWorkspaceConfiguration < Struct.new(
      :team_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateSlackChannelConfigurationRequest
    #   data as a hash:
    #
    #       {
    #         channel_id: "channelId", # required
    #         channel_name: "channelName",
    #         channel_role_arn: "roleArn",
    #         notify_on_add_correspondence_to_case: false,
    #         notify_on_case_severity: "none", # accepts none, all, high
    #         notify_on_create_or_reopen_case: false,
    #         notify_on_resolve_case: false,
    #         team_id: "teamId", # required
    #       }
    #
    # @!attribute [rw] channel_id
    #   The channel ID in Slack. This ID identifies a channel within a Slack
    #   workspace.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The Slack channel name that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] channel_role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that you want to use
    #   to perform operations on Amazon Web Services. For more information,
    #   see [Managing access to the Amazon Web Services Support App][1] in
    #   the *Amazon Web Services Support User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awssupport/latest/user/support-app-permissions.html
    #   @return [String]
    #
    # @!attribute [rw] notify_on_add_correspondence_to_case
    #   Whether you want to get notified when a support case has a new
    #   correspondence.
    #   @return [Boolean]
    #
    # @!attribute [rw] notify_on_case_severity
    #   The case severity for a support case that you want to receive
    #   notifications.
    #
    #        <p>If you specify <code>high</code> or <code>all</code>, at least one of the following parameters must be <code>true</code>:</p> <ul> <li> <p> <code>notifyOnAddCorrespondenceToCase</code> </p> </li> <li> <p> <code>notifyOnCreateOrReopenCase</code> </p> </li> <li> <p> <code>notifyOnResolveCase</code> </p> </li> </ul> <p>If you specify <code>none</code>, any of the following parameters that you specify in your request must be <code>false</code>:</p> <ul> <li> <p> <code>notifyOnAddCorrespondenceToCase</code> </p> </li> <li> <p> <code>notifyOnCreateOrReopenCase</code> </p> </li> <li> <p> <code>notifyOnResolveCase</code> </p> </li> </ul> <note> <p>If you don't specify these parameters in your request, the Amazon Web Services Support App uses the current values by default.</p> </note>
    #   @return [String]
    #
    # @!attribute [rw] notify_on_create_or_reopen_case
    #   Whether you want to get notified when a support case is created or
    #   reopened.
    #   @return [Boolean]
    #
    # @!attribute [rw] notify_on_resolve_case
    #   Whether you want to get notified when a support case is resolved.
    #   @return [Boolean]
    #
    # @!attribute [rw] team_id
    #   The team ID in Slack. This ID uniquely identifies a Slack workspace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-app-2021-08-20/UpdateSlackChannelConfigurationRequest AWS API Documentation
    #
    class UpdateSlackChannelConfigurationRequest < Struct.new(
      :channel_id,
      :channel_name,
      :channel_role_arn,
      :notify_on_add_correspondence_to_case,
      :notify_on_case_severity,
      :notify_on_create_or_reopen_case,
      :notify_on_resolve_case,
      :team_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channel_id
    #   The channel ID in Slack. This ID identifies a channel within a Slack
    #   workspace.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name of the Slack channel that you configure for the Amazon Web
    #   Services Support App.
    #   @return [String]
    #
    # @!attribute [rw] channel_role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that you want to use
    #   to perform operations on Amazon Web Services. For more information,
    #   see [Managing access to the Amazon Web Services Support App][1] in
    #   the *Amazon Web Services Support User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/awssupport/latest/user/support-app-permissions.html
    #   @return [String]
    #
    # @!attribute [rw] notify_on_add_correspondence_to_case
    #   Whether you want to get notified when a support case has a new
    #   correspondence.
    #   @return [Boolean]
    #
    # @!attribute [rw] notify_on_case_severity
    #   The case severity for a support case that you want to receive
    #   notifications.
    #   @return [String]
    #
    # @!attribute [rw] notify_on_create_or_reopen_case
    #   Whether you want to get notified when a support case is created or
    #   reopened.
    #   @return [Boolean]
    #
    # @!attribute [rw] notify_on_resolve_case
    #   Whether you want to get notified when a support case is resolved.
    #   @return [Boolean]
    #
    # @!attribute [rw] team_id
    #   The team ID in Slack. This ID uniquely identifies a Slack workspace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-app-2021-08-20/UpdateSlackChannelConfigurationResult AWS API Documentation
    #
    class UpdateSlackChannelConfigurationResult < Struct.new(
      :channel_id,
      :channel_name,
      :channel_role_arn,
      :notify_on_add_correspondence_to_case,
      :notify_on_case_severity,
      :notify_on_create_or_reopen_case,
      :notify_on_resolve_case,
      :team_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your request input doesn't meet the constraints that the Amazon Web
    # Services Support App specifies.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/support-app-2021-08-20/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
