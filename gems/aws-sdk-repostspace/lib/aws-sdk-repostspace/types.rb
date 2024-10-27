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

    # @!attribute [rw] accessor_ids
    #   The user or group accessor identifiers to add the role to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] role
    #   The role to add to the users or groups.
    #   @return [String]
    #
    # @!attribute [rw] space_id
    #   The unique ID of the private re:Post.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/BatchAddRoleInput AWS API Documentation
    #
    class BatchAddRoleInput < Struct.new(
      :accessor_ids,
      :role,
      :space_id)
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

    # @!attribute [rw] accessor_ids
    #   The user or group accessor identifiers to remove the role from.
    #   @return [Array<String>]
    #
    # @!attribute [rw] role
    #   The role to remove from the users or groups.
    #   @return [String]
    #
    # @!attribute [rw] space_id
    #   The unique ID of the private re:Post.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/BatchRemoveRoleInput AWS API Documentation
    #
    class BatchRemoveRoleInput < Struct.new(
      :accessor_ids,
      :role,
      :space_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   An array of errors that occurred when roles were removed.
    #   @return [Array<Types::BatchError>]
    #
    # @!attribute [rw] removed_accessor_ids
    #   An array of successfully updated accessor identifiers.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/BatchRemoveRoleOutput AWS API Documentation
    #
    class BatchRemoveRoleOutput < Struct.new(
      :errors,
      :removed_accessor_ids)
      SENSITIVE = []
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

    # @!attribute [rw] description
    #   A description for the private re:Post. This is used only to help you
    #   identify this private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name for the private re:Post. This must be unique in your
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The IAM role that grants permissions to the private re:Post to
    #   convert unanswered questions into AWS support tickets.
    #   @return [String]
    #
    # @!attribute [rw] subdomain
    #   The subdomain that you use to access your AWS re:Post Private
    #   private re:Post. All custom subdomains must be approved by AWS
    #   before use. In addition to your custom subdomain, all private
    #   re:Posts are issued an AWS generated subdomain for immediate use.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tags associated with the private re:Post.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tier
    #   The pricing tier for the private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] user_kms_key
    #   The AWS KMS key ARN that’s used for the AWS KMS encryption. If you
    #   don't provide a key, your data is encrypted by default with a key
    #   that AWS owns and manages for you.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/CreateSpaceInput AWS API Documentation
    #
    class CreateSpaceInput < Struct.new(
      :description,
      :name,
      :role_arn,
      :subdomain,
      :tags,
      :tier,
      :user_kms_key)
      SENSITIVE = [:description, :name, :tags]
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

    # @!attribute [rw] admin_id
    #   The ID of the admin to remove.
    #   @return [String]
    #
    # @!attribute [rw] space_id
    #   The ID of the private re:Post to remove the admin from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/DeregisterAdminInput AWS API Documentation
    #
    class DeregisterAdminInput < Struct.new(
      :admin_id,
      :space_id)
      SENSITIVE = []
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

    # @!attribute [rw] arn
    #   The ARN of the private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The Identity Center identifier for the Application Instance.
    #   @return [String]
    #
    # @!attribute [rw] configuration_status
    #   The configuration status of the private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] content_size
    #   The content size of the private re:Post.
    #   @return [Integer]
    #
    # @!attribute [rw] create_date_time
    #   The date when the private re:Post was created.
    #   @return [Time]
    #
    # @!attribute [rw] customer_role_arn
    #   The IAM role that grants permissions to the private re:Post to
    #   convert unanswered questions into AWS support tickets.
    #   @return [String]
    #
    # @!attribute [rw] delete_date_time
    #   The date when the private re:Post was deleted.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] group_admins
    #   The list of groups that are administrators of the private re:Post.
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   The name of the private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] random_domain
    #   The AWS generated subdomain of the private re:Post
    #   @return [String]
    #
    # @!attribute [rw] roles
    #   A map of accessor identifiers and their roles.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] space_id
    #   The unique ID of the private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The creation or deletion status of the private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] storage_limit
    #   The storage limit of the private re:Post.
    #   @return [Integer]
    #
    # @!attribute [rw] tier
    #   The pricing tier of the private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] user_admins
    #   The list of users that are administrators of the private re:Post.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_count
    #   The number of users that have onboarded to the private re:Post.
    #   @return [Integer]
    #
    # @!attribute [rw] user_kms_key
    #   The custom AWS KMS key ARN that’s used for the AWS KMS encryption.
    #   @return [String]
    #
    # @!attribute [rw] vanity_domain
    #   The custom subdomain that you use to access your private re:Post.
    #   All custom subdomains must be approved by AWS before use.
    #   @return [String]
    #
    # @!attribute [rw] vanity_domain_status
    #   The approval status of the custom subdomain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/GetSpaceOutput AWS API Documentation
    #
    class GetSpaceOutput < Struct.new(
      :arn,
      :client_id,
      :configuration_status,
      :content_size,
      :create_date_time,
      :customer_role_arn,
      :delete_date_time,
      :description,
      :group_admins,
      :name,
      :random_domain,
      :roles,
      :space_id,
      :status,
      :storage_limit,
      :tier,
      :user_admins,
      :user_count,
      :user_kms_key,
      :vanity_domain,
      :vanity_domain_status)
      SENSITIVE = [:description, :name]
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

    # @!attribute [rw] max_results
    #   The maximum number of private re:Posts to include in the results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of private re:Posts to return. You
    #   receive this token from a previous ListSpaces operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/ListSpacesInput AWS API Documentation
    #
    class ListSpacesInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token that you use when you request the next set of private
    #   re:Posts.
    #   @return [String]
    #
    # @!attribute [rw] spaces
    #   An array of structures that contain some information about the
    #   private re:Posts in the account.
    #   @return [Array<Types::SpaceData>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/ListSpacesOutput AWS API Documentation
    #
    class ListSpacesOutput < Struct.new(
      :next_token,
      :spaces)
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

    # @!attribute [rw] admin_id
    #   The ID of the administrator.
    #   @return [String]
    #
    # @!attribute [rw] space_id
    #   The ID of the private re:Post.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/RegisterAdminInput AWS API Documentation
    #
    class RegisterAdminInput < Struct.new(
      :admin_id,
      :space_id)
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

    # @!attribute [rw] accessor_ids
    #   The array of identifiers for the users and groups.
    #   @return [Array<String>]
    #
    # @!attribute [rw] body
    #   The body of the invite.
    #   @return [String]
    #
    # @!attribute [rw] space_id
    #   The ID of the private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the invite.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/SendInvitesInput AWS API Documentation
    #
    class SendInvitesInput < Struct.new(
      :accessor_ids,
      :body,
      :space_id,
      :title)
      SENSITIVE = [:body, :title]
      include Aws::Structure
    end

    # Request would cause a service quota to be exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The code to identify the quota.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :quota_code,
      :resource_id,
      :resource_type,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure that contains some information about a private re:Post in
    # the account.
    #
    # @!attribute [rw] arn
    #   The ARN of the private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] configuration_status
    #   The configuration status of the private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] content_size
    #   The content size of the private re:Post.
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
    # @!attribute [rw] description
    #   The description for the private re:Post. This is used only to help
    #   you identify this private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name for the private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] random_domain
    #   The AWS generated subdomain of the private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] space_id
    #   The unique ID of the private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The creation/deletion status of the private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] storage_limit
    #   The storage limit of the private re:Post.
    #   @return [Integer]
    #
    # @!attribute [rw] tier
    #   The pricing tier of the private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] user_count
    #   The number of onboarded users to the private re:Post.
    #   @return [Integer]
    #
    # @!attribute [rw] user_kms_key
    #   The custom AWS KMS key ARN that’s used for the AWS KMS encryption.
    #   @return [String]
    #
    # @!attribute [rw] vanity_domain
    #   This custom subdomain that you use to access your private re:Post.
    #   All custom subdomains must be approved by AWS before use.
    #   @return [String]
    #
    # @!attribute [rw] vanity_domain_status
    #   This approval status of the custom subdomain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/SpaceData AWS API Documentation
    #
    class SpaceData < Struct.new(
      :arn,
      :configuration_status,
      :content_size,
      :create_date_time,
      :delete_date_time,
      :description,
      :name,
      :random_domain,
      :space_id,
      :status,
      :storage_limit,
      :tier,
      :user_count,
      :user_kms_key,
      :vanity_domain,
      :vanity_domain_status)
      SENSITIVE = [:description, :name]
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
    # @!attribute [rw] quota_code
    #   The code to identify the quota.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   Advice to clients on when the call can be safely retried.
    #   @return [Integer]
    #
    # @!attribute [rw] service_code
    #   The code to identify the service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :quota_code,
      :retry_after_seconds,
      :service_code)
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

    # @!attribute [rw] description
    #   A description for the private re:Post. This is used only to help you
    #   identify this private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The IAM role that grants permissions to the private re:Post to
    #   convert unanswered questions into AWS support tickets.
    #   @return [String]
    #
    # @!attribute [rw] space_id
    #   The unique ID of this private re:Post.
    #   @return [String]
    #
    # @!attribute [rw] tier
    #   The pricing tier of this private re:Post.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/UpdateSpaceInput AWS API Documentation
    #
    class UpdateSpaceInput < Struct.new(
      :description,
      :role_arn,
      :space_id,
      :tier)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by an AWS
    # service.
    #
    # @!attribute [rw] field_list
    #   The field that caused the error, if applicable.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason why the request failed validation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :field_list,
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Stores information about a field that’s passed inside a request that
    # resulted in an exception.
    #
    # @!attribute [rw] message
    #   The name of the field.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Message describing why the field failed validation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/repostspace-2022-05-13/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :message,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

