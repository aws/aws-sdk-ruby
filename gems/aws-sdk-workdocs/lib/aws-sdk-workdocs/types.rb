# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::WorkDocs
  module Types

    # @!attribute [rw] authentication_token
    #   Amazon WorkDocs authentication token. Not required when using Amazon
    #   Web Services administrator credentials to access the API.
    #   @return [String]
    #
    # @!attribute [rw] document_id
    #   The ID of the document.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The ID of the version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/AbortDocumentVersionUploadRequest AWS API Documentation
    #
    class AbortDocumentVersionUploadRequest < Struct.new(
      :authentication_token,
      :document_id,
      :version_id)
      SENSITIVE = [:authentication_token]
      include Aws::Structure
    end

    # @!attribute [rw] user_id
    #   The ID of the user.
    #   @return [String]
    #
    # @!attribute [rw] authentication_token
    #   Amazon WorkDocs authentication token. Not required when using Amazon
    #   Web Services administrator credentials to access the API.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/ActivateUserRequest AWS API Documentation
    #
    class ActivateUserRequest < Struct.new(
      :user_id,
      :authentication_token)
      SENSITIVE = [:authentication_token]
      include Aws::Structure
    end

    # @!attribute [rw] user
    #   The user information.
    #   @return [Types::User]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/ActivateUserResponse AWS API Documentation
    #
    class ActivateUserResponse < Struct.new(
      :user)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the activity information.
    #
    # @!attribute [rw] type
    #   The activity type.
    #   @return [String]
    #
    # @!attribute [rw] time_stamp
    #   The timestamp when the action was performed.
    #   @return [Time]
    #
    # @!attribute [rw] is_indirect_activity
    #   Indicates whether an activity is indirect or direct. An indirect
    #   activity results from a direct activity performed on a parent
    #   resource. For example, sharing a parent folder (the direct activity)
    #   shares all of the subfolders and documents within the parent folder
    #   (the indirect activity).
    #   @return [Boolean]
    #
    # @!attribute [rw] organization_id
    #   The ID of the organization.
    #   @return [String]
    #
    # @!attribute [rw] initiator
    #   The user who performed the action.
    #   @return [Types::UserMetadata]
    #
    # @!attribute [rw] participants
    #   The list of users or groups impacted by this action. This is an
    #   optional field and is filled for the following sharing activities:
    #   DOCUMENT\_SHARED, DOCUMENT\_SHARED, DOCUMENT\_UNSHARED,
    #   FOLDER\_SHARED, FOLDER\_UNSHARED.
    #   @return [Types::Participants]
    #
    # @!attribute [rw] resource_metadata
    #   The metadata of the resource involved in the user action.
    #   @return [Types::ResourceMetadata]
    #
    # @!attribute [rw] original_parent
    #   The original parent of the resource. This is an optional field and
    #   is filled for move activities.
    #   @return [Types::ResourceMetadata]
    #
    # @!attribute [rw] comment_metadata
    #   Metadata of the commenting activity. This is an optional field and
    #   is filled for commenting activities.
    #   @return [Types::CommentMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/Activity AWS API Documentation
    #
    class Activity < Struct.new(
      :type,
      :time_stamp,
      :is_indirect_activity,
      :organization_id,
      :initiator,
      :participants,
      :resource_metadata,
      :original_parent,
      :comment_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authentication_token
    #   Amazon WorkDocs authentication token. Not required when using Amazon
    #   Web Services administrator credentials to access the API.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] principals
    #   The users, groups, or organization being granted permission.
    #   @return [Array<Types::SharePrincipal>]
    #
    # @!attribute [rw] notification_options
    #   The notification options.
    #   @return [Types::NotificationOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/AddResourcePermissionsRequest AWS API Documentation
    #
    class AddResourcePermissionsRequest < Struct.new(
      :authentication_token,
      :resource_id,
      :principals,
      :notification_options)
      SENSITIVE = [:authentication_token]
      include Aws::Structure
    end

    # @!attribute [rw] share_results
    #   The share results.
    #   @return [Array<Types::ShareResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/AddResourcePermissionsResponse AWS API Documentation
    #
    class AddResourcePermissionsResponse < Struct.new(
      :share_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a comment.
    #
    # @!attribute [rw] comment_id
    #   The ID of the comment.
    #   @return [String]
    #
    # @!attribute [rw] parent_id
    #   The ID of the parent comment.
    #   @return [String]
    #
    # @!attribute [rw] thread_id
    #   The ID of the root comment in the thread.
    #   @return [String]
    #
    # @!attribute [rw] text
    #   The text of the comment.
    #   @return [String]
    #
    # @!attribute [rw] contributor
    #   The details of the user who made the comment.
    #   @return [Types::User]
    #
    # @!attribute [rw] created_timestamp
    #   The time that the comment was created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the comment.
    #   @return [String]
    #
    # @!attribute [rw] visibility
    #   The visibility of the comment. Options are either PRIVATE, where the
    #   comment is visible only to the comment author and document owner and
    #   co-owners, or PUBLIC, where the comment is visible to document
    #   owners, co-owners, and contributors.
    #   @return [String]
    #
    # @!attribute [rw] recipient_id
    #   If the comment is a reply to another user's comment, this field
    #   contains the user ID of the user being replied to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/Comment AWS API Documentation
    #
    class Comment < Struct.new(
      :comment_id,
      :parent_id,
      :thread_id,
      :text,
      :contributor,
      :created_timestamp,
      :status,
      :visibility,
      :recipient_id)
      SENSITIVE = [:text]
      include Aws::Structure
    end

    # Describes the metadata of a comment.
    #
    # @!attribute [rw] comment_id
    #   The ID of the comment.
    #   @return [String]
    #
    # @!attribute [rw] contributor
    #   The user who made the comment.
    #   @return [Types::User]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp that the comment was created.
    #   @return [Time]
    #
    # @!attribute [rw] comment_status
    #   The status of the comment.
    #   @return [String]
    #
    # @!attribute [rw] recipient_id
    #   The ID of the user being replied to.
    #   @return [String]
    #
    # @!attribute [rw] contributor_id
    #   The ID of the user who made the comment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/CommentMetadata AWS API Documentation
    #
    class CommentMetadata < Struct.new(
      :comment_id,
      :contributor,
      :created_timestamp,
      :comment_status,
      :recipient_id,
      :contributor_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource hierarchy is changing.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/ConcurrentModificationException AWS API Documentation
    #
    class ConcurrentModificationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Another operation is in progress on the resource that conflicts with
    # the current operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/ConflictingOperationException AWS API Documentation
    #
    class ConflictingOperationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authentication_token
    #   Amazon WorkDocs authentication token. Not required when using Amazon
    #   Web Services administrator credentials to access the API.
    #   @return [String]
    #
    # @!attribute [rw] document_id
    #   The ID of the document.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The ID of the document version.
    #   @return [String]
    #
    # @!attribute [rw] parent_id
    #   The ID of the parent comment.
    #   @return [String]
    #
    # @!attribute [rw] thread_id
    #   The ID of the root comment in the thread.
    #   @return [String]
    #
    # @!attribute [rw] text
    #   The text of the comment.
    #   @return [String]
    #
    # @!attribute [rw] visibility
    #   The visibility of the comment. Options are either PRIVATE, where the
    #   comment is visible only to the comment author and document owner and
    #   co-owners, or PUBLIC, where the comment is visible to document
    #   owners, co-owners, and contributors.
    #   @return [String]
    #
    # @!attribute [rw] notify_collaborators
    #   Set this parameter to TRUE to send an email out to the document
    #   collaborators after the comment is created.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/CreateCommentRequest AWS API Documentation
    #
    class CreateCommentRequest < Struct.new(
      :authentication_token,
      :document_id,
      :version_id,
      :parent_id,
      :thread_id,
      :text,
      :visibility,
      :notify_collaborators)
      SENSITIVE = [:authentication_token, :text]
      include Aws::Structure
    end

    # @!attribute [rw] comment
    #   The comment that has been created.
    #   @return [Types::Comment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/CreateCommentResponse AWS API Documentation
    #
    class CreateCommentResponse < Struct.new(
      :comment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authentication_token
    #   Amazon WorkDocs authentication token. Not required when using Amazon
    #   Web Services administrator credentials to access the API.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The ID of the version, if the custom metadata is being added to a
    #   document version.
    #   @return [String]
    #
    # @!attribute [rw] custom_metadata
    #   Custom metadata in the form of name-value pairs.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/CreateCustomMetadataRequest AWS API Documentation
    #
    class CreateCustomMetadataRequest < Struct.new(
      :authentication_token,
      :resource_id,
      :version_id,
      :custom_metadata)
      SENSITIVE = [:authentication_token]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/CreateCustomMetadataResponse AWS API Documentation
    #
    class CreateCustomMetadataResponse < Aws::EmptyStructure; end

    # @!attribute [rw] authentication_token
    #   Amazon WorkDocs authentication token. Not required when using Amazon
    #   Web Services administrator credentials to access the API.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the new folder.
    #   @return [String]
    #
    # @!attribute [rw] parent_folder_id
    #   The ID of the parent folder.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/CreateFolderRequest AWS API Documentation
    #
    class CreateFolderRequest < Struct.new(
      :authentication_token,
      :name,
      :parent_folder_id)
      SENSITIVE = [:authentication_token, :name]
      include Aws::Structure
    end

    # @!attribute [rw] metadata
    #   The metadata of the folder.
    #   @return [Types::FolderMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/CreateFolderResponse AWS API Documentation
    #
    class CreateFolderResponse < Struct.new(
      :metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_id
    #   The ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] labels
    #   List of labels to add to the resource.
    #   @return [Array<String>]
    #
    # @!attribute [rw] authentication_token
    #   Amazon WorkDocs authentication token. Not required when using Amazon
    #   Web Services administrator credentials to access the API.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/CreateLabelsRequest AWS API Documentation
    #
    class CreateLabelsRequest < Struct.new(
      :resource_id,
      :labels,
      :authentication_token)
      SENSITIVE = [:authentication_token]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/CreateLabelsResponse AWS API Documentation
    #
    class CreateLabelsResponse < Aws::EmptyStructure; end

    # @!attribute [rw] organization_id
    #   The ID of the organization.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The endpoint to receive the notifications. If the protocol is HTTPS,
    #   the endpoint is a URL that begins with `https`.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The protocol to use. The supported value is https, which delivers
    #   JSON-encoded messages using HTTPS POST.
    #   @return [String]
    #
    # @!attribute [rw] subscription_type
    #   The notification type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/CreateNotificationSubscriptionRequest AWS API Documentation
    #
    class CreateNotificationSubscriptionRequest < Struct.new(
      :organization_id,
      :endpoint,
      :protocol,
      :subscription_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscription
    #   The subscription.
    #   @return [Types::Subscription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/CreateNotificationSubscriptionResponse AWS API Documentation
    #
    class CreateNotificationSubscriptionResponse < Struct.new(
      :subscription)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] organization_id
    #   The ID of the organization.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The login name of the user.
    #   @return [String]
    #
    # @!attribute [rw] email_address
    #   The email address of the user.
    #   @return [String]
    #
    # @!attribute [rw] given_name
    #   The given name of the user.
    #   @return [String]
    #
    # @!attribute [rw] surname
    #   The surname of the user.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password of the user.
    #   @return [String]
    #
    # @!attribute [rw] time_zone_id
    #   The time zone ID of the user.
    #   @return [String]
    #
    # @!attribute [rw] storage_rule
    #   The amount of storage for the user.
    #   @return [Types::StorageRuleType]
    #
    # @!attribute [rw] authentication_token
    #   Amazon WorkDocs authentication token. Not required when using Amazon
    #   Web Services administrator credentials to access the API.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/CreateUserRequest AWS API Documentation
    #
    class CreateUserRequest < Struct.new(
      :organization_id,
      :username,
      :email_address,
      :given_name,
      :surname,
      :password,
      :time_zone_id,
      :storage_rule,
      :authentication_token)
      SENSITIVE = [:username, :email_address, :given_name, :surname, :password, :authentication_token]
      include Aws::Structure
    end

    # @!attribute [rw] user
    #   The user information.
    #   @return [Types::User]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/CreateUserResponse AWS API Documentation
    #
    class CreateUserResponse < Struct.new(
      :user)
      SENSITIVE = []
      include Aws::Structure
    end

    # The limit has been reached on the number of custom properties for the
    # specified resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/CustomMetadataLimitExceededException AWS API Documentation
    #
    class CustomMetadataLimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters results based on timestamp range (in epochs).
    #
    # @!attribute [rw] start_value
    #   Timestamp range start value (in epochs)
    #   @return [Time]
    #
    # @!attribute [rw] end_value
    #   Timestamp range end value (in epochs).
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DateRangeType AWS API Documentation
    #
    class DateRangeType < Struct.new(
      :start_value,
      :end_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_id
    #   The ID of the user.
    #   @return [String]
    #
    # @!attribute [rw] authentication_token
    #   Amazon WorkDocs authentication token. Not required when using Amazon
    #   Web Services administrator credentials to access the API.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DeactivateUserRequest AWS API Documentation
    #
    class DeactivateUserRequest < Struct.new(
      :user_id,
      :authentication_token)
      SENSITIVE = [:authentication_token]
      include Aws::Structure
    end

    # The last user in the organization is being deactivated.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DeactivatingLastSystemUserException AWS API Documentation
    #
    class DeactivatingLastSystemUserException < Aws::EmptyStructure; end

    # @!attribute [rw] authentication_token
    #   Amazon WorkDocs authentication token. Not required when using Amazon
    #   Web Services administrator credentials to access the API.
    #   @return [String]
    #
    # @!attribute [rw] document_id
    #   The ID of the document.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The ID of the document version.
    #   @return [String]
    #
    # @!attribute [rw] comment_id
    #   The ID of the comment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DeleteCommentRequest AWS API Documentation
    #
    class DeleteCommentRequest < Struct.new(
      :authentication_token,
      :document_id,
      :version_id,
      :comment_id)
      SENSITIVE = [:authentication_token]
      include Aws::Structure
    end

    # @!attribute [rw] authentication_token
    #   Amazon WorkDocs authentication token. Not required when using Amazon
    #   Web Services administrator credentials to access the API.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource, either a document or folder.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The ID of the version, if the custom metadata is being deleted from
    #   a document version.
    #   @return [String]
    #
    # @!attribute [rw] keys
    #   List of properties to remove.
    #   @return [Array<String>]
    #
    # @!attribute [rw] delete_all
    #   Flag to indicate removal of all custom metadata properties from the
    #   specified resource.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DeleteCustomMetadataRequest AWS API Documentation
    #
    class DeleteCustomMetadataRequest < Struct.new(
      :authentication_token,
      :resource_id,
      :version_id,
      :keys,
      :delete_all)
      SENSITIVE = [:authentication_token]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DeleteCustomMetadataResponse AWS API Documentation
    #
    class DeleteCustomMetadataResponse < Aws::EmptyStructure; end

    # @!attribute [rw] authentication_token
    #   Amazon WorkDocs authentication token. Not required when using Amazon
    #   Web Services administrator credentials to access the API.
    #   @return [String]
    #
    # @!attribute [rw] document_id
    #   The ID of the document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DeleteDocumentRequest AWS API Documentation
    #
    class DeleteDocumentRequest < Struct.new(
      :authentication_token,
      :document_id)
      SENSITIVE = [:authentication_token]
      include Aws::Structure
    end

    # @!attribute [rw] authentication_token
    #   Amazon WorkDocs authentication token. Not required when using Amazon
    #   Web Services administrator credentials to access the API.
    #   @return [String]
    #
    # @!attribute [rw] document_id
    #   The ID of the document associated with the version being deleted.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The ID of the version being deleted.
    #   @return [String]
    #
    # @!attribute [rw] delete_prior_versions
    #   Deletes all versions of a document prior to the current version.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DeleteDocumentVersionRequest AWS API Documentation
    #
    class DeleteDocumentVersionRequest < Struct.new(
      :authentication_token,
      :document_id,
      :version_id,
      :delete_prior_versions)
      SENSITIVE = [:authentication_token]
      include Aws::Structure
    end

    # @!attribute [rw] authentication_token
    #   Amazon WorkDocs authentication token. Not required when using Amazon
    #   Web Services administrator credentials to access the API.
    #   @return [String]
    #
    # @!attribute [rw] folder_id
    #   The ID of the folder.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DeleteFolderContentsRequest AWS API Documentation
    #
    class DeleteFolderContentsRequest < Struct.new(
      :authentication_token,
      :folder_id)
      SENSITIVE = [:authentication_token]
      include Aws::Structure
    end

    # @!attribute [rw] authentication_token
    #   Amazon WorkDocs authentication token. Not required when using Amazon
    #   Web Services administrator credentials to access the API.
    #   @return [String]
    #
    # @!attribute [rw] folder_id
    #   The ID of the folder.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DeleteFolderRequest AWS API Documentation
    #
    class DeleteFolderRequest < Struct.new(
      :authentication_token,
      :folder_id)
      SENSITIVE = [:authentication_token]
      include Aws::Structure
    end

    # @!attribute [rw] resource_id
    #   The ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] authentication_token
    #   Amazon WorkDocs authentication token. Not required when using Amazon
    #   Web Services administrator credentials to access the API.
    #   @return [String]
    #
    # @!attribute [rw] labels
    #   List of labels to delete from the resource.
    #   @return [Array<String>]
    #
    # @!attribute [rw] delete_all
    #   Flag to request removal of all labels from the specified resource.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DeleteLabelsRequest AWS API Documentation
    #
    class DeleteLabelsRequest < Struct.new(
      :resource_id,
      :authentication_token,
      :labels,
      :delete_all)
      SENSITIVE = [:authentication_token]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DeleteLabelsResponse AWS API Documentation
    #
    class DeleteLabelsResponse < Aws::EmptyStructure; end

    # @!attribute [rw] subscription_id
    #   The ID of the subscription.
    #   @return [String]
    #
    # @!attribute [rw] organization_id
    #   The ID of the organization.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DeleteNotificationSubscriptionRequest AWS API Documentation
    #
    class DeleteNotificationSubscriptionRequest < Struct.new(
      :subscription_id,
      :organization_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authentication_token
    #   Amazon WorkDocs authentication token. Do not set this field when
    #   using administrative API actions, as in accessing the API using
    #   Amazon Web Services credentials.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The ID of the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DeleteUserRequest AWS API Documentation
    #
    class DeleteUserRequest < Struct.new(
      :authentication_token,
      :user_id)
      SENSITIVE = [:authentication_token]
      include Aws::Structure
    end

    # @!attribute [rw] authentication_token
    #   Amazon WorkDocs authentication token. Not required when using Amazon
    #   Web Services administrator credentials to access the API.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The timestamp that determines the starting time of the activities.
    #   The response includes the activities performed after the specified
    #   timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The timestamp that determines the end time of the activities. The
    #   response includes the activities performed before the specified
    #   timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] organization_id
    #   The ID of the organization. This is a mandatory parameter when using
    #   administrative API (SigV4) requests.
    #   @return [String]
    #
    # @!attribute [rw] activity_types
    #   Specifies which activity types to include in the response. If this
    #   field is left empty, all activity types are returned.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The document or folder ID for which to describe activity types.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The ID of the user who performed the action. The response includes
    #   activities pertaining to this user. This is an optional parameter
    #   and is only applicable for administrative API (SigV4) requests.
    #   @return [String]
    #
    # @!attribute [rw] include_indirect_activities
    #   Includes indirect activities. An indirect activity results from a
    #   direct activity performed on a parent resource. For example, sharing
    #   a parent folder (the direct activity) shares all of the subfolders
    #   and documents within the parent folder (the indirect activity).
    #   @return [Boolean]
    #
    # @!attribute [rw] limit
    #   The maximum number of items to return.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   The marker for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DescribeActivitiesRequest AWS API Documentation
    #
    class DescribeActivitiesRequest < Struct.new(
      :authentication_token,
      :start_time,
      :end_time,
      :organization_id,
      :activity_types,
      :resource_id,
      :user_id,
      :include_indirect_activities,
      :limit,
      :marker)
      SENSITIVE = [:authentication_token]
      include Aws::Structure
    end

    # @!attribute [rw] user_activities
    #   The list of activities for the specified user and time period.
    #   @return [Array<Types::Activity>]
    #
    # @!attribute [rw] marker
    #   The marker for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DescribeActivitiesResponse AWS API Documentation
    #
    class DescribeActivitiesResponse < Struct.new(
      :user_activities,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authentication_token
    #   Amazon WorkDocs authentication token. Not required when using Amazon
    #   Web Services administrator credentials to access the API.
    #   @return [String]
    #
    # @!attribute [rw] document_id
    #   The ID of the document.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The ID of the document version.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of items to return.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   The marker for the next set of results. This marker was received
    #   from a previous call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DescribeCommentsRequest AWS API Documentation
    #
    class DescribeCommentsRequest < Struct.new(
      :authentication_token,
      :document_id,
      :version_id,
      :limit,
      :marker)
      SENSITIVE = [:authentication_token]
      include Aws::Structure
    end

    # @!attribute [rw] comments
    #   The list of comments for the specified document version.
    #   @return [Array<Types::Comment>]
    #
    # @!attribute [rw] marker
    #   The marker for the next set of results. This marker was received
    #   from a previous call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DescribeCommentsResponse AWS API Documentation
    #
    class DescribeCommentsResponse < Struct.new(
      :comments,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authentication_token
    #   Amazon WorkDocs authentication token. Not required when using Amazon
    #   Web Services administrator credentials to access the API.
    #   @return [String]
    #
    # @!attribute [rw] document_id
    #   The ID of the document.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   The marker for the next set of results. (You received this marker
    #   from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of versions to return with this call.
    #   @return [Integer]
    #
    # @!attribute [rw] include
    #   A comma-separated list of values. Specify "INITIALIZED" to include
    #   incomplete versions.
    #   @return [String]
    #
    # @!attribute [rw] fields
    #   Specify "SOURCE" to include initialized versions and a URL for the
    #   source document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DescribeDocumentVersionsRequest AWS API Documentation
    #
    class DescribeDocumentVersionsRequest < Struct.new(
      :authentication_token,
      :document_id,
      :marker,
      :limit,
      :include,
      :fields)
      SENSITIVE = [:authentication_token]
      include Aws::Structure
    end

    # @!attribute [rw] document_versions
    #   The document versions.
    #   @return [Array<Types::DocumentVersionMetadata>]
    #
    # @!attribute [rw] marker
    #   The marker to use when requesting the next set of results. If there
    #   are no additional results, the string is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DescribeDocumentVersionsResponse AWS API Documentation
    #
    class DescribeDocumentVersionsResponse < Struct.new(
      :document_versions,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authentication_token
    #   Amazon WorkDocs authentication token. Not required when using Amazon
    #   Web Services administrator credentials to access the API.
    #   @return [String]
    #
    # @!attribute [rw] folder_id
    #   The ID of the folder.
    #   @return [String]
    #
    # @!attribute [rw] sort
    #   The sorting criteria.
    #   @return [String]
    #
    # @!attribute [rw] order
    #   The order for the contents of the folder.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of items to return with this call.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   The marker for the next set of results. This marker was received
    #   from a previous call.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of items.
    #   @return [String]
    #
    # @!attribute [rw] include
    #   The contents to include. Specify "INITIALIZED" to include
    #   initialized documents.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DescribeFolderContentsRequest AWS API Documentation
    #
    class DescribeFolderContentsRequest < Struct.new(
      :authentication_token,
      :folder_id,
      :sort,
      :order,
      :limit,
      :marker,
      :type,
      :include)
      SENSITIVE = [:authentication_token]
      include Aws::Structure
    end

    # @!attribute [rw] folders
    #   The subfolders in the specified folder.
    #   @return [Array<Types::FolderMetadata>]
    #
    # @!attribute [rw] documents
    #   The documents in the specified folder.
    #   @return [Array<Types::DocumentMetadata>]
    #
    # @!attribute [rw] marker
    #   The marker to use when requesting the next set of results. If there
    #   are no additional results, the string is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DescribeFolderContentsResponse AWS API Documentation
    #
    class DescribeFolderContentsResponse < Struct.new(
      :folders,
      :documents,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authentication_token
    #   Amazon WorkDocs authentication token. Not required when using Amazon
    #   Web Services administrator credentials to access the API.
    #   @return [String]
    #
    # @!attribute [rw] search_query
    #   A query to describe groups by group name.
    #   @return [String]
    #
    # @!attribute [rw] organization_id
    #   The ID of the organization.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   The marker for the next set of results. (You received this marker
    #   from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of items to return with this call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DescribeGroupsRequest AWS API Documentation
    #
    class DescribeGroupsRequest < Struct.new(
      :authentication_token,
      :search_query,
      :organization_id,
      :marker,
      :limit)
      SENSITIVE = [:authentication_token, :search_query]
      include Aws::Structure
    end

    # @!attribute [rw] groups
    #   The list of groups.
    #   @return [Array<Types::GroupMetadata>]
    #
    # @!attribute [rw] marker
    #   The marker to use when requesting the next set of results. If there
    #   are no additional results, the string is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DescribeGroupsResponse AWS API Documentation
    #
    class DescribeGroupsResponse < Struct.new(
      :groups,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] organization_id
    #   The ID of the organization.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   The marker for the next set of results. (You received this marker
    #   from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of items to return with this call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DescribeNotificationSubscriptionsRequest AWS API Documentation
    #
    class DescribeNotificationSubscriptionsRequest < Struct.new(
      :organization_id,
      :marker,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscriptions
    #   The subscriptions.
    #   @return [Array<Types::Subscription>]
    #
    # @!attribute [rw] marker
    #   The marker to use when requesting the next set of results. If there
    #   are no additional results, the string is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DescribeNotificationSubscriptionsResponse AWS API Documentation
    #
    class DescribeNotificationSubscriptionsResponse < Struct.new(
      :subscriptions,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authentication_token
    #   Amazon WorkDocs authentication token. Not required when using Amazon
    #   Web Services administrator credentials to access the API.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   The ID of the principal to filter permissions by.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of items to return with this call.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   The marker for the next set of results. (You received this marker
    #   from a previous call)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DescribeResourcePermissionsRequest AWS API Documentation
    #
    class DescribeResourcePermissionsRequest < Struct.new(
      :authentication_token,
      :resource_id,
      :principal_id,
      :limit,
      :marker)
      SENSITIVE = [:authentication_token]
      include Aws::Structure
    end

    # @!attribute [rw] principals
    #   The principals.
    #   @return [Array<Types::Principal>]
    #
    # @!attribute [rw] marker
    #   The marker to use when requesting the next set of results. If there
    #   are no additional results, the string is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DescribeResourcePermissionsResponse AWS API Documentation
    #
    class DescribeResourcePermissionsResponse < Struct.new(
      :principals,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authentication_token
    #   Amazon WorkDocs authentication token.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of items to return.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   The marker for the next set of results. (You received this marker
    #   from a previous call.)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DescribeRootFoldersRequest AWS API Documentation
    #
    class DescribeRootFoldersRequest < Struct.new(
      :authentication_token,
      :limit,
      :marker)
      SENSITIVE = [:authentication_token]
      include Aws::Structure
    end

    # @!attribute [rw] folders
    #   The user's special folders.
    #   @return [Array<Types::FolderMetadata>]
    #
    # @!attribute [rw] marker
    #   The marker for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DescribeRootFoldersResponse AWS API Documentation
    #
    class DescribeRootFoldersResponse < Struct.new(
      :folders,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authentication_token
    #   Amazon WorkDocs authentication token. Not required when using Amazon
    #   Web Services administrator credentials to access the API.
    #   @return [String]
    #
    # @!attribute [rw] organization_id
    #   The ID of the organization.
    #   @return [String]
    #
    # @!attribute [rw] user_ids
    #   The IDs of the users.
    #   @return [String]
    #
    # @!attribute [rw] query
    #   A query to filter users by user name. Remember the following about
    #   the `Userids` and `Query` parameters:
    #
    #   * If you don't use either parameter, the API returns a paginated
    #     list of all users on the site.
    #
    #   * If you use both parameters, the API ignores the `Query` parameter.
    #
    #   * The `Userid` parameter only returns user names that match a
    #     corresponding user ID.
    #
    #   * The `Query` parameter runs a "prefix" search for users by the
    #     `GivenName`, `SurName`, or `UserName` fields included in a
    #     [CreateUser][1] API call. For example, querying on `Ma` returns
    #     Márcia Oliveira, María García, and Mateo Jackson. If you use
    #     multiple characters, the API only returns data that matches all
    #     characters. For example, querying on `Ma J` only returns Mateo
    #     Jackson.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/workdocs/latest/APIReference/API_CreateUser.html
    #   @return [String]
    #
    # @!attribute [rw] include
    #   The state of the users. Specify "ALL" to include inactive users.
    #   @return [String]
    #
    # @!attribute [rw] order
    #   The order for the results.
    #   @return [String]
    #
    # @!attribute [rw] sort
    #   The sorting criteria.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   The marker for the next set of results. (You received this marker
    #   from a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of items to return.
    #   @return [Integer]
    #
    # @!attribute [rw] fields
    #   A comma-separated list of values. Specify "STORAGE\_METADATA" to
    #   include the user storage quota and utilization information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DescribeUsersRequest AWS API Documentation
    #
    class DescribeUsersRequest < Struct.new(
      :authentication_token,
      :organization_id,
      :user_ids,
      :query,
      :include,
      :order,
      :sort,
      :marker,
      :limit,
      :fields)
      SENSITIVE = [:authentication_token, :query]
      include Aws::Structure
    end

    # @!attribute [rw] users
    #   The users.
    #   @return [Array<Types::User>]
    #
    # @!attribute [rw] total_number_of_users
    #   The total number of users included in the results.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   The marker to use when requesting the next set of results. If there
    #   are no additional results, the string is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DescribeUsersResponse AWS API Documentation
    #
    class DescribeUsersResponse < Struct.new(
      :users,
      :total_number_of_users,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is thrown when the document is locked for comments and
    # user tries to create or delete a comment on that document.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DocumentLockedForCommentsException AWS API Documentation
    #
    class DocumentLockedForCommentsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the document.
    #
    # @!attribute [rw] id
    #   The ID of the document.
    #   @return [String]
    #
    # @!attribute [rw] creator_id
    #   The ID of the creator.
    #   @return [String]
    #
    # @!attribute [rw] parent_folder_id
    #   The ID of the parent folder.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time when the document was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_timestamp
    #   The time when the document was updated.
    #   @return [Time]
    #
    # @!attribute [rw] latest_version_metadata
    #   The latest version of the document.
    #   @return [Types::DocumentVersionMetadata]
    #
    # @!attribute [rw] resource_state
    #   The resource state.
    #   @return [String]
    #
    # @!attribute [rw] labels
    #   List of labels on the document.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DocumentMetadata AWS API Documentation
    #
    class DocumentMetadata < Struct.new(
      :id,
      :creator_id,
      :parent_folder_id,
      :created_timestamp,
      :modified_timestamp,
      :latest_version_metadata,
      :resource_state,
      :labels)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a version of a document.
    #
    # @!attribute [rw] id
    #   The ID of the version.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the version.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The content type of the document.
    #   @return [String]
    #
    # @!attribute [rw] size
    #   The size of the document, in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] signature
    #   The signature of the document.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the document.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp when the document was first uploaded.
    #   @return [Time]
    #
    # @!attribute [rw] modified_timestamp
    #   The timestamp when the document was last uploaded.
    #   @return [Time]
    #
    # @!attribute [rw] content_created_timestamp
    #   The timestamp when the content of the document was originally
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] content_modified_timestamp
    #   The timestamp when the content of the document was modified.
    #   @return [Time]
    #
    # @!attribute [rw] creator_id
    #   The ID of the creator.
    #   @return [String]
    #
    # @!attribute [rw] thumbnail
    #   The thumbnail of the document.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] source
    #   The source of the document.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DocumentVersionMetadata AWS API Documentation
    #
    class DocumentVersionMetadata < Struct.new(
      :id,
      :name,
      :content_type,
      :size,
      :signature,
      :status,
      :created_timestamp,
      :modified_timestamp,
      :content_created_timestamp,
      :content_modified_timestamp,
      :creator_id,
      :thumbnail,
      :source)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # This exception is thrown when a valid checkout ID is not presented on
    # document version upload calls for a document that has been checked out
    # from Web client.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/DraftUploadOutOfSyncException AWS API Documentation
    #
    class DraftUploadOutOfSyncException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/EntityAlreadyExistsException AWS API Documentation
    #
    class EntityAlreadyExistsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] entity_ids
    #   The IDs of the non-existent resources.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/EntityNotExistsException AWS API Documentation
    #
    class EntityNotExistsException < Struct.new(
      :message,
      :entity_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Directory Service cannot reach an on-premises instance. Or a
    # dependency under the control of the organization is failing, such as a
    # connected Active Directory.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/FailedDependencyException AWS API Documentation
    #
    class FailedDependencyException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters results based on entity metadata.
    #
    # @!attribute [rw] text_locales
    #   Filters by the locale of the content or comment.
    #   @return [Array<String>]
    #
    # @!attribute [rw] content_categories
    #   Filters by content category.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_types
    #   Filters based on entity type.
    #   @return [Array<String>]
    #
    # @!attribute [rw] labels
    #   Filter by labels using exact match.
    #   @return [Array<String>]
    #
    # @!attribute [rw] principals
    #   Filter based on UserIds or GroupIds.
    #   @return [Array<Types::SearchPrincipalType>]
    #
    # @!attribute [rw] ancestor_ids
    #   Filter based on resource’s path.
    #   @return [Array<String>]
    #
    # @!attribute [rw] search_collection_types
    #   Filter based on file groupings.
    #   @return [Array<String>]
    #
    # @!attribute [rw] size_range
    #   Filter based on size (in bytes).
    #   @return [Types::LongRangeType]
    #
    # @!attribute [rw] created_range
    #   Filter based on resource’s creation timestamp.
    #   @return [Types::DateRangeType]
    #
    # @!attribute [rw] modified_range
    #   Filter based on resource’s modified timestamp.
    #   @return [Types::DateRangeType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/Filters AWS API Documentation
    #
    class Filters < Struct.new(
      :text_locales,
      :content_categories,
      :resource_types,
      :labels,
      :principals,
      :ancestor_ids,
      :search_collection_types,
      :size_range,
      :created_range,
      :modified_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a folder.
    #
    # @!attribute [rw] id
    #   The ID of the folder.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the folder.
    #   @return [String]
    #
    # @!attribute [rw] creator_id
    #   The ID of the creator.
    #   @return [String]
    #
    # @!attribute [rw] parent_folder_id
    #   The ID of the parent folder.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time when the folder was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_timestamp
    #   The time when the folder was updated.
    #   @return [Time]
    #
    # @!attribute [rw] resource_state
    #   The resource state of the folder.
    #   @return [String]
    #
    # @!attribute [rw] signature
    #   The unique identifier created from the subfolders and documents of
    #   the folder.
    #   @return [String]
    #
    # @!attribute [rw] labels
    #   List of labels on the folder.
    #   @return [Array<String>]
    #
    # @!attribute [rw] size
    #   The size of the folder metadata.
    #   @return [Integer]
    #
    # @!attribute [rw] latest_version_size
    #   The size of the latest version of the folder metadata.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/FolderMetadata AWS API Documentation
    #
    class FolderMetadata < Struct.new(
      :id,
      :name,
      :creator_id,
      :parent_folder_id,
      :created_timestamp,
      :modified_timestamp,
      :resource_state,
      :signature,
      :labels,
      :size,
      :latest_version_size)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # @!attribute [rw] authentication_token
    #   Amazon WorkDocs authentication token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/GetCurrentUserRequest AWS API Documentation
    #
    class GetCurrentUserRequest < Struct.new(
      :authentication_token)
      SENSITIVE = [:authentication_token]
      include Aws::Structure
    end

    # @!attribute [rw] user
    #   Metadata of the user.
    #   @return [Types::User]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/GetCurrentUserResponse AWS API Documentation
    #
    class GetCurrentUserResponse < Struct.new(
      :user)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authentication_token
    #   Amazon WorkDocs authentication token. Not required when using Amazon
    #   Web Services administrator credentials to access the API.
    #   @return [String]
    #
    # @!attribute [rw] document_id
    #   The ID of the document.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of levels in the hierarchy to return.
    #   @return [Integer]
    #
    # @!attribute [rw] fields
    #   A comma-separated list of values. Specify `NAME` to include the
    #   names of the parent folders.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   This value is not supported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/GetDocumentPathRequest AWS API Documentation
    #
    class GetDocumentPathRequest < Struct.new(
      :authentication_token,
      :document_id,
      :limit,
      :fields,
      :marker)
      SENSITIVE = [:authentication_token]
      include Aws::Structure
    end

    # @!attribute [rw] path
    #   The path information.
    #   @return [Types::ResourcePath]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/GetDocumentPathResponse AWS API Documentation
    #
    class GetDocumentPathResponse < Struct.new(
      :path)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authentication_token
    #   Amazon WorkDocs authentication token. Not required when using Amazon
    #   Web Services administrator credentials to access the API.
    #   @return [String]
    #
    # @!attribute [rw] document_id
    #   The ID of the document.
    #   @return [String]
    #
    # @!attribute [rw] include_custom_metadata
    #   Set this to `TRUE` to include custom metadata in the response.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/GetDocumentRequest AWS API Documentation
    #
    class GetDocumentRequest < Struct.new(
      :authentication_token,
      :document_id,
      :include_custom_metadata)
      SENSITIVE = [:authentication_token]
      include Aws::Structure
    end

    # @!attribute [rw] metadata
    #   The metadata details of the document.
    #   @return [Types::DocumentMetadata]
    #
    # @!attribute [rw] custom_metadata
    #   The custom metadata on the document.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/GetDocumentResponse AWS API Documentation
    #
    class GetDocumentResponse < Struct.new(
      :metadata,
      :custom_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authentication_token
    #   Amazon WorkDocs authentication token. Not required when using Amazon
    #   Web Services administrator credentials to access the API.
    #   @return [String]
    #
    # @!attribute [rw] document_id
    #   The ID of the document.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The version ID of the document.
    #   @return [String]
    #
    # @!attribute [rw] fields
    #   A comma-separated list of values. Specify "SOURCE" to include a
    #   URL for the source document.
    #   @return [String]
    #
    # @!attribute [rw] include_custom_metadata
    #   Set this to TRUE to include custom metadata in the response.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/GetDocumentVersionRequest AWS API Documentation
    #
    class GetDocumentVersionRequest < Struct.new(
      :authentication_token,
      :document_id,
      :version_id,
      :fields,
      :include_custom_metadata)
      SENSITIVE = [:authentication_token]
      include Aws::Structure
    end

    # @!attribute [rw] metadata
    #   The version metadata.
    #   @return [Types::DocumentVersionMetadata]
    #
    # @!attribute [rw] custom_metadata
    #   The custom metadata on the document version.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/GetDocumentVersionResponse AWS API Documentation
    #
    class GetDocumentVersionResponse < Struct.new(
      :metadata,
      :custom_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authentication_token
    #   Amazon WorkDocs authentication token. Not required when using Amazon
    #   Web Services administrator credentials to access the API.
    #   @return [String]
    #
    # @!attribute [rw] folder_id
    #   The ID of the folder.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of levels in the hierarchy to return.
    #   @return [Integer]
    #
    # @!attribute [rw] fields
    #   A comma-separated list of values. Specify "NAME" to include the
    #   names of the parent folders.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   This value is not supported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/GetFolderPathRequest AWS API Documentation
    #
    class GetFolderPathRequest < Struct.new(
      :authentication_token,
      :folder_id,
      :limit,
      :fields,
      :marker)
      SENSITIVE = [:authentication_token]
      include Aws::Structure
    end

    # @!attribute [rw] path
    #   The path information.
    #   @return [Types::ResourcePath]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/GetFolderPathResponse AWS API Documentation
    #
    class GetFolderPathResponse < Struct.new(
      :path)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authentication_token
    #   Amazon WorkDocs authentication token. Not required when using Amazon
    #   Web Services administrator credentials to access the API.
    #   @return [String]
    #
    # @!attribute [rw] folder_id
    #   The ID of the folder.
    #   @return [String]
    #
    # @!attribute [rw] include_custom_metadata
    #   Set to TRUE to include custom metadata in the response.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/GetFolderRequest AWS API Documentation
    #
    class GetFolderRequest < Struct.new(
      :authentication_token,
      :folder_id,
      :include_custom_metadata)
      SENSITIVE = [:authentication_token]
      include Aws::Structure
    end

    # @!attribute [rw] metadata
    #   The metadata of the folder.
    #   @return [Types::FolderMetadata]
    #
    # @!attribute [rw] custom_metadata
    #   The custom metadata on the folder.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/GetFolderResponse AWS API Documentation
    #
    class GetFolderResponse < Struct.new(
      :metadata,
      :custom_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authentication_token
    #   The Amazon WorkDocs authentication token. Not required when using
    #   Amazon Web Services administrator credentials to access the API.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The user ID for the resource collection. This is a required field
    #   for accessing the API operation using IAM credentials.
    #   @return [String]
    #
    # @!attribute [rw] collection_type
    #   The collection type.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of resources to return.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   The marker for the next set of results. This marker was received
    #   from a previous call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/GetResourcesRequest AWS API Documentation
    #
    class GetResourcesRequest < Struct.new(
      :authentication_token,
      :user_id,
      :collection_type,
      :limit,
      :marker)
      SENSITIVE = [:authentication_token]
      include Aws::Structure
    end

    # @!attribute [rw] folders
    #   The folders in the specified folder.
    #   @return [Array<Types::FolderMetadata>]
    #
    # @!attribute [rw] documents
    #   The documents in the specified collection.
    #   @return [Array<Types::DocumentMetadata>]
    #
    # @!attribute [rw] marker
    #   The marker to use when requesting the next set of results. If there
    #   are no additional results, the string is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/GetResourcesResponse AWS API Documentation
    #
    class GetResourcesResponse < Struct.new(
      :folders,
      :documents,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the metadata of a user group.
    #
    # @!attribute [rw] id
    #   The ID of the user group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/GroupMetadata AWS API Documentation
    #
    class GroupMetadata < Struct.new(
      :id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The user is undergoing transfer of ownership.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/IllegalUserStateException AWS API Documentation
    #
    class IllegalUserStateException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authentication_token
    #   Amazon WorkDocs authentication token. Not required when using Amazon
    #   Web Services administrator credentials to access the API.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the document.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the document.
    #   @return [String]
    #
    # @!attribute [rw] content_created_timestamp
    #   The timestamp when the content of the document was originally
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] content_modified_timestamp
    #   The timestamp when the content of the document was modified.
    #   @return [Time]
    #
    # @!attribute [rw] content_type
    #   The content type of the document.
    #   @return [String]
    #
    # @!attribute [rw] document_size_in_bytes
    #   The size of the document, in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] parent_folder_id
    #   The ID of the parent folder.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/InitiateDocumentVersionUploadRequest AWS API Documentation
    #
    class InitiateDocumentVersionUploadRequest < Struct.new(
      :authentication_token,
      :id,
      :name,
      :content_created_timestamp,
      :content_modified_timestamp,
      :content_type,
      :document_size_in_bytes,
      :parent_folder_id)
      SENSITIVE = [:authentication_token, :name]
      include Aws::Structure
    end

    # @!attribute [rw] metadata
    #   The document metadata.
    #   @return [Types::DocumentMetadata]
    #
    # @!attribute [rw] upload_metadata
    #   The upload metadata.
    #   @return [Types::UploadMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/InitiateDocumentVersionUploadResponse AWS API Documentation
    #
    class InitiateDocumentVersionUploadResponse < Struct.new(
      :metadata,
      :upload_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # The pagination marker or limit fields are not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/InvalidArgumentException AWS API Documentation
    #
    class InvalidArgumentException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested operation is not allowed on the specified comment
    # object.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/InvalidCommentOperationException AWS API Documentation
    #
    class InvalidCommentOperationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/InvalidOperationException AWS API Documentation
    #
    class InvalidOperationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The password is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/InvalidPasswordException AWS API Documentation
    #
    class InvalidPasswordException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum of 100,000 files and folders under the parent folder has
    # been exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filter based on size (in bytes).
    #
    # @!attribute [rw] start_value
    #   The size start range (in bytes).
    #   @return [Integer]
    #
    # @!attribute [rw] end_value
    #   The size end range (in bytes).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/LongRangeType AWS API Documentation
    #
    class LongRangeType < Struct.new(
      :start_value,
      :end_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Set of options which defines notification preferences of given action.
    #
    # @!attribute [rw] send_email
    #   Boolean value to indicate an email notification should be sent to
    #   the recipients.
    #   @return [Boolean]
    #
    # @!attribute [rw] email_message
    #   Text value to be included in the email body.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/NotificationOptions AWS API Documentation
    #
    class NotificationOptions < Struct.new(
      :send_email,
      :email_message)
      SENSITIVE = [:email_message]
      include Aws::Structure
    end

    # Describes the users or user groups.
    #
    # @!attribute [rw] users
    #   The list of users.
    #   @return [Array<Types::UserMetadata>]
    #
    # @!attribute [rw] groups
    #   The list of user groups.
    #   @return [Array<Types::GroupMetadata>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/Participants AWS API Documentation
    #
    class Participants < Struct.new(
      :users,
      :groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the permissions.
    #
    # @!attribute [rw] role
    #   The role of the user.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of permissions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/PermissionInfo AWS API Documentation
    #
    class PermissionInfo < Struct.new(
      :role,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a resource.
    #
    # @!attribute [rw] id
    #   The ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of resource.
    #   @return [String]
    #
    # @!attribute [rw] roles
    #   The permission information for the resource.
    #   @return [Array<Types::PermissionInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/Principal AWS API Documentation
    #
    class Principal < Struct.new(
      :id,
      :type,
      :roles)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified document version is not in the INITIALIZED state.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/ProhibitedStateException AWS API Documentation
    #
    class ProhibitedStateException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authentication_token
    #   Amazon WorkDocs authentication token. Not required when using Amazon
    #   Web Services administrator credentials to access the API.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/RemoveAllResourcePermissionsRequest AWS API Documentation
    #
    class RemoveAllResourcePermissionsRequest < Struct.new(
      :authentication_token,
      :resource_id)
      SENSITIVE = [:authentication_token]
      include Aws::Structure
    end

    # @!attribute [rw] authentication_token
    #   Amazon WorkDocs authentication token. Not required when using Amazon
    #   Web Services administrator credentials to access the API.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] principal_id
    #   The principal ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] principal_type
    #   The principal type of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/RemoveResourcePermissionRequest AWS API Documentation
    #
    class RemoveResourcePermissionRequest < Struct.new(
      :authentication_token,
      :resource_id,
      :principal_id,
      :principal_type)
      SENSITIVE = [:authentication_token]
      include Aws::Structure
    end

    # The response is too large to return. The request must include a filter
    # to reduce the size of the response.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/RequestedEntityTooLargeException AWS API Documentation
    #
    class RequestedEntityTooLargeException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource is already checked out.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/ResourceAlreadyCheckedOutException AWS API Documentation
    #
    class ResourceAlreadyCheckedOutException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the metadata of a resource.
    #
    # @!attribute [rw] type
    #   The type of resource.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] original_name
    #   The original name of the resource before a rename operation.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The version ID of the resource. This is an optional field and is
    #   filled for action on document version.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The owner of the resource.
    #   @return [Types::UserMetadata]
    #
    # @!attribute [rw] parent_id
    #   The parent ID of the resource before a rename operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/ResourceMetadata AWS API Documentation
    #
    class ResourceMetadata < Struct.new(
      :type,
      :name,
      :original_name,
      :id,
      :version_id,
      :owner,
      :parent_id)
      SENSITIVE = [:name, :original_name]
      include Aws::Structure
    end

    # Describes the path information of a resource.
    #
    # @!attribute [rw] components
    #   The components of the resource path.
    #   @return [Array<Types::ResourcePathComponent>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/ResourcePath AWS API Documentation
    #
    class ResourcePath < Struct.new(
      :components)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the resource path.
    #
    # @!attribute [rw] id
    #   The ID of the resource path.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the resource path.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/ResourcePathComponent AWS API Documentation
    #
    class ResourcePathComponent < Struct.new(
      :id,
      :name)
      SENSITIVE = [:name]
      include Aws::Structure
    end

    # List of Documents, Folders, Comments, and Document Versions matching
    # the query.
    #
    # @!attribute [rw] resource_type
    #   The type of item being returned.
    #   @return [String]
    #
    # @!attribute [rw] web_url
    #   The webUrl of the item being returned.
    #   @return [String]
    #
    # @!attribute [rw] document_metadata
    #   The document that matches the query.
    #   @return [Types::DocumentMetadata]
    #
    # @!attribute [rw] folder_metadata
    #   The folder that matches the query.
    #   @return [Types::FolderMetadata]
    #
    # @!attribute [rw] comment_metadata
    #   The comment that matches the query.
    #   @return [Types::CommentMetadata]
    #
    # @!attribute [rw] document_version_metadata
    #   The document version that matches the metadata.
    #   @return [Types::DocumentVersionMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/ResponseItem AWS API Documentation
    #
    class ResponseItem < Struct.new(
      :resource_type,
      :web_url,
      :document_metadata,
      :folder_metadata,
      :comment_metadata,
      :document_version_metadata)
      SENSITIVE = [:web_url]
      include Aws::Structure
    end

    # @!attribute [rw] authentication_token
    #   Amazon WorkDocs authentication token. Not required when using Amazon
    #   Web Services administrator credentials to access the API.
    #   @return [String]
    #
    # @!attribute [rw] document_id
    #   The ID of the document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/RestoreDocumentVersionsRequest AWS API Documentation
    #
    class RestoreDocumentVersionsRequest < Struct.new(
      :authentication_token,
      :document_id)
      SENSITIVE = [:authentication_token]
      include Aws::Structure
    end

    # Filter based on UserIds or GroupIds.
    #
    # @!attribute [rw] id
    #   UserIds or GroupIds.
    #   @return [String]
    #
    # @!attribute [rw] roles
    #   The Role of a User or Group.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/SearchPrincipalType AWS API Documentation
    #
    class SearchPrincipalType < Struct.new(
      :id,
      :roles)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authentication_token
    #   Amazon WorkDocs authentication token. Not required when using Amazon
    #   Web Services administrator credentials to access the API.
    #   @return [String]
    #
    # @!attribute [rw] query_text
    #   The String to search for. Searches across different text fields
    #   based on request parameters. Use double quotes around the query
    #   string for exact phrase matches.
    #   @return [String]
    #
    # @!attribute [rw] query_scopes
    #   Filter based on the text field type. A Folder has only a name and no
    #   content. A Comment has only content and no name. A Document or
    #   Document Version has a name and content
    #   @return [Array<String>]
    #
    # @!attribute [rw] organization_id
    #   Filters based on the resource owner OrgId. This is a mandatory
    #   parameter when using Admin SigV4 credentials.
    #   @return [String]
    #
    # @!attribute [rw] additional_response_fields
    #   A list of attributes to include in the response. Used to request
    #   fields that are not normally returned in a standard response.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   Filters results based on entity metadata.
    #   @return [Types::Filters]
    #
    # @!attribute [rw] order_by
    #   Order by results in one or more categories.
    #   @return [Array<Types::SearchSortResult>]
    #
    # @!attribute [rw] limit
    #   Max results count per page.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   The marker for the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/SearchResourcesRequest AWS API Documentation
    #
    class SearchResourcesRequest < Struct.new(
      :authentication_token,
      :query_text,
      :query_scopes,
      :organization_id,
      :additional_response_fields,
      :filters,
      :order_by,
      :limit,
      :marker)
      SENSITIVE = [:authentication_token, :query_text]
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   List of Documents, Folders, Comments, and Document Versions matching
    #   the query.
    #   @return [Array<Types::ResponseItem>]
    #
    # @!attribute [rw] marker
    #   The marker to use when requesting the next set of results. If there
    #   are no additional results, the string is empty.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/SearchResourcesResponse AWS API Documentation
    #
    class SearchResourcesResponse < Struct.new(
      :items,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of the sort operation.
    #
    # @!attribute [rw] field
    #   Sort search results based on this field name.
    #   @return [String]
    #
    # @!attribute [rw] order
    #   Sort direction.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/SearchSortResult AWS API Documentation
    #
    class SearchSortResult < Struct.new(
      :field,
      :order)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more of the dependencies is unavailable.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the recipient type and ID, if available.
    #
    # @!attribute [rw] id
    #   The ID of the recipient.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the recipient.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The role of the recipient.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/SharePrincipal AWS API Documentation
    #
    class SharePrincipal < Struct.new(
      :id,
      :type,
      :role)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the share results of a resource.
    #
    # @!attribute [rw] principal_id
    #   The ID of the principal.
    #   @return [String]
    #
    # @!attribute [rw] invitee_principal_id
    #   The ID of the invited user.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The role.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status.
    #   @return [String]
    #
    # @!attribute [rw] share_id
    #   The ID of the resource that was shared.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/ShareResult AWS API Documentation
    #
    class ShareResult < Struct.new(
      :principal_id,
      :invitee_principal_id,
      :role,
      :status,
      :share_id,
      :status_message)
      SENSITIVE = [:status_message]
      include Aws::Structure
    end

    # The storage limit has been exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/StorageLimitExceededException AWS API Documentation
    #
    class StorageLimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The storage limit will be exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/StorageLimitWillExceedException AWS API Documentation
    #
    class StorageLimitWillExceedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the storage for a user.
    #
    # @!attribute [rw] storage_allocated_in_bytes
    #   The amount of storage allocated, in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] storage_type
    #   The type of storage.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/StorageRuleType AWS API Documentation
    #
    class StorageRuleType < Struct.new(
      :storage_allocated_in_bytes,
      :storage_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a subscription.
    #
    # @!attribute [rw] subscription_id
    #   The ID of the subscription.
    #   @return [String]
    #
    # @!attribute [rw] end_point
    #   The endpoint of the subscription.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The protocol of the subscription.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/Subscription AWS API Documentation
    #
    class Subscription < Struct.new(
      :subscription_id,
      :end_point,
      :protocol)
      SENSITIVE = []
      include Aws::Structure
    end

    # The limit has been reached on the number of labels for the specified
    # resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/TooManyLabelsException AWS API Documentation
    #
    class TooManyLabelsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You've reached the limit on the number of subscriptions for the
    # WorkDocs instance.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/TooManySubscriptionsException AWS API Documentation
    #
    class TooManySubscriptionsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation is not permitted.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/UnauthorizedOperationException AWS API Documentation
    #
    class UnauthorizedOperationException < Aws::EmptyStructure; end

    # The caller does not have access to perform the action on the resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/UnauthorizedResourceAccessException AWS API Documentation
    #
    class UnauthorizedResourceAccessException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authentication_token
    #   Amazon WorkDocs authentication token. Not required when using Amazon
    #   Web Services administrator credentials to access the API.
    #   @return [String]
    #
    # @!attribute [rw] document_id
    #   The ID of the document.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the document.
    #   @return [String]
    #
    # @!attribute [rw] parent_folder_id
    #   The ID of the parent folder.
    #   @return [String]
    #
    # @!attribute [rw] resource_state
    #   The resource state of the document. Only ACTIVE and RECYCLED are
    #   supported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/UpdateDocumentRequest AWS API Documentation
    #
    class UpdateDocumentRequest < Struct.new(
      :authentication_token,
      :document_id,
      :name,
      :parent_folder_id,
      :resource_state)
      SENSITIVE = [:authentication_token, :name]
      include Aws::Structure
    end

    # @!attribute [rw] authentication_token
    #   Amazon WorkDocs authentication token. Not required when using Amazon
    #   Web Services administrator credentials to access the API.
    #   @return [String]
    #
    # @!attribute [rw] document_id
    #   The ID of the document.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The version ID of the document.
    #   @return [String]
    #
    # @!attribute [rw] version_status
    #   The status of the version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/UpdateDocumentVersionRequest AWS API Documentation
    #
    class UpdateDocumentVersionRequest < Struct.new(
      :authentication_token,
      :document_id,
      :version_id,
      :version_status)
      SENSITIVE = [:authentication_token]
      include Aws::Structure
    end

    # @!attribute [rw] authentication_token
    #   Amazon WorkDocs authentication token. Not required when using Amazon
    #   Web Services administrator credentials to access the API.
    #   @return [String]
    #
    # @!attribute [rw] folder_id
    #   The ID of the folder.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the folder.
    #   @return [String]
    #
    # @!attribute [rw] parent_folder_id
    #   The ID of the parent folder.
    #   @return [String]
    #
    # @!attribute [rw] resource_state
    #   The resource state of the folder. Only ACTIVE and RECYCLED are
    #   accepted values from the API.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/UpdateFolderRequest AWS API Documentation
    #
    class UpdateFolderRequest < Struct.new(
      :authentication_token,
      :folder_id,
      :name,
      :parent_folder_id,
      :resource_state)
      SENSITIVE = [:authentication_token, :name]
      include Aws::Structure
    end

    # @!attribute [rw] authentication_token
    #   Amazon WorkDocs authentication token. Not required when using Amazon
    #   Web Services administrator credentials to access the API.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The ID of the user.
    #   @return [String]
    #
    # @!attribute [rw] given_name
    #   The given name of the user.
    #   @return [String]
    #
    # @!attribute [rw] surname
    #   The surname of the user.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the user.
    #   @return [String]
    #
    # @!attribute [rw] storage_rule
    #   The amount of storage for the user.
    #   @return [Types::StorageRuleType]
    #
    # @!attribute [rw] time_zone_id
    #   The time zone ID of the user.
    #   @return [String]
    #
    # @!attribute [rw] locale
    #   The locale of the user.
    #   @return [String]
    #
    # @!attribute [rw] grant_poweruser_privileges
    #   Boolean value to determine whether the user is granted Power user
    #   privileges.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/UpdateUserRequest AWS API Documentation
    #
    class UpdateUserRequest < Struct.new(
      :authentication_token,
      :user_id,
      :given_name,
      :surname,
      :type,
      :storage_rule,
      :time_zone_id,
      :locale,
      :grant_poweruser_privileges)
      SENSITIVE = [:authentication_token, :given_name, :surname]
      include Aws::Structure
    end

    # @!attribute [rw] user
    #   The user information.
    #   @return [Types::User]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/UpdateUserResponse AWS API Documentation
    #
    class UpdateUserResponse < Struct.new(
      :user)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the upload.
    #
    # @!attribute [rw] upload_url
    #   The URL of the upload.
    #   @return [String]
    #
    # @!attribute [rw] signed_headers
    #   The signed headers.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/UploadMetadata AWS API Documentation
    #
    class UploadMetadata < Struct.new(
      :upload_url,
      :signed_headers)
      SENSITIVE = [:upload_url]
      include Aws::Structure
    end

    # Describes a user.
    #
    # @!attribute [rw] id
    #   The ID of the user.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The login name of the user.
    #   @return [String]
    #
    # @!attribute [rw] email_address
    #   The email address of the user.
    #   @return [String]
    #
    # @!attribute [rw] given_name
    #   The given name of the user.
    #   @return [String]
    #
    # @!attribute [rw] surname
    #   The surname of the user.
    #   @return [String]
    #
    # @!attribute [rw] organization_id
    #   The ID of the organization.
    #   @return [String]
    #
    # @!attribute [rw] root_folder_id
    #   The ID of the root folder.
    #   @return [String]
    #
    # @!attribute [rw] recycle_bin_folder_id
    #   The ID of the recycle bin folder.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the user.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of user.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The time when the user was created.
    #   @return [Time]
    #
    # @!attribute [rw] modified_timestamp
    #   The time when the user was modified.
    #   @return [Time]
    #
    # @!attribute [rw] time_zone_id
    #   The time zone ID of the user.
    #   @return [String]
    #
    # @!attribute [rw] locale
    #   The locale of the user.
    #   @return [String]
    #
    # @!attribute [rw] storage
    #   The storage for the user.
    #   @return [Types::UserStorageMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/User AWS API Documentation
    #
    class User < Struct.new(
      :id,
      :username,
      :email_address,
      :given_name,
      :surname,
      :organization_id,
      :root_folder_id,
      :recycle_bin_folder_id,
      :status,
      :type,
      :created_timestamp,
      :modified_timestamp,
      :time_zone_id,
      :locale,
      :storage)
      SENSITIVE = [:username, :email_address, :given_name, :surname]
      include Aws::Structure
    end

    # Describes the metadata of the user.
    #
    # @!attribute [rw] id
    #   The ID of the user.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The name of the user.
    #   @return [String]
    #
    # @!attribute [rw] given_name
    #   The given name of the user before a rename operation.
    #   @return [String]
    #
    # @!attribute [rw] surname
    #   The surname of the user.
    #   @return [String]
    #
    # @!attribute [rw] email_address
    #   The email address of the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/UserMetadata AWS API Documentation
    #
    class UserMetadata < Struct.new(
      :id,
      :username,
      :given_name,
      :surname,
      :email_address)
      SENSITIVE = [:username, :given_name, :surname, :email_address]
      include Aws::Structure
    end

    # Describes the storage for a user.
    #
    # @!attribute [rw] storage_utilized_in_bytes
    #   The amount of storage used, in bytes.
    #   @return [Integer]
    #
    # @!attribute [rw] storage_rule
    #   The storage for a user.
    #   @return [Types::StorageRuleType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/workdocs-2016-05-01/UserStorageMetadata AWS API Documentation
    #
    class UserStorageMetadata < Struct.new(
      :storage_utilized_in_bytes,
      :storage_rule)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
