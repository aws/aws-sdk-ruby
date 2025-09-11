# frozen_string_literal: true

# This is generated code!

module Aws::WorkDocs
  # This module contains the types returned by client operations.
  module Types

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    #   @return [String]
    # @!attribute document_id
    #   <p>The ID of the document.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The ID of the version.</p>
    #   @return [String]
    class AbortDocumentVersionUploadRequest < Struct.new(
      :authentication_token,
      :document_id,
      :version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_id
    #   <p>The ID of the user.</p>
    #   @return [String]
    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    #   @return [String]
    class ActivateUserRequest < Struct.new(
      :user_id,
      :authentication_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute user
    #   <p>The user information.</p>
    #   @return [Types::User]
    class ActivateUserResponse < Struct.new(
      :user,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the activity information.</p>
    # @!attribute type
    #   <p>The activity type.</p>
    #   @return [String]
    # @!attribute time_stamp
    #   <p>The timestamp when the action was performed.</p>
    #   @return [Time]
    # @!attribute is_indirect_activity
    #   <p>Indicates whether an activity is indirect or direct. An indirect activity results
    #               from a direct activity performed on a parent resource. For example, sharing a parent
    #               folder (the direct activity) shares all of the subfolders and documents within the
    #               parent folder (the indirect activity).</p>
    #   @return [Boolean]
    # @!attribute organization_id
    #   <p>The ID of the organization.</p>
    #   @return [String]
    # @!attribute initiator
    #   <p>The user who performed the action.</p>
    #   @return [Types::UserMetadata]
    # @!attribute participants
    #   <p>The list of users or groups impacted by this action. This is an optional field and
    #               is filled for the following sharing activities: DOCUMENT_SHARED, DOCUMENT_SHARED,
    #               DOCUMENT_UNSHARED, FOLDER_SHARED, FOLDER_UNSHARED.</p>
    #   @return [Types::Participants]
    # @!attribute resource_metadata
    #   <p>The metadata of the resource involved in the user action.</p>
    #   @return [Types::ResourceMetadata]
    # @!attribute original_parent
    #   <p>The original parent of the resource. This is an optional field and is filled for
    #               move activities.</p>
    #   @return [Types::ResourceMetadata]
    # @!attribute comment_metadata
    #   <p>Metadata of the commenting activity. This is an optional field and is filled for
    #               commenting activities.</p>
    #   @return [Types::CommentMetadata]
    class Activity < Struct.new(
      :type,
      :time_stamp,
      :is_indirect_activity,
      :organization_id,
      :initiator,
      :participants,
      :resource_metadata,
      :original_parent,
      :comment_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_indirect_activity] = false unless options.key?(:is_indirect_activity)
        super
      end
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #   @return [String]
    # @!attribute principals
    #   <p>The users, groups, or organization being granted permission.</p>
    #   @return [Array<Types::SharePrincipal>]
    # @!attribute notification_options
    #   <p>The notification options.</p>
    #   @return [Types::NotificationOptions]
    class AddResourcePermissionsRequest < Struct.new(
      :authentication_token,
      :resource_id,
      :principals,
      :notification_options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute share_results
    #   <p>The share results.</p>
    #   @return [Array<Types::ShareResult>]
    class AddResourcePermissionsResponse < Struct.new(
      :share_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a comment.</p>
    # @!attribute comment_id
    #   <p>The ID of the comment.</p>
    #   @return [String]
    # @!attribute parent_id
    #   <p>The ID of the parent comment.</p>
    #   @return [String]
    # @!attribute thread_id
    #   <p>The ID of the root comment in the thread.</p>
    #   @return [String]
    # @!attribute text
    #   <p>The text of the comment.</p>
    #   @return [String]
    # @!attribute contributor
    #   <p>The details of the user who made the comment.</p>
    #   @return [Types::User]
    # @!attribute created_timestamp
    #   <p>The time that the comment was created.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the comment.</p>
    #   @return [String]
    # @!attribute visibility
    #   <p>The visibility of the comment. Options are either PRIVATE, where the comment is
    #               visible only to the comment author and document owner and co-owners, or PUBLIC, where
    #               the comment is visible to document owners, co-owners, and contributors.</p>
    #   @return [String]
    # @!attribute recipient_id
    #   <p>If the comment is a reply to another user's comment, this field contains the user
    #               ID of the user being replied to.</p>
    #   @return [String]
    class Comment < Struct.new(
      :comment_id,
      :parent_id,
      :thread_id,
      :text,
      :contributor,
      :created_timestamp,
      :status,
      :visibility,
      :recipient_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the metadata of a comment.</p>
    # @!attribute comment_id
    #   <p>The ID of the comment.</p>
    #   @return [String]
    # @!attribute contributor
    #   <p>The user who made the comment.</p>
    #   @return [Types::User]
    # @!attribute created_timestamp
    #   <p>The timestamp that the comment was created.</p>
    #   @return [Time]
    # @!attribute comment_status
    #   <p>The status of the comment.</p>
    #   @return [String]
    # @!attribute recipient_id
    #   <p>The ID of the user being replied to.</p>
    #   @return [String]
    # @!attribute contributor_id
    #   <p>The ID of the user who made the comment.</p>
    #   @return [String]
    class CommentMetadata < Struct.new(
      :comment_id,
      :contributor,
      :created_timestamp,
      :comment_status,
      :recipient_id,
      :contributor_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource hierarchy is changing.</p>
    # @!attribute message
    #   @return [String]
    class ConcurrentModificationException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Another operation is in progress on the resource that conflicts with the current operation.</p>
    # @!attribute message
    #   @return [String]
    class ConflictingOperationException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    #   @return [String]
    # @!attribute document_id
    #   <p>The ID of the document.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The ID of the document version.</p>
    #   @return [String]
    # @!attribute parent_id
    #   <p>The ID of the parent comment.</p>
    #   @return [String]
    # @!attribute thread_id
    #   <p>The ID of the root comment in the thread.</p>
    #   @return [String]
    # @!attribute text
    #   <p>The text of the comment.</p>
    #   @return [String]
    # @!attribute visibility
    #   <p>The visibility of the comment. Options are either PRIVATE, where the comment is
    #               visible only to the comment author and document owner and co-owners, or PUBLIC, where
    #               the comment is visible to document owners, co-owners, and contributors.</p>
    #   @return [String]
    # @!attribute notify_collaborators
    #   <p>Set this parameter to TRUE to send an email out to the document collaborators after
    #               the comment is created.</p>
    #   @return [Boolean]
    class CreateCommentRequest < Struct.new(
      :authentication_token,
      :document_id,
      :version_id,
      :parent_id,
      :thread_id,
      :text,
      :visibility,
      :notify_collaborators,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute comment
    #   <p>The comment that has been created.</p>
    #   @return [Types::Comment]
    class CreateCommentResponse < Struct.new(
      :comment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The ID of the version, if the custom metadata is being added to a document
    #               version.</p>
    #   @return [String]
    # @!attribute custom_metadata
    #   <p>Custom metadata in the form of name-value pairs.</p>
    #   @return [Hash<String, String>]
    class CreateCustomMetadataRequest < Struct.new(
      :authentication_token,
      :resource_id,
      :version_id,
      :custom_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CreateCustomMetadataResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the new folder.</p>
    #   @return [String]
    # @!attribute parent_folder_id
    #   <p>The ID of the parent folder.</p>
    #   @return [String]
    class CreateFolderRequest < Struct.new(
      :authentication_token,
      :name,
      :parent_folder_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute metadata
    #   <p>The metadata of the folder.</p>
    #   @return [Types::FolderMetadata]
    class CreateFolderResponse < Struct.new(
      :metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #   @return [String]
    # @!attribute labels
    #   <p>List of labels to add to the resource.</p>
    #   @return [Array<String>]
    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    #   @return [String]
    class CreateLabelsRequest < Struct.new(
      :resource_id,
      :labels,
      :authentication_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CreateLabelsResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The ID of the organization.</p>
    #   @return [String]
    # @!attribute endpoint
    #   <p>The endpoint to receive the notifications. If the protocol is HTTPS, the endpoint
    #               is a URL that begins with <code>https</code>.</p>
    #   @return [String]
    # @!attribute protocol
    #   <p>The protocol to use. The supported value is https, which delivers JSON-encoded
    #               messages using HTTPS POST.</p>
    #   @return [String]
    # @!attribute subscription_type
    #   <p>The notification type.</p>
    #   @return [String]
    class CreateNotificationSubscriptionRequest < Struct.new(
      :organization_id,
      :endpoint,
      :protocol,
      :subscription_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscription
    #   <p>The subscription.</p>
    #   @return [Types::Subscription]
    class CreateNotificationSubscriptionResponse < Struct.new(
      :subscription,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The ID of the organization.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The login name of the user.</p>
    #   @return [String]
    # @!attribute email_address
    #   <p>The email address of the user.</p>
    #   @return [String]
    # @!attribute given_name
    #   <p>The given name of the user.</p>
    #   @return [String]
    # @!attribute surname
    #   <p>The surname of the user.</p>
    #   @return [String]
    # @!attribute password
    #   <p>The password of the user.</p>
    #   @return [String]
    # @!attribute time_zone_id
    #   <p>The time zone ID of the user.</p>
    #   @return [String]
    # @!attribute storage_rule
    #   <p>The amount of storage for the user.</p>
    #   @return [Types::StorageRuleType]
    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    #   @return [String]
    class CreateUserRequest < Struct.new(
      :organization_id,
      :username,
      :email_address,
      :given_name,
      :surname,
      :password,
      :time_zone_id,
      :storage_rule,
      :authentication_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute user
    #   <p>The user information.</p>
    #   @return [Types::User]
    class CreateUserResponse < Struct.new(
      :user,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The limit has been reached on the number of custom properties for the specified
    #             resource.</p>
    # @!attribute message
    #   @return [String]
    class CustomMetadataLimitExceededException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Filters results based on timestamp range (in epochs).</p>
    # @!attribute start_value
    #   <p>Timestamp range start value (in epochs)</p>
    #   @return [Time]
    # @!attribute end_value
    #   <p>Timestamp range end value (in epochs).</p>
    #   @return [Time]
    class DateRangeType < Struct.new(
      :start_value,
      :end_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_id
    #   <p>The ID of the user.</p>
    #   @return [String]
    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    #   @return [String]
    class DeactivateUserRequest < Struct.new(
      :user_id,
      :authentication_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The last user in the organization is being deactivated.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    class DeactivatingLastSystemUserException < Struct.new(
      :message,
      :code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    #   @return [String]
    # @!attribute document_id
    #   <p>The ID of the document.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The ID of the document version.</p>
    #   @return [String]
    # @!attribute comment_id
    #   <p>The ID of the comment.</p>
    #   @return [String]
    class DeleteCommentRequest < Struct.new(
      :authentication_token,
      :document_id,
      :version_id,
      :comment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource, either a document or folder.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The ID of the version, if the custom metadata is being deleted from a document
    #               version.</p>
    #   @return [String]
    # @!attribute keys
    #   <p>List of properties to remove.</p>
    #   @return [Array<String>]
    # @!attribute delete_all
    #   <p>Flag to indicate removal of all custom metadata properties from the specified
    #               resource.</p>
    #   @return [Boolean]
    class DeleteCustomMetadataRequest < Struct.new(
      :authentication_token,
      :resource_id,
      :version_id,
      :keys,
      :delete_all,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteCustomMetadataResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    #   @return [String]
    # @!attribute document_id
    #   <p>The ID of the document.</p>
    #   @return [String]
    class DeleteDocumentRequest < Struct.new(
      :authentication_token,
      :document_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    #   @return [String]
    # @!attribute document_id
    #   <p>The ID of the document associated with the version being deleted.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The ID of the version being deleted.</p>
    #   @return [String]
    # @!attribute delete_prior_versions
    #   <p>Deletes all versions of a document prior to the current version.</p>
    #   @return [Boolean]
    class DeleteDocumentVersionRequest < Struct.new(
      :authentication_token,
      :document_id,
      :version_id,
      :delete_prior_versions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    #   @return [String]
    # @!attribute folder_id
    #   <p>The ID of the folder.</p>
    #   @return [String]
    class DeleteFolderContentsRequest < Struct.new(
      :authentication_token,
      :folder_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    #   @return [String]
    # @!attribute folder_id
    #   <p>The ID of the folder.</p>
    #   @return [String]
    class DeleteFolderRequest < Struct.new(
      :authentication_token,
      :folder_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #   @return [String]
    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    #   @return [String]
    # @!attribute labels
    #   <p>List of labels to delete from the resource.</p>
    #   @return [Array<String>]
    # @!attribute delete_all
    #   <p>Flag to request removal of all labels from the specified resource.</p>
    #   @return [Boolean]
    class DeleteLabelsRequest < Struct.new(
      :resource_id,
      :authentication_token,
      :labels,
      :delete_all,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteLabelsResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscription_id
    #   <p>The ID of the subscription.</p>
    #   @return [String]
    # @!attribute organization_id
    #   <p>The ID of the organization.</p>
    #   @return [String]
    class DeleteNotificationSubscriptionRequest < Struct.new(
      :subscription_id,
      :organization_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Do not set this field when using
    #               administrative API actions, as in accessing the API using Amazon Web Services credentials.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The ID of the user.</p>
    #   @return [String]
    class DeleteUserRequest < Struct.new(
      :authentication_token,
      :user_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The timestamp that determines the starting time of the activities. The response
    #               includes the activities performed after the specified timestamp.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The timestamp that determines the end time of the activities. The response includes
    #               the activities performed before the specified timestamp.</p>
    #   @return [Time]
    # @!attribute organization_id
    #   <p>The ID of the organization. This is a mandatory parameter when using administrative
    #               API (SigV4) requests.</p>
    #   @return [String]
    # @!attribute activity_types
    #   <p>Specifies which activity types to include in the response. If this field is left
    #               empty, all activity types are returned.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The document or folder ID for which to describe activity types.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The ID of the user who performed the action. The response includes activities
    #               pertaining to this user. This is an optional parameter and is only applicable for
    #               administrative API (SigV4) requests.</p>
    #   @return [String]
    # @!attribute include_indirect_activities
    #   <p>Includes indirect activities. An indirect activity results from a direct activity
    #               performed on a parent resource. For example, sharing a parent folder (the direct
    #               activity) shares all of the subfolders and documents within the parent folder (the
    #               indirect activity).</p>
    #   @return [Boolean]
    # @!attribute limit
    #   <p>The maximum number of items to return.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>The marker for the next set of results.</p>
    #   @return [String]
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
      :marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute user_activities
    #   <p>The list of activities for the specified user and time period.</p>
    #   @return [Array<Types::Activity>]
    # @!attribute marker
    #   <p>The marker for the next set of results.</p>
    #   @return [String]
    class DescribeActivitiesResponse < Struct.new(
      :user_activities,
      :marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    #   @return [String]
    # @!attribute document_id
    #   <p>The ID of the document.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The ID of the document version.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of items to return.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>The marker for the next set of results. This marker was received from a previous
    #               call.</p>
    #   @return [String]
    class DescribeCommentsRequest < Struct.new(
      :authentication_token,
      :document_id,
      :version_id,
      :limit,
      :marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute comments
    #   <p>The list of comments for the specified document version.</p>
    #   @return [Array<Types::Comment>]
    # @!attribute marker
    #   <p>The marker for the next set of results. This marker was received from a previous
    #               call.</p>
    #   @return [String]
    class DescribeCommentsResponse < Struct.new(
      :comments,
      :marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    #   @return [String]
    # @!attribute document_id
    #   <p>The ID of the document.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #               call.)</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of versions to return with this call.</p>
    #   @return [Integer]
    # @!attribute include
    #   <p>A comma-separated list of values. Specify "INITIALIZED" to include incomplete
    #               versions.</p>
    #   @return [String]
    # @!attribute fields
    #   <p>Specify "SOURCE" to include initialized versions and a URL for the source
    #               document.</p>
    #   @return [String]
    class DescribeDocumentVersionsRequest < Struct.new(
      :authentication_token,
      :document_id,
      :marker,
      :limit,
      :include,
      :fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute document_versions
    #   <p>The document versions.</p>
    #   @return [Array<Types::DocumentVersionMetadata>]
    # @!attribute marker
    #   <p>The marker to use when requesting the next set of results. If there are no
    #               additional results, the string is empty.</p>
    #   @return [String]
    class DescribeDocumentVersionsResponse < Struct.new(
      :document_versions,
      :marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    #   @return [String]
    # @!attribute folder_id
    #   <p>The ID of the folder.</p>
    #   @return [String]
    # @!attribute sort
    #   <p>The sorting criteria.</p>
    #   @return [String]
    # @!attribute order
    #   <p>The order for the contents of the folder.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of items to return with this call.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>The marker for the next set of results. This marker was received from a previous
    #               call.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of items.</p>
    #   @return [String]
    # @!attribute include
    #   <p>The contents to include. Specify "INITIALIZED" to include initialized
    #               documents.</p>
    #   @return [String]
    class DescribeFolderContentsRequest < Struct.new(
      :authentication_token,
      :folder_id,
      :sort,
      :order,
      :limit,
      :marker,
      :type,
      :include,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute folders
    #   <p>The subfolders in the specified folder.</p>
    #   @return [Array<Types::FolderMetadata>]
    # @!attribute documents
    #   <p>The documents in the specified folder.</p>
    #   @return [Array<Types::DocumentMetadata>]
    # @!attribute marker
    #   <p>The marker to use when requesting the next set of results. If there are no
    #               additional results, the string is empty.</p>
    #   @return [String]
    class DescribeFolderContentsResponse < Struct.new(
      :folders,
      :documents,
      :marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    #   @return [String]
    # @!attribute search_query
    #   <p>A query to describe groups by group name.</p>
    #   @return [String]
    # @!attribute organization_id
    #   <p>The ID of the organization.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #               call.)</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of items to return with this call.</p>
    #   @return [Integer]
    class DescribeGroupsRequest < Struct.new(
      :authentication_token,
      :search_query,
      :organization_id,
      :marker,
      :limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute groups
    #   <p>The list of groups.</p>
    #   @return [Array<Types::GroupMetadata>]
    # @!attribute marker
    #   <p>The marker to use when requesting the next set of results. If there are no additional
    #               results, the string is empty.</p>
    #   @return [String]
    class DescribeGroupsResponse < Struct.new(
      :groups,
      :marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute organization_id
    #   <p>The ID of the organization.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #               call.)</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of items to return with this call.</p>
    #   @return [Integer]
    class DescribeNotificationSubscriptionsRequest < Struct.new(
      :organization_id,
      :marker,
      :limit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscriptions
    #   <p>The subscriptions.</p>
    #   @return [Array<Types::Subscription>]
    # @!attribute marker
    #   <p>The marker to use when requesting the next set of results. If there are no
    #               additional results, the string is empty.</p>
    #   @return [String]
    class DescribeNotificationSubscriptionsResponse < Struct.new(
      :subscriptions,
      :marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #   @return [String]
    # @!attribute principal_id
    #   <p>The ID of the principal to filter permissions by.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of items to return with this call.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #               call)</p>
    #   @return [String]
    class DescribeResourcePermissionsRequest < Struct.new(
      :authentication_token,
      :resource_id,
      :principal_id,
      :limit,
      :marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute principals
    #   <p>The principals.</p>
    #   @return [Array<Types::Principal>]
    # @!attribute marker
    #   <p>The marker to use when requesting the next set of results. If there are no
    #               additional results, the string is empty.</p>
    #   @return [String]
    class DescribeResourcePermissionsResponse < Struct.new(
      :principals,
      :marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of items to return.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #               call.)</p>
    #   @return [String]
    class DescribeRootFoldersRequest < Struct.new(
      :authentication_token,
      :limit,
      :marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute folders
    #   <p>The user's special folders.</p>
    #   @return [Array<Types::FolderMetadata>]
    # @!attribute marker
    #   <p>The marker for the next set of results.</p>
    #   @return [String]
    class DescribeRootFoldersResponse < Struct.new(
      :folders,
      :marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    #   @return [String]
    # @!attribute organization_id
    #   <p>The ID of the organization.</p>
    #   @return [String]
    # @!attribute user_ids
    #   <p>The IDs of the users.</p>
    #   @return [String]
    # @!attribute query
    #   <p>A query to filter users by user name. Remember the following about the <code>Userids</code> and <code>Query</code> parameters:</p>
    #            <ul>
    #               <li>
    #                  <p>If you don't use either parameter, the API returns a paginated list of all users on the site.</p>
    #               </li>
    #               <li>
    #                  <p>If you use both parameters, the API ignores the <code>Query</code> parameter.</p>
    #               </li>
    #               <li>
    #                  <p>The <code>Userid</code> parameter only returns user names that match a corresponding user ID.</p>
    #               </li>
    #               <li>
    #                  <p>The <code>Query</code> parameter runs a "prefix" search for users by the <code>GivenName</code>, <code>SurName</code>, or <code>UserName</code> fields included in a 
    #                   <a href="https://docs.aws.amazon.com/workdocs/latest/APIReference/API_CreateUser.html">CreateUser</a> API call. For example, querying on 
    #                   <code>Ma</code> returns Márcia Oliveira, María García, and Mateo Jackson. If you use multiple characters, the API only returns data that matches all characters. For example, querying on <code>Ma J</code> only 
    #                   returns Mateo Jackson.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute include
    #   <p>The state of the users. Specify "ALL" to include inactive users.</p>
    #   @return [String]
    # @!attribute order
    #   <p>The order for the results.</p>
    #   @return [String]
    # @!attribute sort
    #   <p>The sorting criteria.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #               call.)</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of items to return.</p>
    #   @return [Integer]
    # @!attribute fields
    #   <p>A comma-separated list of values. Specify "STORAGE_METADATA" to include the user
    #               storage quota and utilization information.</p>
    #   @return [String]
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
      :fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute users
    #   <p>The users.</p>
    #   @return [Array<Types::User>]
    # @!attribute total_number_of_users
    #   <p>The total number of users included in the results.</p>
    #   @deprecated
    #   @return [Integer]
    # @!attribute marker
    #   <p>The marker to use when requesting the next set of results. If there are no
    #               additional results, the string is empty.</p>
    #   @return [String]
    class DescribeUsersResponse < Struct.new(
      :users,
      :total_number_of_users,
      :marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when the document is locked for comments and user tries to
    #             create or delete a comment on that document.</p>
    # @!attribute message
    #   @return [String]
    class DocumentLockedForCommentsException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the document.</p>
    # @!attribute id
    #   <p>The ID of the document.</p>
    #   @return [String]
    # @!attribute creator_id
    #   <p>The ID of the creator.</p>
    #   @return [String]
    # @!attribute parent_folder_id
    #   <p>The ID of the parent folder.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the document was created.</p>
    #   @return [Time]
    # @!attribute modified_timestamp
    #   <p>The time when the document was updated.</p>
    #   @return [Time]
    # @!attribute latest_version_metadata
    #   <p>The latest version of the document.</p>
    #   @return [Types::DocumentVersionMetadata]
    # @!attribute resource_state
    #   <p>The resource state.</p>
    #   @return [String]
    # @!attribute labels
    #   <p>List of labels on the document.</p>
    #   @return [Array<String>]
    class DocumentMetadata < Struct.new(
      :id,
      :creator_id,
      :parent_folder_id,
      :created_timestamp,
      :modified_timestamp,
      :latest_version_metadata,
      :resource_state,
      :labels,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a version of a document.</p>
    # @!attribute id
    #   <p>The ID of the version.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the version.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The content type of the document.</p>
    #   @return [String]
    # @!attribute size
    #   <p>The size of the document, in bytes.</p>
    #   @return [Integer]
    # @!attribute signature
    #   <p>The signature of the document.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the document.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The timestamp when the document was first uploaded.</p>
    #   @return [Time]
    # @!attribute modified_timestamp
    #   <p>The timestamp when the document was last uploaded.</p>
    #   @return [Time]
    # @!attribute content_created_timestamp
    #   <p>The timestamp when the content of the document was originally created.</p>
    #   @return [Time]
    # @!attribute content_modified_timestamp
    #   <p>The timestamp when the content of the document was modified.</p>
    #   @return [Time]
    # @!attribute creator_id
    #   <p>The ID of the creator.</p>
    #   @return [String]
    # @!attribute thumbnail
    #   <p>The thumbnail of the document.</p>
    #   @return [Hash<String, String>]
    # @!attribute source
    #   <p>The source of the document.</p>
    #   @return [Hash<String, String>]
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
      :source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown when a valid checkout ID is not presented on document
    #             version upload calls for a document that has been checked out from Web client.</p>
    # @!attribute message
    #   @return [String]
    class DraftUploadOutOfSyncException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource already exists.</p>
    # @!attribute message
    #   @return [String]
    class EntityAlreadyExistsException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource does not exist.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute entity_ids
    #   <p>The IDs of the non-existent resources.</p>
    #   @return [Array<String>]
    class EntityNotExistsException < Struct.new(
      :message,
      :entity_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Directory Service cannot reach an on-premises instance. Or a dependency
    #             under the control of the organization is failing, such as a connected Active
    #             Directory.</p>
    # @!attribute message
    #   @return [String]
    class FailedDependencyException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Filters results based on entity metadata.</p>
    # @!attribute text_locales
    #   <p>Filters by the locale of the content or comment.</p>
    #   @return [Array<String>]
    # @!attribute content_categories
    #   <p>Filters by content category.</p>
    #   @return [Array<String>]
    # @!attribute resource_types
    #   <p>Filters based on entity type.</p>
    #   @return [Array<String>]
    # @!attribute labels
    #   <p>Filter by labels using exact match.</p>
    #   @return [Array<String>]
    # @!attribute principals
    #   <p>Filter based on UserIds or GroupIds.</p>
    #   @return [Array<Types::SearchPrincipalType>]
    # @!attribute ancestor_ids
    #   <p>Filter based on resource’s path.</p>
    #   @return [Array<String>]
    # @!attribute search_collection_types
    #   <p>Filter based on file groupings.</p>
    #   @return [Array<String>]
    # @!attribute size_range
    #   <p>Filter based on size (in bytes).</p>
    #   @return [Types::LongRangeType]
    # @!attribute created_range
    #   <p>Filter based on resource’s creation timestamp.</p>
    #   @return [Types::DateRangeType]
    # @!attribute modified_range
    #   <p>Filter based on resource’s modified timestamp.</p>
    #   @return [Types::DateRangeType]
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
      :modified_range,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a folder.</p>
    # @!attribute id
    #   <p>The ID of the folder.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the folder.</p>
    #   @return [String]
    # @!attribute creator_id
    #   <p>The ID of the creator.</p>
    #   @return [String]
    # @!attribute parent_folder_id
    #   <p>The ID of the parent folder.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the folder was created.</p>
    #   @return [Time]
    # @!attribute modified_timestamp
    #   <p>The time when the folder was updated.</p>
    #   @return [Time]
    # @!attribute resource_state
    #   <p>The resource state of the folder.</p>
    #   @return [String]
    # @!attribute signature
    #   <p>The unique identifier created from the subfolders and documents of the
    #               folder.</p>
    #   @return [String]
    # @!attribute labels
    #   <p>List of labels on the folder.</p>
    #   @return [Array<String>]
    # @!attribute size
    #   <p>The size of the folder metadata.</p>
    #   @return [Integer]
    # @!attribute latest_version_size
    #   <p>The size of the latest version of the folder metadata.</p>
    #   @return [Integer]
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
      :latest_version_size,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token.</p>
    #   @return [String]
    class GetCurrentUserRequest < Struct.new(
      :authentication_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute user
    #   <p>Metadata of the user.</p>
    #   @return [Types::User]
    class GetCurrentUserResponse < Struct.new(
      :user,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    #   @return [String]
    # @!attribute document_id
    #   <p>The ID of the document.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of levels in the hierarchy to return.</p>
    #   @return [Integer]
    # @!attribute fields
    #   <p>A comma-separated list of values. Specify <code>NAME</code> to include the names of
    #               the parent folders.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>This value is not supported.</p>
    #   @return [String]
    class GetDocumentPathRequest < Struct.new(
      :authentication_token,
      :document_id,
      :limit,
      :fields,
      :marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute path
    #   <p>The path information.</p>
    #   @return [Types::ResourcePath]
    class GetDocumentPathResponse < Struct.new(
      :path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    #   @return [String]
    # @!attribute document_id
    #   <p>The ID of the document.</p>
    #   @return [String]
    # @!attribute include_custom_metadata
    #   <p>Set this to <code>TRUE</code> to include custom metadata in the response.</p>
    #   @return [Boolean]
    class GetDocumentRequest < Struct.new(
      :authentication_token,
      :document_id,
      :include_custom_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute metadata
    #   <p>The metadata details of the document.</p>
    #   @return [Types::DocumentMetadata]
    # @!attribute custom_metadata
    #   <p>The custom metadata on the document.</p>
    #   @return [Hash<String, String>]
    class GetDocumentResponse < Struct.new(
      :metadata,
      :custom_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    #   @return [String]
    # @!attribute document_id
    #   <p>The ID of the document.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The version ID of the document.</p>
    #   @return [String]
    # @!attribute fields
    #   <p>A comma-separated list of values. Specify "SOURCE" to include a URL for the source
    #               document.</p>
    #   @return [String]
    # @!attribute include_custom_metadata
    #   <p>Set this to TRUE to include custom metadata in the response.</p>
    #   @return [Boolean]
    class GetDocumentVersionRequest < Struct.new(
      :authentication_token,
      :document_id,
      :version_id,
      :fields,
      :include_custom_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute metadata
    #   <p>The version metadata.</p>
    #   @return [Types::DocumentVersionMetadata]
    # @!attribute custom_metadata
    #   <p>The custom metadata on the document version.</p>
    #   @return [Hash<String, String>]
    class GetDocumentVersionResponse < Struct.new(
      :metadata,
      :custom_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    #   @return [String]
    # @!attribute folder_id
    #   <p>The ID of the folder.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of levels in the hierarchy to return.</p>
    #   @return [Integer]
    # @!attribute fields
    #   <p>A comma-separated list of values. Specify "NAME" to include the names of the parent
    #               folders.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>This value is not supported.</p>
    #   @return [String]
    class GetFolderPathRequest < Struct.new(
      :authentication_token,
      :folder_id,
      :limit,
      :fields,
      :marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute path
    #   <p>The path information.</p>
    #   @return [Types::ResourcePath]
    class GetFolderPathResponse < Struct.new(
      :path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    #   @return [String]
    # @!attribute folder_id
    #   <p>The ID of the folder.</p>
    #   @return [String]
    # @!attribute include_custom_metadata
    #   <p>Set to TRUE to include custom metadata in the response.</p>
    #   @return [Boolean]
    class GetFolderRequest < Struct.new(
      :authentication_token,
      :folder_id,
      :include_custom_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute metadata
    #   <p>The metadata of the folder.</p>
    #   @return [Types::FolderMetadata]
    # @!attribute custom_metadata
    #   <p>The custom metadata on the folder.</p>
    #   @return [Hash<String, String>]
    class GetFolderResponse < Struct.new(
      :metadata,
      :custom_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authentication_token
    #   <p>The Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The user ID for the resource collection. This is a required field for accessing the
    #               API operation using IAM credentials.</p>
    #   @return [String]
    # @!attribute collection_type
    #   <p>The collection type.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of resources to return.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>The marker for the next set of results. This marker was received from a previous call.</p>
    #   @return [String]
    class GetResourcesRequest < Struct.new(
      :authentication_token,
      :user_id,
      :collection_type,
      :limit,
      :marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute folders
    #   <p>The folders in the specified folder.</p>
    #   @return [Array<Types::FolderMetadata>]
    # @!attribute documents
    #   <p>The documents in the specified collection.</p>
    #   @return [Array<Types::DocumentMetadata>]
    # @!attribute marker
    #   <p>The marker to use when requesting the next set of results. If there are no additional results, the string is empty.</p>
    #   @return [String]
    class GetResourcesResponse < Struct.new(
      :folders,
      :documents,
      :marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the metadata of a user group.</p>
    # @!attribute id
    #   <p>The ID of the user group.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the group.</p>
    #   @return [String]
    class GroupMetadata < Struct.new(
      :id,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The user is undergoing transfer of ownership.</p>
    # @!attribute message
    #   @return [String]
    class IllegalUserStateException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the document.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the document.</p>
    #   @return [String]
    # @!attribute content_created_timestamp
    #   <p>The timestamp when the content of the document was originally created.</p>
    #   @return [Time]
    # @!attribute content_modified_timestamp
    #   <p>The timestamp when the content of the document was modified.</p>
    #   @return [Time]
    # @!attribute content_type
    #   <p>The content type of the document.</p>
    #   @return [String]
    # @!attribute document_size_in_bytes
    #   <p>The size of the document, in bytes.</p>
    #   @return [Integer]
    # @!attribute parent_folder_id
    #   <p>The ID of the parent folder.</p>
    #   @return [String]
    class InitiateDocumentVersionUploadRequest < Struct.new(
      :authentication_token,
      :id,
      :name,
      :content_created_timestamp,
      :content_modified_timestamp,
      :content_type,
      :document_size_in_bytes,
      :parent_folder_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute metadata
    #   <p>The document metadata.</p>
    #   @return [Types::DocumentMetadata]
    # @!attribute upload_metadata
    #   <p>The upload metadata.</p>
    #   @return [Types::UploadMetadata]
    class InitiateDocumentVersionUploadResponse < Struct.new(
      :metadata,
      :upload_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The pagination marker or limit fields are not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidArgumentException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested operation is not allowed on the specified comment object.</p>
    # @!attribute message
    #   @return [String]
    class InvalidCommentOperationException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operation is invalid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidOperationException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The password is invalid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidPasswordException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum of 100,000 files and folders under the parent folder has been exceeded.</p>
    # @!attribute message
    #   @return [String]
    class LimitExceededException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Filter based on size (in bytes).</p>
    # @!attribute start_value
    #   <p>The size start range (in bytes).</p>
    #   @return [Integer]
    # @!attribute end_value
    #   <p>The size end range (in bytes).</p>
    #   @return [Integer]
    class LongRangeType < Struct.new(
      :start_value,
      :end_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Set of options which defines notification preferences of given action.</p>
    # @!attribute send_email
    #   <p>Boolean value to indicate an email notification should be sent to the
    #               recipients.</p>
    #   @return [Boolean]
    # @!attribute email_message
    #   <p>Text value to be included in the email body.</p>
    #   @return [String]
    class NotificationOptions < Struct.new(
      :send_email,
      :email_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:send_email] = false unless options.key?(:send_email)
        super
      end
    end

    # <p>Describes the users or user groups.</p>
    # @!attribute users
    #   <p>The list of users.</p>
    #   @return [Array<Types::UserMetadata>]
    # @!attribute groups
    #   <p>The list of user groups.</p>
    #   @return [Array<Types::GroupMetadata>]
    class Participants < Struct.new(
      :users,
      :groups,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the permissions.</p>
    # @!attribute role
    #   <p>The role of the user.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of permissions.</p>
    #   @return [String]
    class PermissionInfo < Struct.new(
      :role,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a resource.</p>
    # @!attribute id
    #   <p>The ID of the resource.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of resource.</p>
    #   @return [String]
    # @!attribute roles
    #   <p>The permission information for the resource.</p>
    #   @return [Array<Types::PermissionInfo>]
    class Principal < Struct.new(
      :id,
      :type,
      :roles,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified document version is not in the INITIALIZED state.</p>
    # @!attribute message
    #   @return [String]
    class ProhibitedStateException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #   @return [String]
    class RemoveAllResourcePermissionsRequest < Struct.new(
      :authentication_token,
      :resource_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #   @return [String]
    # @!attribute principal_id
    #   <p>The principal ID of the resource.</p>
    #   @return [String]
    # @!attribute principal_type
    #   <p>The principal type of the resource.</p>
    #   @return [String]
    class RemoveResourcePermissionRequest < Struct.new(
      :authentication_token,
      :resource_id,
      :principal_id,
      :principal_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response is too large to return. The request must include a filter to reduce the size of the response.</p>
    # @!attribute message
    #   @return [String]
    class RequestedEntityTooLargeException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource is already checked out.</p>
    # @!attribute message
    #   @return [String]
    class ResourceAlreadyCheckedOutException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the metadata of a resource.</p>
    # @!attribute type
    #   <p>The type of resource.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the resource.</p>
    #   @return [String]
    # @!attribute original_name
    #   <p>The original name of the resource before a rename operation.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the resource.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The version ID of the resource. This is an optional field and is filled for action
    #               on document version.</p>
    #   @return [String]
    # @!attribute owner
    #   <p>The owner of the resource.</p>
    #   @return [Types::UserMetadata]
    # @!attribute parent_id
    #   <p>The parent ID of the resource before a rename operation.</p>
    #   @return [String]
    class ResourceMetadata < Struct.new(
      :type,
      :name,
      :original_name,
      :id,
      :version_id,
      :owner,
      :parent_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the path information of a resource.</p>
    # @!attribute components
    #   <p>The components of the resource path.</p>
    #   @return [Array<Types::ResourcePathComponent>]
    class ResourcePath < Struct.new(
      :components,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the resource path.</p>
    # @!attribute id
    #   <p>The ID of the resource path.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the resource path.</p>
    #   @return [String]
    class ResourcePathComponent < Struct.new(
      :id,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>List of Documents, Folders, Comments, and Document Versions matching the query.</p>
    # @!attribute resource_type
    #   <p>The type of item being returned.</p>
    #   @return [String]
    # @!attribute web_url
    #   <p>The webUrl of the item being returned.</p>
    #   @return [String]
    # @!attribute document_metadata
    #   <p>The document that matches the query.</p>
    #   @return [Types::DocumentMetadata]
    # @!attribute folder_metadata
    #   <p>The folder that matches the query.</p>
    #   @return [Types::FolderMetadata]
    # @!attribute comment_metadata
    #   <p>The comment that matches the query.</p>
    #   @return [Types::CommentMetadata]
    # @!attribute document_version_metadata
    #   <p>The document version that matches the metadata.</p>
    #   @return [Types::DocumentVersionMetadata]
    class ResponseItem < Struct.new(
      :resource_type,
      :web_url,
      :document_metadata,
      :folder_metadata,
      :comment_metadata,
      :document_version_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    #   @return [String]
    # @!attribute document_id
    #   <p>The ID of the document.</p>
    #   @return [String]
    class RestoreDocumentVersionsRequest < Struct.new(
      :authentication_token,
      :document_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Filter based on UserIds or GroupIds.</p>
    # @!attribute id
    #   <p>UserIds or GroupIds.</p>
    #   @return [String]
    # @!attribute roles
    #   <p>The Role of a User or Group.</p>
    #   @return [Array<String>]
    class SearchPrincipalType < Struct.new(
      :id,
      :roles,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    #   @return [String]
    # @!attribute query_text
    #   <p>The String to search for. Searches across different text fields based on request parameters. Use double quotes around the query string for exact phrase matches.</p>
    #   @return [String]
    # @!attribute query_scopes
    #   <p>Filter based on the text field type. A Folder has only a name and no content. A Comment has only content and no name. A Document or Document Version has a name and content</p>
    #   @return [Array<String>]
    # @!attribute organization_id
    #   <p>Filters based on the resource owner OrgId. This is a mandatory parameter when using Admin SigV4 credentials.</p>
    #   @return [String]
    # @!attribute additional_response_fields
    #   <p>A list of attributes to include in the response. Used to request fields that are not normally
    #               returned in a standard response.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>Filters results based on entity metadata.</p>
    #   @return [Types::Filters]
    # @!attribute order_by
    #   <p>Order by results in one or more categories.</p>
    #   @return [Array<Types::SearchSortResult>]
    # @!attribute limit
    #   <p>Max results count per page.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>The marker for the next set of results.</p>
    #   @return [String]
    class SearchResourcesRequest < Struct.new(
      :authentication_token,
      :query_text,
      :query_scopes,
      :organization_id,
      :additional_response_fields,
      :filters,
      :order_by,
      :limit,
      :marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>List of Documents, Folders, Comments, and Document Versions matching the query.</p>
    #   @return [Array<Types::ResponseItem>]
    # @!attribute marker
    #   <p>The marker to use when requesting the next set of results. If there are no additional results, the string is empty.</p>
    #   @return [String]
    class SearchResourcesResponse < Struct.new(
      :items,
      :marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The result of the sort operation.</p>
    # @!attribute field
    #   <p>Sort search results based on this field name.</p>
    #   @return [String]
    # @!attribute order
    #   <p>Sort direction.</p>
    #   @return [String]
    class SearchSortResult < Struct.new(
      :field,
      :order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>One or more of the dependencies is unavailable.</p>
    # @!attribute message
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the recipient type and ID, if available.</p>
    # @!attribute id
    #   <p>The ID of the recipient.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the recipient.</p>
    #   @return [String]
    # @!attribute role
    #   <p>The role of the recipient.</p>
    #   @return [String]
    class SharePrincipal < Struct.new(
      :id,
      :type,
      :role,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the share results of a resource.</p>
    # @!attribute principal_id
    #   <p>The ID of the principal.</p>
    #   @return [String]
    # @!attribute invitee_principal_id
    #   <p>The ID of the invited user.</p>
    #   @return [String]
    # @!attribute role
    #   <p>The role.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status.</p>
    #   @return [String]
    # @!attribute share_id
    #   <p>The ID of the resource that was shared.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The status message.</p>
    #   @return [String]
    class ShareResult < Struct.new(
      :principal_id,
      :invitee_principal_id,
      :role,
      :status,
      :share_id,
      :status_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The storage limit has been exceeded.</p>
    # @!attribute message
    #   @return [String]
    class StorageLimitExceededException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The storage limit will be exceeded.</p>
    # @!attribute message
    #   @return [String]
    class StorageLimitWillExceedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the storage for a user.</p>
    # @!attribute storage_allocated_in_bytes
    #   <p>The amount of storage allocated, in bytes.</p>
    #   @return [Integer]
    # @!attribute storage_type
    #   <p>The type of storage.</p>
    #   @return [String]
    class StorageRuleType < Struct.new(
      :storage_allocated_in_bytes,
      :storage_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a subscription.</p>
    # @!attribute subscription_id
    #   <p>The ID of the subscription.</p>
    #   @return [String]
    # @!attribute end_point
    #   <p>The endpoint of the subscription.</p>
    #   @return [String]
    # @!attribute protocol
    #   <p>The protocol of the subscription.</p>
    #   @return [String]
    class Subscription < Struct.new(
      :subscription_id,
      :end_point,
      :protocol,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The limit has been reached on the number of labels for the specified
    #             resource.</p>
    # @!attribute message
    #   @return [String]
    class TooManyLabelsException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You've reached the limit on the number of subscriptions for the WorkDocs
    #             instance.</p>
    # @!attribute message
    #   @return [String]
    class TooManySubscriptionsException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operation is not permitted.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute code
    #   @return [String]
    class UnauthorizedOperationException < Struct.new(
      :message,
      :code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The caller does not have access to perform the action on the resource.</p>
    # @!attribute message
    #   @return [String]
    class UnauthorizedResourceAccessException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    #   @return [String]
    # @!attribute document_id
    #   <p>The ID of the document.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the document.</p>
    #   @return [String]
    # @!attribute parent_folder_id
    #   <p>The ID of the parent folder.</p>
    #   @return [String]
    # @!attribute resource_state
    #   <p>The resource state of the document. Only ACTIVE and RECYCLED are
    #               supported.</p>
    #   @return [String]
    class UpdateDocumentRequest < Struct.new(
      :authentication_token,
      :document_id,
      :name,
      :parent_folder_id,
      :resource_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    #   @return [String]
    # @!attribute document_id
    #   <p>The ID of the document.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>The version ID of the document.</p>
    #   @return [String]
    # @!attribute version_status
    #   <p>The status of the version.</p>
    #   @return [String]
    class UpdateDocumentVersionRequest < Struct.new(
      :authentication_token,
      :document_id,
      :version_id,
      :version_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    #   @return [String]
    # @!attribute folder_id
    #   <p>The ID of the folder.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the folder.</p>
    #   @return [String]
    # @!attribute parent_folder_id
    #   <p>The ID of the parent folder.</p>
    #   @return [String]
    # @!attribute resource_state
    #   <p>The resource state of the folder. Only ACTIVE and RECYCLED are accepted values from
    #               the API.</p>
    #   @return [String]
    class UpdateFolderRequest < Struct.new(
      :authentication_token,
      :folder_id,
      :name,
      :parent_folder_id,
      :resource_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using Amazon Web Services administrator credentials to access the API.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The ID of the user.</p>
    #   @return [String]
    # @!attribute given_name
    #   <p>The given name of the user.</p>
    #   @return [String]
    # @!attribute surname
    #   <p>The surname of the user.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the user.</p>
    #   @return [String]
    # @!attribute storage_rule
    #   <p>The amount of storage for the user.</p>
    #   @return [Types::StorageRuleType]
    # @!attribute time_zone_id
    #   <p>The time zone ID of the user.</p>
    #   @return [String]
    # @!attribute locale
    #   <p>The locale of the user.</p>
    #   @return [String]
    # @!attribute grant_poweruser_privileges
    #   <p>Boolean value to determine whether the user is granted Power user privileges.</p>
    #   @return [String]
    class UpdateUserRequest < Struct.new(
      :authentication_token,
      :user_id,
      :given_name,
      :surname,
      :type,
      :storage_rule,
      :time_zone_id,
      :locale,
      :grant_poweruser_privileges,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute user
    #   <p>The user information.</p>
    #   @return [Types::User]
    class UpdateUserResponse < Struct.new(
      :user,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the upload.</p>
    # @!attribute upload_url
    #   <p>The URL of the upload.</p>
    #   @return [String]
    # @!attribute signed_headers
    #   <p>The signed headers.</p>
    #   @return [Hash<String, String>]
    class UploadMetadata < Struct.new(
      :upload_url,
      :signed_headers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a user.</p>
    # @!attribute id
    #   <p>The ID of the user.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The login name of the user.</p>
    #   @return [String]
    # @!attribute email_address
    #   <p>The email address of the user.</p>
    #   @return [String]
    # @!attribute given_name
    #   <p>The given name of the user.</p>
    #   @return [String]
    # @!attribute surname
    #   <p>The surname of the user.</p>
    #   @return [String]
    # @!attribute organization_id
    #   <p>The ID of the organization.</p>
    #   @return [String]
    # @!attribute root_folder_id
    #   <p>The ID of the root folder.</p>
    #   @return [String]
    # @!attribute recycle_bin_folder_id
    #   <p>The ID of the recycle bin folder.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the user.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of user.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The time when the user was created.</p>
    #   @return [Time]
    # @!attribute modified_timestamp
    #   <p>The time when the user was modified.</p>
    #   @return [Time]
    # @!attribute time_zone_id
    #   <p>The time zone ID of the user.</p>
    #   @return [String]
    # @!attribute locale
    #   <p>The locale of the user.</p>
    #   @return [String]
    # @!attribute storage
    #   <p>The storage for the user.</p>
    #   @return [Types::UserStorageMetadata]
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
      :storage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the metadata of the user.</p>
    # @!attribute id
    #   <p>The ID of the user.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The name of the user.</p>
    #   @return [String]
    # @!attribute given_name
    #   <p>The given name of the user before a rename operation.</p>
    #   @return [String]
    # @!attribute surname
    #   <p>The surname of the user.</p>
    #   @return [String]
    # @!attribute email_address
    #   <p>The email address of the user.</p>
    #   @return [String]
    class UserMetadata < Struct.new(
      :id,
      :username,
      :given_name,
      :surname,
      :email_address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the storage for a user.</p>
    # @!attribute storage_utilized_in_bytes
    #   <p>The amount of storage used, in bytes.</p>
    #   @return [Integer]
    # @!attribute storage_rule
    #   <p>The storage for a user.</p>
    #   @return [Types::StorageRuleType]
    class UserStorageMetadata < Struct.new(
      :storage_utilized_in_bytes,
      :storage_rule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
