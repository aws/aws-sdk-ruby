# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Repostspace
  module Types

    # User does not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_id
    #   The unique ID of the private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] channel_id
    #   The unique ID of the private re:Post channel.
    #   @return [String]
    #
    # @!attribute [rw] accessor_ids
    #   The user or group identifiers to add the role to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] channel_role
    #   The channel role to add to the users or groups.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/BatchAddChannelRoleToAccessorsInput AWS API Documentation
    #
    class BatchAddChannelRoleToAccessorsInput < Struct.new(
      :space_id,
      :channel_id,
      :accessor_ids,
      :channel_role)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] added_accessor_ids
    #   An array of successfully updated identifiers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] errors
    #   An array of errors that occurred when roles were added.
    #   @return [Array<Types::BatchError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/BatchAddChannelRoleToAccessorsOutput AWS API Documentation
    #
    class BatchAddChannelRoleToAccessorsOutput < Struct.new(
      :added_accessor_ids,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_id
    #   The unique ID of the private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] accessor_ids
    #   The user or group accessor identifiers to add the role to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] role
    #   The role to add to the users or groups.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/BatchAddRoleInput AWS API Documentation
    #
    class BatchAddRoleInput < Struct.new(
      :space_id,
      :accessor_ids,
      :role)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] added_accessor_ids
    #   An array of successfully updated accessor identifiers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] errors
    #   An array of errors that occurred when roles were added.
    #   @return [Array<Types::BatchError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/BatchAddRoleOutput AWS API Documentation
    #
    class BatchAddRoleOutput < Struct.new(
      :added_accessor_ids,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error that occurred during a batch operation.
    #
    # @!attribute [rw] accessor_id
    #   The accessor identifier that's related to the error.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   The error code.
    #   @return [Integer]
    #
    # @!attribute [rw] message
    #   Description of the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/BatchError AWS API Documentation
    #
    class BatchError < Struct.new(
      :accessor_id,
      :error,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_id
    #   The unique ID of the private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] channel_id
    #   The unique ID of the private re:Post channel.
    #   @return [String]
    #
    # @!attribute [rw] accessor_ids
    #   The users or groups identifiers to remove the role from.
    #   @return [Array<String>]
    #
    # @!attribute [rw] channel_role
    #   The channel role to remove from the users or groups.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/BatchRemoveChannelRoleFromAccessorsInput AWS API Documentation
    #
    class BatchRemoveChannelRoleFromAccessorsInput < Struct.new(
      :space_id,
      :channel_id,
      :accessor_ids,
      :channel_role)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] removed_accessor_ids
    #   An array of successfully updated identifiers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] errors
    #   An array of errors that occurred when roles were removed.
    #   @return [Array<Types::BatchError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/BatchRemoveChannelRoleFromAccessorsOutput AWS API Documentation
    #
    class BatchRemoveChannelRoleFromAccessorsOutput < Struct.new(
      :removed_accessor_ids,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_id
    #   The unique ID of the private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] accessor_ids
    #   The user or group accessor identifiers to remove the role from.
    #   @return [Array<String>]
    #
    # @!attribute [rw] role
    #   The role to remove from the users or groups.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/BatchRemoveRoleInput AWS API Documentation
    #
    class BatchRemoveRoleInput < Struct.new(
      :space_id,
      :accessor_ids,
      :role)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] removed_accessor_ids
    #   An array of successfully updated accessor identifiers.
    #   @return [Array<String>]
    #
    # @!attribute [rw] errors
    #   An array of errors that occurred when roles were removed.
    #   @return [Array<Types::BatchError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/BatchRemoveRoleOutput AWS API Documentation
    #
    class BatchRemoveRoleOutput < Struct.new(
      :removed_accessor_ids,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains some information about a channel in a
    # private re:Post.
    #
    # @!attribute [rw] space_id
    #   The unique ID of the private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] channel_id
    #   The unique ID of the private re:Post channel.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name for the channel. This must be unique per private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] channel_description
    #   A description for the channel. This is used only to help you
    #   identify this channel.
    #   @return [String]
    #
    # @!attribute [rw] create_date_time
    #   The date when the channel was created.
    #   @return [Time]
    #
    # @!attribute [rw] delete_date_time
    #   The date when the channel was deleted.
    #   @return [Time]
    #
    # @!attribute [rw] channel_status
    #   The status pf the channel.
    #   @return [String]
    #
    # @!attribute [rw] user_count
    #   The number of users that are part of the channel.
    #   @return [Integer]
    #
    # @!attribute [rw] group_count
    #   The number of groups that are part of the channel.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/ChannelData AWS API Documentation
    #
    class ChannelData < Struct.new(
      :space_id,
      :channel_id,
      :channel_name,
      :channel_description,
      :create_date_time,
      :delete_date_time,
      :channel_status,
      :user_count,
      :group_count)
      SENSITIVE = [:channel_name, :channel_description]
      include Aws::Structure
    end

    # Updating or deleting a resource can cause an inconsistent state.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_id
    #   The unique ID of the private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name for the channel. This must be unique per private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] channel_description
    #   A description for the channel. This is used only to help you
    #   identify this channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/CreateChannelInput AWS API Documentation
    #
    class CreateChannelInput < Struct.new(
      :space_id,
      :channel_name,
      :channel_description)
      SENSITIVE = [:channel_name, :channel_description]
      include Aws::Structure
    end

    # @!attribute [rw] channel_id
    #   The unique ID of the private re:Post channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/CreateChannelOutput AWS API Documentation
    #
    class CreateChannelOutput < Struct.new(
      :channel_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name for the private re:Post. This must be unique in your
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] subdomain
    #   The subdomain that you use to access your AWS re:Post Private
    #   private re:Post. All custom subdomains must be approved by AWS
    #   before use. In addition to your custom subdomain, all private
    #   re:Posts are issued an AWS generated subdomain for immediate use.
    #   @return [String]
    #
    # @!attribute [rw] tier
    #   The pricing tier for the private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the private re:Post. This is used only to help you
    #   identify this private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] user_kms_key
    #   The AWS KMS key ARN that’s used for the AWS KMS encryption. If you
    #   don't provide a key, your data is encrypted by default with a key
    #   that AWS owns and manages for you.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tags associated with the private re:Post.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] role_arn
    #   The IAM role that grants permissions to the private re:Post to
    #   convert unanswered questions into AWS support tickets.
    #   @return [String]
    #
    # @!attribute [rw] supported_email_domains
    #   @return [Types::SupportedEmailDomainsParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/CreateSpaceInput AWS API Documentation
    #
    class CreateSpaceInput < Struct.new(
      :name,
      :subdomain,
      :tier,
      :description,
      :user_kms_key,
      :tags,
      :role_arn,
      :supported_email_domains)
      SENSITIVE = [:name, :description, :tags]
      include Aws::Structure
    end

    # @!attribute [rw] space_id
    #   The unique ID of the private re:Post.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/CreateSpaceOutput AWS API Documentation
    #
    class CreateSpaceOutput < Struct.new(
      :space_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_id
    #   The unique ID of the private re:Post.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/DeleteSpaceInput AWS API Documentation
    #
    class DeleteSpaceInput < Struct.new(
      :space_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_id
    #   The ID of the private re:Post to remove the admin from.
    #   @return [String]
    #
    # @!attribute [rw] admin_id
    #   The ID of the admin to remove.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/DeregisterAdminInput AWS API Documentation
    #
    class DeregisterAdminInput < Struct.new(
      :space_id,
      :admin_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_id
    #   The unique ID of the private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] channel_id
    #   The unique ID of the private re:Post channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/GetChannelInput AWS API Documentation
    #
    class GetChannelInput < Struct.new(
      :space_id,
      :channel_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_id
    #   The unique ID of the private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] channel_id
    #   The unique ID of the private re:Post channel.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name for the channel. This must be unique per private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] channel_description
    #   A description for the channel. This is used only to help you
    #   identify this channel.
    #   @return [String]
    #
    # @!attribute [rw] create_date_time
    #   The date when the channel was created.
    #   @return [Time]
    #
    # @!attribute [rw] delete_date_time
    #   The date when the channel was deleted.
    #   @return [Time]
    #
    # @!attribute [rw] channel_roles
    #   The channel roles associated to the users and groups of the channel.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] channel_status
    #   The status pf the channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/GetChannelOutput AWS API Documentation
    #
    class GetChannelOutput < Struct.new(
      :space_id,
      :channel_id,
      :channel_name,
      :channel_description,
      :create_date_time,
      :delete_date_time,
      :channel_roles,
      :channel_status)
      SENSITIVE = [:channel_name, :channel_description]
      include Aws::Structure
    end

    # @!attribute [rw] space_id
    #   The ID of the private re:Post.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/GetSpaceInput AWS API Documentation
    #
    class GetSpaceInput < Struct.new(
      :space_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_id
    #   The unique ID of the private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The creation or deletion status of the private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] configuration_status
    #   The configuration status of the private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The Identity Center identifier for the Application Instance.
    #   @return [String]
    #
    # @!attribute [rw] identity_store_id
    #   @return [String]
    #
    # @!attribute [rw] application_arn
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] vanity_domain_status
    #   The approval status of the custom subdomain.
    #   @return [String]
    #
    # @!attribute [rw] vanity_domain
    #   The custom subdomain that you use to access your private re:Post.
    #   All custom subdomains must be approved by AWS before use.
    #   @return [String]
    #
    # @!attribute [rw] random_domain
    #   The AWS generated subdomain of the private re:Post
    #   @return [String]
    #
    # @!attribute [rw] customer_role_arn
    #   The IAM role that grants permissions to the private re:Post to
    #   convert unanswered questions into AWS support tickets.
    #   @return [String]
    #
    # @!attribute [rw] create_date_time
    #   The date when the private re:Post was created.
    #   @return [Time]
    #
    # @!attribute [rw] delete_date_time
    #   The date when the private re:Post was deleted.
    #   @return [Time]
    #
    # @!attribute [rw] tier
    #   The pricing tier of the private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] storage_limit
    #   The storage limit of the private re:Post.
    #   @return [Integer]
    #
    # @!attribute [rw] user_admins
    #   The list of users that are administrators of the private re:Post.
    #   @return [Array<String>]
    #
    # @!attribute [rw] group_admins
    #   The list of groups that are administrators of the private re:Post.
    #   @return [Array<String>]
    #
    # @!attribute [rw] roles
    #   A map of accessor identifiers and their roles.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] user_kms_key
    #   The custom AWS KMS key ARN that’s used for the AWS KMS encryption.
    #   @return [String]
    #
    # @!attribute [rw] user_count
    #   The number of users that have onboarded to the private re:Post.
    #   @return [Integer]
    #
    # @!attribute [rw] content_size
    #   The content size of the private re:Post.
    #   @return [Integer]
    #
    # @!attribute [rw] supported_email_domains
    #   @return [Types::SupportedEmailDomainsStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/GetSpaceOutput AWS API Documentation
    #
    class GetSpaceOutput < Struct.new(
      :space_id,
      :arn,
      :name,
      :status,
      :configuration_status,
      :client_id,
      :identity_store_id,
      :application_arn,
      :description,
      :vanity_domain_status,
      :vanity_domain,
      :random_domain,
      :customer_role_arn,
      :create_date_time,
      :delete_date_time,
      :tier,
      :storage_limit,
      :user_admins,
      :group_admins,
      :roles,
      :user_kms_key,
      :user_count,
      :content_size,
      :supported_email_domains)
      SENSITIVE = [:name, :description]
      include Aws::Structure
    end

    # Unexpected error during processing of request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   Advice to clients on when the call can be safely retried.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_id
    #   The unique ID of the private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of channel to return. You receive this
    #   token from a previous ListChannels operation.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of channels to include in the results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/ListChannelsInput AWS API Documentation
    #
    class ListChannelsInput < Struct.new(
      :space_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] channels
    #   An array of structures that contain some information about the
    #   channels in the private re:Post.
    #   @return [Array<Types::ChannelData>]
    #
    # @!attribute [rw] next_token
    #   The token that you use when you request the next set of channels.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/ListChannelsOutput AWS API Documentation
    #
    class ListChannelsOutput < Struct.new(
      :channels,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of private re:Posts to return. You
    #   receive this token from a previous ListSpaces operation.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of private re:Posts to include in the results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/ListSpacesInput AWS API Documentation
    #
    class ListSpacesInput < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] spaces
    #   An array of structures that contain some information about the
    #   private re:Posts in the account.
    #   @return [Array<Types::SpaceData>]
    #
    # @!attribute [rw] next_token
    #   The token that you use when you request the next set of private
    #   re:Posts.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/ListSpacesOutput AWS API Documentation
    #
    class ListSpacesOutput < Struct.new(
      :spaces,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource that the tags are associated with.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tags that are associated with the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @!attribute [rw] space_id
    #   The ID of the private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] admin_id
    #   The ID of the administrator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/RegisterAdminInput AWS API Documentation
    #
    class RegisterAdminInput < Struct.new(
      :space_id,
      :admin_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request references a resource which does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] space_id
    #   The ID of the private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] accessor_ids
    #   The array of identifiers for the users and groups.
    #   @return [Array<String>]
    #
    # @!attribute [rw] title
    #   The title of the invite.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The body of the invite.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/SendInvitesInput AWS API Documentation
    #
    class SendInvitesInput < Struct.new(
      :space_id,
      :accessor_ids,
      :title,
      :body)
      SENSITIVE = [:title, :body]
      include Aws::Structure
    end

    # Request would cause a service quota to be exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The id of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The code to identify the service.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The code to identify the quota.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains some information about a private re:Post in
    # the account.
    #
    # @!attribute [rw] space_id
    #   The unique ID of the private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name for the private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the private re:Post. This is used only to help
    #   you identify this private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The creation/deletion status of the private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] configuration_status
    #   The configuration status of the private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] vanity_domain_status
    #   This approval status of the custom subdomain.
    #   @return [String]
    #
    # @!attribute [rw] vanity_domain
    #   This custom subdomain that you use to access your private re:Post.
    #   All custom subdomains must be approved by AWS before use.
    #   @return [String]
    #
    # @!attribute [rw] random_domain
    #   The AWS generated subdomain of the private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] tier
    #   The pricing tier of the private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] storage_limit
    #   The storage limit of the private re:Post.
    #   @return [Integer]
    #
    # @!attribute [rw] create_date_time
    #   The date when the private re:Post was created.
    #   @return [Time]
    #
    # @!attribute [rw] delete_date_time
    #   The date when the private re:Post was deleted.
    #   @return [Time]
    #
    # @!attribute [rw] user_kms_key
    #   The custom AWS KMS key ARN that’s used for the AWS KMS encryption.
    #   @return [String]
    #
    # @!attribute [rw] user_count
    #   The number of onboarded users to the private re:Post.
    #   @return [Integer]
    #
    # @!attribute [rw] content_size
    #   The content size of the private re:Post.
    #   @return [Integer]
    #
    # @!attribute [rw] supported_email_domains
    #   @return [Types::SupportedEmailDomainsStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/SpaceData AWS API Documentation
    #
    class SpaceData < Struct.new(
      :space_id,
      :arn,
      :name,
      :description,
      :status,
      :configuration_status,
      :vanity_domain_status,
      :vanity_domain,
      :random_domain,
      :tier,
      :storage_limit,
      :create_date_time,
      :delete_date_time,
      :user_kms_key,
      :user_count,
      :content_size,
      :supported_email_domains)
      SENSITIVE = [:name, :description]
      include Aws::Structure
    end

    # @!attribute [rw] enabled
    #   @return [String]
    #
    # @!attribute [rw] allowed_domains
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/SupportedEmailDomainsParameters AWS API Documentation
    #
    class SupportedEmailDomainsParameters < Struct.new(
      :enabled,
      :allowed_domains)
      SENSITIVE = [:allowed_domains]
      include Aws::Structure
    end

    # @!attribute [rw] enabled
    #   @return [String]
    #
    # @!attribute [rw] allowed_domains
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/SupportedEmailDomainsStatus AWS API Documentation
    #
    class SupportedEmailDomainsStatus < Struct.new(
      :enabled,
      :allowed_domains)
      SENSITIVE = [:allowed_domains]
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource that the tag is associated with.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tag keys and values that must be associated with the
    #   resource. You can associate tag keys only, tags (key and values)
    #   only, or a combination of tag keys and tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = [:tags]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The code to identify the service.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The code to identify the quota.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   Advice to clients on when the call can be safely retried.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The key values of the tag.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] space_id
    #   The unique ID of the private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] channel_id
    #   The unique ID of the private re:Post channel.
    #   @return [String]
    #
    # @!attribute [rw] channel_name
    #   The name for the channel. This must be unique per private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] channel_description
    #   A description for the channel. This is used only to help you
    #   identify this channel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/UpdateChannelInput AWS API Documentation
    #
    class UpdateChannelInput < Struct.new(
      :space_id,
      :channel_id,
      :channel_name,
      :channel_description)
      SENSITIVE = [:channel_name, :channel_description]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/UpdateChannelOutput AWS API Documentation
    #
    class UpdateChannelOutput < Aws::EmptyStructure; end

    # @!attribute [rw] space_id
    #   The unique ID of this private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the private re:Post. This is used only to help you
    #   identify this private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] tier
    #   The pricing tier of this private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The IAM role that grants permissions to the private re:Post to
    #   convert unanswered questions into AWS support tickets.
    #   @return [String]
    #
    # @!attribute [rw] supported_email_domains
    #   @return [Types::SupportedEmailDomainsParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/UpdateSpaceInput AWS API Documentation
    #
    class UpdateSpaceInput < Struct.new(
      :space_id,
      :description,
      :tier,
      :role_arn,
      :supported_email_domains)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by an AWS
    # service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason why the request failed validation.
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   The field that caused the error, if applicable.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Stores information about a field that’s passed inside a request that
    # resulted in an exception.
    #
    # @!attribute [rw] name
    #   Message describing why the field failed validation.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The name of the field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

