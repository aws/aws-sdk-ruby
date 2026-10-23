# frozen_string_literal: true

# This is generated code!

module Aws::WorkSpaces
  # This module contains the types returned by client operations.
  module Types

    # @!attribute link_id
    #   <p>The identifier of the account link.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A string of up to 64 ASCII characters that Amazon WorkSpaces uses to ensure idempotent creation.</p>
    #   @return [String]
    class AcceptAccountLinkInvitationRequest < Struct.new(
      nil,
      :link_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_link
    #   <p>Information about the account link.</p>
    #   @return [Types::AccountLink]
    class AcceptAccountLinkInvitationResult < Struct.new(
      nil,
      :account_link,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The user is not authorized to access a resource.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the access type and endpoint for a WorkSpace.</p>
    # @!attribute access_endpoint_type
    #   <p>Indicates the type of access endpoint.</p>
    #   @return [String]
    # @!attribute vpc_endpoint_id
    #   <p>Indicates the VPC endpoint to use for access.</p>
    #   @return [String]
    class AccessEndpoint < Struct.new(
      nil,
      :access_endpoint_type,
      :vpc_endpoint_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the access endpoint configuration for a WorkSpace.</p>
    # @!attribute access_endpoints
    #   <p>Indicates a list of access endpoints associated with this directory.</p>
    #   @return [Array<Types::AccessEndpoint>]
    # @!attribute internet_fallback_protocols
    #   <p>Indicates a list of protocols that fallback to using the public Internet when streaming over a VPC endpoint is not available.</p>
    #   @return [Array<String>]
    class AccessEndpointConfig < Struct.new(
      nil,
      :access_endpoints,
      :internet_fallback_protocols,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about about the account link.</p>
    # @!attribute account_link_id
    #   <p>The identifier of the account link.</p>
    #   @return [String]
    # @!attribute account_link_status
    #   <p>The status of the account link.</p>
    #   @return [String]
    # @!attribute source_account_id
    #   <p>The identifier of the source account.</p>
    #   @return [String]
    # @!attribute target_account_id
    #   <p>The identifier of the target account.</p>
    #   @return [String]
    class AccountLink < Struct.new(
      nil,
      :account_link_id,
      :account_link_status,
      :source_account_id,
      :target_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a modification to the configuration of Bring Your Own License (BYOL) for the
    #          specified account. </p>
    # @!attribute modification_state
    #   <p>The state of the modification to the configuration of BYOL.</p>
    #   @return [String]
    # @!attribute dedicated_tenancy_support
    #   <p>The status of BYOL (whether BYOL is being enabled or disabled).</p>
    #   @return [String]
    # @!attribute dedicated_tenancy_management_cidr_range
    #   <p>The IP address range, specified as an IPv4 CIDR block, for the management network
    #            interface used for the account.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The timestamp when the modification of the BYOL configuration was started.</p>
    #   @return [Time]
    # @!attribute error_code
    #   <p>The error code that is returned if the configuration of BYOL cannot be modified.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The text of the error message that is returned if the configuration of BYOL cannot be
    #            modified.</p>
    #   @return [String]
    class AccountModification < Struct.new(
      nil,
      :modification_state,
      :dedicated_tenancy_support,
      :dedicated_tenancy_management_cidr_range,
      :start_time,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the Active Directory config.</p>
    # @!attribute domain_name
    #   <p>The name of the domain.</p>
    #   @return [String]
    # @!attribute service_account_secret_arn
    #   <p>Indicates the secret ARN on the service account.</p>
    #   @return [String]
    class ActiveDirectoryConfig < Struct.new(
      nil,
      :domain_name,
      :service_account_secret_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified application is not supported.</p>
    class ApplicationNotSupportedException < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the association between an application and an application resource.</p>
    # @!attribute application_id
    #   <p>The identifier of the application.</p>
    #   @return [String]
    # @!attribute associated_resource_id
    #   <p>The identifier of the associated resource.</p>
    #   @return [String]
    # @!attribute associated_resource_type
    #   <p>The resource type of the associated resource.</p>
    #   @return [String]
    # @!attribute created
    #   <p>The time the association was created.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The time the association status was last updated.</p>
    #   @return [Time]
    # @!attribute state
    #   <p>The status of the application resource association.</p>
    #   @return [String]
    # @!attribute state_reason
    #   <p>The reason the association deployment failed.</p>
    #   @return [Types::AssociationStateReason]
    class ApplicationResourceAssociation < Struct.new(
      nil,
      :application_id,
      :associated_resource_id,
      :associated_resource_type,
      :created,
      :last_updated_time,
      :state,
      :state_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The persistent application settings for WorkSpaces Pools users.</p>
    # @!attribute status
    #   <p>Enables or disables persistent application settings for users during their pool sessions.</p>
    #   @return [String]
    # @!attribute settings_group
    #   <p>The path prefix for the S3 bucket where users’ persistent application settings are stored. 
    #            You can allow the same persistent application settings to be used across multiple pools by specifying 
    #            the same settings group for each pool.</p>
    #   @return [String]
    class ApplicationSettingsRequest < Struct.new(
      nil,
      :status,
      :settings_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the persistent application settings for WorkSpaces Pools users.</p>
    # @!attribute status
    #   <p>Specifies whether persistent application settings are enabled for users during their pool sessions.</p>
    #   @return [String]
    # @!attribute settings_group
    #   <p>The path prefix for the S3 bucket where users’ persistent application settings are stored.</p>
    #   @return [String]
    # @!attribute s3_bucket_name
    #   <p>The S3 bucket where users’ persistent application settings are stored. When persistent 
    #            application settings are enabled for the first time for an account in an Amazon Web Services Region, 
    #            an S3 bucket is created. The bucket is unique to the Amazon Web Services account and the Region.</p>
    #   @return [String]
    class ApplicationSettingsResponse < Struct.new(
      nil,
      :status,
      :settings_group,
      :s3_bucket_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute alias_id
    #   <p>The identifier of the connection alias.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the directory to associate the connection alias with.</p>
    #   @return [String]
    class AssociateConnectionAliasRequest < Struct.new(
      nil,
      :alias_id,
      :resource_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection_identifier
    #   <p>The identifier of the connection alias association. You use the connection identifier in
    #            the DNS TXT record when you're configuring your DNS routing policies. </p>
    #   @return [String]
    class AssociateConnectionAliasResult < Struct.new(
      nil,
      :connection_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>The identifier of the directory.</p>
    #   @return [String]
    # @!attribute group_ids
    #   <p>The identifiers of one or more IP access control groups.</p>
    #   @return [Array<String>]
    class AssociateIpGroupsRequest < Struct.new(
      nil,
      :directory_id,
      :group_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class AssociateIpGroupsResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The identifier of the WorkSpace.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>The identifier of the application.</p>
    #   @return [String]
    class AssociateWorkspaceApplicationRequest < Struct.new(
      nil,
      :workspace_id,
      :application_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute association
    #   <p>Information about the association between the specified WorkSpace and the specified application.</p>
    #   @return [Types::WorkspaceResourceAssociation]
    class AssociateWorkspaceApplicationResult < Struct.new(
      nil,
      :association,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates the reason that the association deployment failed, including the error code and error message.</p>
    # @!attribute error_code
    #   <p>The error code of the association deployment failure.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message of the association deployment failure.</p>
    #   @return [String]
    class AssociationStateReason < Struct.new(
      nil,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute group_id
    #   <p>The identifier of the group.</p>
    #   @return [String]
    # @!attribute user_rules
    #   <p>The rules to add to the group.</p>
    #   @return [Array<Types::IpRuleItem>]
    class AuthorizeIpRulesRequest < Struct.new(
      nil,
      :group_id,
      :user_rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class AuthorizeIpRulesResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the association between an application and a bundle resource.</p>
    # @!attribute associated_resource_id
    #   <p>The identifier of the associated resource.</p>
    #   @return [String]
    # @!attribute associated_resource_type
    #   <p>The resource type of the associated resources.</p>
    #   @return [String]
    # @!attribute bundle_id
    #   <p>The identifier of the bundle.</p>
    #   @return [String]
    # @!attribute created
    #   <p>The time the association is created.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The time the association status was last updated.</p>
    #   @return [Time]
    # @!attribute state
    #   <p>The status of the bundle resource association.</p>
    #   @return [String]
    # @!attribute state_reason
    #   <p>The reason the association deployment failed.</p>
    #   @return [Types::AssociationStateReason]
    class BundleResourceAssociation < Struct.new(
      nil,
      :associated_resource_id,
      :associated_resource_type,
      :bundle_id,
      :created,
      :last_updated_time,
      :state,
      :state_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the user capacity for a pool of WorkSpaces.</p>
    # @!attribute desired_user_sessions
    #   <p>The desired number of user sessions for the WorkSpaces in the pool.</p>
    #   @return [Integer]
    class Capacity < Struct.new(
      nil,
      :desired_user_sessions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the capacity status for a pool of WorkSpaces.</p>
    # @!attribute available_user_sessions
    #   <p>The number of user sessions currently available for streaming from your pool.</p>
    #            <p>AvailableUserSessions = ActualUserSessions - ActiveUserSessions</p>
    #   @return [Integer]
    # @!attribute desired_user_sessions
    #   <p>The total number of sessions slots that are either running or pending. This 
    #            represents the total number of concurrent streaming sessions your pool can support 
    #            in a steady state.</p>
    #   @return [Integer]
    # @!attribute actual_user_sessions
    #   <p>The total number of user sessions that are available for streaming or are currently 
    #            streaming in your pool.</p>
    #            <p>ActualUserSessions = AvailableUserSessions + ActiveUserSessions</p>
    #   @return [Integer]
    # @!attribute active_user_sessions
    #   <p>The number of user sessions currently being used for your pool.</p>
    #   @return [Integer]
    class CapacityStatus < Struct.new(
      nil,
      :available_user_sessions,
      :desired_user_sessions,
      :actual_user_sessions,
      :active_user_sessions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the properties of the certificate-based authentication you want to use
    #          with your WorkSpaces.</p>
    # @!attribute status
    #   <p>The status of the certificate-based authentication properties.</p>
    #   @return [String]
    # @!attribute certificate_authority_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services Certificate Manager Private CA resource.</p>
    #   @return [String]
    class CertificateBasedAuthProperties < Struct.new(
      nil,
      :status,
      :certificate_authority_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an Amazon WorkSpaces client.</p>
    # @!attribute reconnect_enabled
    #   <p>Specifies whether users can cache their credentials on the Amazon WorkSpaces client.
    #            When enabled, users can choose to reconnect to their WorkSpaces without re-entering their
    #            credentials. </p>
    #   @return [String]
    # @!attribute log_upload_enabled
    #   <p>Specifies whether users can upload diagnostic log files of Amazon WorkSpaces client directly to 
    #            WorkSpaces to troubleshoot issues when using the WorkSpaces client. 
    #            When enabled, the log files will be sent to WorkSpaces automatically and will be applied to all 
    #            users in the specified directory.</p>
    #   @return [String]
    class ClientProperties < Struct.new(
      nil,
      :reconnect_enabled,
      :log_upload_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the Amazon WorkSpaces client.</p>
    # @!attribute resource_id
    #   <p>The resource identifier, in the form of a directory ID.</p>
    #   @return [String]
    # @!attribute client_properties
    #   <p>Information about the Amazon WorkSpaces client.</p>
    #   @return [Types::ClientProperties]
    class ClientPropertiesResult < Struct.new(
      nil,
      :resource_id,
      :client_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The compute type of the WorkSpace is not compatible with the application.</p>
    class ComputeNotCompatibleException < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the compute type of the bundle.</p>
    # @!attribute name
    #   <p>The compute type.</p>
    #   @return [String]
    class ComputeType < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The <code>TargetAccountId</code> is already linked or invited.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an Amazon Connect client add-in.</p>
    # @!attribute add_in_id
    #   <p>The client add-in identifier.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The directory identifier for which the client add-in is configured.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the client add in.</p>
    #   @return [String]
    # @!attribute url
    #   <p>The endpoint URL of the client add-in.</p>
    #   @return [String]
    class ConnectClientAddIn < Struct.new(
      nil,
      :add_in_id,
      :resource_id,
      :name,
      :url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a connection alias. Connection aliases are used for cross-Region redirection.
    #          For more information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html"> Cross-Region
    #             Redirection for Amazon WorkSpaces</a>.</p>
    # @!attribute connection_string
    #   <p>The connection string specified for the connection alias. The connection string must be
    #            in the form of a fully qualified domain name (FQDN), such as
    #            <code>www.example.com</code>.</p>
    #   @return [String]
    # @!attribute alias_id
    #   <p>The identifier of the connection alias.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the connection alias.</p>
    #   @return [String]
    # @!attribute owner_account_id
    #   <p>The identifier of the Amazon Web Services account that owns the connection alias.</p>
    #   @return [String]
    # @!attribute associations
    #   <p>The association status of the connection alias.</p>
    #   @return [Array<Types::ConnectionAliasAssociation>]
    class ConnectionAlias < Struct.new(
      nil,
      :connection_string,
      :alias_id,
      :state,
      :owner_account_id,
      :associations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a connection alias association that is used for cross-Region redirection. For
    #          more information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html"> Cross-Region
    #             Redirection for Amazon WorkSpaces</a>.</p>
    # @!attribute association_status
    #   <p>The association status of the connection alias.</p>
    #   @return [String]
    # @!attribute associated_account_id
    #   <p>The identifier of the Amazon Web Services account that associated the connection alias
    #            with a directory.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the directory associated with a connection alias.</p>
    #   @return [String]
    # @!attribute connection_identifier
    #   <p>The identifier of the connection alias association. You use the connection identifier in
    #            the DNS TXT record when you're configuring your DNS routing policies.</p>
    #   @return [String]
    class ConnectionAliasAssociation < Struct.new(
      nil,
      :association_status,
      :associated_account_id,
      :resource_id,
      :connection_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the permissions for a connection alias. Connection aliases are used for
    #          cross-Region redirection. For more information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html"> Cross-Region
    #             Redirection for Amazon WorkSpaces</a>.</p>
    # @!attribute shared_account_id
    #   <p>The identifier of the Amazon Web Services account that the connection alias is shared
    #            with.</p>
    #   @return [String]
    # @!attribute allow_association
    #   <p>Indicates whether the specified Amazon Web Services account is allowed to associate the
    #            connection alias with a directory.</p>
    #   @return [Boolean]
    class ConnectionAliasPermission < Struct.new(
      nil,
      :shared_account_id,
      :allow_association,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the image.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the image.</p>
    #   @return [String]
    # @!attribute source_image_id
    #   <p>The identifier of the source image.</p>
    #   @return [String]
    # @!attribute source_region
    #   <p>The identifier of the source Region.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for the image.</p>
    #   @return [Array<Types::Tag>]
    class CopyWorkspaceImageRequest < Struct.new(
      nil,
      :name,
      :description,
      :source_image_id,
      :source_region,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_id
    #   <p>The identifier of the image.</p>
    #   @return [String]
    class CopyWorkspaceImageResult < Struct.new(
      nil,
      :image_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute target_account_id
    #   <p>The identifier of the target account.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A string of up to 64 ASCII characters that Amazon WorkSpaces uses to ensure idempotent creation.</p>
    #   @return [String]
    class CreateAccountLinkInvitationRequest < Struct.new(
      nil,
      :target_account_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_link
    #   <p>Information about the account link.</p>
    #   @return [Types::AccountLink]
    class CreateAccountLinkInvitationResult < Struct.new(
      nil,
      :account_link,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_id
    #   <p>The directory identifier for which to configure the client add-in.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the client add-in.</p>
    #   @return [String]
    # @!attribute url
    #   <p>The endpoint URL of the Amazon Connect client add-in.</p>
    #   @return [String]
    class CreateConnectClientAddInRequest < Struct.new(
      nil,
      :resource_id,
      :name,
      :url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute add_in_id
    #   <p>The client add-in identifier.</p>
    #   @return [String]
    class CreateConnectClientAddInResult < Struct.new(
      nil,
      :add_in_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection_string
    #   <p>A connection string in the form of a fully qualified domain name (FQDN), such as
    #               <code>www.example.com</code>.</p>
    #            <important>
    #               <p>After you create a connection string, it is always associated to your Amazon Web Services account. You cannot recreate the same connection string with a different
    #               account, even if you delete all instances of it from the original account. The
    #               connection string is globally reserved for your account.</p>
    #            </important>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to associate with the connection alias.</p>
    #   @return [Array<Types::Tag>]
    class CreateConnectionAliasRequest < Struct.new(
      nil,
      :connection_string,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute alias_id
    #   <p>The identifier of the connection alias.</p>
    #   @return [String]
    class CreateConnectionAliasResult < Struct.new(
      nil,
      :alias_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute group_name
    #   <p>The name of the group.</p>
    #   @return [String]
    # @!attribute group_desc
    #   <p>The description of the group.</p>
    #   @return [String]
    # @!attribute user_rules
    #   <p>The rules to add to the group.</p>
    #   @return [Array<Types::IpRuleItem>]
    # @!attribute tags
    #   <p>The tags. Each WorkSpaces resource can have a maximum of 50 tags.</p>
    #   @return [Array<Types::Tag>]
    class CreateIpGroupRequest < Struct.new(
      nil,
      :group_name,
      :group_desc,
      :user_rules,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute group_id
    #   <p>The identifier of the group.</p>
    #   @return [String]
    class CreateIpGroupResult < Struct.new(
      nil,
      :group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute primary_region
    #   <p>The Region of the primary WorkSpace.</p>
    #   @return [String]
    # @!attribute standby_workspaces
    #   <p>Information about the standby WorkSpace to be created.</p>
    #   @return [Array<Types::StandbyWorkspace>]
    class CreateStandbyWorkspacesRequest < Struct.new(
      nil,
      :primary_region,
      :standby_workspaces,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute failed_standby_requests
    #   <p>Information about the standby WorkSpace that could not be created. </p>
    #   @return [Array<Types::FailedCreateStandbyWorkspacesRequest>]
    # @!attribute pending_standby_requests
    #   <p>Information about the standby WorkSpace that was created.</p>
    #   @return [Array<Types::PendingCreateStandbyWorkspacesRequest>]
    class CreateStandbyWorkspacesResult < Struct.new(
      nil,
      :failed_standby_requests,
      :pending_standby_requests,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_id
    #   <p>The identifier of the WorkSpaces resource. The supported resource types are WorkSpaces,
    #            registered directories, images, custom bundles, IP access control groups, and connection
    #            aliases.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags. Each WorkSpaces resource can have a maximum of 50 tags.</p>
    #   @return [Array<Types::Tag>]
    class CreateTagsRequest < Struct.new(
      nil,
      :resource_id,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CreateTagsResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the new updated WorkSpace image.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of whether updates for the WorkSpace image are available.</p>
    #   @return [String]
    # @!attribute source_image_id
    #   <p>The identifier of the source WorkSpace image.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags that you want to add to the new updated WorkSpace image.</p>
    #            <note>
    #               <p>To add tags at the same time when you're creating the updated image, you must create
    #               an IAM policy that grants your IAM user permissions to use
    #                  <code>workspaces:CreateTags</code>. </p>
    #            </note>
    #   @return [Array<Types::Tag>]
    class CreateUpdatedWorkspaceImageRequest < Struct.new(
      nil,
      :name,
      :description,
      :source_image_id,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_id
    #   <p>The identifier of the new updated WorkSpace image.</p>
    #   @return [String]
    class CreateUpdatedWorkspaceImageResult < Struct.new(
      nil,
      :image_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bundle_name
    #   <p>The name of the bundle.</p>
    #   @return [String]
    # @!attribute bundle_description
    #   <p>The description of the bundle.</p>
    #   @return [String]
    # @!attribute image_id
    #   <p>The identifier of the image that is used to create the bundle.</p>
    #   @return [String]
    # @!attribute compute_type
    #   <p>Describes the compute type of the bundle.</p>
    #   @return [Types::ComputeType]
    # @!attribute user_storage
    #   <p>Describes the user volume for a WorkSpace bundle.</p>
    #   @return [Types::UserStorage]
    # @!attribute root_storage
    #   <p>Describes the root volume for a WorkSpace bundle.</p>
    #   @return [Types::RootStorage]
    # @!attribute tags
    #   <p>The tags associated with the bundle.</p>
    #            <note>
    #               <p>To add tags at the same time when you're creating the bundle, you must create an IAM policy that 
    #               grants your IAM user permissions to use <code>workspaces:CreateTags</code>. </p>
    #            </note>
    #   @return [Array<Types::Tag>]
    class CreateWorkspaceBundleRequest < Struct.new(
      nil,
      :bundle_name,
      :bundle_description,
      :image_id,
      :compute_type,
      :user_storage,
      :root_storage,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_bundle
    #   <p>Describes a WorkSpace bundle.</p>
    #   @return [Types::WorkspaceBundle]
    class CreateWorkspaceBundleResult < Struct.new(
      nil,
      :workspace_bundle,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the new WorkSpace image.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the new WorkSpace image.</p>
    #   @return [String]
    # @!attribute workspace_id
    #   <p>The identifier of the source WorkSpace</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags that you want to add to the new WorkSpace image. 
    #            To add tags when you're creating the image, you must create an IAM policy that grants 
    #            your IAM user permission to use <code>workspaces:CreateTags</code>.</p>
    #   @return [Array<Types::Tag>]
    class CreateWorkspaceImageRequest < Struct.new(
      nil,
      :name,
      :description,
      :workspace_id,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_id
    #   <p>The identifier of the new WorkSpace image.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the image.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the image.</p>
    #   @return [String]
    # @!attribute operating_system
    #   <p>The operating system that the image is running.</p>
    #   @return [Types::OperatingSystem]
    # @!attribute state
    #   <p>The availability status of the image.</p>
    #   @return [String]
    # @!attribute required_tenancy
    #   <p>Specifies whether the image is running on dedicated hardware. 
    #            When Bring Your Own License (BYOL) is enabled, this value is set 
    #            to DEDICATED. For more information, see 
    #            <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.htm">
    #               Bring Your Own Windows Desktop Images.</a>.</p>
    #   @return [String]
    # @!attribute created
    #   <p>The date when the image was created.</p>
    #   @return [Time]
    # @!attribute owner_account_id
    #   <p>The identifier of the Amazon Web Services account that owns the image.</p>
    #   @return [String]
    class CreateWorkspaceImageResult < Struct.new(
      nil,
      :image_id,
      :name,
      :description,
      :operating_system,
      :state,
      :required_tenancy,
      :created,
      :owner_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pool_name
    #   <p>The name of the pool.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The pool description.</p>
    #   @return [String]
    # @!attribute bundle_id
    #   <p>The identifier of the bundle for the pool.</p>
    #   @return [String]
    # @!attribute directory_id
    #   <p>The identifier of the directory for the pool.</p>
    #   @return [String]
    # @!attribute capacity
    #   <p>The user capacity of the pool.</p>
    #   @return [Types::Capacity]
    # @!attribute tags
    #   <p>The tags for the pool.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute application_settings
    #   <p>Indicates the application settings of the pool.</p>
    #   @return [Types::ApplicationSettingsRequest]
    # @!attribute timeout_settings
    #   <p>Indicates the timeout settings of the pool.</p>
    #   @return [Types::TimeoutSettings]
    # @!attribute running_mode
    #   <p>The running mode for the pool.</p>
    #   @return [String]
    class CreateWorkspacesPoolRequest < Struct.new(
      nil,
      :pool_name,
      :description,
      :bundle_id,
      :directory_id,
      :capacity,
      :tags,
      :application_settings,
      :timeout_settings,
      :running_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspaces_pool
    #   <p>Indicates the pool to create.</p>
    #   @return [Types::WorkspacesPool]
    class CreateWorkspacesPoolResult < Struct.new(
      nil,
      :workspaces_pool,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspaces
    #   <p>The WorkSpaces to create. You can specify up to 25 WorkSpaces.</p>
    #   @return [Array<Types::WorkspaceRequest>]
    class CreateWorkspacesRequest < Struct.new(
      nil,
      :workspaces,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute failed_requests
    #   <p>Information about the WorkSpaces that could not be created.</p>
    #   @return [Array<Types::FailedCreateWorkspaceRequest>]
    # @!attribute pending_requests
    #   <p>Information about the WorkSpaces that were created.</p>
    #            <p>Because this operation is asynchronous, the identifier returned is not immediately
    #            available for use with other operations. For example, if you call <a>DescribeWorkspaces</a> before the WorkSpace is created, the information returned
    #            can be incomplete.</p>
    #   @return [Array<Types::Workspace>]
    class CreateWorkspacesResult < Struct.new(
      nil,
      :failed_requests,
      :pending_requests,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes in-depth details about the error. These details include the
    #          possible causes of the error and troubleshooting information.</p>
    # @!attribute error_code
    #   <p>The error code that is returned for the image import.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The text of the error message that is returned for the image import.</p>
    #   @return [String]
    class CustomWorkspaceImageImportErrorDetails < Struct.new(
      nil,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the data replication settings.</p>
    # @!attribute data_replication
    #   <p>Indicates whether data replication is enabled, and if enabled, the type of data replication.</p>
    #   @return [String]
    # @!attribute recovery_snapshot_time
    #   <p>The date and time at which the last successful snapshot was taken of the 
    #            primary WorkSpace used for replicating data.</p>
    #   @return [Time]
    class DataReplicationSettings < Struct.new(
      nil,
      :data_replication,
      :recovery_snapshot_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns default client branding attributes that were imported. These attributes display
    #          on the client login screen.</p>
    #          <important>
    #             <p>Client branding attributes are public facing. Ensure that you don't include sensitive
    #             information.</p>
    #          </important>
    # @!attribute logo_url
    #   <p>The logo. The only image format accepted is a binary data object that is converted from a <code>.png</code> file.</p>
    #   @return [String]
    # @!attribute support_email
    #   <p>The support email. The company's customer support email address.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>In each platform type, the <code>SupportEmail</code> and
    #                        <code>SupportLink</code> parameters are mutually exclusive. You can specify one
    #                     parameter for each platform type, but not both.</p>
    #                  </li>
    #                  <li>
    #                     <p>The default email is <code>workspaces-feedback@amazon.com</code>.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute support_link
    #   <p>The support link. The link for the company's customer support page for their
    #            WorkSpace.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>In each platform type, the <code>SupportEmail</code> and
    #                        <code>SupportLink</code> parameters are mutually exclusive.You can specify one
    #                     parameter for each platform type, but not both.</p>
    #                  </li>
    #                  <li>
    #                     <p>The default support link is <code>workspaces-feedback@amazon.com</code>.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute forgot_password_link
    #   <p>The forgotten password link. This is the web address that users can go to if they forget
    #            the password for their WorkSpace.</p>
    #   @return [String]
    # @!attribute login_message
    #   <p>The login message. Specified as a key value pair, in which the key is a locale and the
    #            value is the localized message for that locale. The only key supported is
    #            <code>en_US</code>. The HTML tags supported include the following: <code>a, b, blockquote, br, cite, code, dd, dl, dt, div, em, 
    #               i, li, ol, p, pre, q, small, span, strike, strong, sub, sup, u, ul</code>.</p>
    #   @return [Hash<String, String>]
    class DefaultClientBrandingAttributes < Struct.new(
      nil,
      :logo_url,
      :support_email,
      :support_link,
      :forgot_password_link,
      :login_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The default client branding attributes to be imported. These attributes display on the
    #          client login screen.</p>
    #          <important>
    #             <p>Client branding attributes are public facing. Ensure that you do not include
    #             sensitive information.</p>
    #          </important>
    # @!attribute logo
    #   <p>The logo. The only image format accepted is a binary data object that is converted from a <code>.png</code> file.</p>
    #   @return [String]
    # @!attribute support_email
    #   <p>The support email. The company's customer support email address.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>In each platform type, the <code>SupportEmail</code> and
    #                        <code>SupportLink</code> parameters are mutually exclusive. You can specify one
    #                     parameter for each platform type, but not both.</p>
    #                  </li>
    #                  <li>
    #                     <p>The default email is <code>workspaces-feedback@amazon.com</code>.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute support_link
    #   <p>The support link. The link for the company's customer support page for their
    #            WorkSpace.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>In each platform type, the <code>SupportEmail</code> and
    #                        <code>SupportLink</code> parameters are mutually exclusive. You can specify one
    #                     parameter for each platform type, but not both.</p>
    #                  </li>
    #                  <li>
    #                     <p>The default support link is <code>workspaces-feedback@amazon.com</code>.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute forgot_password_link
    #   <p>The forgotten password link. This is the web address that users can go to if they forget
    #            the password for their WorkSpace.</p>
    #   @return [String]
    # @!attribute login_message
    #   <p>The login message. Specified as a key value pair, in which the key is a locale and the
    #            value is the localized message for that locale. The only key supported is
    #            <code>en_US</code>. The HTML tags supported include the following: <code>a, b, blockquote, br, cite, code, dd, dl, dt, div, em, 
    #               i, li, ol, p, pre, q, small, span, strike, strong, sub, sup, u, ul</code>.</p>
    #   @return [Hash<String, String>]
    class DefaultImportClientBrandingAttributes < Struct.new(
      nil,
      :logo,
      :support_email,
      :support_link,
      :forgot_password_link,
      :login_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the default values that are used to create WorkSpaces. For more information,
    #          see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/update-directory-details.html">Update Directory
    #             Details for Your WorkSpaces</a>.</p>
    # @!attribute enable_internet_access
    #   <p>Specifies whether to automatically assign an Elastic public IP address to WorkSpaces in
    #            this directory by default. If enabled, the Elastic public IP address allows outbound
    #            internet access from your WorkSpaces when you’re using an internet gateway in the Amazon
    #            VPC in which your WorkSpaces are located. If you're using a Network Address Translation
    #            (NAT) gateway for outbound internet access from your VPC, or if your WorkSpaces are in
    #            public subnets and you manually assign them Elastic IP addresses, you should disable this
    #            setting. This setting applies to new WorkSpaces that you launch or to existing WorkSpaces
    #            that you rebuild. For more information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/amazon-workspaces-vpc.html"> Configure a VPC for
    #               Amazon WorkSpaces</a>.</p>
    #   @return [Boolean]
    # @!attribute default_ou
    #   <p>The organizational unit (OU) in the directory for the WorkSpace machine accounts.</p>
    #   @return [String]
    # @!attribute custom_security_group_id
    #   <p>The identifier of the default security group to apply to WorkSpaces when they are
    #            created. For more information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/amazon-workspaces-security-groups.html"> Security
    #               Groups for Your WorkSpaces</a>.</p>
    #   @return [String]
    # @!attribute user_enabled_as_local_administrator
    #   <p>Specifies whether WorkSpace users are local administrators on their WorkSpaces.</p>
    #   @return [Boolean]
    # @!attribute enable_maintenance_mode
    #   <p>Specifies whether maintenance mode is enabled for WorkSpaces. For more information, see
    #               <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/workspace-maintenance.html">WorkSpace
    #               Maintenance</a>.</p>
    #   @return [Boolean]
    # @!attribute instance_iam_role_arn
    #   <p>Indicates the IAM role ARN of the instance.</p>
    #   @return [String]
    class DefaultWorkspaceCreationProperties < Struct.new(
      nil,
      :enable_internet_access,
      :default_ou,
      :custom_security_group_id,
      :user_enabled_as_local_administrator,
      :enable_maintenance_mode,
      :instance_iam_role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute link_id
    #   <p>The identifier of the account link.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A string of up to 64 ASCII characters that Amazon WorkSpaces uses to ensure idempotent creation.</p>
    #   @return [String]
    class DeleteAccountLinkInvitationRequest < Struct.new(
      nil,
      :link_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_link
    #   <p>Information about the account link.</p>
    #   @return [Types::AccountLink]
    class DeleteAccountLinkInvitationResult < Struct.new(
      nil,
      :account_link,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_id
    #   <p>The directory identifier of the WorkSpace for which you want to delete client
    #            branding.</p>
    #   @return [String]
    # @!attribute platforms
    #   <p>The device type for which you want to delete client branding.</p>
    #   @return [Array<String>]
    class DeleteClientBrandingRequest < Struct.new(
      nil,
      :resource_id,
      :platforms,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteClientBrandingResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute add_in_id
    #   <p>The identifier of the client add-in to delete.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The directory identifier for which the client add-in is configured.</p>
    #   @return [String]
    class DeleteConnectClientAddInRequest < Struct.new(
      nil,
      :add_in_id,
      :resource_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteConnectClientAddInResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute alias_id
    #   <p>The identifier of the connection alias to delete.</p>
    #   @return [String]
    class DeleteConnectionAliasRequest < Struct.new(
      nil,
      :alias_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteConnectionAliasResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute group_id
    #   <p>The identifier of the IP access control group.</p>
    #   @return [String]
    class DeleteIpGroupRequest < Struct.new(
      nil,
      :group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteIpGroupResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_id
    #   <p>The identifier of the WorkSpaces resource. The supported resource types are WorkSpaces,
    #            registered directories, images, custom bundles, IP access control groups, and connection
    #            aliases.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag keys.</p>
    #   @return [Array<String>]
    class DeleteTagsRequest < Struct.new(
      nil,
      :resource_id,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteTagsResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bundle_id
    #   <p>The identifier of the bundle.</p>
    #   @return [String]
    class DeleteWorkspaceBundleRequest < Struct.new(
      nil,
      :bundle_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteWorkspaceBundleResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_id
    #   <p>The identifier of the image.</p>
    #   @return [String]
    class DeleteWorkspaceImageRequest < Struct.new(
      nil,
      :image_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteWorkspaceImageResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The identifier of the WorkSpace.</p>
    #   @return [String]
    # @!attribute force
    #   <p>Indicates whether the force flag is applied for the specified WorkSpace. When the force flag is enabled, 
    #            it allows previously failed deployments to be retried.</p>
    #   @return [Boolean]
    class DeployWorkspaceApplicationsRequest < Struct.new(
      nil,
      :workspace_id,
      :force,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute deployment
    #   <p>The list of deployed associations and information about them.</p>
    #   @return [Types::WorkSpaceApplicationDeployment]
    class DeployWorkspaceApplicationsResult < Struct.new(
      nil,
      :deployment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>The identifier of the directory. If any WorkSpaces are registered to this directory, you
    #            must remove them before you deregister the directory, or you will receive an
    #            OperationNotSupportedException error.</p>
    #   @return [String]
    class DeregisterWorkspaceDirectoryRequest < Struct.new(
      nil,
      :directory_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeregisterWorkspaceDirectoryResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated,
    #            provide this token to receive the next set of results.</p>
    #   @return [String]
    class DescribeAccountModificationsRequest < Struct.new(
      nil,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_modifications
    #   <p>The list of modifications to the configuration of BYOL.</p>
    #   @return [Array<Types::AccountModification>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are
    #            no more results to return. </p>
    #   @return [String]
    class DescribeAccountModificationsResult < Struct.new(
      nil,
      :account_modifications,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DescribeAccountRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dedicated_tenancy_support
    #   <p>The status of BYOL (whether BYOL is enabled or disabled).</p>
    #   @return [String]
    # @!attribute dedicated_tenancy_management_cidr_range
    #   <p>The IP address range, specified as an IPv4 CIDR block, used for the management network
    #            interface.</p>
    #            <p>The management network interface is connected to a secure Amazon WorkSpaces management
    #            network. It is used for interactive streaming of the WorkSpace desktop to Amazon WorkSpaces
    #            clients, and to allow Amazon WorkSpaces to manage the WorkSpace.</p>
    #   @return [String]
    # @!attribute dedicated_tenancy_account_type
    #   <p>The type of linked account.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The text message to describe the status of BYOL.</p>
    #   @return [String]
    class DescribeAccountResult < Struct.new(
      nil,
      :dedicated_tenancy_support,
      :dedicated_tenancy_management_cidr_range,
      :dedicated_tenancy_account_type,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of associations to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated, provide this token to receive the next set of results.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>The identifier of the specified application.</p>
    #   @return [String]
    # @!attribute associated_resource_types
    #   <p>The resource type of the associated resources.</p>
    #   @return [Array<String>]
    class DescribeApplicationAssociationsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :application_id,
      :associated_resource_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute associations
    #   <p>List of associations and information about them.</p>
    #   @return [Array<Types::ApplicationResourceAssociation>]
    # @!attribute next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated, provide this token to receive the next set of results.</p>
    #   @return [String]
    class DescribeApplicationAssociationsResult < Struct.new(
      nil,
      :associations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_ids
    #   <p>The identifiers of one or more applications.</p>
    #   @return [Array<String>]
    # @!attribute compute_type_names
    #   <p>The compute types supported by the applications.</p>
    #   @return [Array<String>]
    # @!attribute license_type
    #   <p>The license availability for the applications.</p>
    #   @return [String]
    # @!attribute operating_system_names
    #   <p>The operating systems supported by the applications.</p>
    #   @return [Array<String>]
    # @!attribute owner
    #   <p>The owner of the applications.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of applications to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated, provide this token to receive the next set of results.</p>
    #   @return [String]
    class DescribeApplicationsRequest < Struct.new(
      nil,
      :application_ids,
      :compute_type_names,
      :license_type,
      :operating_system_names,
      :owner,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute applications
    #   <p>List of information about the specified applications.</p>
    #   @return [Array<Types::WorkSpaceApplication>]
    # @!attribute next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated, provide this token to receive the next set of results.</p>
    #   @return [String]
    class DescribeApplicationsResult < Struct.new(
      nil,
      :applications,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bundle_id
    #   <p>The identifier of the bundle.</p>
    #   @return [String]
    # @!attribute associated_resource_types
    #   <p>The resource types of the associated resource.</p>
    #   @return [Array<String>]
    class DescribeBundleAssociationsRequest < Struct.new(
      nil,
      :bundle_id,
      :associated_resource_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute associations
    #   <p>List of information about the specified associations.</p>
    #   @return [Array<Types::BundleResourceAssociation>]
    class DescribeBundleAssociationsResult < Struct.new(
      nil,
      :associations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_id
    #   <p>The directory identifier of the WorkSpace for which you want to view client branding
    #            information.</p>
    #   @return [String]
    class DescribeClientBrandingRequest < Struct.new(
      nil,
      :resource_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute device_type_windows
    #   <p>The branding information for Windows devices.</p>
    #   @return [Types::DefaultClientBrandingAttributes]
    # @!attribute device_type_osx
    #   <p>The branding information for macOS devices.</p>
    #   @return [Types::DefaultClientBrandingAttributes]
    # @!attribute device_type_android
    #   <p>The branding information for Android devices.</p>
    #   @return [Types::DefaultClientBrandingAttributes]
    # @!attribute device_type_ios
    #   <p>The branding information for iOS devices.</p>
    #   @return [Types::IosClientBrandingAttributes]
    # @!attribute device_type_linux
    #   <p>The branding information for Linux devices.</p>
    #   @return [Types::DefaultClientBrandingAttributes]
    # @!attribute device_type_web
    #   <p>The branding information for Web access.</p>
    #   @return [Types::DefaultClientBrandingAttributes]
    class DescribeClientBrandingResult < Struct.new(
      nil,
      :device_type_windows,
      :device_type_osx,
      :device_type_android,
      :device_type_ios,
      :device_type_linux,
      :device_type_web,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_ids
    #   <p>The resource identifier, in the form of directory IDs.</p>
    #   @return [Array<String>]
    class DescribeClientPropertiesRequest < Struct.new(
      nil,
      :resource_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_properties_list
    #   <p>Information about the specified Amazon WorkSpaces clients.</p>
    #   @return [Array<Types::ClientPropertiesResult>]
    class DescribeClientPropertiesResult < Struct.new(
      nil,
      :client_properties_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_id
    #   <p>The directory identifier for which the client add-in is configured.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated,
    #            provide this token to receive the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return.</p>
    #   @return [Integer]
    class DescribeConnectClientAddInsRequest < Struct.new(
      nil,
      :resource_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute add_ins
    #   <p>Information about client add-ins.</p>
    #   @return [Array<Types::ConnectClientAddIn>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are
    #            no more results to return. </p>
    #   @return [String]
    class DescribeConnectClientAddInsResult < Struct.new(
      nil,
      :add_ins,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute alias_id
    #   <p>The identifier of the connection alias.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated,
    #            provide this token to receive the next set of results. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    class DescribeConnectionAliasPermissionsRequest < Struct.new(
      nil,
      :alias_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute alias_id
    #   <p>The identifier of the connection alias.</p>
    #   @return [String]
    # @!attribute connection_alias_permissions
    #   <p>The permissions associated with a connection alias.</p>
    #   @return [Array<Types::ConnectionAliasPermission>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are
    #            no more results to return. </p>
    #   @return [String]
    class DescribeConnectionAliasPermissionsResult < Struct.new(
      nil,
      :alias_id,
      :connection_alias_permissions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute alias_ids
    #   <p>The identifiers of the connection aliases to describe.</p>
    #   @return [Array<String>]
    # @!attribute resource_id
    #   <p>The identifier of the directory associated with the connection alias.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of connection aliases to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated,
    #            provide this token to receive the next set of results. </p>
    #   @return [String]
    class DescribeConnectionAliasesRequest < Struct.new(
      nil,
      :alias_ids,
      :resource_id,
      :limit,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection_aliases
    #   <p>Information about the specified connection aliases.</p>
    #   @return [Array<Types::ConnectionAlias>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are
    #            no more results to return. </p>
    #   @return [String]
    class DescribeConnectionAliasesResult < Struct.new(
      nil,
      :connection_aliases,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_id
    #   <p>The identifier of the WorkSpace image.</p>
    #   @return [String]
    class DescribeCustomWorkspaceImageImportRequest < Struct.new(
      nil,
      :image_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_id
    #   <p>The identifier of the WorkSpace image.</p>
    #   @return [String]
    # @!attribute infrastructure_configuration_arn
    #   <p>The infrastructure configuration ARN that specifies how the WorkSpace image is built.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the WorkSpace image.</p>
    #   @return [String]
    # @!attribute created
    #   <p>The timestamp when the WorkSpace image import was created.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The timestamp when the WorkSpace image import was last updated.</p>
    #   @return [Time]
    # @!attribute image_source
    #   <p>Describes the image import source.</p>
    #   @return [Types::ImageSourceIdentifier]
    # @!attribute image_builder_instance_id
    #   <p>The image builder instance ID of the WorkSpace image.</p>
    #   @return [String]
    # @!attribute error_details
    #   <p>Describes in-depth details about the error. These details include the
    #            possible causes of the error and troubleshooting information.</p>
    #   @return [Array<Types::CustomWorkspaceImageImportErrorDetails>]
    class DescribeCustomWorkspaceImageImportResult < Struct.new(
      nil,
      :image_id,
      :infrastructure_configuration_arn,
      :state,
      :created,
      :last_updated_time,
      :image_source,
      :image_builder_instance_id,
      :error_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_id
    #   <p>The identifier of the image.</p>
    #   @return [String]
    # @!attribute associated_resource_types
    #   <p>The resource types of the associated resource.</p>
    #   @return [Array<String>]
    class DescribeImageAssociationsRequest < Struct.new(
      nil,
      :image_id,
      :associated_resource_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute associations
    #   <p>List of information about the specified associations.</p>
    #   @return [Array<Types::ImageResourceAssociation>]
    class DescribeImageAssociationsResult < Struct.new(
      nil,
      :associations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute group_ids
    #   <p>The identifiers of one or more IP access control groups.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated,
    #            provide this token to receive the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return.</p>
    #   @return [Integer]
    class DescribeIpGroupsRequest < Struct.new(
      nil,
      :group_ids,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute result
    #   <p>Information about the IP access control groups.</p>
    #   @return [Array<Types::WorkspacesIpGroup>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are
    #            no more results to return. </p>
    #   @return [String]
    class DescribeIpGroupsResult < Struct.new(
      nil,
      :result,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_id
    #   <p>The identifier of the WorkSpaces resource. The supported resource types are WorkSpaces,
    #            registered directories, images, custom bundles, IP access control groups, and connection
    #            aliases.</p>
    #   @return [String]
    class DescribeTagsRequest < Struct.new(
      nil,
      :resource_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tag_list
    #   <p>The tags.</p>
    #   @return [Array<Types::Tag>]
    class DescribeTagsResult < Struct.new(
      nil,
      :tag_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The identifier of the WorkSpace.</p>
    #   @return [String]
    # @!attribute associated_resource_types
    #   <p>The resource types of the associated resources.</p>
    #   @return [Array<String>]
    class DescribeWorkspaceAssociationsRequest < Struct.new(
      nil,
      :workspace_id,
      :associated_resource_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute associations
    #   <p>List of information about the specified associations.</p>
    #   @return [Array<Types::WorkspaceResourceAssociation>]
    class DescribeWorkspaceAssociationsResult < Struct.new(
      nil,
      :associations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bundle_ids
    #   <p>The identifiers of the bundles. You cannot combine this parameter with any other filter.</p>
    #   @return [Array<String>]
    # @!attribute owner
    #   <p>The owner of the bundles. You cannot combine this parameter with any other filter.</p>
    #            <p>To describe the bundles provided by Amazon Web Services, specify <code>AMAZON</code>. 
    #            To describe the bundles that belong to your account, don't specify a value.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. (You received this token from a previous call.)</p>
    #   @return [String]
    class DescribeWorkspaceBundlesRequest < Struct.new(
      nil,
      :bundle_ids,
      :owner,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bundles
    #   <p>Information about the bundles.</p>
    #   @return [Array<Types::WorkspaceBundle>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are no more 
    #            results to return. This token is valid for one day and must be used within that time
    #            frame.</p>
    #   @return [String]
    class DescribeWorkspaceBundlesResult < Struct.new(
      nil,
      :bundles,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the filter conditions for the WorkSpaces to return.</p>
    # @!attribute name
    #   <p>The name of the WorkSpaces to filter.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values for filtering WorkSpaces</p>
    #   @return [Array<String>]
    class DescribeWorkspaceDirectoriesFilter < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_ids
    #   <p>The identifiers of the directories. If the value is null, all directories are
    #            retrieved.</p>
    #   @return [Array<String>]
    # @!attribute workspace_directory_names
    #   <p>The names of the WorkSpace directories.</p>
    #   @return [Array<String>]
    # @!attribute limit
    #   <p>The maximum number of directories to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated,
    #            provide this token to receive the next set of results.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>The filter condition for the WorkSpaces.</p>
    #   @return [Array<Types::DescribeWorkspaceDirectoriesFilter>]
    class DescribeWorkspaceDirectoriesRequest < Struct.new(
      nil,
      :directory_ids,
      :workspace_directory_names,
      :limit,
      :next_token,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directories
    #   <p>Information about the directories.</p>
    #   @return [Array<Types::WorkspaceDirectory>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are
    #            no more results to return. </p>
    #   @return [String]
    class DescribeWorkspaceDirectoriesResult < Struct.new(
      nil,
      :directories,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_id
    #   <p>The identifier of the image.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated,
    #            provide this token to receive the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return.</p>
    #   @return [Integer]
    class DescribeWorkspaceImagePermissionsRequest < Struct.new(
      nil,
      :image_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_id
    #   <p>The identifier of the image.</p>
    #   @return [String]
    # @!attribute image_permissions
    #   <p>The identifiers of the Amazon Web Services accounts that the image has been shared
    #            with.</p>
    #   @return [Array<Types::ImagePermission>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are
    #            no more results to return. </p>
    #   @return [String]
    class DescribeWorkspaceImagePermissionsResult < Struct.new(
      nil,
      :image_id,
      :image_permissions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_ids
    #   <p>The identifier of the image.</p>
    #   @return [Array<String>]
    # @!attribute image_type
    #   <p>The type (owned or shared) of the image.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated,
    #            provide this token to receive the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return.</p>
    #   @return [Integer]
    class DescribeWorkspaceImagesRequest < Struct.new(
      nil,
      :image_ids,
      :image_type,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute images
    #   <p>Information about the images.</p>
    #   @return [Array<Types::WorkspaceImage>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are
    #            no more results to return. </p>
    #   @return [String]
    class DescribeWorkspaceImagesResult < Struct.new(
      nil,
      :images,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The identifier of the WorkSpace.</p>
    #   @return [String]
    class DescribeWorkspaceSnapshotsRequest < Struct.new(
      nil,
      :workspace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rebuild_snapshots
    #   <p>Information about the snapshots that can be used to rebuild a WorkSpace. These snapshots
    #            include the user volume.</p>
    #   @return [Array<Types::Snapshot>]
    # @!attribute restore_snapshots
    #   <p>Information about the snapshots that can be used to restore a WorkSpace. These snapshots
    #            include both the root volume and the user volume.</p>
    #   @return [Array<Types::Snapshot>]
    class DescribeWorkspaceSnapshotsResult < Struct.new(
      nil,
      :rebuild_snapshots,
      :restore_snapshots,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_ids
    #   <p>The identifiers of the WorkSpaces. You can specify up to 25 WorkSpaces.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated,
    #            provide this token to receive the next set of results.</p>
    #   @return [String]
    class DescribeWorkspacesConnectionStatusRequest < Struct.new(
      nil,
      :workspace_ids,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspaces_connection_status
    #   <p>Information about the connection status of the WorkSpace.</p>
    #   @return [Array<Types::WorkspaceConnectionStatus>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are
    #            no more results to return. </p>
    #   @return [String]
    class DescribeWorkspacesConnectionStatusResult < Struct.new(
      nil,
      :workspaces_connection_status,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pool_id
    #   <p>The identifier of the pool.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The identifier of the user.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum size of each page of results. The default value is 20 and the maximum value
    #            is 50.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated, 
    #            provide this token to receive the next set of results.</p>
    #   @return [String]
    class DescribeWorkspacesPoolSessionsRequest < Struct.new(
      nil,
      :pool_id,
      :user_id,
      :limit,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sessions
    #   <p>Describes the pool sessions.</p>
    #   @return [Array<Types::WorkspacesPoolSession>]
    # @!attribute next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated, 
    #            provide this token to receive the next set of results.</p>
    #   @return [String]
    class DescribeWorkspacesPoolSessionsResult < Struct.new(
      nil,
      :sessions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the filter conditions for WorkSpaces Pools to return.</p>
    # @!attribute name
    #   <p>The name of the pool to filter.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values for filtering WorkSpaces Pools.</p>
    #   @return [Array<String>]
    # @!attribute operator
    #   <p>The operator values for filtering WorkSpaces Pools.</p>
    #   @return [String]
    class DescribeWorkspacesPoolsFilter < Struct.new(
      nil,
      :name,
      :values,
      :operator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pool_ids
    #   <p>The identifier of the WorkSpaces Pools.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>The filter conditions for the WorkSpaces Pool to return.</p>
    #   @return [Array<Types::DescribeWorkspacesPoolsFilter>]
    # @!attribute limit
    #   <p>The maximum number of items to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated, 
    #            provide this token to receive the next set of results.</p>
    #   @return [String]
    class DescribeWorkspacesPoolsRequest < Struct.new(
      nil,
      :pool_ids,
      :filters,
      :limit,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspaces_pools
    #   <p>Information about the WorkSpaces Pools.</p>
    #   @return [Array<Types::WorkspacesPool>]
    # @!attribute next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated, 
    #            provide this token to receive the next set of results.</p>
    #   @return [String]
    class DescribeWorkspacesPoolsResult < Struct.new(
      nil,
      :workspaces_pools,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_ids
    #   <p>The identifiers of the WorkSpaces. You cannot combine this parameter with any other
    #            filter.</p>
    #            <p>Because the <a>CreateWorkspaces</a> operation is asynchronous, the identifier
    #            it returns is not immediately available. If you immediately call <a>DescribeWorkspaces</a> with this identifier, no information is returned.</p>
    #   @return [Array<String>]
    # @!attribute directory_id
    #   <p>The identifier of the directory. In addition, you can optionally specify a specific
    #            directory user (see <code>UserName</code>). You cannot combine this parameter with any
    #            other filter.</p>
    #   @return [String]
    # @!attribute user_name
    #   <p>The name of the directory user. You must specify this parameter with
    #               <code>DirectoryId</code>.</p>
    #   @return [String]
    # @!attribute bundle_id
    #   <p>The identifier of the bundle. All WorkSpaces that are created from this bundle are
    #            retrieved. You cannot combine this parameter with any other filter.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of items to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated,
    #            provide this token to receive the next set of results.</p>
    #   @return [String]
    # @!attribute workspace_name
    #   <p>The name of the user-decoupled WorkSpace.</p>
    #   @return [String]
    class DescribeWorkspacesRequest < Struct.new(
      nil,
      :workspace_ids,
      :directory_id,
      :user_name,
      :bundle_id,
      :limit,
      :next_token,
      :workspace_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspaces
    #   <p>Information about the WorkSpaces.</p>
    #            <p>Because <a>CreateWorkspaces</a> is an asynchronous operation, some of the
    #            returned information could be incomplete.</p>
    #   @return [Array<Types::Workspace>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are
    #            no more results to return. </p>
    #   @return [String]
    class DescribeWorkspacesResult < Struct.new(
      nil,
      :workspaces,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute alias_id
    #   <p>The identifier of the connection alias to disassociate.</p>
    #   @return [String]
    class DisassociateConnectionAliasRequest < Struct.new(
      nil,
      :alias_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DisassociateConnectionAliasResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>The identifier of the directory.</p>
    #   @return [String]
    # @!attribute group_ids
    #   <p>The identifiers of one or more IP access control groups.</p>
    #   @return [Array<String>]
    class DisassociateIpGroupsRequest < Struct.new(
      nil,
      :directory_id,
      :group_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DisassociateIpGroupsResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The identifier of the WorkSpace.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>The identifier of the application.</p>
    #   @return [String]
    class DisassociateWorkspaceApplicationRequest < Struct.new(
      nil,
      :workspace_id,
      :application_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute association
    #   <p>Information about the targeted association.</p>
    #   @return [Types::WorkspaceResourceAssociation]
    class DisassociateWorkspaceApplicationResult < Struct.new(
      nil,
      :association,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes in-depth details about the error. These details include the 
    #          possible causes of the error and troubleshooting information.</p>
    # @!attribute error_code
    #   <p>Indicates the error code returned.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The text of the error message related the error code.</p>
    #   @return [String]
    class ErrorDetails < Struct.new(
      nil,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the standby WorkSpace that could not be created.</p>
    # @!attribute standby_workspace_request
    #   <p>Information about the standby WorkSpace that could not be created.</p>
    #   @return [Types::StandbyWorkspace]
    # @!attribute error_code
    #   <p>The error code that is returned if the standby WorkSpace could not be created.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The text of the error message that is returned if the standby WorkSpace could not be created.</p>
    #   @return [String]
    class FailedCreateStandbyWorkspacesRequest < Struct.new(
      nil,
      :standby_workspace_request,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a WorkSpace that cannot be created.</p>
    # @!attribute workspace_request
    #   <p>Information about the WorkSpace.</p>
    #   @return [Types::WorkspaceRequest]
    # @!attribute error_code
    #   <p>The error code that is returned if the WorkSpace cannot be created.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The text of the error message that is returned if the WorkSpace cannot be
    #            created.</p>
    #   @return [String]
    class FailedCreateWorkspaceRequest < Struct.new(
      nil,
      :workspace_request,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a WorkSpace that could not be rebooted. (<a>RebootWorkspaces</a>),
    #          rebuilt (<a>RebuildWorkspaces</a>), restored (<a>RestoreWorkspace</a>), terminated (<a>TerminateWorkspaces</a>), started (<a>StartWorkspaces</a>), or stopped (<a>StopWorkspaces</a>).</p>
    # @!attribute workspace_id
    #   <p>The identifier of the WorkSpace.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error code that is returned if the WorkSpace cannot be rebooted.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The text of the error message that is returned if the WorkSpace cannot be
    #            rebooted.</p>
    #   @return [String]
    class FailedWorkspaceChangeRequest < Struct.new(
      nil,
      :workspace_id,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute link_id
    #   <p>The identifier of the account to link.</p>
    #   @return [String]
    # @!attribute linked_account_id
    #   <p>The identifier of the account link</p>
    #   @return [String]
    class GetAccountLinkRequest < Struct.new(
      nil,
      :link_id,
      :linked_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_link
    #   <p>The account link of the account link to retrieve.</p>
    #   @return [Types::AccountLink]
    class GetAccountLinkResult < Struct.new(
      nil,
      :account_link,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the Global Accelerator for directory</p>
    # @!attribute mode
    #   <p>Indicates if Global Accelerator for directory is enabled or disabled.</p>
    #   @return [String]
    # @!attribute preferred_protocol
    #   <p>Indicates the preferred protocol for Global Accelerator.</p>
    #   @return [String]
    class GlobalAcceleratorForDirectory < Struct.new(
      nil,
      :mode,
      :preferred_protocol,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the Global Accelerator for WorkSpaces.</p>
    # @!attribute mode
    #   <p>Indicates if Global Accelerator for WorkSpaces is enabled, disabled, 
    #            or the same mode as the associated directory.</p>
    #   @return [String]
    # @!attribute preferred_protocol
    #   <p>Indicates the preferred protocol for Global Accelerator.</p>
    #   @return [String]
    class GlobalAcceleratorForWorkSpace < Struct.new(
      nil,
      :mode,
      :preferred_protocol,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the configurations of the identity center.</p>
    # @!attribute instance_arn
    #   <p>The Amazon Resource Name (ARN) of the identity center instance.</p>
    #   @return [String]
    # @!attribute application_arn
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    #   @return [String]
    class IDCConfig < Struct.new(
      nil,
      :instance_arn,
      :application_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the Amazon Web Services accounts that have been granted permission to use a
    #          shared image. For more information about sharing images, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/share-custom-image.html"> Share or Unshare a Custom
    #             WorkSpaces Image</a>.</p>
    # @!attribute shared_account_id
    #   <p>The identifier of the Amazon Web Services account that an image has been shared
    #            with.</p>
    #   @return [String]
    class ImagePermission < Struct.new(
      nil,
      :shared_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the association between an application and an image resource.</p>
    # @!attribute associated_resource_id
    #   <p>The identifier of the associated resource.</p>
    #   @return [String]
    # @!attribute associated_resource_type
    #   <p>The resource type of the associated resources.</p>
    #   @return [String]
    # @!attribute created
    #   <p>The time the association is created.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The time the association status was last updated.</p>
    #   @return [Time]
    # @!attribute image_id
    #   <p>The identifier of the image.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The status of the image resource association.</p>
    #   @return [String]
    # @!attribute state_reason
    #   <p>The reason the association deployment failed.</p>
    #   @return [Types::AssociationStateReason]
    class ImageResourceAssociation < Struct.new(
      nil,
      :associated_resource_id,
      :associated_resource_type,
      :created,
      :last_updated_time,
      :image_id,
      :state,
      :state_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the image import source.</p>
    # @!attribute ec2_import_task_id
    #   <p>The EC2 import task ID to import the image from the Amazon EC2 VM import process.</p>
    #   @return [String]
    # @!attribute image_build_version_arn
    #   <p>The ARN of the EC2 Image Builder image.</p>
    #   @return [String]
    # @!attribute ec2_image_id
    #   <p>The identifier of the EC2 image.</p>
    #   @return [String]
    class ImageSourceIdentifier < Struct.new(
      :ec2_import_task_id,
      :image_build_version_arn,
      :ec2_image_id,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Ec2ImportTaskId < ImageSourceIdentifier; end
      class ImageBuildVersionArn < ImageSourceIdentifier; end
      class Ec2ImageId < ImageSourceIdentifier; end
      class Unknown < ImageSourceIdentifier; end
    end

    # @!attribute resource_id
    #   <p>The directory identifier of the WorkSpace for which you want to import client
    #            branding.</p>
    #   @return [String]
    # @!attribute device_type_windows
    #   <p>The branding information to import for Windows devices.</p>
    #   @return [Types::DefaultImportClientBrandingAttributes]
    # @!attribute device_type_osx
    #   <p>The branding information to import for macOS devices.</p>
    #   @return [Types::DefaultImportClientBrandingAttributes]
    # @!attribute device_type_android
    #   <p>The branding information to import for Android devices.</p>
    #   @return [Types::DefaultImportClientBrandingAttributes]
    # @!attribute device_type_ios
    #   <p>The branding information to import for iOS devices.</p>
    #   @return [Types::IosImportClientBrandingAttributes]
    # @!attribute device_type_linux
    #   <p>The branding information to import for Linux devices.</p>
    #   @return [Types::DefaultImportClientBrandingAttributes]
    # @!attribute device_type_web
    #   <p>The branding information to import for web access.</p>
    #   @return [Types::DefaultImportClientBrandingAttributes]
    class ImportClientBrandingRequest < Struct.new(
      nil,
      :resource_id,
      :device_type_windows,
      :device_type_osx,
      :device_type_android,
      :device_type_ios,
      :device_type_linux,
      :device_type_web,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute device_type_windows
    #   <p>The branding information configured for Windows devices.</p>
    #   @return [Types::DefaultClientBrandingAttributes]
    # @!attribute device_type_osx
    #   <p>The branding information configured for macOS devices.</p>
    #   @return [Types::DefaultClientBrandingAttributes]
    # @!attribute device_type_android
    #   <p>The branding information configured for Android devices.</p>
    #   @return [Types::DefaultClientBrandingAttributes]
    # @!attribute device_type_ios
    #   <p>The branding information configured for iOS devices.</p>
    #   @return [Types::IosClientBrandingAttributes]
    # @!attribute device_type_linux
    #   <p>The branding information configured for Linux devices.</p>
    #   @return [Types::DefaultClientBrandingAttributes]
    # @!attribute device_type_web
    #   <p>The branding information configured for web access.</p>
    #   @return [Types::DefaultClientBrandingAttributes]
    class ImportClientBrandingResult < Struct.new(
      nil,
      :device_type_windows,
      :device_type_osx,
      :device_type_android,
      :device_type_ios,
      :device_type_linux,
      :device_type_web,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_name
    #   <p>The name of the WorkSpace image.</p>
    #   @return [String]
    # @!attribute image_description
    #   <p>The description of the WorkSpace image.</p>
    #   @return [String]
    # @!attribute compute_type
    #   <p>The supported compute type for the WorkSpace image.</p>
    #   @return [String]
    # @!attribute protocol
    #   <p>The supported protocol for the WorkSpace image. Windows 11 does not support PCOIP protocol.</p>
    #   @return [String]
    # @!attribute image_source
    #   <p>The options for image import source.</p>
    #   @return [Types::ImageSourceIdentifier]
    # @!attribute infrastructure_configuration_arn
    #   <p>The infrastructure configuration ARN that specifies how the WorkSpace image is built.</p>
    #   @return [String]
    # @!attribute platform
    #   <p>The platform for the WorkSpace image source.</p>
    #   @return [String]
    # @!attribute os_version
    #   <p>The OS version for the WorkSpace image source.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The resource tags. Each WorkSpaces resource can have a maximum of 50 tags.</p>
    #   @return [Array<Types::Tag>]
    class ImportCustomWorkspaceImageRequest < Struct.new(
      nil,
      :image_name,
      :image_description,
      :compute_type,
      :protocol,
      :image_source,
      :infrastructure_configuration_arn,
      :platform,
      :os_version,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_id
    #   <p>The identifier of the WorkSpace image.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the WorkSpace image.</p>
    #   @return [String]
    class ImportCustomWorkspaceImageResult < Struct.new(
      nil,
      :image_id,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ec2_image_id
    #   <p>The identifier of the EC2 image.</p>
    #   @return [String]
    # @!attribute ingestion_process
    #   <p>The ingestion process to be used when importing the image, depending on which protocol
    #            you want to use for your BYOL Workspace image, either PCoIP, WSP, or 
    #            bring your own protocol (BYOP). To use DCV, specify a value that ends in 
    #            <code>_WSP</code>. To use PCoIP, specify a value that does not end in <code>_WSP</code>. 
    #            To use BYOP, specify a value that ends in <code>_BYOP</code>.</p>
    #            <p>For non-GPU-enabled bundles (bundles other than Graphics or GraphicsPro), specify 
    #            <code>BYOL_REGULAR</code>, <code>BYOL_REGULAR_WSP</code>, or <code>BYOL_REGULAR_BYOP</code>, 
    #            depending on the protocol.</p>
    #            <note>
    #               <p>The <code>BYOL_REGULAR_BYOP</code> and <code>BYOL_GRAPHICS_G4DN_BYOP</code> values
    #               are only supported by Amazon WorkSpaces Core. Contact your account team to be
    #               allow-listed to use these values. For more information, see <a href="http://aws.amazon.com/workspaces/core/">Amazon WorkSpaces Core</a>.</p>
    #            </note>
    #   @return [String]
    # @!attribute image_name
    #   <p>The name of the WorkSpace image.</p>
    #   @return [String]
    # @!attribute image_description
    #   <p>The description of the WorkSpace image.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags. Each WorkSpaces resource can have a maximum of 50 tags.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute applications
    #   <p>If specified, the version of Microsoft Office to subscribe to. Valid only for Windows 10 and 11
    #            BYOL images. For more information about subscribing to Office for BYOL images, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html"> Bring
    #               Your Own Windows Desktop Licenses</a>.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>Although this parameter is an array, only one item is allowed at this
    #                     time.</p>
    #                  </li>
    #                  <li>
    #                     <p>During the image import process, non-GPU DCV (formerly WSP) WorkSpaces with Windows 11 support
    #                     only <code>Microsoft_Office_2019</code>. GPU DCV (formerly WSP) WorkSpaces with Windows 11 do not
    #                     support Office installation.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [Array<String>]
    class ImportWorkspaceImageRequest < Struct.new(
      nil,
      :ec2_image_id,
      :ingestion_process,
      :image_name,
      :image_description,
      :tags,
      :applications,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_id
    #   <p>The identifier of the WorkSpace image.</p>
    #   @return [String]
    class ImportWorkspaceImageResult < Struct.new(
      nil,
      :image_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified application is not compatible with the resource.</p>
    class IncompatibleApplicationsException < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Unexpected server error occured.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Two or more of the selected parameter values cannot be used together.</p>
    # @!attribute message
    #   <p>The exception error message.</p>
    #   @return [String]
    class InvalidParameterCombinationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>One or more parameter values are not valid.</p>
    # @!attribute message
    #   <p>The exception error message.</p>
    #   @return [String]
    class InvalidParameterValuesException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The state of the resource is not valid for this operation.</p>
    # @!attribute message
    #   @return [String]
    class InvalidResourceStateException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The client branding attributes for iOS device types. These attributes are displayed on
    #          the iOS client login screen only.</p>
    #          <important>
    #             <p>Client branding attributes are public facing. Ensure you do not include sensitive
    #             information.</p>
    #          </important>
    # @!attribute logo_url
    #   <p>The logo. This is the standard-resolution display that has a 1:1 pixel density 
    #            (or @1x), where one pixel is equal
    #            to one point. The only image format accepted is a binary data object that is converted from 
    #            a <code>.png</code> file.</p>
    #   @return [String]
    # @!attribute logo2x_url
    #   <p>The @2x version of the logo. This is the higher resolution display that offers a scale
    #            factor of 2.0 (or @2x). The only image format accepted is a binary data object that is 
    #            converted from a <code>.png</code> file.</p>
    #            <note>
    #               <p> For more information about iOS image size and resolution, see <a href="https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/image-size-and-resolution/">Image Size and Resolution </a> in the <i>Apple Human Interface
    #                  Guidelines</i>.</p>
    #            </note>
    #   @return [String]
    # @!attribute logo3x_url
    #   <p>The @3x version of the logo. This is the higher resolution display that offers a scale
    #            factor of 3.0 (or @3x).The only image format accepted is a binary data object that is 
    #            converted from a <code>.png</code> file.</p>
    #            <note>
    #               <p> For more information about iOS image size and resolution, see <a href="https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/image-size-and-resolution/">Image Size and Resolution </a> in the <i>Apple Human Interface
    #                  Guidelines</i>.</p>
    #            </note>
    #   @return [String]
    # @!attribute support_email
    #   <p>The support email. The company's customer support email address.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>In each platform type, the <code>SupportEmail</code> and
    #                        <code>SupportLink</code> parameters are mutually exclusive. You can specify one
    #                     parameter for each platform type, but not both.</p>
    #                  </li>
    #                  <li>
    #                     <p>The default email is <code>workspaces-feedback@amazon.com</code>.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute support_link
    #   <p>The support link. The link for the company's customer support page for their
    #            WorkSpace.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>In each platform type, the <code>SupportEmail</code> and
    #                        <code>SupportLink</code> parameters are mutually exclusive. You can specify one
    #                     parameter for each platform type, but not both.</p>
    #                  </li>
    #                  <li>
    #                     <p>The default support link is <code>workspaces-feedback@amazon.com</code>.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute forgot_password_link
    #   <p>The forgotten password link. This is the web address that users can go to if they forget
    #            the password for their WorkSpace.</p>
    #   @return [String]
    # @!attribute login_message
    #   <p>The login message. Specified as a key value pair, in which the key is a locale and the
    #            value is the localized message for that locale. The only key supported is
    #            <code>en_US</code>. The HTML tags supported include the following: <code>a, b, blockquote, br, cite, code, dd, dl, dt, div, em, 
    #               i, li, ol, p, pre, q, small, span, strike, strong, sub, sup, u, ul</code>.</p>
    #   @return [Hash<String, String>]
    class IosClientBrandingAttributes < Struct.new(
      nil,
      :logo_url,
      :logo2x_url,
      :logo3x_url,
      :support_email,
      :support_link,
      :forgot_password_link,
      :login_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The client branding attributes to import for iOS device types. These attributes are
    #          displayed on the iOS client login screen.</p>
    #          <important>
    #             <p>Client branding attributes are public facing. Ensure you do not include sensitive
    #             information.</p>
    #          </important>
    # @!attribute logo
    #   <p>The logo. This is the
    #            standard-resolution display that has a 1:1 pixel density (or @1x), where one pixel is equal
    #            to one point. The only image format accepted is a binary data object that is converted 
    #            from a <code>.png</code> file.</p>
    #   @return [String]
    # @!attribute logo2x
    #   <p>The @2x version of the logo. This is the higher resolution display that offers a scale
    #            factor of 2.0 (or @2x). The only image format accepted is a binary data object that is 
    #            converted from a <code>.png</code> file.</p>
    #            <note>
    #               <p> For more information about iOS image size and resolution, see <a href="https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/image-size-and-resolution/">Image Size and Resolution </a> in the <i>Apple Human Interface
    #                  Guidelines</i>.</p>
    #            </note>
    #   @return [String]
    # @!attribute logo3x
    #   <p>The @3x version of the logo. This is the higher resolution display that offers a scale
    #            factor of 3.0 (or @3x). The only image format accepted is a binary data object that is 
    #            converted from a <code>.png</code> file.</p>
    #            <note>
    #               <p> For more information about iOS image size and resolution, see <a href="https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/image-size-and-resolution/">Image Size and Resolution </a> in the <i>Apple Human Interface
    #                  Guidelines</i>.</p>
    #            </note>
    #   @return [String]
    # @!attribute support_email
    #   <p>The support email. The company's customer support email address.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>In each platform type, the <code>SupportEmail</code> and
    #                        <code>SupportLink</code> parameters are mutually exclusive. You can specify one
    #                     parameter for each platform type, but not both.</p>
    #                  </li>
    #                  <li>
    #                     <p>The default email is <code>workspaces-feedback@amazon.com</code>.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute support_link
    #   <p>The support link. The link for the company's customer support page for their
    #            WorkSpace.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>In each platform type, the <code>SupportEmail</code> and
    #                        <code>SupportLink</code> parameters are mutually exclusive. You can specify one
    #                     parameter for each platform type, but not both.</p>
    #                  </li>
    #                  <li>
    #                     <p>The default support link is <code>workspaces-feedback@amazon.com</code>.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [String]
    # @!attribute forgot_password_link
    #   <p>The forgotten password link. This is the web address that users can go to if they forget
    #            the password for their WorkSpace.</p>
    #   @return [String]
    # @!attribute login_message
    #   <p>The login message. Specified as a key value pair, in which the key is a locale and the
    #            value is the localized message for that locale. The only key supported is
    #            <code>en_US</code>. The HTML tags supported include the following: <code>a, b, blockquote, br, cite, code, dd, dl, dt, div, em, 
    #               i, li, ol, p, pre, q, small, span, strike, strong, sub, sup, u, ul</code>.</p>
    #   @return [Hash<String, String>]
    class IosImportClientBrandingAttributes < Struct.new(
      nil,
      :logo,
      :logo2x,
      :logo3x,
      :support_email,
      :support_link,
      :forgot_password_link,
      :login_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a rule for an IP access control group.</p>
    # @!attribute ip_rule
    #   <p>The IP address range, in CIDR notation.</p>
    #   @return [String]
    # @!attribute rule_desc
    #   <p>The description.</p>
    #   @return [String]
    class IpRuleItem < Struct.new(
      nil,
      :ip_rule,
      :rule_desc,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute link_status_filter
    #   <p>Filters the account based on their link status.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are no more results to return.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of accounts to return.</p>
    #   @return [Integer]
    class ListAccountLinksRequest < Struct.new(
      nil,
      :link_status_filter,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_links
    #   <p>Information about the account links.</p>
    #   @return [Array<Types::AccountLink>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are no more results to return.</p>
    #   @return [String]
    class ListAccountLinksResult < Struct.new(
      nil,
      :account_links,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute management_cidr_range_constraint
    #   <p>The IP address range to search. Specify an IP address range that is compatible with your
    #            network and in CIDR notation (that is, specify the range as an IPv4 CIDR block).</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of items to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated,
    #            provide this token to receive the next set of results.</p>
    #   @return [String]
    class ListAvailableManagementCidrRangesRequest < Struct.new(
      nil,
      :management_cidr_range_constraint,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute management_cidr_ranges
    #   <p>The list of available IP address ranges, specified as IPv4 CIDR blocks.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are
    #            no more results to return. </p>
    #   @return [String]
    class ListAvailableManagementCidrRangesResult < Struct.new(
      nil,
      :management_cidr_ranges,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the configurations of the Microsoft Entra.</p>
    # @!attribute tenant_id
    #   <p>The identifier of the tenant.</p>
    #   @return [String]
    # @!attribute application_config_secret_arn
    #   <p>The Amazon Resource Name (ARN) of the application config.</p>
    #   @return [String]
    class MicrosoftEntraConfig < Struct.new(
      nil,
      :tenant_id,
      :application_config_secret_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_workspace_id
    #   <p>The identifier of the WorkSpace to migrate from.</p>
    #   @return [String]
    # @!attribute bundle_id
    #   <p>The identifier of the target bundle type to migrate the WorkSpace to.</p>
    #   @return [String]
    class MigrateWorkspaceRequest < Struct.new(
      nil,
      :source_workspace_id,
      :bundle_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_workspace_id
    #   <p>The original identifier of the WorkSpace that is being migrated.</p>
    #   @return [String]
    # @!attribute target_workspace_id
    #   <p>The new identifier of the WorkSpace that is being migrated. If the migration does not
    #            succeed, the target WorkSpace ID will not be used, and the WorkSpace will still have the
    #            original WorkSpace ID.</p>
    #   @return [String]
    class MigrateWorkspaceResult < Struct.new(
      nil,
      :source_workspace_id,
      :target_workspace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a WorkSpace modification.</p>
    # @!attribute resource
    #   <p>The resource.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The modification state.</p>
    #   @return [String]
    class ModificationState < Struct.new(
      nil,
      :resource,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dedicated_tenancy_support
    #   <p>The status of BYOL.</p>
    #   @return [String]
    # @!attribute dedicated_tenancy_management_cidr_range
    #   <p>The IP address range, specified as an IPv4 CIDR block, for the management network
    #            interface. Specify an IP address range that is compatible with your network and in CIDR
    #            notation (that is, specify the range as an IPv4 CIDR block). The CIDR block size must be
    #            /16 (for example, 203.0.113.25/16). It must also be specified as available by the
    #               <code>ListAvailableManagementCidrRanges</code> operation.</p>
    #   @return [String]
    class ModifyAccountRequest < Struct.new(
      nil,
      :dedicated_tenancy_support,
      :dedicated_tenancy_management_cidr_range,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message
    #   <p>The text message to describe the status of BYOL modification.</p>
    #   @return [String]
    class ModifyAccountResult < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_id
    #   <p>The resource identifiers, in the form of directory IDs.</p>
    #   @return [String]
    # @!attribute certificate_based_auth_properties
    #   <p>The properties of the certificate-based authentication.</p>
    #   @return [Types::CertificateBasedAuthProperties]
    # @!attribute properties_to_delete
    #   <p>The properties of the certificate-based authentication you want to delete.</p>
    #   @return [Array<String>]
    class ModifyCertificateBasedAuthPropertiesRequest < Struct.new(
      nil,
      :resource_id,
      :certificate_based_auth_properties,
      :properties_to_delete,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class ModifyCertificateBasedAuthPropertiesResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_id
    #   <p>The resource identifiers, in the form of directory IDs.</p>
    #   @return [String]
    # @!attribute client_properties
    #   <p>Information about the Amazon WorkSpaces client.</p>
    #   @return [Types::ClientProperties]
    class ModifyClientPropertiesRequest < Struct.new(
      nil,
      :resource_id,
      :client_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class ModifyClientPropertiesResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p> The identifier of the directory.</p>
    #   @return [String]
    # @!attribute endpoint_encryption_mode
    #   <p>The encryption mode used for endpoint connections when streaming to WorkSpaces Personal
    #            or WorkSpace Pools.</p>
    #   @return [String]
    class ModifyEndpointEncryptionModeRequest < Struct.new(
      nil,
      :directory_id,
      :endpoint_encryption_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class ModifyEndpointEncryptionModeResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_id
    #   <p>The directory identifier for which you want to configure SAML properties.</p>
    #   @return [String]
    # @!attribute saml_properties
    #   <p>The properties for configuring SAML 2.0 authentication.</p>
    #   @return [Types::SamlProperties]
    # @!attribute properties_to_delete
    #   <p>The SAML properties to delete as part of your request.</p>
    #            <p>Specify one of the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SAML_PROPERTIES_USER_ACCESS_URL</code> to delete the user access URL.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SAML_PROPERTIES_RELAY_STATE_PARAMETER_NAME</code> to delete the
    #                  relay state parameter name.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    class ModifySamlPropertiesRequest < Struct.new(
      nil,
      :resource_id,
      :saml_properties,
      :properties_to_delete,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class ModifySamlPropertiesResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_id
    #   <p>The identifier of the directory.</p>
    #   @return [String]
    # @!attribute selfservice_permissions
    #   <p>The permissions to enable or disable self-service capabilities.</p>
    #   @return [Types::SelfservicePermissions]
    class ModifySelfservicePermissionsRequest < Struct.new(
      nil,
      :resource_id,
      :selfservice_permissions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class ModifySelfservicePermissionsResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_id
    #   <p>The identifier of the resource.</p>
    #   @return [String]
    # @!attribute streaming_properties
    #   <p>The streaming properties to configure.</p>
    #   @return [Types::StreamingProperties]
    class ModifyStreamingPropertiesRequest < Struct.new(
      nil,
      :resource_id,
      :streaming_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class ModifyStreamingPropertiesResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_id
    #   <p>The identifier of the directory.</p>
    #   @return [String]
    # @!attribute workspace_access_properties
    #   <p>The device types and operating systems to enable or disable for access.</p>
    #   @return [Types::WorkspaceAccessProperties]
    class ModifyWorkspaceAccessPropertiesRequest < Struct.new(
      nil,
      :resource_id,
      :workspace_access_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class ModifyWorkspaceAccessPropertiesResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_id
    #   <p>The identifier of the directory.</p>
    #   @return [String]
    # @!attribute workspace_creation_properties
    #   <p>The default properties for creating WorkSpaces.</p>
    #   @return [Types::WorkspaceCreationProperties]
    class ModifyWorkspaceCreationPropertiesRequest < Struct.new(
      nil,
      :resource_id,
      :workspace_creation_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class ModifyWorkspaceCreationPropertiesResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The identifier of the WorkSpace.</p>
    #   @return [String]
    # @!attribute workspace_properties
    #   <p>The properties of the WorkSpace.</p>
    #   @return [Types::WorkspaceProperties]
    # @!attribute data_replication
    #   <p>Indicates the data replication status.</p>
    #   @return [String]
    class ModifyWorkspacePropertiesRequest < Struct.new(
      nil,
      :workspace_id,
      :workspace_properties,
      :data_replication,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class ModifyWorkspacePropertiesResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The identifier of the WorkSpace.</p>
    #   @return [String]
    # @!attribute workspace_state
    #   <p>The WorkSpace state.</p>
    #   @return [String]
    class ModifyWorkspaceStateRequest < Struct.new(
      nil,
      :workspace_id,
      :workspace_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class ModifyWorkspaceStateResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the network details of a WorkSpaces Pool.</p>
    # @!attribute eni_private_ip_address
    #   <p>The private IP address of the elastic network interface that is attached to instances in your VPC.</p>
    #   @return [String]
    # @!attribute eni_id
    #   <p>The resource identifier of the elastic network interface that is attached to instances in your 
    #            VPC. All network interfaces have the eni-xxxxxxxx resource identifier.</p>
    #   @return [String]
    class NetworkAccessConfiguration < Struct.new(
      nil,
      :eni_private_ip_address,
      :eni_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operating system that the image is running.</p>
    # @!attribute type
    #   <p>The operating system.</p>
    #   @return [String]
    class OperatingSystem < Struct.new(
      nil,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operating system of the WorkSpace is not compatible with the application.</p>
    class OperatingSystemNotCompatibleException < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The properties of this WorkSpace are currently being modified. Try again in a moment.</p>
    # @!attribute message
    #   @return [String]
    class OperationInProgressException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This operation is not supported.</p>
    # @!attribute message
    #   <p>The exception error message.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The exception error reason.</p>
    #   @return [String]
    class OperationNotSupportedException < Struct.new(
      nil,
      :message,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the standby WorkSpace.</p>
    # @!attribute user_name
    #   <p>Describes the standby WorkSpace that was created.</p>
    #            <p>Because this operation is asynchronous, the identifier returned is not immediately 
    #            available for use with other operations. For example, if you call 
    #            <a href="https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaces.html">
    #               DescribeWorkspaces</a> 
    #            before the WorkSpace is created, the information returned can be incomplete. </p>
    #   @return [String]
    # @!attribute directory_id
    #   <p>The identifier of the directory for the standby WorkSpace.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The operational state of the standby WorkSpace.</p>
    #   @return [String]
    # @!attribute workspace_id
    #   <p>The identifier of the standby WorkSpace.</p>
    #   @return [String]
    class PendingCreateStandbyWorkspacesRequest < Struct.new(
      nil,
      :user_name,
      :directory_id,
      :state,
      :workspace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the information used to reboot a WorkSpace.</p>
    # @!attribute workspace_id
    #   <p>The identifier of the WorkSpace.</p>
    #   @return [String]
    class RebootRequest < Struct.new(
      nil,
      :workspace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute reboot_workspace_requests
    #   <p>The WorkSpaces to reboot. You can specify up to 25 WorkSpaces.</p>
    #   @return [Array<Types::RebootRequest>]
    class RebootWorkspacesRequest < Struct.new(
      nil,
      :reboot_workspace_requests,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute failed_requests
    #   <p>Information about the WorkSpaces that could not be rebooted.</p>
    #   @return [Array<Types::FailedWorkspaceChangeRequest>]
    class RebootWorkspacesResult < Struct.new(
      nil,
      :failed_requests,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the information used to rebuild a WorkSpace.</p>
    # @!attribute workspace_id
    #   <p>The identifier of the WorkSpace.</p>
    #   @return [String]
    class RebuildRequest < Struct.new(
      nil,
      :workspace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rebuild_workspace_requests
    #   <p>The WorkSpace to rebuild. You can specify a single WorkSpace.</p>
    #   @return [Array<Types::RebuildRequest>]
    class RebuildWorkspacesRequest < Struct.new(
      nil,
      :rebuild_workspace_requests,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute failed_requests
    #   <p>Information about the WorkSpace that could not be rebuilt.</p>
    #   @return [Array<Types::FailedWorkspaceChangeRequest>]
    class RebuildWorkspacesResult < Struct.new(
      nil,
      :failed_requests,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>The identifier of the directory. You cannot register a directory if it does not have a
    #            status of Active. If the directory does not have a status of Active, you will receive an
    #            InvalidResourceStateException error. If you have already registered the maximum number of
    #            directories that you can register with Amazon WorkSpaces, you will receive a
    #            ResourceLimitExceededException error. Deregister directories that you are not using for
    #            WorkSpaces, and try again.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>The identifiers of the subnets for your virtual private cloud (VPC). Make sure that the
    #            subnets are in supported Availability Zones. The subnets must also be in separate
    #            Availability Zones. If these conditions are not met, you will receive an
    #            OperationNotSupportedException error.</p>
    #   @return [Array<String>]
    # @!attribute enable_self_service
    #   <p>Indicates whether self-service capabilities are enabled or disabled.</p>
    #   @return [Boolean]
    # @!attribute tenancy
    #   <p>Indicates whether your WorkSpace directory is dedicated or shared. To use Bring Your Own
    #            License (BYOL) images, this value must be set to <code>DEDICATED</code> and your Amazon Web Services account must be enabled for BYOL. If your account has not been enabled for
    #            BYOL, you will receive an InvalidParameterValuesException error. For more information about
    #            BYOL images, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html">Bring Your Own Windows
    #               Desktop Images</a>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the directory.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute workspace_directory_name
    #   <p>The name of the directory to register.</p>
    #   @return [String]
    # @!attribute workspace_directory_description
    #   <p>Description of the directory to register.</p>
    #   @return [String]
    # @!attribute user_identity_type
    #   <p>The type of identity management the user is using.</p>
    #   @return [String]
    # @!attribute idc_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the identity center instance.</p>
    #   @return [String]
    # @!attribute microsoft_entra_config
    #   <p>The details about Microsoft Entra config.</p>
    #   @return [Types::MicrosoftEntraConfig]
    # @!attribute workspace_type
    #   <p>Indicates whether the directory's WorkSpace type is personal or pools.</p>
    #   @return [String]
    # @!attribute active_directory_config
    #   <p>The active directory config of the directory.</p>
    #   @return [Types::ActiveDirectoryConfig]
    class RegisterWorkspaceDirectoryRequest < Struct.new(
      nil,
      :directory_id,
      :subnet_ids,
      :enable_self_service,
      :tenancy,
      :tags,
      :workspace_directory_name,
      :workspace_directory_description,
      :user_identity_type,
      :idc_instance_arn,
      :microsoft_entra_config,
      :workspace_type,
      :active_directory_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute directory_id
    #   <p>The identifier of the directory.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The registration status of the WorkSpace directory.</p>
    #   @return [String]
    class RegisterWorkspaceDirectoryResult < Struct.new(
      nil,
      :directory_id,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute link_id
    #   <p>The identifier of the account link</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The client token of the account link invitation to reject.</p>
    #   @return [String]
    class RejectAccountLinkInvitationRequest < Struct.new(
      nil,
      :link_id,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_link
    #   <p>Information about the account link.</p>
    #   @return [Types::AccountLink]
    class RejectAccountLinkInvitationResult < Struct.new(
      nil,
      :account_link,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the related WorkSpace. The related WorkSpace could be a standby WorkSpace or 
    #          primary WorkSpace related to the specified WorkSpace.</p>
    # @!attribute workspace_id
    #   <p>The identifier of the related WorkSpace.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Region of the related WorkSpace.</p>
    #   @return [String]
    # @!attribute state
    #   <p>Indicates the state of the WorkSpace.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Indicates the type of WorkSpace.</p>
    #   @return [String]
    class RelatedWorkspaceProperties < Struct.new(
      nil,
      :workspace_id,
      :region,
      :state,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource already exists.</p>
    # @!attribute message
    #   @return [String]
    class ResourceAlreadyExistsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource is associated with a directory.</p>
    # @!attribute message
    #   @return [String]
    class ResourceAssociatedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource could not be created.</p>
    # @!attribute message
    #   @return [String]
    class ResourceCreationFailedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource is currently in use.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource that is in use.</p>
    #   @return [String]
    class ResourceInUseException < Struct.new(
      nil,
      :message,
      :resource_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Your resource limits have been exceeded.</p>
    # @!attribute message
    #   <p>The exception error message.</p>
    #   @return [String]
    class ResourceLimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource could not be found.</p>
    # @!attribute message
    #   <p>The resource could not be found.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource that could not be found.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      :resource_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource is not available.</p>
    # @!attribute message
    #   <p>The exception error message.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource that is not available.</p>
    #   @return [String]
    class ResourceUnavailableException < Struct.new(
      nil,
      :message,
      :resource_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspace_id
    #   <p>The identifier of the WorkSpace.</p>
    #   @return [String]
    class RestoreWorkspaceRequest < Struct.new(
      nil,
      :workspace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class RestoreWorkspaceResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute group_id
    #   <p>The identifier of the group.</p>
    #   @return [String]
    # @!attribute user_rules
    #   <p>The rules to remove from the group.</p>
    #   @return [Array<String>]
    class RevokeIpRulesRequest < Struct.new(
      nil,
      :group_id,
      :user_rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class RevokeIpRulesResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the root volume for a WorkSpace bundle.</p>
    # @!attribute capacity
    #   <p>The size of the root volume.</p>
    #   @return [String]
    class RootStorage < Struct.new(
      nil,
      :capacity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the enablement status, user access URL, and relay state parameter name that 
    #          are used for configuring federation with an SAML 2.0 identity provider.</p>
    # @!attribute status
    #   <p>Indicates the status of SAML 2.0 authentication. These statuses include the following.</p>
    #            <ul>
    #               <li>
    #                  <p>If the setting is <code>DISABLED</code>, end users will be directed to login with their directory credentials.</p>
    #               </li>
    #               <li>
    #                  <p>If the setting is <code>ENABLED</code>, end users will be directed to login via the user access URL. Users attempting 
    #                  to connect to WorkSpaces from a client application that does not support SAML 2.0 authentication will not be able to 
    #                  connect.</p>
    #               </li>
    #               <li>
    #                  <p>If the setting is <code>ENABLED_WITH_DIRECTORY_LOGIN_FALLBACK</code>, end users will be directed to login via the user 
    #                  access URL on supported client applications, but will not prevent clients that do not support SAML 2.0 authentication 
    #                  from connecting as if SAML 2.0 authentication was disabled.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute user_access_url
    #   <p>The SAML 2.0 identity provider (IdP) user access URL is the URL a user would navigate to in their web browser in 
    #            order to federate from the IdP and directly access the application, without any SAML 2.0 service provider (SP) 
    #            bindings.</p>
    #   @return [String]
    # @!attribute relay_state_parameter_name
    #   <p>The relay state parameter name supported by the SAML 2.0 identity provider (IdP). When the end user is redirected to 
    #            the user access URL from the WorkSpaces client application, this relay state parameter name is appended as a query 
    #            parameter to the URL along with the relay state endpoint to return the user to the client application session.</p>
    #            <p>To use SAML 2.0 authentication with WorkSpaces, the IdP must support IdP-initiated deep linking for the relay state 
    #            URL. Consult your IdP documentation for more information.</p>
    #   @return [String]
    class SamlProperties < Struct.new(
      nil,
      :status,
      :user_access_url,
      :relay_state_parameter_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the self-service permissions for a directory. For more information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/enable-user-self-service-workspace-management.html">Enable Self-Service WorkSpace Management Capabilities for Your Users</a>.</p>
    # @!attribute restart_workspace
    #   <p>Specifies whether users can restart their WorkSpace.</p>
    #   @return [String]
    # @!attribute increase_volume_size
    #   <p>Specifies whether users can increase the volume size of the drives on their
    #            WorkSpace.</p>
    #   @return [String]
    # @!attribute change_compute_type
    #   <p>Specifies whether users can change the compute type (bundle) for their WorkSpace.</p>
    #   @return [String]
    # @!attribute switch_running_mode
    #   <p>Specifies whether users can switch the running mode of their WorkSpace.</p>
    #   @return [String]
    # @!attribute rebuild_workspace
    #   <p>Specifies whether users can rebuild the operating system of a WorkSpace to its original
    #            state.</p>
    #   @return [String]
    class SelfservicePermissions < Struct.new(
      nil,
      :restart_workspace,
      :increase_volume_size,
      :change_compute_type,
      :switch_running_mode,
      :rebuild_workspace,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a snapshot.</p>
    # @!attribute snapshot_time
    #   <p>The time when the snapshot was created.</p>
    #   @return [Time]
    class Snapshot < Struct.new(
      nil,
      :snapshot_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a standby WorkSpace.</p>
    # @!attribute primary_workspace_id
    #   <p>The identifier of the standby WorkSpace.</p>
    #   @return [String]
    # @!attribute volume_encryption_key
    #   <p>The volume encryption key of the standby WorkSpace.</p>
    #   @return [String]
    # @!attribute directory_id
    #   <p>The identifier of the directory for the standby WorkSpace.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the standby WorkSpace.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute data_replication
    #   <p>Indicates whether data replication is enabled, and if enabled, the type of data replication.</p>
    #   @return [String]
    class StandbyWorkspace < Struct.new(
      nil,
      :primary_workspace_id,
      :volume_encryption_key,
      :directory_id,
      :tags,
      :data_replication,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the properties of the related standby WorkSpaces. </p>
    # @!attribute standby_workspace_id
    #   <p>The identifier of the standby WorkSpace</p>
    #   @return [String]
    # @!attribute data_replication
    #   <p>Indicates whether data replication is enabled, and if enabled, the type of data replication.</p>
    #   @return [String]
    # @!attribute recovery_snapshot_time
    #   <p>The date and time at which the last successful snapshot was taken of the 
    #            primary WorkSpace used for replicating data.</p>
    #   @return [Time]
    class StandbyWorkspacesProperties < Struct.new(
      nil,
      :standby_workspace_id,
      :data_replication,
      :recovery_snapshot_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information used to start a WorkSpace.</p>
    # @!attribute workspace_id
    #   <p>The identifier of the WorkSpace.</p>
    #   @return [String]
    class StartRequest < Struct.new(
      nil,
      :workspace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pool_id
    #   <p>The identifier of the pool.</p>
    #   @return [String]
    class StartWorkspacesPoolRequest < Struct.new(
      nil,
      :pool_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StartWorkspacesPoolResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute start_workspace_requests
    #   <p>The WorkSpaces to start. You can specify up to 25 WorkSpaces.</p>
    #   @return [Array<Types::StartRequest>]
    class StartWorkspacesRequest < Struct.new(
      nil,
      :start_workspace_requests,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute failed_requests
    #   <p>Information about the WorkSpaces that could not be started.</p>
    #   @return [Array<Types::FailedWorkspaceChangeRequest>]
    class StartWorkspacesResult < Struct.new(
      nil,
      :failed_requests,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the information used to stop a WorkSpace.</p>
    # @!attribute workspace_id
    #   <p>The identifier of the WorkSpace.</p>
    #   @return [String]
    class StopRequest < Struct.new(
      nil,
      :workspace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pool_id
    #   <p>The identifier of the pool.</p>
    #   @return [String]
    class StopWorkspacesPoolRequest < Struct.new(
      nil,
      :pool_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StopWorkspacesPoolResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute stop_workspace_requests
    #   <p>The WorkSpaces to stop. You can specify up to 25 WorkSpaces.</p>
    #   @return [Array<Types::StopRequest>]
    class StopWorkspacesRequest < Struct.new(
      nil,
      :stop_workspace_requests,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute failed_requests
    #   <p>Information about the WorkSpaces that could not be stopped.</p>
    #   @return [Array<Types::FailedWorkspaceChangeRequest>]
    class StopWorkspacesResult < Struct.new(
      nil,
      :failed_requests,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the storage connector.</p>
    # @!attribute connector_type
    #   <p>The type of connector used to save user files.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Indicates if the storage connetor is enabled or disabled.</p>
    #   @return [String]
    class StorageConnector < Struct.new(
      nil,
      :connector_type,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the streaming properties.</p>
    # @!attribute streaming_experience_preferred_protocol
    #   <p>Indicates the type of preferred protocol for the streaming experience.</p>
    #   @return [String]
    # @!attribute user_settings
    #   <p>Indicates the permission settings asscoiated with the user.</p>
    #   @return [Array<Types::UserSetting>]
    # @!attribute storage_connectors
    #   <p>Indicates the storage connector used </p>
    #   @return [Array<Types::StorageConnector>]
    # @!attribute global_accelerator
    #   <p>Indicates the Global Accelerator properties.</p>
    #   @return [Types::GlobalAcceleratorForDirectory]
    class StreamingProperties < Struct.new(
      nil,
      :streaming_experience_preferred_protocol,
      :user_settings,
      :storage_connectors,
      :global_accelerator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a tag.</p>
    # @!attribute key
    #   <p>The key of the tag.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the tag.</p>
    #   @return [String]
    class Tag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the information used to terminate a WorkSpace.</p>
    # @!attribute workspace_id
    #   <p>The identifier of the WorkSpace.</p>
    #   @return [String]
    class TerminateRequest < Struct.new(
      nil,
      :workspace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pool_id
    #   <p>The identifier of the pool.</p>
    #   @return [String]
    class TerminateWorkspacesPoolRequest < Struct.new(
      nil,
      :pool_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TerminateWorkspacesPoolResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session_id
    #   <p>The identifier of the pool session.</p>
    #   @return [String]
    class TerminateWorkspacesPoolSessionRequest < Struct.new(
      nil,
      :session_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TerminateWorkspacesPoolSessionResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute terminate_workspace_requests
    #   <p>The WorkSpaces to terminate. You can specify up to 25 WorkSpaces.</p>
    #   @return [Array<Types::TerminateRequest>]
    class TerminateWorkspacesRequest < Struct.new(
      nil,
      :terminate_workspace_requests,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute failed_requests
    #   <p>Information about the WorkSpaces that could not be terminated.</p>
    #   @return [Array<Types::FailedWorkspaceChangeRequest>]
    class TerminateWorkspacesResult < Struct.new(
      nil,
      :failed_requests,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the timeout settings for a pool of WorkSpaces.</p>
    # @!attribute disconnect_timeout_in_seconds
    #   <p>Specifies the amount of time, in seconds, that a streaming session remains active after users disconnect. 
    #            If users try to reconnect to the streaming session after a disconnection or network interruption 
    #            within the time set, they are connected to their previous session. Otherwise, they are connected 
    #            to a new session with a new streaming instance.</p>
    #   @return [Integer]
    # @!attribute idle_disconnect_timeout_in_seconds
    #   <p>The amount of time in seconds a connection will stay active while idle.</p>
    #   @return [Integer]
    # @!attribute max_user_duration_in_seconds
    #   <p>Specifies the maximum amount of time, in seconds, that a streaming session can remain active. 
    #            If users are still connected to a streaming instance five minutes before this limit is reached, 
    #            they are prompted to save any open documents before being disconnected. After this time elapses, 
    #            the instance is terminated and replaced by a new instance.</p>
    #   @return [Integer]
    class TimeoutSettings < Struct.new(
      nil,
      :disconnect_timeout_in_seconds,
      :idle_disconnect_timeout_in_seconds,
      :max_user_duration_in_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of this network is not supported for this operation, or your network configuration 
    #          conflicts with the Amazon WorkSpaces management network IP range. For more information, see 
    #          <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/amazon-workspaces-vpc.html">
    #             Configure a VPC for Amazon WorkSpaces</a>.</p>
    # @!attribute message
    #   @return [String]
    class UnsupportedNetworkConfigurationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of this WorkSpace is not supported for this operation. For more information, see  
    #          <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/required-service-components.html">Required 
    #             Configuration and Service Components for WorkSpaces </a>.</p>
    # @!attribute message
    #   @return [String]
    class UnsupportedWorkspaceConfigurationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute add_in_id
    #   <p>The identifier of the client add-in to update.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The directory identifier for which the client add-in is configured.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the client add-in.</p>
    #   @return [String]
    # @!attribute url
    #   <p>The endpoint URL of the Amazon Connect client add-in.</p>
    #   @return [String]
    class UpdateConnectClientAddInRequest < Struct.new(
      nil,
      :add_in_id,
      :resource_id,
      :name,
      :url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateConnectClientAddInResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute alias_id
    #   <p>The identifier of the connection alias that you want to update permissions for.</p>
    #   @return [String]
    # @!attribute connection_alias_permission
    #   <p>Indicates whether to share or unshare the connection alias with the specified Amazon Web Services account.</p>
    #   @return [Types::ConnectionAliasPermission]
    class UpdateConnectionAliasPermissionRequest < Struct.new(
      nil,
      :alias_id,
      :connection_alias_permission,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateConnectionAliasPermissionResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes whether a WorkSpace image needs to be updated with the latest drivers and
    #          other components required by Amazon WorkSpaces.</p>
    #          <note>
    #             <p>Only Windows 10 WorkSpace images can be programmatically updated at this time.</p>
    #          </note>
    # @!attribute update_available
    #   <p>Indicates whether updated drivers or other components are available for the specified
    #            WorkSpace image.</p>
    #   @return [Boolean]
    # @!attribute description
    #   <p>A description of whether updates for the WorkSpace image are pending or
    #            available.</p>
    #   @return [String]
    class UpdateResult < Struct.new(
      nil,
      :update_available,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute group_id
    #   <p>The identifier of the group.</p>
    #   @return [String]
    # @!attribute user_rules
    #   <p>One or more rules.</p>
    #   @return [Array<Types::IpRuleItem>]
    class UpdateRulesOfIpGroupRequest < Struct.new(
      nil,
      :group_id,
      :user_rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateRulesOfIpGroupResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bundle_id
    #   <p>The identifier of the bundle.</p>
    #   @return [String]
    # @!attribute image_id
    #   <p>The identifier of the image.</p>
    #   @return [String]
    class UpdateWorkspaceBundleRequest < Struct.new(
      nil,
      :bundle_id,
      :image_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateWorkspaceBundleResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute image_id
    #   <p>The identifier of the image.</p>
    #   @return [String]
    # @!attribute allow_copy_image
    #   <p>The permission to copy the image. This permission can be revoked only after an image has
    #            been shared.</p>
    #   @return [Boolean]
    # @!attribute shared_account_id
    #   <p>The identifier of the Amazon Web Services account to share or unshare the image
    #            with.</p>
    #            <important>
    #               <p>Before sharing the image, confirm that you are sharing to the correct Amazon Web Services account ID.</p>
    #            </important>
    #   @return [String]
    class UpdateWorkspaceImagePermissionRequest < Struct.new(
      nil,
      :image_id,
      :allow_copy_image,
      :shared_account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateWorkspaceImagePermissionResult < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute pool_id
    #   <p>The identifier of the specified pool to update.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Describes the specified pool to update.</p>
    #   @return [String]
    # @!attribute bundle_id
    #   <p>The identifier of the bundle.</p>
    #   @return [String]
    # @!attribute directory_id
    #   <p>The identifier of the directory.</p>
    #   @return [String]
    # @!attribute capacity
    #   <p>The desired capacity for the pool.</p>
    #   @return [Types::Capacity]
    # @!attribute application_settings
    #   <p>The persistent application settings for users in the pool.</p>
    #   @return [Types::ApplicationSettingsRequest]
    # @!attribute timeout_settings
    #   <p>Indicates the timeout settings of the specified pool.</p>
    #   @return [Types::TimeoutSettings]
    # @!attribute running_mode
    #   <p>The desired running mode for the pool. The running mode can only be updated when the pool is in a stopped state.</p>
    #   @return [String]
    class UpdateWorkspacesPoolRequest < Struct.new(
      nil,
      :pool_id,
      :description,
      :bundle_id,
      :directory_id,
      :capacity,
      :application_settings,
      :timeout_settings,
      :running_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workspaces_pool
    #   <p>Describes the specified pool.</p>
    #   @return [Types::WorkspacesPool]
    class UpdateWorkspacesPoolResult < Struct.new(
      nil,
      :workspaces_pool,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the user's permission settings.</p>
    # @!attribute action
    #   <p>Indicates the type of action.</p>
    #   @return [String]
    # @!attribute permission
    #   <p>Indicates if the setting is enabled or disabled.</p>
    #   @return [String]
    # @!attribute maximum_length
    #   <p>Indicates the maximum character length for the specified user setting.</p>
    #   @return [Integer]
    class UserSetting < Struct.new(
      nil,
      :action,
      :permission,
      :maximum_length,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the user volume for a WorkSpace bundle.</p>
    # @!attribute capacity
    #   <p>The size of the user volume.</p>
    #   @return [String]
    class UserStorage < Struct.new(
      nil,
      :capacity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You either haven't provided a <code>TargetAccountId</code> or 
    #          are using the same value for <code>TargetAccountId</code> and <code>SourceAccountId</code>.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the WorkSpace application.</p>
    # @!attribute application_id
    #   <p>The identifier of the application.</p>
    #   @return [String]
    # @!attribute created
    #   <p>The time the application is created.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the WorkSpace application.</p>
    #   @return [String]
    # @!attribute license_type
    #   <p>The license availability for the applications.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the WorkSpace application.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The owner of the WorkSpace application.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The status of WorkSpace application.</p>
    #   @return [String]
    # @!attribute supported_compute_type_names
    #   <p>The supported compute types of the WorkSpace application.</p>
    #   @return [Array<String>]
    # @!attribute supported_operating_system_names
    #   <p>The supported operating systems of the WorkSpace application.</p>
    #   @return [Array<String>]
    class WorkSpaceApplication < Struct.new(
      nil,
      :application_id,
      :created,
      :description,
      :license_type,
      :name,
      :owner,
      :state,
      :supported_compute_type_names,
      :supported_operating_system_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the WorkSpace application deployment.</p>
    # @!attribute associations
    #   <p>The associations between the applications and the associated resources.</p>
    #   @return [Array<Types::WorkspaceResourceAssociation>]
    class WorkSpaceApplicationDeployment < Struct.new(
      nil,
      :associations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a WorkSpace.</p>
    # @!attribute workspace_id
    #   <p>The identifier of the WorkSpace.</p>
    #   @return [String]
    # @!attribute directory_id
    #   <p>The identifier of the Directory Service directory for the WorkSpace.</p>
    #   @return [String]
    # @!attribute user_name
    #   <p>The user for the WorkSpace.</p>
    #   @return [String]
    # @!attribute ip_address
    #   <p>The IP address of the WorkSpace.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The operational state of the WorkSpace.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code> – The WorkSpace is in a waiting state (for example, the WorkSpace is being created).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AVAILABLE</code> – The WorkSpace is running and has passed the health checks.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IMPAIRED</code> – Refer to <code>UNHEALTHY</code> state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNHEALTHY</code> – The WorkSpace is not responding to health checks.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REBOOTING</code> – The WorkSpace is being rebooted (restarted).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STARTING</code> – The WorkSpace is starting up and health checks are being run.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REBUILDING</code> – The WorkSpace is being rebuilt.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RESTORING</code> – The WorkSpace is being restored.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MAINTENANCE</code> – The WorkSpace is undergoing scheduled maintenance by Amazon Web Services.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ADMIN_MAINTENANCE</code>  – The WorkSpace is undergoing maintenance by the WorkSpaces administrator.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TERMINATING</code> – The WorkSpace is being deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TERMINATED</code> – The WorkSpace has been deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUSPENDED</code> – The WorkSpace has been suspended for image creation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATING</code> – The WorkSpace is undergoing an update.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STOPPING</code> – The WorkSpace is being stopped.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STOPPED</code> – The WorkSpace has been stopped.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ERROR </code> – The WorkSpace is an error state (for example, an error occurred during startup).</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>After a WorkSpace is terminated, the <code>TERMINATED</code> state is returned only
    #               briefly before the WorkSpace directory metadata is cleaned up, so this state is rarely
    #               returned. To confirm that a WorkSpace is terminated, check for the WorkSpace ID by using
    #                  <a href="https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaces.html">
    #                  DescribeWorkSpaces</a>. If the WorkSpace ID isn't returned, then the WorkSpace
    #               has been successfully terminated.</p>
    #            </note>
    #   @return [String]
    # @!attribute bundle_id
    #   <p>The identifier of the bundle used to create the WorkSpace.</p>
    #   @return [String]
    # @!attribute subnet_id
    #   <p>The identifier of the subnet for the WorkSpace.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The text of the error message that is returned if the WorkSpace cannot be
    #            created.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error code that is returned if the WorkSpace cannot be created.</p>
    #   @return [String]
    # @!attribute computer_name
    #   <p>The name of the WorkSpace, as seen by the operating system. The format of this name
    #            varies. For more information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/launch-workspaces-tutorials.html"> Launch a
    #               WorkSpace</a>. </p>
    #   @return [String]
    # @!attribute volume_encryption_key
    #   <p>The ARN of the symmetric KMS key used to encrypt data stored on your WorkSpace.
    #            Amazon WorkSpaces does not support asymmetric KMS keys.</p>
    #   @return [String]
    # @!attribute user_volume_encryption_enabled
    #   <p>Indicates whether the data stored on the user volume is encrypted.</p>
    #   @return [Boolean]
    # @!attribute root_volume_encryption_enabled
    #   <p>Indicates whether the data stored on the root volume is encrypted.</p>
    #   @return [Boolean]
    # @!attribute workspace_name
    #   <p>The name of the user-decoupled WorkSpace.</p>
    #   @return [String]
    # @!attribute workspace_properties
    #   <p>The properties of the WorkSpace.</p>
    #   @return [Types::WorkspaceProperties]
    # @!attribute modification_states
    #   <p>The modification states of the WorkSpace.</p>
    #   @return [Array<Types::ModificationState>]
    # @!attribute related_workspaces
    #   <p>The standby WorkSpace or primary WorkSpace related to the specified WorkSpace.</p>
    #   @return [Array<Types::RelatedWorkspaceProperties>]
    # @!attribute data_replication_settings
    #   <p>Indicates the settings of the data replication.</p>
    #   @return [Types::DataReplicationSettings]
    # @!attribute standby_workspaces_properties
    #   <p>The properties of the standby WorkSpace</p>
    #   @return [Array<Types::StandbyWorkspacesProperties>]
    class Workspace < Struct.new(
      nil,
      :workspace_id,
      :directory_id,
      :user_name,
      :ip_address,
      :state,
      :bundle_id,
      :subnet_id,
      :error_message,
      :error_code,
      :computer_name,
      :volume_encryption_key,
      :user_volume_encryption_enabled,
      :root_volume_encryption_enabled,
      :workspace_name,
      :workspace_properties,
      :modification_states,
      :related_workspaces,
      :data_replication_settings,
      :standby_workspaces_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The device types and operating systems that can be used to access a WorkSpace. For more
    #          information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/workspaces-network-requirements.html">Amazon
    #             WorkSpaces Client Network Requirements</a>.</p>
    # @!attribute device_type_windows
    #   <p>Indicates whether users can use Windows clients to access their WorkSpaces.</p>
    #   @return [String]
    # @!attribute device_type_osx
    #   <p>Indicates whether users can use macOS clients to access their WorkSpaces.</p>
    #   @return [String]
    # @!attribute device_type_web
    #   <p>Indicates whether users can access their WorkSpaces through a web browser.</p>
    #   @return [String]
    # @!attribute device_type_ios
    #   <p>Indicates whether users can use iOS devices to access their WorkSpaces.</p>
    #   @return [String]
    # @!attribute device_type_android
    #   <p>Indicates whether users can use Android and Android-compatible Chrome OS devices to
    #            access their WorkSpaces.</p>
    #   @return [String]
    # @!attribute device_type_chrome_os
    #   <p>Indicates whether users can use Chromebooks to access their WorkSpaces.</p>
    #   @return [String]
    # @!attribute device_type_zero_client
    #   <p>Indicates whether users can use zero client devices to access their WorkSpaces.</p>
    #   @return [String]
    # @!attribute device_type_linux
    #   <p>Indicates whether users can use Linux clients to access their WorkSpaces.</p>
    #   @return [String]
    # @!attribute device_type_work_spaces_thin_client
    #   <p>Indicates whether users can access their WorkSpaces through a WorkSpaces Thin Client.</p>
    #   @return [String]
    # @!attribute access_endpoint_config
    #   <p>Specifies the configuration for accessing the WorkSpace.</p>
    #   @return [Types::AccessEndpointConfig]
    class WorkspaceAccessProperties < Struct.new(
      nil,
      :device_type_windows,
      :device_type_osx,
      :device_type_web,
      :device_type_ios,
      :device_type_android,
      :device_type_chrome_os,
      :device_type_zero_client,
      :device_type_linux,
      :device_type_work_spaces_thin_client,
      :access_endpoint_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a WorkSpace bundle.</p>
    # @!attribute bundle_id
    #   <p>The identifier of the bundle.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the bundle.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The owner of the bundle. This is the account identifier of the owner, or
    #            <code>AMAZON</code> if the bundle is provided by Amazon Web Services.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the bundle.</p>
    #   @return [String]
    # @!attribute image_id
    #   <p>The identifier of the image that was used to create the bundle.</p>
    #   @return [String]
    # @!attribute root_storage
    #   <p>The size of the root volume.</p>
    #   @return [Types::RootStorage]
    # @!attribute user_storage
    #   <p>The size of the user volume.</p>
    #   @return [Types::UserStorage]
    # @!attribute compute_type
    #   <p>The compute type of the bundle. For more information, see 
    #            <a href="http://aws.amazon.com/workspaces/details/#Amazon_WorkSpaces_Bundles">Amazon WorkSpaces Bundles</a>.</p>
    #   @return [Types::ComputeType]
    # @!attribute last_updated_time
    #   <p>The last time that the bundle was updated.</p>
    #   @return [Time]
    # @!attribute creation_time
    #   <p>The time when the bundle was created.</p>
    #   @return [Time]
    # @!attribute state
    #   <p>The state of the WorkSpace bundle.</p>
    #   @return [String]
    # @!attribute bundle_type
    #   <p>The type of WorkSpace bundle.</p>
    #   @return [String]
    class WorkspaceBundle < Struct.new(
      nil,
      :bundle_id,
      :name,
      :owner,
      :description,
      :image_id,
      :root_storage,
      :user_storage,
      :compute_type,
      :last_updated_time,
      :creation_time,
      :state,
      :bundle_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the connection status of a WorkSpace.</p>
    # @!attribute workspace_id
    #   <p>The identifier of the WorkSpace.</p>
    #   @return [String]
    # @!attribute connection_state
    #   <p>The connection state of the WorkSpace. The connection state is unknown if the WorkSpace
    #            is stopped.</p>
    #   @return [String]
    # @!attribute connection_state_check_timestamp
    #   <p>The timestamp of the connection status check.</p>
    #   @return [Time]
    # @!attribute last_known_user_connection_timestamp
    #   <p>The timestamp of the last known user connection.</p>
    #   @return [Time]
    class WorkspaceConnectionStatus < Struct.new(
      nil,
      :workspace_id,
      :connection_state,
      :connection_state_check_timestamp,
      :last_known_user_connection_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the default properties that are used for creating WorkSpaces. For more
    #          information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/update-directory-details.html">Update Directory
    #             Details for Your WorkSpaces</a>. </p>
    # @!attribute enable_internet_access
    #   <p>Indicates whether internet access is enabled for your WorkSpaces.</p>
    #   @return [Boolean]
    # @!attribute default_ou
    #   <p>The default organizational unit (OU) for your WorkSpaces directories. This string must
    #            be the full Lightweight Directory Access Protocol (LDAP) distinguished name for the target
    #            domain and OU. It must be in the form
    #                  <code>"OU=<i>value</i>,DC=<i>value</i>,DC=<i>value</i>"</code>,
    #            where <i>value</i> is any string of characters, and the number of domain
    #            components (DCs) is two or more. For example,
    #               <code>OU=WorkSpaces_machines,DC=machines,DC=example,DC=com</code>. </p>
    #            <important>
    #               <ul>
    #                  <li>
    #                     <p>To avoid errors, certain characters in the distinguished name must be escaped.
    #                     For more information, see <a href="https://docs.microsoft.com/previous-versions/windows/desktop/ldap/distinguished-names"> Distinguished Names</a> in the Microsoft documentation.</p>
    #                  </li>
    #                  <li>
    #                     <p>The API doesn't validate whether the OU exists.</p>
    #                  </li>
    #               </ul>
    #            </important>
    #   @return [String]
    # @!attribute custom_security_group_id
    #   <p>The identifier of your custom security group.</p>
    #   @return [String]
    # @!attribute user_enabled_as_local_administrator
    #   <p>Indicates whether users are local administrators of their WorkSpaces.</p>
    #   @return [Boolean]
    # @!attribute enable_maintenance_mode
    #   <p>Indicates whether maintenance mode is enabled for your WorkSpaces. For more information,
    #            see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/workspace-maintenance.html">WorkSpace
    #               Maintenance</a>. </p>
    #   @return [Boolean]
    # @!attribute instance_iam_role_arn
    #   <p>Indicates the IAM role ARN of the instance.</p>
    #   @return [String]
    class WorkspaceCreationProperties < Struct.new(
      nil,
      :enable_internet_access,
      :default_ou,
      :custom_security_group_id,
      :user_enabled_as_local_administrator,
      :enable_maintenance_mode,
      :instance_iam_role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a directory that is used with Amazon WorkSpaces.</p>
    # @!attribute directory_id
    #   <p>The directory identifier.</p>
    #   @return [String]
    # @!attribute alias
    #   <p>The directory alias.</p>
    #   @return [String]
    # @!attribute directory_name
    #   <p>The name of the directory.</p>
    #   @return [String]
    # @!attribute registration_code
    #   <p>The registration code for the directory. This is the code that users enter in their
    #            Amazon WorkSpaces client application to connect to the directory.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>The identifiers of the subnets used with the directory.</p>
    #   @return [Array<String>]
    # @!attribute dns_ip_addresses
    #   <p>The IP addresses of the DNS servers for the directory.</p>
    #   @return [Array<String>]
    # @!attribute customer_user_name
    #   <p>The user name for the service account.</p>
    #   @return [String]
    # @!attribute iam_role_id
    #   <p>The identifier of the IAM role. This is the role that allows Amazon WorkSpaces to make
    #            calls to other services, such as Amazon EC2, on your behalf.</p>
    #   @return [String]
    # @!attribute directory_type
    #   <p>The directory type.</p>
    #   @return [String]
    # @!attribute workspace_security_group_id
    #   <p>The identifier of the security group that is assigned to new WorkSpaces.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the directory's registration with Amazon WorkSpaces. After a directory is
    #            deregistered, the <code>DEREGISTERED</code> state is returned very briefly before the
    #            directory metadata is cleaned up, so this state is rarely returned. To confirm that a
    #            directory is deregistered, check for the directory ID by using <a href="https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaceDirectories.html">
    #               DescribeWorkspaceDirectories</a>. If the directory ID isn't returned, then the
    #            directory has been successfully deregistered.</p>
    #   @return [String]
    # @!attribute workspace_creation_properties
    #   <p>The default creation properties for all WorkSpaces in the directory.</p>
    #   @return [Types::DefaultWorkspaceCreationProperties]
    # @!attribute ip_group_ids
    #   <p>The identifiers of the IP access control groups associated with the directory.</p>
    #   @return [Array<String>]
    # @!attribute workspace_access_properties
    #   <p>The devices and operating systems that users can use to access WorkSpaces.</p>
    #   @return [Types::WorkspaceAccessProperties]
    # @!attribute tenancy
    #   <p>Specifies whether the directory is dedicated or shared. To use Bring Your Own License
    #            (BYOL), this value must be set to <code>DEDICATED</code>. For more information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html">Bring
    #               Your Own Windows Desktop Images</a>.</p>
    #   @return [String]
    # @!attribute selfservice_permissions
    #   <p>The default self-service permissions for WorkSpaces in the directory.</p>
    #   @return [Types::SelfservicePermissions]
    # @!attribute saml_properties
    #   <p>Describes the enablement status, user access URL, and relay state parameter name that are used for configuring 
    #            federation with an SAML 2.0 identity provider.</p>
    #   @return [Types::SamlProperties]
    # @!attribute certificate_based_auth_properties
    #   <p>The certificate-based authentication properties used to authenticate SAML 2.0 Identity Provider (IdP)
    #            user identities to Active Directory for WorkSpaces login.</p>
    #   @return [Types::CertificateBasedAuthProperties]
    # @!attribute endpoint_encryption_mode
    #   <p>Endpoint encryption mode that allows you to configure the specified directory between
    #            Standard TLS and FIPS 140-2 validated mode.</p>
    #   @return [String]
    # @!attribute microsoft_entra_config
    #   <p>Specifies details about Microsoft Entra configurations.</p>
    #   @return [Types::MicrosoftEntraConfig]
    # @!attribute workspace_directory_name
    #   <p>The name fo the WorkSpace directory.</p>
    #   @return [String]
    # @!attribute workspace_directory_description
    #   <p>The description of the WorkSpace directory</p>
    #   @return [String]
    # @!attribute user_identity_type
    #   <p>Indicates the identity type of the specifired user.</p>
    #   @return [String]
    # @!attribute workspace_type
    #   <p>Indicates whether the directory's WorkSpace type is personal or pools.</p>
    #   @return [String]
    # @!attribute idc_config
    #   <p>Specifies details about identity center configurations.</p>
    #   @return [Types::IDCConfig]
    # @!attribute active_directory_config
    #   <p>Information about the Active Directory config.</p>
    #   @return [Types::ActiveDirectoryConfig]
    # @!attribute streaming_properties
    #   <p>The streaming properties to configure.</p>
    #   @return [Types::StreamingProperties]
    # @!attribute error_message
    #   <p>The error message returned.</p>
    #   @return [String]
    class WorkspaceDirectory < Struct.new(
      nil,
      :directory_id,
      :alias,
      :directory_name,
      :registration_code,
      :subnet_ids,
      :dns_ip_addresses,
      :customer_user_name,
      :iam_role_id,
      :directory_type,
      :workspace_security_group_id,
      :state,
      :workspace_creation_properties,
      :ip_group_ids,
      :workspace_access_properties,
      :tenancy,
      :selfservice_permissions,
      :saml_properties,
      :certificate_based_auth_properties,
      :endpoint_encryption_mode,
      :microsoft_entra_config,
      :workspace_directory_name,
      :workspace_directory_description,
      :user_identity_type,
      :workspace_type,
      :idc_config,
      :active_directory_config,
      :streaming_properties,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a WorkSpace image.</p>
    # @!attribute image_id
    #   <p>The identifier of the image.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the image.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the image.</p>
    #   @return [String]
    # @!attribute operating_system
    #   <p>The operating system that the image is running. </p>
    #   @return [Types::OperatingSystem]
    # @!attribute state
    #   <p>The status of the image.</p>
    #   @return [String]
    # @!attribute required_tenancy
    #   <p>Specifies whether the image is running on dedicated hardware. When Bring Your Own
    #            License (BYOL) is enabled, this value is set to <code>DEDICATED</code>. For more
    #            information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html">Bring Your Own Windows
    #               Desktop Images</a>.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error code that is returned for the image.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The text of the error message that is returned for the image.</p>
    #   @return [String]
    # @!attribute created
    #   <p>The date when the image was created. If the image has been shared, the Amazon Web Services account that the image has been shared with sees the original creation date
    #            of the image.</p>
    #   @return [Time]
    # @!attribute owner_account_id
    #   <p>The identifier of the Amazon Web Services account that owns the image.</p>
    #   @return [String]
    # @!attribute updates
    #   <p>The updates (if any) that are available for the specified image.</p>
    #   @return [Types::UpdateResult]
    # @!attribute error_details
    #   <p>Additional details of the error returned for the image, including the 
    #            possible causes of the errors and troubleshooting information.</p>
    #   @return [Array<Types::ErrorDetails>]
    class WorkspaceImage < Struct.new(
      nil,
      :image_id,
      :name,
      :description,
      :operating_system,
      :state,
      :required_tenancy,
      :error_code,
      :error_message,
      :created,
      :owner_account_id,
      :updates,
      :error_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a WorkSpace.</p>
    # @!attribute running_mode
    #   <p>The running mode. For more information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/running-mode.html">Manage the WorkSpace Running
    #            Mode</a>.</p>
    #            <note>
    #               <p>The <code>MANUAL</code> value is only supported by Amazon WorkSpaces Core. Contact
    #               your account team to be allow-listed to use this value. For more information, see
    #               <a href="http://aws.amazon.com/workspaces/core/">Amazon WorkSpaces Core</a>.</p>
    #            </note>
    #            <p>Review your running mode to ensure you are using one that is optimal for your needs and
    #            budget. For more information on switching running modes, see <a href="http://aws.amazon.com/workspaces-family/workspaces/faqs/#:~:text=Can%20I%20switch%20between%20hourly%20and%20monthly%20billing%20on%20WorkSpaces%20Personal%3F"> Can I switch between hourly and monthly billing?</a>
    #            </p>
    #   @return [String]
    # @!attribute running_mode_auto_stop_timeout_in_minutes
    #   <p>The time after a user logs off when WorkSpaces are automatically stopped. Configured in
    #            60-minute intervals.</p>
    #   @return [Integer]
    # @!attribute root_volume_size_gib
    #   <p>The size of the root volume. For important information about how to modify the size of
    #            the root and user volumes, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/modify-workspaces.html">Modify a
    #            WorkSpace</a>.</p>
    #   @return [Integer]
    # @!attribute user_volume_size_gib
    #   <p>The size of the user storage. For important information about how to modify the size of
    #            the root and user volumes, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/modify-workspaces.html">Modify a
    #            WorkSpace</a>.</p>
    #   @return [Integer]
    # @!attribute compute_type_name
    #   <p>The compute type. For more information, see <a href="http://aws.amazon.com/workspaces/details/#Amazon_WorkSpaces_Bundles">Amazon WorkSpaces
    #            Bundles</a>.</p>
    #   @return [String]
    # @!attribute protocols
    #   <p>The protocol. For more information, see 
    #            <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/amazon-workspaces-protocols.html">
    #               Protocols for Amazon WorkSpaces</a>.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>Only available for WorkSpaces created with PCoIP bundles.</p>
    #                  </li>
    #                  <li>
    #                     <p>The <code>Protocols</code> property is case sensitive. Ensure you use <code>PCOIP</code> or <code>DCV</code> (formerly WSP).</p>
    #                  </li>
    #                  <li>
    #                     <p>Unavailable for Windows 7 WorkSpaces and WorkSpaces using GPU-based bundles 
    #                  (Graphics, GraphicsPro, Graphics.g4dn, and GraphicsPro.g4dn).</p>
    #                  </li>
    #               </ul>
    #            </note>
    #   @return [Array<String>]
    # @!attribute operating_system_name
    #   <p>The name of the operating system.</p>
    #   @return [String]
    # @!attribute global_accelerator
    #   <p>Indicates the Global Accelerator properties.</p>
    #   @return [Types::GlobalAcceleratorForWorkSpace]
    class WorkspaceProperties < Struct.new(
      nil,
      :running_mode,
      :running_mode_auto_stop_timeout_in_minutes,
      :root_volume_size_gib,
      :user_volume_size_gib,
      :compute_type_name,
      :protocols,
      :operating_system_name,
      :global_accelerator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the information used to create a WorkSpace.</p>
    # @!attribute directory_id
    #   <p>The identifier of the Directory Service directory for the WorkSpace. You can use <a>DescribeWorkspaceDirectories</a> to list the available directories.</p>
    #   @return [String]
    # @!attribute user_name
    #   <p>The user name of the user for the WorkSpace. This user name must exist in the Directory Service directory for the WorkSpace.</p>
    #            <p>The username is not case-sensitive, but we recommend matching the case in the Directory Service directory to avoid potential incompatibilities.</p>
    #            <p>The reserved keyword, <code>[UNDEFINED]</code>, is used when creating user-decoupled WorkSpaces.</p>
    #   @return [String]
    # @!attribute bundle_id
    #   <p>The identifier of the bundle for the WorkSpace. You can use <a>DescribeWorkspaceBundles</a> to list the available bundles.</p>
    #   @return [String]
    # @!attribute volume_encryption_key
    #   <p>The ARN of the symmetric KMS key used to encrypt data stored on your WorkSpace.
    #            Amazon WorkSpaces does not support asymmetric KMS keys.</p>
    #   @return [String]
    # @!attribute user_volume_encryption_enabled
    #   <p>Indicates whether the data stored on the user volume is encrypted.</p>
    #   @return [Boolean]
    # @!attribute root_volume_encryption_enabled
    #   <p>Indicates whether the data stored on the root volume is encrypted.</p>
    #   @return [Boolean]
    # @!attribute workspace_properties
    #   <p>The WorkSpace properties.</p>
    #   @return [Types::WorkspaceProperties]
    # @!attribute tags
    #   <p>The tags for the WorkSpace.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute workspace_name
    #   <p>The name of the user-decoupled WorkSpace.</p>
    #            <note>
    #               <p>
    #                  <code>WorkspaceName</code> is required if <code>UserName</code> is
    #               <code>[UNDEFINED]</code> for user-decoupled WorkSpaces.
    #               <code>WorkspaceName</code> is not applicable if <code>UserName</code> is specified
    #               for user-assigned WorkSpaces.</p>
    #            </note>
    #   @return [String]
    class WorkspaceRequest < Struct.new(
      nil,
      :directory_id,
      :user_name,
      :bundle_id,
      :volume_encryption_key,
      :user_volume_encryption_enabled,
      :root_volume_encryption_enabled,
      :workspace_properties,
      :tags,
      :workspace_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the association between an application and a WorkSpace resource.</p>
    # @!attribute associated_resource_id
    #   <p>The identifier of the associated resource.</p>
    #   @return [String]
    # @!attribute associated_resource_type
    #   <p>The resource types of the associated resource.</p>
    #   @return [String]
    # @!attribute created
    #   <p>The time the association is created.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The time the association status was last updated.</p>
    #   @return [Time]
    # @!attribute state
    #   <p>The status of the WorkSpace resource association.</p>
    #   @return [String]
    # @!attribute state_reason
    #   <p>The reason the association deployment failed.</p>
    #   @return [Types::AssociationStateReason]
    # @!attribute workspace_id
    #   <p>The identifier of the WorkSpace.</p>
    #   @return [String]
    class WorkspaceResourceAssociation < Struct.new(
      nil,
      :associated_resource_id,
      :associated_resource_type,
      :created,
      :last_updated_time,
      :state,
      :state_reason,
      :workspace_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The workspaces_DefaultRole role could not be found. If this is the first time you are registering a directory, you
    #          will need to create the workspaces_DefaultRole role before you can register a directory. For more information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/workspaces-access-control.html#create-default-role">Creating the workspaces_DefaultRole Role</a>.</p>
    # @!attribute message
    #   @return [String]
    class WorkspacesDefaultRoleNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an IP access control group.</p>
    # @!attribute group_id
    #   <p>The identifier of the group.</p>
    #   @return [String]
    # @!attribute group_name
    #   <p>The name of the group.</p>
    #   @return [String]
    # @!attribute group_desc
    #   <p>The description of the group.</p>
    #   @return [String]
    # @!attribute user_rules
    #   <p>The rules.</p>
    #   @return [Array<Types::IpRuleItem>]
    class WorkspacesIpGroup < Struct.new(
      nil,
      :group_id,
      :group_name,
      :group_desc,
      :user_rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a pool of WorkSpaces.</p>
    # @!attribute pool_id
    #   <p>The identifier of a pool.</p>
    #   @return [String]
    # @!attribute pool_arn
    #   <p>The Amazon Resource Name (ARN) for the pool.</p>
    #   @return [String]
    # @!attribute capacity_status
    #   <p>The capacity status for the pool</p>
    #   @return [Types::CapacityStatus]
    # @!attribute pool_name
    #   <p>The name of the pool.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the pool.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the pool.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time the pool was created.</p>
    #   @return [Time]
    # @!attribute bundle_id
    #   <p>The identifier of the bundle used by the pool.</p>
    #   @return [String]
    # @!attribute directory_id
    #   <p>The identifier of the directory used by the pool.</p>
    #   @return [String]
    # @!attribute errors
    #   <p>The pool errors.</p>
    #   @return [Array<Types::WorkspacesPoolError>]
    # @!attribute application_settings
    #   <p>The persistent application settings for users of the pool.</p>
    #   @return [Types::ApplicationSettingsResponse]
    # @!attribute timeout_settings
    #   <p>The amount of time that a pool session remains active after users disconnect. 
    #            If they try to reconnect to the pool session after a disconnection or network interruption 
    #            within this time interval, they are connected to their previous session. 
    #            Otherwise, they are connected to a new session with a new pool instance.</p>
    #   @return [Types::TimeoutSettings]
    # @!attribute running_mode
    #   <p>The running mode of the pool.</p>
    #   @return [String]
    class WorkspacesPool < Struct.new(
      nil,
      :pool_id,
      :pool_arn,
      :capacity_status,
      :pool_name,
      :description,
      :state,
      :created_at,
      :bundle_id,
      :directory_id,
      :errors,
      :application_settings,
      :timeout_settings,
      :running_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:running_mode] = 'AUTO_STOP' unless options.key?(:running_mode)
        super
      end
    end

    # <p>Describes a pool error.</p>
    # @!attribute error_code
    #   <p>The error code.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message.</p>
    #   @return [String]
    class WorkspacesPoolError < Struct.new(
      nil,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a pool session.</p>
    # @!attribute authentication_type
    #   <p>The authentication method. The user is authenticated using a 
    #            WorkSpaces Pools URL (API) or SAML 2.0 federation (SAML).</p>
    #   @return [String]
    # @!attribute connection_state
    #   <p>Specifies whether a user is connected to the pool session.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The identifier of the session.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The identifier for the instance hosting the session.</p>
    #   @return [String]
    # @!attribute pool_id
    #   <p>The identifier of the pool.</p>
    #   @return [String]
    # @!attribute expiration_time
    #   <p>The time that the pool session ended.</p>
    #   @return [Time]
    # @!attribute network_access_configuration
    #   <p>Describes the network details of the pool.</p>
    #   @return [Types::NetworkAccessConfiguration]
    # @!attribute start_time
    #   <p>The time that the pool sission started.</p>
    #   @return [Time]
    # @!attribute user_id
    #   <p>The identifier of the user.</p>
    #   @return [String]
    class WorkspacesPoolSession < Struct.new(
      nil,
      :authentication_type,
      :connection_state,
      :session_id,
      :instance_id,
      :pool_id,
      :expiration_time,
      :network_access_configuration,
      :start_time,
      :user_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
