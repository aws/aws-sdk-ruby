# frozen_string_literal: true

# This is generated code!

module Aws::Repostspace
  # This module contains the types returned by client operations.
  module Types

    # <p>User does not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_id
    #   <p>The unique ID of the private re:Post.</p>
    #   @return [String]
    # @!attribute channel_id
    #   <p>The unique ID of the private re:Post channel.</p>
    #   @return [String]
    # @!attribute accessor_ids
    #   <p>The user or group identifiers to add the role to.</p>
    #   @return [Array<String>]
    # @!attribute channel_role
    #   <p>The channel role to add to the users or groups.</p>
    #   @return [String]
    class BatchAddChannelRoleToAccessorsInput < Struct.new(
      nil,
      :space_id,
      :channel_id,
      :accessor_ids,
      :channel_role,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute added_accessor_ids
    #   <p>An array of successfully updated identifiers.</p>
    #   @return [Array<String>]
    # @!attribute errors
    #   <p>An array of errors that occurred when roles were added.</p>
    #   @return [Array<Types::BatchError>]
    class BatchAddChannelRoleToAccessorsOutput < Struct.new(
      nil,
      :added_accessor_ids,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_id
    #   <p>The unique ID of the private re:Post.</p>
    #   @return [String]
    # @!attribute accessor_ids
    #   <p>The user or group accessor identifiers to add the role to.</p>
    #   @return [Array<String>]
    # @!attribute role
    #   <p>The role to add to the users or groups.</p>
    #   @return [String]
    class BatchAddRoleInput < Struct.new(
      nil,
      :space_id,
      :accessor_ids,
      :role,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute added_accessor_ids
    #   <p>An array of successfully updated accessor identifiers.</p>
    #   @return [Array<String>]
    # @!attribute errors
    #   <p>An array of errors that occurred when roles were added.</p>
    #   @return [Array<Types::BatchError>]
    class BatchAddRoleOutput < Struct.new(
      nil,
      :added_accessor_ids,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An error that occurred during a batch operation.</p>
    # @!attribute accessor_id
    #   <p>The accessor identifier that's related to the error.</p>
    #   @return [String]
    # @!attribute error
    #   <p>The error code.</p>
    #   @return [Integer]
    # @!attribute message
    #   <p>Description of the error.</p>
    #   @return [String]
    class BatchError < Struct.new(
      nil,
      :accessor_id,
      :error,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_id
    #   <p>The unique ID of the private re:Post.</p>
    #   @return [String]
    # @!attribute channel_id
    #   <p>The unique ID of the private re:Post channel.</p>
    #   @return [String]
    # @!attribute accessor_ids
    #   <p>The users or groups identifiers to remove the role from.</p>
    #   @return [Array<String>]
    # @!attribute channel_role
    #   <p>The channel role to remove from the users or groups.</p>
    #   @return [String]
    class BatchRemoveChannelRoleFromAccessorsInput < Struct.new(
      nil,
      :space_id,
      :channel_id,
      :accessor_ids,
      :channel_role,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute removed_accessor_ids
    #   <p>An array of successfully updated identifiers.</p>
    #   @return [Array<String>]
    # @!attribute errors
    #   <p>An array of errors that occurred when roles were removed.</p>
    #   @return [Array<Types::BatchError>]
    class BatchRemoveChannelRoleFromAccessorsOutput < Struct.new(
      nil,
      :removed_accessor_ids,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_id
    #   <p>The unique ID of the private re:Post.</p>
    #   @return [String]
    # @!attribute accessor_ids
    #   <p>The user or group accessor identifiers to remove the role from.</p>
    #   @return [Array<String>]
    # @!attribute role
    #   <p>The role to remove from the users or groups.</p>
    #   @return [String]
    class BatchRemoveRoleInput < Struct.new(
      nil,
      :space_id,
      :accessor_ids,
      :role,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute removed_accessor_ids
    #   <p>An array of successfully updated accessor identifiers.</p>
    #   @return [Array<String>]
    # @!attribute errors
    #   <p>An array of errors that occurred when roles were removed.</p>
    #   @return [Array<Types::BatchError>]
    class BatchRemoveRoleOutput < Struct.new(
      nil,
      :removed_accessor_ids,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains some information about a channel in a private re:Post.</p>
    # @!attribute space_id
    #   <p>The unique ID of the private re:Post.</p>
    #   @return [String]
    # @!attribute channel_id
    #   <p>The unique ID of the private re:Post channel.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name for the channel. This must be unique per private re:Post.</p>
    #   @return [String]
    # @!attribute channel_description
    #   <p>A description for the channel. This is used only to help you identify this channel.</p>
    #   @return [String]
    # @!attribute create_date_time
    #   <p>The date when the channel was created.</p>
    #   @return [Time]
    # @!attribute delete_date_time
    #   <p>The date when the channel was deleted.</p>
    #   @return [Time]
    # @!attribute channel_status
    #   <p>The status pf the channel.</p>
    #   @return [String]
    # @!attribute user_count
    #   <p>The number of users that are part of the channel.</p>
    #   @return [Integer]
    # @!attribute group_count
    #   <p>The number of groups that are part of the channel.</p>
    #   @return [Integer]
    class ChannelData < Struct.new(
      nil,
      :space_id,
      :channel_id,
      :channel_name,
      :channel_description,
      :create_date_time,
      :delete_date_time,
      :channel_status,
      :user_count,
      :group_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Updating or deleting a resource can cause an inconsistent state.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_id
    #   <p>The unique ID of the private re:Post.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name for the channel. This must be unique per private re:Post.</p>
    #   @return [String]
    # @!attribute channel_description
    #   <p>A description for the channel. This is used only to help you identify this channel.</p>
    #   @return [String]
    class CreateChannelInput < Struct.new(
      nil,
      :space_id,
      :channel_name,
      :channel_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_id
    #   <p>The unique ID of the private re:Post channel.</p>
    #   @return [String]
    class CreateChannelOutput < Struct.new(
      nil,
      :channel_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name for the private re:Post. This must be unique in your account.</p>
    #   @return [String]
    # @!attribute subdomain
    #   <p>The subdomain that you use to access your AWS re:Post Private private re:Post. All custom subdomains must be approved by AWS before use. In addition to your custom subdomain, all private re:Posts are issued an AWS generated subdomain for immediate use.</p>
    #   @return [String]
    # @!attribute tier
    #   <p>The pricing tier for the private re:Post.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the private re:Post. This is used only to help you identify this private re:Post.</p>
    #   @return [String]
    # @!attribute user_kms_key
    #   <p>The AWS KMS key ARN that’s used for the AWS KMS encryption. If you don't provide a key, your data is encrypted by default with a key that AWS owns and manages for you.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of tags associated with the private re:Post.</p>
    #   @return [Hash<String, String>]
    # @!attribute role_arn
    #   <p>The IAM role that grants permissions to the private re:Post to convert unanswered questions into AWS support tickets.</p>
    #   @return [String]
    # @!attribute supported_email_domains
    #   <p/>
    #   @return [Types::SupportedEmailDomainsParameters]
    class CreateSpaceInput < Struct.new(
      nil,
      :name,
      :subdomain,
      :tier,
      :description,
      :user_kms_key,
      :tags,
      :role_arn,
      :supported_email_domains,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_id
    #   <p>The unique ID of the private re:Post.</p>
    #   @return [String]
    class CreateSpaceOutput < Struct.new(
      nil,
      :space_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_id
    #   <p>The unique ID of the private re:Post.</p>
    #   @return [String]
    class DeleteSpaceInput < Struct.new(
      nil,
      :space_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_id
    #   <p>The ID of the private re:Post to remove the admin from.</p>
    #   @return [String]
    # @!attribute admin_id
    #   <p>The ID of the admin to remove.</p>
    #   @return [String]
    class DeregisterAdminInput < Struct.new(
      nil,
      :space_id,
      :admin_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_id
    #   <p>The unique ID of the private re:Post.</p>
    #   @return [String]
    # @!attribute channel_id
    #   <p>The unique ID of the private re:Post channel.</p>
    #   @return [String]
    class GetChannelInput < Struct.new(
      nil,
      :space_id,
      :channel_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_id
    #   <p>The unique ID of the private re:Post.</p>
    #   @return [String]
    # @!attribute channel_id
    #   <p>The unique ID of the private re:Post channel.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name for the channel. This must be unique per private re:Post.</p>
    #   @return [String]
    # @!attribute channel_description
    #   <p>A description for the channel. This is used only to help you identify this channel.</p>
    #   @return [String]
    # @!attribute create_date_time
    #   <p>The date when the channel was created.</p>
    #   @return [Time]
    # @!attribute delete_date_time
    #   <p>The date when the channel was deleted.</p>
    #   @return [Time]
    # @!attribute channel_roles
    #   <p>The channel roles associated to the users and groups of the channel.</p>
    #   @return [Hash<String, Array<String>>]
    # @!attribute channel_status
    #   <p>The status pf the channel.</p>
    #   @return [String]
    class GetChannelOutput < Struct.new(
      nil,
      :space_id,
      :channel_id,
      :channel_name,
      :channel_description,
      :create_date_time,
      :delete_date_time,
      :channel_roles,
      :channel_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_id
    #   <p>The ID of the private re:Post.</p>
    #   @return [String]
    class GetSpaceInput < Struct.new(
      nil,
      :space_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_id
    #   <p>The unique ID of the private re:Post.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the private re:Post.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the private re:Post.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The creation or deletion status of the private re:Post.</p>
    #   @return [String]
    # @!attribute configuration_status
    #   <p>The configuration status of the private re:Post.</p>
    #   @return [String]
    # @!attribute client_id
    #   <p>The Identity Center identifier for the Application Instance.</p>
    #   @return [String]
    # @!attribute identity_store_id
    #   <p/>
    #   @return [String]
    # @!attribute application_arn
    #   <p/>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the private re:Post.</p>
    #   @return [String]
    # @!attribute vanity_domain_status
    #   <p>The approval status of the custom subdomain.</p>
    #   @return [String]
    # @!attribute vanity_domain
    #   <p>The custom subdomain that you use to access your private re:Post. All custom subdomains must be approved by AWS before use.</p>
    #   @return [String]
    # @!attribute random_domain
    #   <p>The AWS generated subdomain of the private re:Post</p>
    #   @return [String]
    # @!attribute customer_role_arn
    #   <p>The IAM role that grants permissions to the private re:Post to convert unanswered questions into AWS support tickets.</p>
    #   @return [String]
    # @!attribute create_date_time
    #   <p>The date when the private re:Post was created.</p>
    #   @return [Time]
    # @!attribute delete_date_time
    #   <p>The date when the private re:Post was deleted.</p>
    #   @return [Time]
    # @!attribute tier
    #   <p>The pricing tier of the private re:Post.</p>
    #   @return [String]
    # @!attribute storage_limit
    #   <p>The storage limit of the private re:Post.</p>
    #   @return [Integer]
    # @!attribute user_admins
    #   <p>The list of users that are administrators of the private re:Post.</p>
    #   @deprecated
    #     This property has been depracted and will be replaced by the roles property.
    #   @return [Array<String>]
    # @!attribute group_admins
    #   <p>The list of groups that are administrators of the private re:Post.</p>
    #   @deprecated
    #     This property has been depracted and will be replaced by the roles property.
    #   @return [Array<String>]
    # @!attribute roles
    #   <p>A map of accessor identifiers and their roles.</p>
    #   @return [Hash<String, Array<String>>]
    # @!attribute user_kms_key
    #   <p>The custom AWS KMS key ARN that’s used for the AWS KMS encryption.</p>
    #   @return [String]
    # @!attribute user_count
    #   <p>The number of users that have onboarded to the private re:Post.</p>
    #   @return [Integer]
    # @!attribute content_size
    #   <p>The content size of the private re:Post.</p>
    #   @return [Integer]
    # @!attribute supported_email_domains
    #   <p/>
    #   @return [Types::SupportedEmailDomainsStatus]
    class GetSpaceOutput < Struct.new(
      nil,
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
      :supported_email_domains,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Unexpected error during processing of request.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>Advice to clients on when the call can be safely retried.</p>
    #   @return [Integer]
    class InternalServerException < Struct.new(
      nil,
      :message,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_id
    #   <p>The unique ID of the private re:Post.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of channel to return. You receive this token from a previous ListChannels operation.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of channels to include in the results.</p>
    #   @return [Integer]
    class ListChannelsInput < Struct.new(
      nil,
      :space_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute channels
    #   <p>An array of structures that contain some information about the channels in the private re:Post.</p>
    #   @return [Array<Types::ChannelData>]
    # @!attribute next_token
    #   <p>The token that you use when you request the next set of channels.</p>
    #   @return [String]
    class ListChannelsOutput < Struct.new(
      nil,
      :channels,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of private re:Posts to return. You receive this token from a previous ListSpaces operation.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of private re:Posts to include in the results.</p>
    #   @return [Integer]
    class ListSpacesInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute spaces
    #   <p>An array of structures that contain some information about the private re:Posts in the account.</p>
    #   @return [Array<Types::SpaceData>]
    # @!attribute next_token
    #   <p>The token that you use when you request the next set of private re:Posts.</p>
    #   @return [String]
    class ListSpacesOutput < Struct.new(
      nil,
      :spaces,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource that the tags are associated with.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The list of tags that are associated with the resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_id
    #   <p>The ID of the private re:Post.</p>
    #   @return [String]
    # @!attribute admin_id
    #   <p>The ID of the administrator.</p>
    #   @return [String]
    class RegisterAdminInput < Struct.new(
      nil,
      :space_id,
      :admin_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request references a resource which does not exist.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_id
    #   <p>The ID of the private re:Post.</p>
    #   @return [String]
    # @!attribute accessor_ids
    #   <p>The array of identifiers for the users and groups.</p>
    #   @return [Array<String>]
    # @!attribute title
    #   <p>The title of the invite.</p>
    #   @return [String]
    # @!attribute body
    #   <p>The body of the invite.</p>
    #   @return [String]
    class SendInvitesInput < Struct.new(
      nil,
      :space_id,
      :accessor_ids,
      :title,
      :body,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request would cause a service quota to be exceeded.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The id of the resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The code to identify the service.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The code to identify the quota.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure that contains some information about a private re:Post in the account.</p>
    # @!attribute space_id
    #   <p>The unique ID of the private re:Post.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the private re:Post.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name for the private re:Post.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for the private re:Post. This is used only to help you identify this private re:Post.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The creation/deletion status of the private re:Post.</p>
    #   @return [String]
    # @!attribute configuration_status
    #   <p>The configuration status of the private re:Post.</p>
    #   @return [String]
    # @!attribute vanity_domain_status
    #   <p>This approval status of the custom subdomain.</p>
    #   @return [String]
    # @!attribute vanity_domain
    #   <p>This custom subdomain that you use to access your private re:Post. All custom subdomains must be approved by AWS before use.</p>
    #   @return [String]
    # @!attribute random_domain
    #   <p>The AWS generated subdomain of the private re:Post.</p>
    #   @return [String]
    # @!attribute tier
    #   <p>The pricing tier of the private re:Post.</p>
    #   @return [String]
    # @!attribute storage_limit
    #   <p>The storage limit of the private re:Post.</p>
    #   @return [Integer]
    # @!attribute create_date_time
    #   <p>The date when the private re:Post was created.</p>
    #   @return [Time]
    # @!attribute delete_date_time
    #   <p>The date when the private re:Post was deleted.</p>
    #   @return [Time]
    # @!attribute user_kms_key
    #   <p>The custom AWS KMS key ARN that’s used for the AWS KMS encryption.</p>
    #   @return [String]
    # @!attribute user_count
    #   <p>The number of onboarded users to the private re:Post.</p>
    #   @return [Integer]
    # @!attribute content_size
    #   <p>The content size of the private re:Post.</p>
    #   @return [Integer]
    # @!attribute supported_email_domains
    #   <p/>
    #   @return [Types::SupportedEmailDomainsStatus]
    class SpaceData < Struct.new(
      nil,
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
      :supported_email_domains,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p/>
    # @!attribute enabled
    #   <p/>
    #   @return [String]
    # @!attribute allowed_domains
    #   <p/>
    #   @return [Array<String>]
    class SupportedEmailDomainsParameters < Struct.new(
      nil,
      :enabled,
      :allowed_domains,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p/>
    # @!attribute enabled
    #   <p/>
    #   @return [String]
    # @!attribute allowed_domains
    #   <p/>
    #   @return [Array<String>]
    class SupportedEmailDomainsStatus < Struct.new(
      nil,
      :enabled,
      :allowed_domains,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource that the tag is associated with.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of tag keys and values that must be associated with the resource. You can associate tag keys only, tags (key and values) only, or a combination of tag keys and tags.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request was denied due to request throttling.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute service_code
    #   <p>The code to identify the service.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The code to identify the quota.</p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p> Advice to clients on when the call can be safely retried.</p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The key values of the tag.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_id
    #   <p>The unique ID of the private re:Post.</p>
    #   @return [String]
    # @!attribute channel_id
    #   <p>The unique ID of the private re:Post channel.</p>
    #   @return [String]
    # @!attribute channel_name
    #   <p>The name for the channel. This must be unique per private re:Post.</p>
    #   @return [String]
    # @!attribute channel_description
    #   <p>A description for the channel. This is used only to help you identify this channel.</p>
    #   @return [String]
    class UpdateChannelInput < Struct.new(
      nil,
      :space_id,
      :channel_id,
      :channel_name,
      :channel_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateChannelOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute space_id
    #   <p>The unique ID of this private re:Post.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the private re:Post. This is used only to help you identify this private re:Post.</p>
    #   @return [String]
    # @!attribute tier
    #   <p>The pricing tier of this private re:Post.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The IAM role that grants permissions to the private re:Post to convert unanswered questions into AWS support tickets.</p>
    #   @return [String]
    # @!attribute supported_email_domains
    #   <p/>
    #   @return [Types::SupportedEmailDomainsParameters]
    class UpdateSpaceInput < Struct.new(
      nil,
      :space_id,
      :description,
      :tier,
      :role_arn,
      :supported_email_domains,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by an AWS service.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason why the request failed validation.</p>
    #   @return [String]
    # @!attribute field_list
    #   <p>The field that caused the error, if applicable.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      nil,
      :message,
      :reason,
      :field_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Stores information about a field that’s passed inside a request that resulted in an exception.</p>
    # @!attribute name
    #   <p>Message describing why the field failed validation.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The name of the field.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
