# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::QBusiness
  module Types

    # Used to configure access permissions for a document.
    #
    # @!attribute [rw] access_controls
    #   A list of `AccessControlList` objects.
    #   @return [Array<Types::AccessControl>]
    #
    # @!attribute [rw] member_relation
    #   Describes the member relation within the `AccessControlList` object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/AccessConfiguration AWS API Documentation
    #
    class AccessConfiguration < Struct.new(
      :access_controls,
      :member_relation)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of principals. Each principal can be either a `USER` or a
    # `GROUP` and can be designated document access permissions of either
    # `ALLOW` or `DENY`.
    #
    # @!attribute [rw] member_relation
    #   Describes the member relation within a principal list.
    #   @return [String]
    #
    # @!attribute [rw] principals
    #   Contains a list of principals, where a principal can be either a
    #   `USER` or a `GROUP`. Each principal can be have the following type
    #   of document access: `ALLOW` or `DENY`.
    #   @return [Array<Types::Principal>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/AccessControl AWS API Documentation
    #
    class AccessControl < Struct.new(
      :member_relation,
      :principals)
      SENSITIVE = []
      include Aws::Structure
    end

    # You don't have access to perform this action. Make sure you have the
    # required permission policies and user accounts and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Performs an Amazon Q plugin action during a non-streaming chat
    # conversation.
    #
    # @!attribute [rw] payload
    #   A mapping of field names to the field values in input that an end
    #   user provides to Amazon Q requests to perform their plugin action.
    #   @return [Hash<String,Types::ActionExecutionPayloadField>]
    #
    # @!attribute [rw] payload_field_name_separator
    #   A string used to retain information about the hierarchical contexts
    #   within an action execution event payload.
    #   @return [String]
    #
    # @!attribute [rw] plugin_id
    #   The identifier of the plugin the action is attached to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ActionExecution AWS API Documentation
    #
    class ActionExecution < Struct.new(
      :payload,
      :payload_field_name_separator,
      :plugin_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A user input field in an plugin action execution payload.
    #
    # @!attribute [rw] value
    #   The content of a user input field in an plugin action execution
    #   payload.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ActionExecutionPayloadField AWS API Documentation
    #
    class ActionExecutionPayloadField < Struct.new(
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # An output event that Amazon Q returns to an user who wants to perform
    # a plugin action during a non-streaming chat conversation. It contains
    # information about the selected action with a list of possible user
    # input fields, some pre-populated by Amazon Q.
    #
    # @!attribute [rw] payload
    #   Field values that an end user needs to provide to Amazon Q for
    #   Amazon Q to perform the requested plugin action.
    #   @return [Hash<String,Types::ActionReviewPayloadField>]
    #
    # @!attribute [rw] payload_field_name_separator
    #   A string used to retain information about the hierarchical contexts
    #   within an action review payload.
    #   @return [String]
    #
    # @!attribute [rw] plugin_id
    #   The identifier of the plugin associated with the action review.
    #   @return [String]
    #
    # @!attribute [rw] plugin_type
    #   The type of plugin.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ActionReview AWS API Documentation
    #
    class ActionReview < Struct.new(
      :payload,
      :payload_field_name_separator,
      :plugin_id,
      :plugin_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A user input field in an plugin action review payload.
    #
    # @!attribute [rw] allowed_values
    #   Information about the field values that an end user can use to
    #   provide to Amazon Q for Amazon Q to perform the requested plugin
    #   action.
    #   @return [Array<Types::ActionReviewPayloadFieldAllowedValue>]
    #
    # @!attribute [rw] display_name
    #   The name of the field.
    #   @return [String]
    #
    # @!attribute [rw] display_order
    #   The display order of fields in a payload.
    #   @return [Integer]
    #
    # @!attribute [rw] required
    #   Information about whether the field is required.
    #   @return [Boolean]
    #
    # @!attribute [rw] type
    #   The type of field.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The field value.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ActionReviewPayloadField AWS API Documentation
    #
    class ActionReviewPayloadField < Struct.new(
      :allowed_values,
      :display_name,
      :display_order,
      :required,
      :type,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the field values that an end user can use to provide
    # to Amazon Q for Amazon Q to perform the requested plugin action.
    #
    # @!attribute [rw] display_value
    #   The name of the field.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] value
    #   The field value.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ActionReviewPayloadFieldAllowedValue AWS API Documentation
    #
    class ActionReviewPayloadFieldAllowedValue < Struct.new(
      :display_value,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information for an Amazon Q application.
    #
    # @!attribute [rw] application_id
    #   The identifier for the Amazon Q application.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The Unix timestamp when the Amazon Q application was created.
    #   @return [Time]
    #
    # @!attribute [rw] display_name
    #   The name of the Amazon Q application.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Amazon Q application. The application is ready to
    #   use when the status is `ACTIVE`.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The Unix timestamp when the Amazon Q application was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/Application AWS API Documentation
    #
    class Application < Struct.new(
      :application_id,
      :created_at,
      :display_name,
      :status,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information about the file upload during chat feature
    # for your application.
    #
    # @!attribute [rw] attachments_control_mode
    #   Information about whether file upload during chat functionality is
    #   activated for your application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/AppliedAttachmentsConfiguration AWS API Documentation
    #
    class AppliedAttachmentsConfiguration < Struct.new(
      :attachments_control_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # A file directly uploaded into a web experience chat.
    #
    # @!attribute [rw] data
    #   The data contained within the uploaded file.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/AttachmentInput AWS API Documentation
    #
    class AttachmentInput < Struct.new(
      :data,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a file uploaded during chat.
    #
    # @!attribute [rw] error
    #   An error associated with a file uploaded during chat.
    #   @return [Types::ErrorDetail]
    #
    # @!attribute [rw] name
    #   The name of a file uploaded during chat.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a file uploaded during chat.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/AttachmentOutput AWS API Documentation
    #
    class AttachmentOutput < Struct.new(
      :error,
      :name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information for the file upload during chat feature.
    #
    # @!attribute [rw] attachments_control_mode
    #   Status information about whether file upload functionality is
    #   activated or deactivated for your end user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/AttachmentsConfiguration AWS API Documentation
    #
    class AttachmentsConfiguration < Struct.new(
      :attachments_control_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # Enables filtering of Amazon Q web experience responses based on
    # document attributes or metadata fields.
    #
    # @!attribute [rw] and_all_filters
    #   Performs a logical `AND` operation on all supplied filters.
    #   @return [Array<Types::AttributeFilter>]
    #
    # @!attribute [rw] contains_all
    #   Returns `true` when a document contains all the specified document
    #   attributes or metadata fields.
    #   @return [Types::DocumentAttribute]
    #
    # @!attribute [rw] contains_any
    #   Returns `true` when a document contains any of the specified
    #   document attributes or metadata fields.
    #   @return [Types::DocumentAttribute]
    #
    # @!attribute [rw] equals_to
    #   Performs an equals operation on two document attributes or metadata
    #   fields.
    #   @return [Types::DocumentAttribute]
    #
    # @!attribute [rw] greater_than
    #   Performs a greater than operation on two document attributes or
    #   metadata fields. Use with a document attribute of type `Date` or
    #   `Long`.
    #   @return [Types::DocumentAttribute]
    #
    # @!attribute [rw] greater_than_or_equals
    #   Performs a greater or equals than operation on two document
    #   attributes or metadata fields. Use with a document attribute of type
    #   `Date` or `Long`.
    #   @return [Types::DocumentAttribute]
    #
    # @!attribute [rw] less_than
    #   Performs a less than operation on two document attributes or
    #   metadata fields. Use with a document attribute of type `Date` or
    #   `Long`.
    #   @return [Types::DocumentAttribute]
    #
    # @!attribute [rw] less_than_or_equals
    #   Performs a less than or equals operation on two document attributes
    #   or metadata fields. Use with a document attribute of type `Date` or
    #   `Long`.
    #   @return [Types::DocumentAttribute]
    #
    # @!attribute [rw] not_filter
    #   Performs a logical `NOT` operation on all supplied filters.
    #   @return [Types::AttributeFilter]
    #
    # @!attribute [rw] or_all_filters
    #   Performs a logical `OR` operation on all supplied filters.
    #   @return [Array<Types::AttributeFilter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/AttributeFilter AWS API Documentation
    #
    class AttributeFilter < Struct.new(
      :and_all_filters,
      :contains_all,
      :contains_any,
      :equals_to,
      :greater_than,
      :greater_than_or_equals,
      :less_than,
      :less_than_or_equals,
      :not_filter,
      :or_all_filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the basic authentication credentials used to
    # configure a plugin.
    #
    # @!attribute [rw] role_arn
    #   The ARN of an IAM role used by Amazon Q to access the basic
    #   authentication credentials stored in a Secrets Manager secret.
    #   @return [String]
    #
    # @!attribute [rw] secret_arn
    #   The ARN of the Secrets Manager secret that stores the basic
    #   authentication credentials used for plugin configuration..
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/BasicAuthConfiguration AWS API Documentation
    #
    class BasicAuthConfiguration < Struct.new(
      :role_arn,
      :secret_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q application.
    #   @return [String]
    #
    # @!attribute [rw] data_source_sync_id
    #   The identifier of the data source sync during which the documents
    #   were deleted.
    #   @return [String]
    #
    # @!attribute [rw] documents
    #   Documents deleted from the Amazon Q index.
    #   @return [Array<Types::DeleteDocument>]
    #
    # @!attribute [rw] index_id
    #   The identifier of the Amazon Q index that contains the documents to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/BatchDeleteDocumentRequest AWS API Documentation
    #
    class BatchDeleteDocumentRequest < Struct.new(
      :application_id,
      :data_source_sync_id,
      :documents,
      :index_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_documents
    #   A list of documents that couldn't be removed from the Amazon Q
    #   index. Each entry contains an error message that indicates why the
    #   document couldn't be removed from the index.
    #   @return [Array<Types::FailedDocument>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/BatchDeleteDocumentResponse AWS API Documentation
    #
    class BatchDeleteDocumentResponse < Struct.new(
      :failed_documents)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q application.
    #   @return [String]
    #
    # @!attribute [rw] data_source_sync_id
    #   The identifier of the data source sync during which the documents
    #   were added.
    #   @return [String]
    #
    # @!attribute [rw] documents
    #   One or more documents to add to the index.
    #   @return [Array<Types::Document>]
    #
    # @!attribute [rw] index_id
    #   The identifier of the Amazon Q index to add the documents to.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role with permission to
    #   access your S3 bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/BatchPutDocumentRequest AWS API Documentation
    #
    class BatchPutDocumentRequest < Struct.new(
      :application_id,
      :data_source_sync_id,
      :documents,
      :index_id,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_documents
    #   A list of documents that were not added to the Amazon Q index
    #   because the document failed a validation check. Each document
    #   contains an error message that indicates why the document couldn't
    #   be added to the index.
    #   @return [Array<Types::FailedDocument>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/BatchPutDocumentResponse AWS API Documentation
    #
    class BatchPutDocumentResponse < Struct.new(
      :failed_documents)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the phrases blocked from chat by your chat
    # control configuration.
    #
    # @!attribute [rw] blocked_phrases
    #   A list of phrases blocked from a Amazon Q web experience chat.
    #   @return [Array<String>]
    #
    # @!attribute [rw] system_message_override
    #   The configured custom message displayed to an end user informing
    #   them that they've used a blocked phrase during chat.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/BlockedPhrasesConfiguration AWS API Documentation
    #
    class BlockedPhrasesConfiguration < Struct.new(
      :blocked_phrases,
      :system_message_override)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updates a blocked phrases configuration in your Amazon Q application.
    #
    # @!attribute [rw] blocked_phrases_to_create_or_update
    #   Creates or updates a blocked phrases configuration in your Amazon Q
    #   application.
    #   @return [Array<String>]
    #
    # @!attribute [rw] blocked_phrases_to_delete
    #   Deletes a blocked phrases configuration in your Amazon Q
    #   application.
    #   @return [Array<String>]
    #
    # @!attribute [rw] system_message_override
    #   The configured custom message displayed to your end user when they
    #   use blocked phrase during chat.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/BlockedPhrasesConfigurationUpdate AWS API Documentation
    #
    class BlockedPhrasesConfigurationUpdate < Struct.new(
      :blocked_phrases_to_create_or_update,
      :blocked_phrases_to_delete,
      :system_message_override)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action_execution
    #   A request from an end user to perform an Amazon Q plugin action.
    #   @return [Types::ActionExecution]
    #
    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q application linked to the Amazon Q
    #   conversation.
    #   @return [String]
    #
    # @!attribute [rw] attachments
    #   A list of files uploaded directly during chat. You can upload a
    #   maximum of 5 files of upto 10 MB each.
    #   @return [Array<Types::AttachmentInput>]
    #
    # @!attribute [rw] attribute_filter
    #   Enables filtering of Amazon Q web experience responses based on
    #   document attributes or metadata fields.
    #   @return [Types::AttributeFilter]
    #
    # @!attribute [rw] client_token
    #   A token that you provide to identify a chat request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] conversation_id
    #   The identifier of the Amazon Q conversation.
    #   @return [String]
    #
    # @!attribute [rw] parent_message_id
    #   The identifier of the previous end user text input message in a
    #   conversation.
    #   @return [String]
    #
    # @!attribute [rw] user_groups
    #   The groups that a user associated with the chat input belongs to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user attached to the chat input.
    #   @return [String]
    #
    # @!attribute [rw] user_message
    #   A end user message in a conversation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ChatSyncInput AWS API Documentation
    #
    class ChatSyncInput < Struct.new(
      :action_execution,
      :application_id,
      :attachments,
      :attribute_filter,
      :client_token,
      :conversation_id,
      :parent_message_id,
      :user_groups,
      :user_id,
      :user_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] action_review
    #   A request from Amazon Q to the end user for information Amazon Q
    #   needs to successfully complete a requested plugin action.
    #   @return [Types::ActionReview]
    #
    # @!attribute [rw] conversation_id
    #   The identifier of the Amazon Q conversation.
    #   @return [String]
    #
    # @!attribute [rw] failed_attachments
    #   A list of files which failed to upload during chat.
    #   @return [Array<Types::AttachmentOutput>]
    #
    # @!attribute [rw] source_attributions
    #   The source documents used to generate the conversation response.
    #   @return [Array<Types::SourceAttribution>]
    #
    # @!attribute [rw] system_message
    #   An AI-generated message in a conversation.
    #   @return [String]
    #
    # @!attribute [rw] system_message_id
    #   The identifier of an Amazon Q AI generated message within the
    #   conversation.
    #   @return [String]
    #
    # @!attribute [rw] user_message_id
    #   The identifier of an Amazon Q end user text input message within the
    #   conversation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ChatSyncOutput AWS API Documentation
    #
    class ChatSyncOutput < Struct.new(
      :action_review,
      :conversation_id,
      :failed_attachments,
      :source_attributions,
      :system_message,
      :system_message_id,
      :user_message_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # You are trying to perform an action that conflicts with the current
    # status of your resource. Fix any inconsistences with your resources
    # and try again.
    #
    # @!attribute [rw] message
    #   The message describing a `ConflictException`.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource affected.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource affected.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A rule for configuring how Amazon Q responds when it encounters a a
    # blocked topic. You can configure a custom message to inform your end
    # users that they have asked about a restricted topic and suggest any
    # next steps they should take.
    #
    # @!attribute [rw] system_message_override
    #   The configured custom message displayed to an end user informing
    #   them that they've used a blocked phrase during chat.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ContentBlockerRule AWS API Documentation
    #
    class ContentBlockerRule < Struct.new(
      :system_message_override)
      SENSITIVE = []
      include Aws::Structure
    end

    # Rules for retrieving content from data sources connected to a Amazon Q
    # application for a specific topic control configuration.
    #
    # @!attribute [rw] eligible_data_sources
    #   Specifies data sources in a Amazon Q application to use for content
    #   generation.
    #   @return [Array<Types::EligibleDataSource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ContentRetrievalRule AWS API Documentation
    #
    class ContentRetrievalRule < Struct.new(
      :eligible_data_sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # A conversation in an Amazon Q application.
    #
    # @!attribute [rw] conversation_id
    #   The identifier of the Amazon Q conversation.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start time of the conversation.
    #   @return [Time]
    #
    # @!attribute [rw] title
    #   The title of the conversation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/Conversation AWS API Documentation
    #
    class Conversation < Struct.new(
      :conversation_id,
      :start_time,
      :title)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attachments_configuration
    #   An option to allow end users to upload files directly during chat.
    #   @return [Types::AttachmentsConfiguration]
    #
    # @!attribute [rw] client_token
    #   A token that you provide to identify the request to create your
    #   Amazon Q application.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the Amazon Q application.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   A name for the Amazon Q application.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   The identifier of the KMS key that is used to encrypt your data.
    #   Amazon Q doesn't support asymmetric keys.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role with permissions to
    #   access your Amazon CloudWatch logs and metrics.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs that identify or categorize your Amazon Q
    #   application. You can also use tags to help control access to the
    #   application. Tag keys and values can consist of Unicode letters,
    #   digits, white space, and any of the following symbols: \_ . : / = +
    #   - @.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/CreateApplicationRequest AWS API Documentation
    #
    class CreateApplicationRequest < Struct.new(
      :attachments_configuration,
      :client_token,
      :description,
      :display_name,
      :encryption_configuration,
      :role_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   The Amazon Resource Name (ARN) of the Amazon Q application.
    #   @return [String]
    #
    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/CreateApplicationResponse AWS API Documentation
    #
    class CreateApplicationResponse < Struct.new(
      :application_arn,
      :application_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q application the data source will be
    #   attached to.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A token you provide to identify a request to create a data source
    #   connector. Multiple calls to the `CreateDataSource` API with the
    #   same client token will create only one data source connector.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   Configuration information to connect to your data source repository.
    #   For configuration templates for your specific data source, see
    #   [Supported connectors][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/business-use-dg/connectors-list.html.html
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] description
    #   A description for the data source connector.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   A name for the data source connector.
    #   @return [String]
    #
    # @!attribute [rw] document_enrichment_configuration
    #   Provides the configuration information for altering document
    #   metadata and content during the document ingestion process.
    #
    #   For more information, see [Custom document enrichment][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/business-use-dg/custom-document-enrichment.html
    #   @return [Types::DocumentEnrichmentConfiguration]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index that you want to use with the data
    #   source connector.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role with permission to
    #   access the data source and required resources.
    #   @return [String]
    #
    # @!attribute [rw] sync_schedule
    #   Sets the frequency for Amazon Q to check the documents in your data
    #   source repository and update your index. If you don't set a
    #   schedule, Amazon Q won't periodically update the index.
    #
    #   Specify a `cron-` format schedule string or an empty string to
    #   indicate that the index is updated on demand. You can't specify the
    #   `Schedule` parameter when the `Type` parameter is set to `CUSTOM`.
    #   If you do, you receive a `ValidationException` exception.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs that identify or categorize the data
    #   source connector. You can also use tags to help control access to
    #   the data source connector. Tag keys and values can consist of
    #   Unicode letters, digits, white space, and any of the following
    #   symbols: \_ . : / = + - @.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] vpc_configuration
    #   Configuration information for an Amazon VPC (Virtual Private Cloud)
    #   to connect to your data source. For more information, see [Using
    #   Amazon VPC with Amazon Q connectors][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/business-use-dg/connector-vpc.html
    #   @return [Types::DataSourceVpcConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/CreateDataSourceRequest AWS API Documentation
    #
    class CreateDataSourceRequest < Struct.new(
      :application_id,
      :client_token,
      :configuration,
      :description,
      :display_name,
      :document_enrichment_configuration,
      :index_id,
      :role_arn,
      :sync_schedule,
      :tags,
      :vpc_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_source_arn
    #   The Amazon Resource Name (ARN) of a data source in an Amazon Q
    #   application.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The identifier of the data source connector.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/CreateDataSourceResponse AWS API Documentation
    #
    class CreateDataSourceResponse < Struct.new(
      :data_source_arn,
      :data_source_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q application using the index.
    #   @return [String]
    #
    # @!attribute [rw] capacity_configuration
    #   The capacity units you want to provision for your index. You can add
    #   and remove capacity to fit your usage needs.
    #   @return [Types::IndexCapacityConfiguration]
    #
    # @!attribute [rw] client_token
    #   A token that you provide to identify the request to create an index.
    #   Multiple calls to the `CreateIndex` API with the same client token
    #   will create only one index.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the Amazon Q index.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   A name for the Amazon Q index.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs that identify or categorize the index. You
    #   can also use tags to help control access to the index. Tag keys and
    #   values can consist of Unicode letters, digits, white space, and any
    #   of the following symbols: \_ . : / = + - @.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/CreateIndexRequest AWS API Documentation
    #
    class CreateIndexRequest < Struct.new(
      :application_id,
      :capacity_configuration,
      :client_token,
      :description,
      :display_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] index_arn
    #   The Amazon Resource Name (ARN) of an Amazon Q index.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier for the Amazon Q index.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/CreateIndexResponse AWS API Documentation
    #
    class CreateIndexResponse < Struct.new(
      :index_arn,
      :index_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the application that will contain the plugin.
    #   @return [String]
    #
    # @!attribute [rw] auth_configuration
    #   Authentication configuration information for an Amazon Q plugin.
    #   @return [Types::PluginAuthConfiguration]
    #
    # @!attribute [rw] client_token
    #   A token that you provide to identify the request to create your
    #   Amazon Q plugin.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   A the name for your plugin.
    #   @return [String]
    #
    # @!attribute [rw] server_url
    #   The source URL used for plugin configuration.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs that identify or categorize the data
    #   source connector. You can also use tags to help control access to
    #   the data source connector. Tag keys and values can consist of
    #   Unicode letters, digits, white space, and any of the following
    #   symbols: \_ . : / = + - @.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] type
    #   The type of plugin you want to create.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/CreatePluginRequest AWS API Documentation
    #
    class CreatePluginRequest < Struct.new(
      :application_id,
      :auth_configuration,
      :client_token,
      :display_name,
      :server_url,
      :tags,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] plugin_arn
    #   The Amazon Resource Name (ARN) of a plugin.
    #   @return [String]
    #
    # @!attribute [rw] plugin_id
    #   The identifier of the plugin created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/CreatePluginResponse AWS API Documentation
    #
    class CreatePluginResponse < Struct.new(
      :plugin_arn,
      :plugin_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of your Amazon Q application.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A token that you provide to identify the request to create your
    #   Amazon Q application retriever.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   Provides information on how the retriever used for your Amazon Q
    #   application is configured.
    #   @return [Types::RetrieverConfiguration]
    #
    # @!attribute [rw] display_name
    #   The name of your retriever.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of an IAM role used by Amazon Q to access the basic
    #   authentication credentials stored in a Secrets Manager secret.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs that identify or categorize the retriever.
    #   You can also use tags to help control access to the retriever. Tag
    #   keys and values can consist of Unicode letters, digits, white space,
    #   and any of the following symbols: \_ . : / = + - @.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] type
    #   The type of retriever you are using.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/CreateRetrieverRequest AWS API Documentation
    #
    class CreateRetrieverRequest < Struct.new(
      :application_id,
      :client_token,
      :configuration,
      :display_name,
      :role_arn,
      :tags,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] retriever_arn
    #   The Amazon Resource Name (ARN) of an IAM role associated with a
    #   retriever.
    #   @return [String]
    #
    # @!attribute [rw] retriever_id
    #   The identifier of the retriever you are using.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/CreateRetrieverResponse AWS API Documentation
    #
    class CreateRetrieverResponse < Struct.new(
      :retriever_arn,
      :retriever_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the application for which the user mapping will be
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A token that you provide to identify the request to create your
    #   Amazon Q user mapping.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] user_aliases
    #   The list of user aliases in the mapping.
    #   @return [Array<Types::UserAlias>]
    #
    # @!attribute [rw] user_id
    #   The user emails attached to a user mapping.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/CreateUserRequest AWS API Documentation
    #
    class CreateUserRequest < Struct.new(
      :application_id,
      :client_token,
      :user_aliases,
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/CreateUserResponse AWS API Documentation
    #
    class CreateUserResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q web experience.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A token you provide to identify a request to create an Amazon Q web
    #   experience.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] sample_prompts_control_mode
    #   Determines whether sample prompts are enabled in the web experience
    #   for an end user.
    #   @return [String]
    #
    # @!attribute [rw] subtitle
    #   A subtitle to personalize your Amazon Q web experience.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs that identify or categorize your Amazon Q
    #   web experience. You can also use tags to help control access to the
    #   web experience. Tag keys and values can consist of Unicode letters,
    #   digits, white space, and any of the following symbols: \_ . : / = +
    #   - @.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] title
    #   The title for your Amazon Q web experience.
    #   @return [String]
    #
    # @!attribute [rw] welcome_message
    #   The customized welcome message for end users of an Amazon Q web
    #   experience.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/CreateWebExperienceRequest AWS API Documentation
    #
    class CreateWebExperienceRequest < Struct.new(
      :application_id,
      :client_token,
      :sample_prompts_control_mode,
      :subtitle,
      :tags,
      :title,
      :welcome_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] web_experience_arn
    #   The Amazon Resource Name (ARN) of an Amazon Q web experience.
    #   @return [String]
    #
    # @!attribute [rw] web_experience_id
    #   The identifier of the Amazon Q web experience.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/CreateWebExperienceResponse AWS API Documentation
    #
    class CreateWebExperienceResponse < Struct.new(
      :web_experience_arn,
      :web_experience_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A data source in an Amazon Q application.
    #
    # @!attribute [rw] created_at
    #   The Unix timestamp when the Amazon Q data source was created.
    #   @return [Time]
    #
    # @!attribute [rw] data_source_id
    #   The identifier of the Amazon Q data source.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of the Amazon Q data source.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Amazon Q data source.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the Amazon Q data source.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The Unix timestamp when the Amazon Q data source was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DataSource AWS API Documentation
    #
    class DataSource < Struct.new(
      :created_at,
      :data_source_id,
      :display_name,
      :status,
      :type,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an Amazon Q data source connector
    # synchronization job.
    #
    # @!attribute [rw] data_source_error_code
    #   If the reason that the synchronization failed is due to an error
    #   with the underlying data source, this field contains a code that
    #   identifies the error.
    #   @return [String]
    #
    # @!attribute [rw] end_time
    #   The Unix timestamp when the synchronization job completed.
    #   @return [Time]
    #
    # @!attribute [rw] error
    #   If the `Status` field is set to `FAILED`, the `ErrorCode` field
    #   indicates the reason the synchronization failed.
    #   @return [Types::ErrorDetail]
    #
    # @!attribute [rw] execution_id
    #   The identifier of a data source synchronization job.
    #   @return [String]
    #
    # @!attribute [rw] metrics
    #   Maps a batch delete document request to a specific data source sync
    #   job. This is optional and should only be supplied when documents are
    #   deleted by a data source connector.
    #   @return [Types::DataSourceSyncJobMetrics]
    #
    # @!attribute [rw] start_time
    #   The Unix time stamp when the data source synchronization job
    #   started.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the synchronization job. When the `Status` field is
    #   set to `SUCCEEDED`, the synchronization job is done. If the status
    #   code is `FAILED`, the `ErrorCode` and `ErrorMessage` fields give you
    #   the reason for the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DataSourceSyncJob AWS API Documentation
    #
    class DataSourceSyncJob < Struct.new(
      :data_source_error_code,
      :end_time,
      :error,
      :execution_id,
      :metrics,
      :start_time,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Maps a batch delete document request to a specific Amazon Q data
    # source connector sync job.
    #
    # @!attribute [rw] documents_added
    #   The current count of documents added from the data source during the
    #   data source sync.
    #   @return [String]
    #
    # @!attribute [rw] documents_deleted
    #   The current count of documents deleted from the data source during
    #   the data source sync.
    #   @return [String]
    #
    # @!attribute [rw] documents_failed
    #   The current count of documents that failed to sync from the data
    #   source during the data source sync.
    #   @return [String]
    #
    # @!attribute [rw] documents_modified
    #   The current count of documents modified in the data source during
    #   the data source sync.
    #   @return [String]
    #
    # @!attribute [rw] documents_scanned
    #   The current count of documents crawled by the ongoing sync job in
    #   the data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DataSourceSyncJobMetrics AWS API Documentation
    #
    class DataSourceSyncJobMetrics < Struct.new(
      :documents_added,
      :documents_deleted,
      :documents_failed,
      :documents_modified,
      :documents_scanned)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides configuration information needed to connect to an Amazon VPC
    # (Virtual Private Cloud).
    #
    # @!attribute [rw] security_group_ids
    #   A list of identifiers of security groups within your Amazon VPC. The
    #   security groups should enable Amazon Q to connect to the data
    #   source.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_ids
    #   A list of identifiers for subnets within your Amazon VPC. The
    #   subnets should be able to connect to each other in the VPC, and they
    #   should have outgoing access to the Internet through a NAT device.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DataSourceVpcConfiguration AWS API Documentation
    #
    class DataSourceVpcConfiguration < Struct.new(
      :security_group_ids,
      :subnet_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DeleteApplicationRequest AWS API Documentation
    #
    class DeleteApplicationRequest < Struct.new(
      :application_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DeleteApplicationResponse AWS API Documentation
    #
    class DeleteApplicationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_id
    #   The identifier of the application the chat controls have been
    #   configured for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DeleteChatControlsConfigurationRequest AWS API Documentation
    #
    class DeleteChatControlsConfigurationRequest < Struct.new(
      :application_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DeleteChatControlsConfigurationResponse AWS API Documentation
    #
    class DeleteChatControlsConfigurationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q application associated with the
    #   conversation.
    #   @return [String]
    #
    # @!attribute [rw] conversation_id
    #   The identifier of the Amazon Q web experience conversation being
    #   deleted.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user who is deleting the conversation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DeleteConversationRequest AWS API Documentation
    #
    class DeleteConversationRequest < Struct.new(
      :application_id,
      :conversation_id,
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DeleteConversationResponse AWS API Documentation
    #
    class DeleteConversationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q application used with the data source
    #   connector.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The identifier of the data source connector that you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index used with the data source connector.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DeleteDataSourceRequest AWS API Documentation
    #
    class DeleteDataSourceRequest < Struct.new(
      :application_id,
      :data_source_id,
      :index_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DeleteDataSourceResponse AWS API Documentation
    #
    class DeleteDataSourceResponse < Aws::EmptyStructure; end

    # A document deleted from an Amazon Q data source connector.
    #
    # @!attribute [rw] document_id
    #   The identifier of the deleted document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DeleteDocument AWS API Documentation
    #
    class DeleteDocument < Struct.new(
      :document_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the application in which the group mapping
    #   belongs.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The identifier of the data source linked to the group
    #
    #   A group can be tied to multiple data sources. You can delete a group
    #   from accessing documents in a certain data source. For example, the
    #   groups "Research", "Engineering", and "Sales and Marketing"
    #   are all tied to the company's documents stored in the data sources
    #   Confluence and Salesforce. You want to delete "Research" and
    #   "Engineering" groups from Salesforce, so that these groups cannot
    #   access customer-related documents stored in Salesforce. Only "Sales
    #   and Marketing" should access documents in the Salesforce data
    #   source.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The name of the group you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index you want to delete the group from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DeleteGroupRequest AWS API Documentation
    #
    class DeleteGroupRequest < Struct.new(
      :application_id,
      :data_source_id,
      :group_name,
      :index_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DeleteGroupResponse AWS API Documentation
    #
    class DeleteGroupResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q application the Amazon Q index is
    #   linked to.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the Amazon Q index.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DeleteIndexRequest AWS API Documentation
    #
    class DeleteIndexRequest < Struct.new(
      :application_id,
      :index_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DeleteIndexResponse AWS API Documentation
    #
    class DeleteIndexResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_id
    #   The identifier the application attached to the Amazon Q plugin.
    #   @return [String]
    #
    # @!attribute [rw] plugin_id
    #   The identifier of the plugin being deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DeletePluginRequest AWS API Documentation
    #
    class DeletePluginRequest < Struct.new(
      :application_id,
      :plugin_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DeletePluginResponse AWS API Documentation
    #
    class DeletePluginResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q application using the retriever.
    #   @return [String]
    #
    # @!attribute [rw] retriever_id
    #   The identifier of the retriever being deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DeleteRetrieverRequest AWS API Documentation
    #
    class DeleteRetrieverRequest < Struct.new(
      :application_id,
      :retriever_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DeleteRetrieverResponse AWS API Documentation
    #
    class DeleteRetrieverResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_id
    #   The identifier of the application from which the user is being
    #   deleted.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The user email being deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DeleteUserRequest AWS API Documentation
    #
    class DeleteUserRequest < Struct.new(
      :application_id,
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DeleteUserResponse AWS API Documentation
    #
    class DeleteUserResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q application linked to the Amazon Q
    #   web experience.
    #   @return [String]
    #
    # @!attribute [rw] web_experience_id
    #   The identifier of the Amazon Q web experience being deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DeleteWebExperienceRequest AWS API Documentation
    #
    class DeleteWebExperienceRequest < Struct.new(
      :application_id,
      :web_experience_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DeleteWebExperienceResponse AWS API Documentation
    #
    class DeleteWebExperienceResponse < Aws::EmptyStructure; end

    # A document in an Amazon Q application.
    #
    # @!attribute [rw] access_configuration
    #   Configuration information for access permission to a document.
    #   @return [Types::AccessConfiguration]
    #
    # @!attribute [rw] attributes
    #   Custom attributes to apply to the document for refining Amazon Q web
    #   experience responses.
    #   @return [Array<Types::DocumentAttribute>]
    #
    # @!attribute [rw] content
    #   The contents of the document.
    #   @return [Types::DocumentContent]
    #
    # @!attribute [rw] content_type
    #   The file type of the document in the Blob field.
    #
    #   If you want to index snippets or subsets of HTML documents instead
    #   of the entirety of the HTML documents, you add the `HTML` start and
    #   closing tags (`<HTML>content</HTML>`) around the content.
    #   @return [String]
    #
    # @!attribute [rw] document_enrichment_configuration
    #   The configuration information for altering document metadata and
    #   content during the document ingestion process.
    #   @return [Types::DocumentEnrichmentConfiguration]
    #
    # @!attribute [rw] id
    #   The identifier of the document.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/Document AWS API Documentation
    #
    class Document < Struct.new(
      :access_configuration,
      :attributes,
      :content,
      :content_type,
      :document_enrichment_configuration,
      :id,
      :title)
      SENSITIVE = []
      include Aws::Structure
    end

    # A document attribute or metadata field.
    #
    # @!attribute [rw] name
    #   The identifier for the attribute.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the attribute.
    #   @return [Types::DocumentAttributeValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DocumentAttribute AWS API Documentation
    #
    class DocumentAttribute < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The condition used for the target document attribute or metadata field
    # when ingesting documents into Amazon Q. You use this with [
    # `DocumentAttributeTarget` ][1] to apply the condition.
    #
    # For example, you can create the 'Department' target field and have
    # it prefill department names associated with the documents based on
    # information in the 'Source\_URI' field. Set the condition that if
    # the 'Source\_URI' field contains 'financial' in its URI value,
    # then prefill the target field 'Department' with the target value
    # 'Finance' for the document.
    #
    # Amazon Q can't create a target field if it has not already been
    # created as an index field. After you create your index field, you can
    # create a document metadata field using `DocumentAttributeTarget`.
    # Amazon Q then will map your newly created metadata field to your index
    # field.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/enterpriseq/latest/APIReference/API_DocumentAttributeTarget.html
    #
    # @!attribute [rw] key
    #   The identifier of the document attribute used for the condition.
    #
    #   For example, 'Source\_URI' could be an identifier for the
    #   attribute or metadata field that contains source URIs associated
    #   with the documents.
    #
    #   Amazon Q currently doesn't support `_document_body` as an attribute
    #   key used for the condition.
    #   @return [String]
    #
    # @!attribute [rw] operator
    #   The identifier of the document attribute used for the condition.
    #
    #   For example, 'Source\_URI' could be an identifier for the
    #   attribute or metadata field that contains source URIs associated
    #   with the documents.
    #
    #   Amazon Kendra currently does not support `_document_body` as an
    #   attribute key used for the condition.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of a document attribute. You can only provide one value
    #   for a document attribute.
    #   @return [Types::DocumentAttributeValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DocumentAttributeCondition AWS API Documentation
    #
    class DocumentAttributeCondition < Struct.new(
      :key,
      :operator,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information for document attributes. Document attributes
    # are metadata or fields associated with your documents. For example,
    # the company department name associated with each document.
    #
    # For more information, see [Understanding document attributes][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazonq/latest/business-use-dg/doc-attributes.html
    #
    # @!attribute [rw] name
    #   The name of the document attribute.
    #   @return [String]
    #
    # @!attribute [rw] search
    #   Information about whether the document attribute can be used by an
    #   end user to search for information on their web experience.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of document attribute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DocumentAttributeConfiguration AWS API Documentation
    #
    class DocumentAttributeConfiguration < Struct.new(
      :name,
      :search,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The target document attribute or metadata field you want to alter when
    # ingesting documents into Amazon Q.
    #
    # For example, you can delete all customer identification numbers
    # associated with the documents, stored in the document metadata field
    # called 'Customer\_ID' by setting the target key as 'Customer\_ID'
    # and the deletion flag to `TRUE`. This removes all customer ID values
    # in the field 'Customer\_ID'. This would scrub personally
    # identifiable information from each document's metadata.
    #
    # Amazon Q can't create a target field if it has not already been
    # created as an index field. After you create your index field, you can
    # create a document metadata field using [ `DocumentAttributeTarget`
    # ][1]. Amazon Q will then map your newly created document attribute to
    # your index field.
    #
    # You can also use this with [ `DocumentAttributeCondition` ][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/enterpriseq/latest/APIReference/API_DocumentAttributeTarget.html
    # [2]: https://docs.aws.amazon.com/enterpriseq/latest/APIReference/API_DocumentAttributeCondition.html
    #
    # @!attribute [rw] attribute_value_operator
    #   `TRUE` to delete the existing target value for your specified target
    #   attribute key. You cannot create a target value and set this to
    #   `TRUE`.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The identifier of the target document attribute or metadata field.
    #   For example, 'Department' could be an identifier for the target
    #   attribute or metadata field that includes the department names
    #   associated with the documents.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of a document attribute. You can only provide one value
    #   for a document attribute.
    #   @return [Types::DocumentAttributeValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DocumentAttributeTarget AWS API Documentation
    #
    class DocumentAttributeTarget < Struct.new(
      :attribute_value_operator,
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The value of a document attribute. You can only provide one value for
    # a document attribute.
    #
    # @note DocumentAttributeValue is a union - when making an API calls you must set exactly one of the members.
    #
    # @note DocumentAttributeValue is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of DocumentAttributeValue corresponding to the set member.
    #
    # @!attribute [rw] date_value
    #   A date expressed as an ISO 8601 string.
    #
    #   It's important for the time zone to be included in the ISO 8601
    #   date-time format. For example, 2012-03-25T12:30:10+01:00 is the ISO
    #   8601 date-time format for March 25th 2012 at 12:30PM (plus 10
    #   seconds) in Central European Time.
    #   @return [Time]
    #
    # @!attribute [rw] long_value
    #   A long integer value.
    #   @return [Integer]
    #
    # @!attribute [rw] string_list_value
    #   A list of strings.
    #   @return [Array<String>]
    #
    # @!attribute [rw] string_value
    #   A string.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DocumentAttributeValue AWS API Documentation
    #
    class DocumentAttributeValue < Struct.new(
      :date_value,
      :long_value,
      :string_list_value,
      :string_value,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class DateValue < DocumentAttributeValue; end
      class LongValue < DocumentAttributeValue; end
      class StringListValue < DocumentAttributeValue; end
      class StringValue < DocumentAttributeValue; end
      class Unknown < DocumentAttributeValue; end
    end

    # The contents of a document.
    #
    # @note DocumentContent is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] blob
    #   The contents of the document. Documents passed to the `blob`
    #   parameter must be base64 encoded. Your code might not need to encode
    #   the document file bytes if you're using an Amazon Web Services SDK
    #   to call Amazon Q APIs. If you are calling the Amazon Q endpoint
    #   directly using REST, you must base64 encode the contents before
    #   sending.
    #   @return [String]
    #
    # @!attribute [rw] s3
    #   The path to the document in an Amazon S3 bucket.
    #   @return [Types::S3]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DocumentContent AWS API Documentation
    #
    class DocumentContent < Struct.new(
      :blob,
      :s3,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Blob < DocumentContent; end
      class S3 < DocumentContent; end
      class Unknown < DocumentContent; end
    end

    # The details of a document within an Amazon Q index.
    #
    # @!attribute [rw] created_at
    #   The timestamp for when the document was created.
    #   @return [Time]
    #
    # @!attribute [rw] document_id
    #   The identifier of the document.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   An error message associated with the document.
    #   @return [Types::ErrorDetail]
    #
    # @!attribute [rw] status
    #   The current status of the document.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp for when the document was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DocumentDetails AWS API Documentation
    #
    class DocumentDetails < Struct.new(
      :created_at,
      :document_id,
      :error,
      :status,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the configuration information for altering document metadata
    # and content during the document ingestion process.
    #
    # For more information, see [Custom document enrichment][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazonq/latest/business-use-dg/custom-document-enrichment.html
    #
    # @!attribute [rw] inline_configurations
    #   Configuration information to alter document attributes or metadata
    #   fields and content when ingesting documents into Amazon Q.
    #   @return [Array<Types::InlineDocumentEnrichmentConfiguration>]
    #
    # @!attribute [rw] post_extraction_hook_configuration
    #   Provides the configuration information for invoking a Lambda
    #   function in Lambda to alter document metadata and content when
    #   ingesting documents into Amazon Q.
    #
    #   You can configure your Lambda function using
    #   [PreExtractionHookConfiguration][1] if you want to apply advanced
    #   alterations on the original or raw documents.
    #
    #   If you want to apply advanced alterations on the Amazon Q structured
    #   documents, you must configure your Lambda function using
    #   [PostExtractionHookConfiguration][1].
    #
    #   You can only invoke one Lambda function. However, this function can
    #   invoke other functions it requires.
    #
    #   For more information, see [Custom document enrichment][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/enterpriseq/latest/APIReference/API_CustomDocumentEnrichmentConfiguration.html
    #   [2]: https://docs.aws.amazon.com/amazonq/latest/business-use-dg/custom-document-enrichment.html
    #   @return [Types::HookConfiguration]
    #
    # @!attribute [rw] pre_extraction_hook_configuration
    #   Provides the configuration information for invoking a Lambda
    #   function in Lambda to alter document metadata and content when
    #   ingesting documents into Amazon Q.
    #
    #   You can configure your Lambda function using
    #   [PreExtractionHookConfiguration][1] if you want to apply advanced
    #   alterations on the original or raw documents.
    #
    #   If you want to apply advanced alterations on the Amazon Q structured
    #   documents, you must configure your Lambda function using
    #   [PostExtractionHookConfiguration][1].
    #
    #   You can only invoke one Lambda function. However, this function can
    #   invoke other functions it requires.
    #
    #   For more information, see [Custom document enrichment][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/enterpriseq/latest/APIReference/API_CustomDocumentEnrichmentConfiguration.html
    #   [2]: https://docs.aws.amazon.com/amazonq/latest/business-use-dg/custom-document-enrichment.html
    #   @return [Types::HookConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DocumentEnrichmentConfiguration AWS API Documentation
    #
    class DocumentEnrichmentConfiguration < Struct.new(
      :inline_configurations,
      :post_extraction_hook_configuration,
      :pre_extraction_hook_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The identifier of the data source Amazon Q will generate responses
    # from.
    #
    # @!attribute [rw] data_source_id
    #   The identifier of the data source.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index the data source is attached to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/EligibleDataSource AWS API Documentation
    #
    class EligibleDataSource < Struct.new(
      :data_source_id,
      :index_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the identifier of the KMS key used to encrypt data indexed by
    # Amazon Q. Amazon Q doesn't support asymmetric keys.
    #
    # @!attribute [rw] kms_key_id
    #   The identifier of the KMS key. Amazon Q doesn't support asymmetric
    #   keys.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/EncryptionConfiguration AWS API Documentation
    #
    class EncryptionConfiguration < Struct.new(
      :kms_key_id)
      SENSITIVE = [:kms_key_id]
      include Aws::Structure
    end

    # Provides information about a data source sync error.
    #
    # @!attribute [rw] error_code
    #   The code associated with the data source sync error.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The message explaining the data source sync error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ErrorDetail AWS API Documentation
    #
    class ErrorDetail < Struct.new(
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of documents that could not be removed from an Amazon Q index.
    # Each entry contains an error message that indicates why the document
    # couldn't be removed from the index.
    #
    # @!attribute [rw] data_source_id
    #   The identifier of the Amazon Q data source connector that contains
    #   the failed document.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   An explanation for why the document couldn't be removed from the
    #   index.
    #   @return [Types::ErrorDetail]
    #
    # @!attribute [rw] id
    #   The identifier of the document that couldn't be removed from the
    #   Amazon Q index.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/FailedDocument AWS API Documentation
    #
    class FailedDocument < Struct.new(
      :data_source_id,
      :error,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GetApplicationRequest AWS API Documentation
    #
    class GetApplicationRequest < Struct.new(
      :application_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   The Amazon Resource Name (ARN) of the Amazon Q application.
    #   @return [String]
    #
    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q application.
    #   @return [String]
    #
    # @!attribute [rw] attachments_configuration
    #   Settings for whether end users can upload files directly during
    #   chat.
    #   @return [Types::AppliedAttachmentsConfiguration]
    #
    # @!attribute [rw] created_at
    #   The Unix timestamp when the Amazon Q application was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A description for the Amazon Q application.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of the Amazon Q application.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   The identifier of the Amazon Web Services KMS key that is used to
    #   encrypt your data. Amazon Q doesn't support asymmetric keys.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] error
    #   If the `Status` field is set to `ERROR`, the `ErrorMessage` field
    #   contains a description of the error that caused the synchronization
    #   to fail.
    #   @return [Types::ErrorDetail]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM with permissions to access
    #   your CloudWatch logs and metrics.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Amazon Q application.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The Unix timestamp when the Amazon Q application was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GetApplicationResponse AWS API Documentation
    #
    class GetApplicationResponse < Struct.new(
      :application_arn,
      :application_id,
      :attachments_configuration,
      :created_at,
      :description,
      :display_name,
      :encryption_configuration,
      :error,
      :role_arn,
      :status,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the application for which the chat controls are
    #   configured.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of configured chat controls to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the `maxResults` response was incomplete because there is more
    #   data to retrieve, Amazon Q returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of Amazon Q chat controls configured.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GetChatControlsConfigurationRequest AWS API Documentation
    #
    class GetChatControlsConfigurationRequest < Struct.new(
      :application_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] blocked_phrases
    #   The phrases blocked from chat by your chat control configuration.
    #   @return [Types::BlockedPhrasesConfiguration]
    #
    # @!attribute [rw] next_token
    #   If the `maxResults` response was incomplete because there is more
    #   data to retrieve, Amazon Q returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of Amazon Q chat controls configured.
    #   @return [String]
    #
    # @!attribute [rw] response_scope
    #   The response scope configured for a Amazon Q application. This
    #   determines whether your application uses its retrieval augmented
    #   generation (RAG) system to generate answers only from your
    #   enterprise data, or also uses the large language models (LLM)
    #   knowledge to respons to end user questions in chat.
    #   @return [String]
    #
    # @!attribute [rw] topic_configurations
    #   The topic specific controls configured for a Amazon Q application.
    #   @return [Array<Types::TopicConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GetChatControlsConfigurationResponse AWS API Documentation
    #
    class GetChatControlsConfigurationResponse < Struct.new(
      :blocked_phrases,
      :next_token,
      :response_scope,
      :topic_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q application.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The identifier of the data source connector.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identfier of the index used with the data source connector.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GetDataSourceRequest AWS API Documentation
    #
    class GetDataSourceRequest < Struct.new(
      :application_id,
      :data_source_id,
      :index_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q application.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The details of how the data source connector is configured.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] created_at
    #   The Unix timestamp when the data source connector was created.
    #   @return [Time]
    #
    # @!attribute [rw] data_source_arn
    #   The Amazon Resource Name (ARN) of the data source.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The identifier of the data source connector.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the data source connector.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name for the data source connector.
    #   @return [String]
    #
    # @!attribute [rw] document_enrichment_configuration
    #   Provides the configuration information for altering document
    #   metadata and content during the document ingestion process.
    #
    #   For more information, see [Custom document enrichment][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/business-use-dg/custom-document-enrichment.html
    #   @return [Types::DocumentEnrichmentConfiguration]
    #
    # @!attribute [rw] error
    #   When the `Status` field value is `FAILED`, the `ErrorMessage` field
    #   contains a description of the error that caused the data source
    #   connector to fail.
    #   @return [Types::ErrorDetail]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index linked to the data source connector.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the role with permission to access
    #   the data source and required resources.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the data source connector. When the `Status`
    #   field value is `FAILED`, the `ErrorMessage` field contains a
    #   description of the error that caused the data source connector to
    #   fail.
    #   @return [String]
    #
    # @!attribute [rw] sync_schedule
    #   The schedule for Amazon Q to update the index.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the data source connector. For example, `S3`.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The Unix timestamp when the data source connector was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] vpc_configuration
    #   Configuration information for an Amazon VPC (Virtual Private Cloud)
    #   to connect to your data source.
    #   @return [Types::DataSourceVpcConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GetDataSourceResponse AWS API Documentation
    #
    class GetDataSourceResponse < Struct.new(
      :application_id,
      :configuration,
      :created_at,
      :data_source_arn,
      :data_source_id,
      :description,
      :display_name,
      :document_enrichment_configuration,
      :error,
      :index_id,
      :role_arn,
      :status,
      :sync_schedule,
      :type,
      :updated_at,
      :vpc_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the application id the group is attached to.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The identifier of the data source the group is attached to.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The name of the group.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index the group is attached to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GetGroupRequest AWS API Documentation
    #
    class GetGroupRequest < Struct.new(
      :application_id,
      :data_source_id,
      :group_name,
      :index_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The current status of the group.
    #   @return [Types::GroupStatusDetail]
    #
    # @!attribute [rw] status_history
    #   The status history of the group.
    #   @return [Array<Types::GroupStatusDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GetGroupResponse AWS API Documentation
    #
    class GetGroupResponse < Struct.new(
      :status,
      :status_history)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q application connected to the index.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the Amazon Q index you want information on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GetIndexRequest AWS API Documentation
    #
    class GetIndexRequest < Struct.new(
      :application_id,
      :index_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q application associated with the
    #   index.
    #   @return [String]
    #
    # @!attribute [rw] capacity_configuration
    #   The storage capacity units chosen for your Amazon Q index.
    #   @return [Types::IndexCapacityConfiguration]
    #
    # @!attribute [rw] created_at
    #   The Unix timestamp when the Amazon Q index was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description for the Amazon Q index.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of the Amazon Q index.
    #   @return [String]
    #
    # @!attribute [rw] document_attribute_configurations
    #   Configuration information for document attributes or metadata.
    #   Document metadata are fields associated with your documents. For
    #   example, the company department name associated with each document.
    #   For more information, see [Understanding document attributes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/business-use-dg/doc-attributes-types.html#doc-attributes
    #   @return [Array<Types::DocumentAttributeConfiguration>]
    #
    # @!attribute [rw] error
    #   When the `Status` field value is `FAILED`, the `ErrorMessage` field
    #   contains a message that explains why.
    #   @return [Types::ErrorDetail]
    #
    # @!attribute [rw] index_arn
    #   The Amazon Resource Name (ARN) of the Amazon Q index.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the Amazon Q index.
    #   @return [String]
    #
    # @!attribute [rw] index_statistics
    #   Provides information about the number of documents indexed.
    #   @return [Types::IndexStatistics]
    #
    # @!attribute [rw] status
    #   The current status of the index. When the value is `ACTIVE`, the
    #   index is ready for use. If the `Status` field value is `FAILED`, the
    #   `ErrorMessage` field contains a message that explains why.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The Unix timestamp when the Amazon Q index was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GetIndexResponse AWS API Documentation
    #
    class GetIndexResponse < Struct.new(
      :application_id,
      :capacity_configuration,
      :created_at,
      :description,
      :display_name,
      :document_attribute_configurations,
      :error,
      :index_arn,
      :index_id,
      :index_statistics,
      :status,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the application which contains the plugin.
    #   @return [String]
    #
    # @!attribute [rw] plugin_id
    #   The identifier of the plugin.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GetPluginRequest AWS API Documentation
    #
    class GetPluginRequest < Struct.new(
      :application_id,
      :plugin_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the application which contains the plugin.
    #   @return [String]
    #
    # @!attribute [rw] auth_configuration
    #   Authentication configuration information for an Amazon Q plugin.
    #   @return [Types::PluginAuthConfiguration]
    #
    # @!attribute [rw] created_at
    #   The timestamp for when the plugin was created.
    #   @return [Time]
    #
    # @!attribute [rw] display_name
    #   The name of the plugin.
    #   @return [String]
    #
    # @!attribute [rw] plugin_arn
    #   The Amazon Resource Name (ARN) of the role with permission to access
    #   resources needed to create the plugin.
    #   @return [String]
    #
    # @!attribute [rw] plugin_id
    #   The identifier of the plugin.
    #   @return [String]
    #
    # @!attribute [rw] server_url
    #   The source URL used for plugin configuration.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the plugin.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the plugin.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp for when the plugin was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GetPluginResponse AWS API Documentation
    #
    class GetPluginResponse < Struct.new(
      :application_id,
      :auth_configuration,
      :created_at,
      :display_name,
      :plugin_arn,
      :plugin_id,
      :server_url,
      :state,
      :type,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q application using the retriever.
    #   @return [String]
    #
    # @!attribute [rw] retriever_id
    #   The identifier of the retriever.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GetRetrieverRequest AWS API Documentation
    #
    class GetRetrieverRequest < Struct.new(
      :application_id,
      :retriever_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q application using the retriever.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   Provides information on how the retriever used for your Amazon Q
    #   application is configured.
    #   @return [Types::RetrieverConfiguration]
    #
    # @!attribute [rw] created_at
    #   The Unix timestamp when the retriever was created.
    #   @return [Time]
    #
    # @!attribute [rw] display_name
    #   The name of the retriever.
    #   @return [String]
    #
    # @!attribute [rw] retriever_arn
    #   The Amazon Resource Name (ARN) of the IAM role associated with the
    #   retriever.
    #   @return [String]
    #
    # @!attribute [rw] retriever_id
    #   The identifier of the retriever.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the role with the permission to
    #   access the retriever and required resources.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the retriever.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the retriever.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The Unix timestamp when the retriever was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GetRetrieverResponse AWS API Documentation
    #
    class GetRetrieverResponse < Struct.new(
      :application_id,
      :configuration,
      :created_at,
      :display_name,
      :retriever_arn,
      :retriever_id,
      :role_arn,
      :status,
      :type,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the application connected to the user.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The user email address attached to the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GetUserRequest AWS API Documentation
    #
    class GetUserRequest < Struct.new(
      :application_id,
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_aliases
    #   A list of user aliases attached to a user.
    #   @return [Array<Types::UserAlias>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GetUserResponse AWS API Documentation
    #
    class GetUserResponse < Struct.new(
      :user_aliases)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q application linked to the web
    #   experience.
    #   @return [String]
    #
    # @!attribute [rw] web_experience_id
    #   The identifier of the Amazon Q web experience.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GetWebExperienceRequest AWS API Documentation
    #
    class GetWebExperienceRequest < Struct.new(
      :application_id,
      :web_experience_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q application linked to the web
    #   experience.
    #   @return [String]
    #
    # @!attribute [rw] authentication_configuration
    #   The authentication configuration information for your Amazon Q web
    #   experience.
    #   @return [Types::WebExperienceAuthConfiguration]
    #
    # @!attribute [rw] created_at
    #   The Unix timestamp when the retriever was created.
    #   @return [Time]
    #
    # @!attribute [rw] default_endpoint
    #   The endpoint of your Amazon Q web experience.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   When the `Status` field value is `FAILED`, the `ErrorMessage` field
    #   contains a description of the error that caused the data source
    #   connector to fail.
    #   @return [Types::ErrorDetail]
    #
    # @!attribute [rw] sample_prompts_control_mode
    #   Determines whether sample prompts are enabled in the web experience
    #   for an end user.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the Amazon Q web experience. When the `Status`
    #   field value is `FAILED`, the `ErrorMessage` field contains a
    #   description of the error that caused the data source connector to
    #   fail.
    #   @return [String]
    #
    # @!attribute [rw] subtitle
    #   The subtitle for your Amazon Q web experience.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title for your Amazon Q web experience.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The Unix timestamp when the data source connector was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] web_experience_arn
    #   The Amazon Resource Name (ARN) of the role with the permission to
    #   access the Amazon Q web experience and required resources.
    #   @return [String]
    #
    # @!attribute [rw] web_experience_id
    #   The identifier of the Amazon Q web experience.
    #   @return [String]
    #
    # @!attribute [rw] welcome_message
    #   The customized welcome message for end users of an Amazon Q web
    #   experience.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GetWebExperienceResponse AWS API Documentation
    #
    class GetWebExperienceResponse < Struct.new(
      :application_id,
      :authentication_configuration,
      :created_at,
      :default_endpoint,
      :error,
      :sample_prompts_control_mode,
      :status,
      :subtitle,
      :title,
      :updated_at,
      :web_experience_arn,
      :web_experience_id,
      :welcome_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of users or sub groups that belong to a group. This is for
    # generating Amazon Q chat results only from document a user has access
    # to.
    #
    # @!attribute [rw] member_groups
    #   A list of sub groups that belong to a group. For example, the sub
    #   groups "Research", "Engineering", and "Sales and Marketing"
    #   all belong to the group "Company".
    #   @return [Array<Types::MemberGroup>]
    #
    # @!attribute [rw] member_users
    #   A list of users that belong to a group. For example, a list of
    #   interns all belong to the "Interns" group.
    #   @return [Array<Types::MemberUser>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GroupMembers AWS API Documentation
    #
    class GroupMembers < Struct.new(
      :member_groups,
      :member_users)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the details of a group's status.
    #
    # @!attribute [rw] error_detail
    #   The details of an error associated a group status.
    #   @return [Types::ErrorDetail]
    #
    # @!attribute [rw] last_updated_at
    #   The Unix timestamp when the Amazon Q application was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of a group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GroupStatusDetail AWS API Documentation
    #
    class GroupStatusDetail < Struct.new(
      :error_detail,
      :last_updated_at,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information for groups.
    #
    # @!attribute [rw] group_name
    #   The name of the group the summary information is for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GroupSummary AWS API Documentation
    #
    class GroupSummary < Struct.new(
      :group_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the configuration information for invoking a Lambda function
    # in Lambda to alter document metadata and content when ingesting
    # documents into Amazon Q.
    #
    # You can configure your Lambda function using
    # [PreExtractionHookConfiguration][1] if you want to apply advanced
    # alterations on the original or raw documents.
    #
    # If you want to apply advanced alterations on the Amazon Q structured
    # documents, you must configure your Lambda function using
    # [PostExtractionHookConfiguration][1].
    #
    # You can only invoke one Lambda function. However, this function can
    # invoke other functions it requires.
    #
    # For more information, see [Custom document enrichment][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/enterpriseq/latest/APIReference/API_CustomDocumentEnrichmentConfiguration.html
    # [2]: https://docs.aws.amazon.com/amazonq/latest/business-use-dg/custom-document-enrichment.html
    #
    # @!attribute [rw] invocation_condition
    #   The condition used for when a Lambda function should be invoked.
    #
    #   For example, you can specify a condition that if there are empty
    #   date-time values, then Amazon Q should invoke a function that
    #   inserts the current date-time.
    #   @return [Types::DocumentAttributeCondition]
    #
    # @!attribute [rw] lambda_arn
    #   The Amazon Resource Name (ARN) of a role with permission to run a
    #   Lambda function during ingestion. For more information, see [IAM
    #   roles for Custom Document Enrichment (CDE)][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/business-use-dg/iam-roles.html#cde-iam-role
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of a role with permission to run
    #   `PreExtractionHookConfiguration` and
    #   `PostExtractionHookConfiguration` for altering document metadata and
    #   content during the document ingestion process.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_name
    #   Stores the original, raw documents or the structured, parsed
    #   documents before and after altering them. For more information, see
    #   [Data contracts for Lambda functions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/business-use-dg/cde-lambda-operations.html#cde-lambda-operations-data-contracts
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/HookConfiguration AWS API Documentation
    #
    class HookConfiguration < Struct.new(
      :invocation_condition,
      :lambda_arn,
      :role_arn,
      :s3_bucket_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information for your Amazon Q index.
    #
    # @!attribute [rw] created_at
    #   The Unix timestamp when the index was created.
    #   @return [Time]
    #
    # @!attribute [rw] display_name
    #   The name of the index.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier for the index.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the index. When the status is `ACTIVE`, the
    #   index is ready.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The Unix timestamp when the index was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/Index AWS API Documentation
    #
    class Index < Struct.new(
      :created_at,
      :display_name,
      :index_id,
      :status,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about index capacity configuration.
    #
    # @!attribute [rw] units
    #   The number of storage units configured for an Amazon Q index.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/IndexCapacityConfiguration AWS API Documentation
    #
    class IndexCapacityConfiguration < Struct.new(
      :units)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the number of documents in an index.
    #
    # @!attribute [rw] text_document_statistics
    #   The number of documents indexed.
    #   @return [Types::TextDocumentStatistics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/IndexStatistics AWS API Documentation
    #
    class IndexStatistics < Struct.new(
      :text_document_statistics)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the configuration information for applying basic logic to
    # alter document metadata and content when ingesting documents into
    # Amazon Q.
    #
    # To apply advanced logic, to go beyond what you can do with basic
    # logic, see [ `HookConfiguration` ][1].
    #
    # For more information, see [Custom document enrichment][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/enterpriseq/latest/APIReference/API_HookConfiguration.html
    # [2]: https://docs.aws.amazon.com/amazonq/latest/business-use-dg/custom-document-enrichment.html
    #
    # @!attribute [rw] condition
    #   The condition used for the target document attribute or metadata
    #   field when ingesting documents into Amazon Q. You use this with [
    #   `DocumentAttributeTarget` ][1] to apply the condition.
    #
    #   For example, you can create the 'Department' target field and have
    #   it prefill department names associated with the documents based on
    #   information in the 'Source\_URI' field. Set the condition that if
    #   the 'Source\_URI' field contains 'financial' in its URI value,
    #   then prefill the target field 'Department' with the target value
    #   'Finance' for the document.
    #
    #   Amazon Q can't create a target field if it has not already been
    #   created as an index field. After you create your index field, you
    #   can create a document metadata field using
    #   `DocumentAttributeTarget`. Amazon Q then will map your newly created
    #   metadata field to your index field.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/enterpriseq/latest/APIReference/API_DocumentAttributeTarget.html
    #   @return [Types::DocumentAttributeCondition]
    #
    # @!attribute [rw] document_content_operator
    #   `TRUE` to delete content if the condition used for the target
    #   attribute is met.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The target document attribute or metadata field you want to alter
    #   when ingesting documents into Amazon Q.
    #
    #   For example, you can delete all customer identification numbers
    #   associated with the documents, stored in the document metadata field
    #   called 'Customer\_ID' by setting the target key as
    #   'Customer\_ID' and the deletion flag to `TRUE`. This removes all
    #   customer ID values in the field 'Customer\_ID'. This would scrub
    #   personally identifiable information from each document's metadata.
    #
    #   Amazon Q can't create a target field if it has not already been
    #   created as an index field. After you create your index field, you
    #   can create a document metadata field using [
    #   `DocumentAttributeTarget` ][1]. Amazon Q will then map your newly
    #   created document attribute to your index field.
    #
    #   You can also use this with [ `DocumentAttributeCondition` ][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/enterpriseq/latest/APIReference/API_DocumentAttributeTarget.html
    #   [2]: https://docs.aws.amazon.com/enterpriseq/latest/APIReference/API_DocumentAttributeCondition.html
    #   @return [Types::DocumentAttributeTarget]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/InlineDocumentEnrichmentConfiguration AWS API Documentation
    #
    class InlineDocumentEnrichmentConfiguration < Struct.new(
      :condition,
      :document_content_operator,
      :target)
      SENSITIVE = []
      include Aws::Structure
    end

    # An issue occurred with the internal server used for your Amazon Q
    # service. Wait some minutes and try again, or contact [Support][1] for
    # help.
    #
    #
    #
    # [1]: http://aws.amazon.com/contact-us/
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Stores an Amazon Kendra index as a retriever.
    #
    # @!attribute [rw] index_id
    #   The identifier of the Amazon Kendra index.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/KendraIndexConfiguration AWS API Documentation
    #
    class KendraIndexConfiguration < Struct.new(
      :index_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # You don't have permissions to perform the action because your license
    # is inactive. Ask your admin to activate your license and try again
    # after your licence is active.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/LicenseNotFoundException AWS API Documentation
    #
    class LicenseNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of Amazon Q applications to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the `maxResults` response was incomplete because there is more
    #   data to retrieve, Amazon Q returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of Amazon Q applications.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListApplicationsRequest AWS API Documentation
    #
    class ListApplicationsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] applications
    #   An array of summary information on the configuration of one or more
    #   Amazon Q applications.
    #   @return [Array<Types::Application>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Q returns this token. You can
    #   use this token in a subsequent request to retrieve the next set of
    #   applications.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListApplicationsResponse AWS API Documentation
    #
    class ListApplicationsResponse < Struct.new(
      :applications,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q application.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of Amazon Q conversations to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the `maxResults` response was incomplete because there is more
    #   data to retrieve, Amazon Q returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of Amazon Q conversations.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user involved in the Amazon Q web experience
    #   conversation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListConversationsRequest AWS API Documentation
    #
    class ListConversationsRequest < Struct.new(
      :application_id,
      :max_results,
      :next_token,
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] conversations
    #   An array of summary information on the configuration of one or more
    #   Amazon Q web experiences.
    #   @return [Array<Types::Conversation>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Q returns this token, which you
    #   can use in a later request to list the next set of messages.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListConversationsResponse AWS API Documentation
    #
    class ListConversationsResponse < Struct.new(
      :conversations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q application connected to the data
    #   source.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The identifier of the data source connector.
    #   @return [String]
    #
    # @!attribute [rw] end_time
    #   The end time of the data source connector sync.
    #   @return [Time]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index used with the Amazon Q data source
    #   connector.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of synchronization jobs to return in the
    #   response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the `maxResults` response was incpmplete because there is more
    #   data to retriever, Amazon Q returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of responses.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start time of the data source connector sync.
    #   @return [Time]
    #
    # @!attribute [rw] status_filter
    #   Only returns synchronization jobs with the `Status` field equal to
    #   the specified status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListDataSourceSyncJobsRequest AWS API Documentation
    #
    class ListDataSourceSyncJobsRequest < Struct.new(
      :application_id,
      :data_source_id,
      :end_time,
      :index_id,
      :max_results,
      :next_token,
      :start_time,
      :status_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] history
    #   A history of synchronization jobs for the data source connector.
    #   @return [Array<Types::DataSourceSyncJob>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Q returns this token. You can
    #   use this token in any subsequent request to retrieve the next set of
    #   jobs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListDataSourceSyncJobsResponse AWS API Documentation
    #
    class ListDataSourceSyncJobsResponse < Struct.new(
      :history,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q application linked to the data source
    #   connectors.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index used with one or more data source
    #   connectors.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of data source connectors to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the `maxResults` response was incomplete because there is more
    #   data to retrieve, Amazon Q returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of Amazon Q data source connectors.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListDataSourcesRequest AWS API Documentation
    #
    class ListDataSourcesRequest < Struct.new(
      :application_id,
      :index_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_sources
    #   An array of summary information for one or more data source
    #   connector.
    #   @return [Array<Types::DataSource>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Q returns this token. You can
    #   use this token in a subsequent request to retrieve the next set of
    #   data source connectors.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListDataSourcesResponse AWS API Documentation
    #
    class ListDataSourcesResponse < Struct.new(
      :data_sources,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the application id the documents are attached to.
    #   @return [String]
    #
    # @!attribute [rw] data_source_ids
    #   The identifier of the data sources the documents are attached to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index the documents are attached to.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of documents to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the `maxResults` response was incomplete because there is more
    #   data to retrieve, Amazon Q returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of documents.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListDocumentsRequest AWS API Documentation
    #
    class ListDocumentsRequest < Struct.new(
      :application_id,
      :data_source_ids,
      :index_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] document_detail_list
    #   A list of document details.
    #   @return [Array<Types::DocumentDetails>]
    #
    # @!attribute [rw] next_token
    #   If the `maxResults` response was incomplete because there is more
    #   data to retrieve, Amazon Q returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of documents.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListDocumentsResponse AWS API Documentation
    #
    class ListDocumentsResponse < Struct.new(
      :document_detail_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the application for getting a list of groups
    #   mapped to users.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The identifier of the data source for getting a list of groups
    #   mapped to users.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index for getting a list of groups mapped to
    #   users.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of returned groups that are mapped to users.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there is more data
    #   to retrieve), Amazon Q returns a pagination token in the response.
    #   You can use this pagination token to retrieve the next set of groups
    #   that are mapped to users.
    #   @return [String]
    #
    # @!attribute [rw] updated_earlier_than
    #   The timestamp identifier used for the latest `PUT` or `DELETE`
    #   action for mapping users to their groups.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListGroupsRequest AWS API Documentation
    #
    class ListGroupsRequest < Struct.new(
      :application_id,
      :data_source_id,
      :index_id,
      :max_results,
      :next_token,
      :updated_earlier_than)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   Summary information for list of groups that are mapped to users.
    #   @return [Array<Types::GroupSummary>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Q returns this token that you
    #   can use in the subsequent request to retrieve the next set of groups
    #   that are mapped to users.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListGroupsResponse AWS API Documentation
    #
    class ListGroupsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q application connected to the index.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of indices to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the maxResults response was incomplete because there is more data
    #   to retrieve, Amazon Q returns a pagination token in the response.
    #   You can use this pagination token to retrieve the next set of Amazon
    #   Q indices.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListIndicesRequest AWS API Documentation
    #
    class ListIndicesRequest < Struct.new(
      :application_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] indices
    #   An array of information on the items in one or more indexes.
    #   @return [Array<Types::Index>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Q returns this token that you
    #   can use in the subsequent request to retrieve the next set of
    #   indexes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListIndicesResponse AWS API Documentation
    #
    class ListIndicesResponse < Struct.new(
      :indices,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier for the Amazon Q application.
    #   @return [String]
    #
    # @!attribute [rw] conversation_id
    #   The identifier of the Amazon Q web experience conversation.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of messages to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the number of retrievers returned exceeds `maxResults`, Amazon Q
    #   returns a next token as a pagination token to retrieve the next set
    #   of messages.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user involved in the Amazon Q web experience
    #   conversation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListMessagesRequest AWS API Documentation
    #
    class ListMessagesRequest < Struct.new(
      :application_id,
      :conversation_id,
      :max_results,
      :next_token,
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] messages
    #   An array of information on one or more messages.
    #   @return [Array<Types::Message>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Q returns this token, which you
    #   can use in a later request to list the next set of messages.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListMessagesResponse AWS API Documentation
    #
    class ListMessagesResponse < Struct.new(
      :messages,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the application the plugin is attached to.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of documents to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the `maxResults` response was incomplete because there is more
    #   data to retrieve, Amazon Q returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of plugins.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListPluginsRequest AWS API Documentation
    #
    class ListPluginsRequest < Struct.new(
      :application_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If the `maxResults` response was incomplete because there is more
    #   data to retrieve, Amazon Q returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of plugins.
    #   @return [String]
    #
    # @!attribute [rw] plugins
    #   Information about a configured plugin.
    #   @return [Array<Types::Plugin>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListPluginsResponse AWS API Documentation
    #
    class ListPluginsResponse < Struct.new(
      :next_token,
      :plugins)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q application using the retriever.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of retrievers returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the number of retrievers returned exceeds `maxResults`, Amazon Q
    #   returns a next token as a pagination token to retrieve the next set
    #   of retrievers.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListRetrieversRequest AWS API Documentation
    #
    class ListRetrieversRequest < Struct.new(
      :application_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Q returns this token, which you
    #   can use in a later request to list the next set of retrievers.
    #   @return [String]
    #
    # @!attribute [rw] retrievers
    #   An array of summary information for one or more retrievers.
    #   @return [Array<Types::Retriever>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListRetrieversResponse AWS API Documentation
    #
    class ListRetrieversResponse < Struct.new(
      :next_token,
      :retrievers)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the Amazon Q application or data
    #   source to get a list of tags for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A list of tags associated with the Amazon Q application or data
    #   source.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q application linked to the listed web
    #   experiences.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of Amazon Q Web Experiences to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the `maxResults` response was incomplete because there is more
    #   data to retrieve, Amazon Q returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of Amazon Q conversations.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListWebExperiencesRequest AWS API Documentation
    #
    class ListWebExperiencesRequest < Struct.new(
      :application_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Q returns this token, which you
    #   can use in a later request to list the next set of messages.
    #   @return [String]
    #
    # @!attribute [rw] web_experiences
    #   An array of summary information for one or more Amazon Q
    #   experiences.
    #   @return [Array<Types::WebExperience>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListWebExperiencesResponse AWS API Documentation
    #
    class ListWebExperiencesResponse < Struct.new(
      :next_token,
      :web_experiences)
      SENSITIVE = []
      include Aws::Structure
    end

    # The sub groups that belong to a group.
    #
    # @!attribute [rw] group_name
    #   The name of the sub group.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the sub group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/MemberGroup AWS API Documentation
    #
    class MemberGroup < Struct.new(
      :group_name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The users that belong to a group.
    #
    # @!attribute [rw] type
    #   The type of the user.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user you want to map to a group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/MemberUser AWS API Documentation
    #
    class MemberUser < Struct.new(
      :type,
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A message in an Amazon Q web experience.
    #
    # @!attribute [rw] action_execution
    #   Performs an Amazon Q plugin action during a non-streaming chat
    #   conversation.
    #   @return [Types::ActionExecution]
    #
    # @!attribute [rw] action_review
    #   An output event that Amazon Q returns to an user who wants to
    #   perform a plugin action during a non-streaming chat conversation. It
    #   contains information about the selected action with a list of
    #   possible user input fields, some pre-populated by Amazon Q.
    #   @return [Types::ActionReview]
    #
    # @!attribute [rw] attachments
    #   A file directly uploaded into an Amazon Q web experience chat.
    #   @return [Array<Types::AttachmentOutput>]
    #
    # @!attribute [rw] body
    #   The content of the Amazon Q web experience message.
    #   @return [String]
    #
    # @!attribute [rw] message_id
    #   The identifier of the Amazon Q web experience message.
    #   @return [String]
    #
    # @!attribute [rw] source_attribution
    #   The source documents used to generate Amazon Q web experience
    #   message.
    #   @return [Array<Types::SourceAttribution>]
    #
    # @!attribute [rw] time
    #   The timestamp of the first Amazon Q web experience message.
    #   @return [Time]
    #
    # @!attribute [rw] type
    #   The type of Amazon Q message, whether `HUMAN` or `AI` generated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/Message AWS API Documentation
    #
    class Message < Struct.new(
      :action_execution,
      :action_review,
      :attachments,
      :body,
      :message_id,
      :source_attribution,
      :time,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # End user feedback on an AI-generated web experience chat message
    # usefulness.
    #
    # @!attribute [rw] comment
    #   A comment given by an end user on the usefulness of an AI-generated
    #   chat message.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for a usefulness rating.
    #   @return [String]
    #
    # @!attribute [rw] submitted_at
    #   The timestamp for when the feedback was submitted.
    #   @return [Time]
    #
    # @!attribute [rw] usefulness
    #   The usefulness value assigned by an end user to a message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/MessageUsefulnessFeedback AWS API Documentation
    #
    class MessageUsefulnessFeedback < Struct.new(
      :comment,
      :reason,
      :submitted_at,
      :usefulness)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information for an Amazon Q index.
    #
    # @!attribute [rw] index_id
    #   The identifier for the Amazon Q index.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/NativeIndexConfiguration AWS API Documentation
    #
    class NativeIndexConfiguration < Struct.new(
      :index_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the OAuth 2.0 authentication credential/token used
    # to configure a plugin.
    #
    # @!attribute [rw] role_arn
    #   The ARN of an IAM role used by Amazon Q to access the OAuth 2.0
    #   authentication credentials stored in a Secrets Manager secret.
    #   @return [String]
    #
    # @!attribute [rw] secret_arn
    #   The ARN of the Secrets Manager secret that stores the OAuth 2.0
    #   credentials/token used for plugin configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/OAuth2ClientCredentialConfiguration AWS API Documentation
    #
    class OAuth2ClientCredentialConfiguration < Struct.new(
      :role_arn,
      :secret_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an Amazon Q plugin and its configuration.
    #
    # @!attribute [rw] created_at
    #   The timestamp for when the plugin was created.
    #   @return [Time]
    #
    # @!attribute [rw] display_name
    #   The name of the plugin.
    #   @return [String]
    #
    # @!attribute [rw] plugin_id
    #   The identifier of the plugin.
    #   @return [String]
    #
    # @!attribute [rw] server_url
    #   The plugin server URL used for configuration.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current status of the plugin.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the plugin.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The timestamp for when the plugin was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/Plugin AWS API Documentation
    #
    class Plugin < Struct.new(
      :created_at,
      :display_name,
      :plugin_id,
      :server_url,
      :state,
      :type,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Authentication configuration information for an Amazon Q plugin.
    #
    # @note PluginAuthConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note PluginAuthConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of PluginAuthConfiguration corresponding to the set member.
    #
    # @!attribute [rw] basic_auth_configuration
    #   Information about the basic authentication credentials used to
    #   configure a plugin.
    #   @return [Types::BasicAuthConfiguration]
    #
    # @!attribute [rw] o_auth_2_client_credential_configuration
    #   Information about the OAuth 2.0 authentication credential/token used
    #   to configure a plugin.
    #   @return [Types::OAuth2ClientCredentialConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/PluginAuthConfiguration AWS API Documentation
    #
    class PluginAuthConfiguration < Struct.new(
      :basic_auth_configuration,
      :o_auth_2_client_credential_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class BasicAuthConfiguration < PluginAuthConfiguration; end
      class OAuth2ClientCredentialConfiguration < PluginAuthConfiguration; end
      class Unknown < PluginAuthConfiguration; end
    end

    # Provides user and group information used for filtering documents to
    # use for generating Amazon Q conversation responses.
    #
    # @note Principal is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] group
    #   The group associated with the principal.
    #   @return [Types::PrincipalGroup]
    #
    # @!attribute [rw] user
    #   The user associated with the principal.
    #   @return [Types::PrincipalUser]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/Principal AWS API Documentation
    #
    class Principal < Struct.new(
      :group,
      :user,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Group < Principal; end
      class User < Principal; end
      class Unknown < Principal; end
    end

    # Provides information about a group associated with the principal.
    #
    # @!attribute [rw] access
    #   Provides information about whether to allow or deny access to the
    #   principal.
    #   @return [String]
    #
    # @!attribute [rw] membership_type
    #   The type of group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/PrincipalGroup AWS API Documentation
    #
    class PrincipalGroup < Struct.new(
      :access,
      :membership_type,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a user associated with a principal.
    #
    # @!attribute [rw] access
    #   Provides information about whether to allow or deny access to the
    #   principal.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier of the user.
    #   @return [String]
    #
    # @!attribute [rw] membership_type
    #   The type of group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/PrincipalUser AWS API Documentation
    #
    class PrincipalUser < Struct.new(
      :access,
      :id,
      :membership_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the application associated with the feedback.
    #   @return [String]
    #
    # @!attribute [rw] conversation_id
    #   The identifier of the conversation the feedback is attached to.
    #   @return [String]
    #
    # @!attribute [rw] message_copied_at
    #   The timestamp for when the feedback was recorded.
    #   @return [Time]
    #
    # @!attribute [rw] message_id
    #   The identifier of the chat message that the feedback was given for.
    #   @return [String]
    #
    # @!attribute [rw] message_usefulness
    #   The feedback usefulness value given by the user to the chat message.
    #   @return [Types::MessageUsefulnessFeedback]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user giving the feedback.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/PutFeedbackRequest AWS API Documentation
    #
    class PutFeedbackRequest < Struct.new(
      :application_id,
      :conversation_id,
      :message_copied_at,
      :message_id,
      :message_usefulness,
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the application in which the user and group
    #   mapping belongs.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The identifier of the data source for which you want to map users to
    #   their groups. This is useful if a group is tied to multiple data
    #   sources, but you only want the group to access documents of a
    #   certain data source. For example, the groups "Research",
    #   "Engineering", and "Sales and Marketing" are all tied to the
    #   company's documents stored in the data sources Confluence and
    #   Salesforce. However, "Sales and Marketing" team only needs access
    #   to customer-related documents stored in Salesforce.
    #   @return [String]
    #
    # @!attribute [rw] group_members
    #   A list of users or sub groups that belong to a group. This is for
    #   generating Amazon Q chat results only from document a user has
    #   access to.
    #   @return [Types::GroupMembers]
    #
    # @!attribute [rw] group_name
    #   The list that contains your users or sub groups that belong the same
    #   group. For example, the group "Company" includes the user "CEO"
    #   and the sub groups "Research", "Engineering", and "Sales and
    #   Marketing".
    #
    #   If you have more than 1000 users and/or sub groups for a single
    #   group, you need to provide the path to the S3 file that lists your
    #   users and sub groups for a group. Your sub groups can contain more
    #   than 1000 users, but the list of sub groups that belong to a group
    #   (and/or users) must be no more than 1000.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index in which you want to map users to their
    #   groups.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/PutGroupRequest AWS API Documentation
    #
    class PutGroupRequest < Struct.new(
      :application_id,
      :data_source_id,
      :group_members,
      :group_name,
      :index_id,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/PutGroupResponse AWS API Documentation
    #
    class PutGroupResponse < Aws::EmptyStructure; end

    # The resource you want to use doesn’t exist. Make sure you have
    # provided the correct resource and try again.
    #
    # @!attribute [rw] message
    #   The message describing a `ResourceNotFoundException`.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource affected.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource affected.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information for the retriever used for your Amazon Q
    # application.
    #
    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q application using the retriever.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of your retriever.
    #   @return [String]
    #
    # @!attribute [rw] retriever_id
    #   The identifier of the retriever used by your Amazon Q application.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of your retriever.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of your retriever.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/Retriever AWS API Documentation
    #
    class Retriever < Struct.new(
      :application_id,
      :display_name,
      :retriever_id,
      :status,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information on how the retriever used for your Amazon Q
    # application is configured.
    #
    # @note RetrieverConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note RetrieverConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of RetrieverConfiguration corresponding to the set member.
    #
    # @!attribute [rw] kendra_index_configuration
    #   Provides information on how the Amazon Kendra index used as a
    #   retriever for your Amazon Q application is configured.
    #   @return [Types::KendraIndexConfiguration]
    #
    # @!attribute [rw] native_index_configuration
    #   Provides information on how a Amazon Q index used as a retriever for
    #   your Amazon Q application is configured.
    #   @return [Types::NativeIndexConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/RetrieverConfiguration AWS API Documentation
    #
    class RetrieverConfiguration < Struct.new(
      :kendra_index_configuration,
      :native_index_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class KendraIndexConfiguration < RetrieverConfiguration; end
      class NativeIndexConfiguration < RetrieverConfiguration; end
      class Unknown < RetrieverConfiguration; end
    end

    # Guardrail rules for an Amazon Q application. Amazon Q supports only
    # one rule at a time.
    #
    # @!attribute [rw] excluded_users_and_groups
    #   Users and groups to be excluded from a rule.
    #   @return [Types::UsersAndGroups]
    #
    # @!attribute [rw] included_users_and_groups
    #   Users and groups to be included in a rule.
    #   @return [Types::UsersAndGroups]
    #
    # @!attribute [rw] rule_configuration
    #   The configuration information for a rule.
    #   @return [Types::RuleConfiguration]
    #
    # @!attribute [rw] rule_type
    #   The type fo rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/Rule AWS API Documentation
    #
    class Rule < Struct.new(
      :excluded_users_and_groups,
      :included_users_and_groups,
      :rule_configuration,
      :rule_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides configuration information about a rule.
    #
    # @note RuleConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note RuleConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of RuleConfiguration corresponding to the set member.
    #
    # @!attribute [rw] content_blocker_rule
    #   A rule for configuring how Amazon Q responds when it encounters a a
    #   blocked topic.
    #   @return [Types::ContentBlockerRule]
    #
    # @!attribute [rw] content_retrieval_rule
    #   Rules for retrieving content from data sources connected to a Amazon
    #   Q application for a specific topic control configuration.
    #   @return [Types::ContentRetrievalRule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/RuleConfiguration AWS API Documentation
    #
    class RuleConfiguration < Struct.new(
      :content_blocker_rule,
      :content_retrieval_rule,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ContentBlockerRule < RuleConfiguration; end
      class ContentRetrievalRule < RuleConfiguration; end
      class Unknown < RuleConfiguration; end
    end

    # Information required for Amazon Q to find a specific file in an Amazon
    # S3 bucket.
    #
    # @!attribute [rw] bucket
    #   The name of the S3 bucket that contains the file.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   The name of the file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/S3 AWS API Documentation
    #
    class S3 < Struct.new(
      :bucket,
      :key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the SAML 2.0 compliant identity provider (IdP) configuration
    # information Amazon Q needs to deploy a Amazon Q web experience.
    #
    # @!attribute [rw] metadata_xml
    #   The metadata XML that your IdP generated.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role assumed by users when
    #   they authenticate into their Amazon Q web experience, containing the
    #   relevant Amazon Q permissions for conversing with Amazon Q.
    #   @return [String]
    #
    # @!attribute [rw] user_group_attribute
    #   The group attribute name in your IdP that maps to user groups.
    #   @return [String]
    #
    # @!attribute [rw] user_id_attribute
    #   The user attribute name in your IdP that maps to the user email.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/SamlConfiguration AWS API Documentation
    #
    class SamlConfiguration < Struct.new(
      :metadata_xml,
      :role_arn,
      :user_group_attribute,
      :user_id_attribute)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have exceeded the set limits for your Amazon Q service.
    #
    # @!attribute [rw] message
    #   The message describing a `ServiceQuotaExceededException`.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The identifier of the resource affected.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource affected.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The documents used to generate an Amazon Q web experience response.
    #
    # @!attribute [rw] citation_number
    #   The number attached to a citation in an Amazon Q generated response.
    #   @return [Integer]
    #
    # @!attribute [rw] snippet
    #   The content extract from the document on which the generated
    #   response is based.
    #   @return [String]
    #
    # @!attribute [rw] text_message_segments
    #   A text extract from a source document that is used for source
    #   attribution.
    #   @return [Array<Types::TextSegment>]
    #
    # @!attribute [rw] title
    #   The title of the document which is the source for the Amazon Q
    #   generated response.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The Unix timestamp when the Amazon Q application was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] url
    #   The URL of the document which is the source for the Amazon Q
    #   generated response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/SourceAttribution AWS API Documentation
    #
    class SourceAttribution < Struct.new(
      :citation_number,
      :snippet,
      :text_message_segments,
      :title,
      :updated_at,
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of Amazon Q application the data source is connected
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The identifier of the data source connector.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index used with the data source connector.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/StartDataSourceSyncJobRequest AWS API Documentation
    #
    class StartDataSourceSyncJobRequest < Struct.new(
      :application_id,
      :data_source_id,
      :index_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] execution_id
    #   The identifier for a particular synchronization job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/StartDataSourceSyncJobResponse AWS API Documentation
    #
    class StartDataSourceSyncJobResponse < Struct.new(
      :execution_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q application that the data source is
    #   connected to.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The identifier of the data source connector.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index used with the Amazon Q data source
    #   connector.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/StopDataSourceSyncJobRequest AWS API Documentation
    #
    class StopDataSourceSyncJobRequest < Struct.new(
      :application_id,
      :data_source_id,
      :index_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/StopDataSourceSyncJobResponse AWS API Documentation
    #
    class StopDataSourceSyncJobResponse < Aws::EmptyStructure; end

    # A list of key/value pairs that identify an index, FAQ, or data source.
    # Tag keys and values can consist of Unicode letters, digits, white
    # space, and any of the following symbols: \_ . : / = + - @.
    #
    # @!attribute [rw] key
    #   The key for the tag. Keys are not case sensitive and must be unique
    #   for the Amazon Q application or data source.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value associated with the tag. The value may be an empty string
    #   but it can't be null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the Amazon Q application or data
    #   source to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tag keys to add to the Amazon Q application or data
    #   source. If a tag already exists, the existing value is replaced with
    #   the new value.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Provides information about text documents in an index.
    #
    # @!attribute [rw] indexed_text_bytes
    #   The total size, in bytes, of the indexed documents.
    #   @return [Integer]
    #
    # @!attribute [rw] indexed_text_document_count
    #   The number of text documents indexed.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/TextDocumentStatistics AWS API Documentation
    #
    class TextDocumentStatistics < Struct.new(
      :indexed_text_bytes,
      :indexed_text_document_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a text extract in a chat response that can
    # be attributed to a source document.
    #
    # @!attribute [rw] begin_offset
    #   The zero-based location in the response string where the source
    #   attribution starts.
    #   @return [Integer]
    #
    # @!attribute [rw] end_offset
    #   The zero-based location in the response string where the source
    #   attribution ends.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/TextSegment AWS API Documentation
    #
    class TextSegment < Struct.new(
      :begin_offset,
      :end_offset)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to throttling. Reduce the number of
    # requests and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The topic specific controls configured for an Amazon Q application.
    #
    # @!attribute [rw] description
    #   A description for your topic control configuration. Use this outline
    #   how the large language model (LLM) should use this topic control
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] example_chat_messages
    #   A list of example phrases that you expect the end user to use in
    #   relation to the topic.
    #   @return [Array<String>]
    #
    # @!attribute [rw] name
    #   A name for your topic control configuration.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   Rules defined for a topic configuration.
    #   @return [Array<Types::Rule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/TopicConfiguration AWS API Documentation
    #
    class TopicConfiguration < Struct.new(
      :description,
      :example_chat_messages,
      :name,
      :rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the Amazon Q application, or data
    #   source to remove the tag from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of tag keys to remove from the Amazon Q application or data
    #   source. If a tag key does not exist on the resource, it is ignored.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q application.
    #   @return [String]
    #
    # @!attribute [rw] attachments_configuration
    #   An option to allow end users to upload files directly during chat.
    #   @return [Types::AttachmentsConfiguration]
    #
    # @!attribute [rw] description
    #   A description for the Amazon Q application.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   A name for the Amazon Q application.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   An Amazon Web Services Identity and Access Management (IAM) role
    #   that gives Amazon Q permission to access Amazon CloudWatch logs and
    #   metrics.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UpdateApplicationRequest AWS API Documentation
    #
    class UpdateApplicationRequest < Struct.new(
      :application_id,
      :attachments_configuration,
      :description,
      :display_name,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UpdateApplicationResponse AWS API Documentation
    #
    class UpdateApplicationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_id
    #   The identifier of the application for which the chat controls are
    #   configured.
    #   @return [String]
    #
    # @!attribute [rw] blocked_phrases_configuration_update
    #   The phrases blocked from chat by your chat control configuration.
    #   @return [Types::BlockedPhrasesConfigurationUpdate]
    #
    # @!attribute [rw] client_token
    #   A token that you provide to identify the request to update a Amazon
    #   Q application chat configuration.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] response_scope
    #   The response scope configured for your application. This determines
    #   whether your application uses its retrieval augmented generation
    #   (RAG) system to generate answers only from your enterprise data, or
    #   also uses the large language models (LLM) knowledge to respons to
    #   end user questions in chat.
    #   @return [String]
    #
    # @!attribute [rw] topic_configurations_to_create_or_update
    #   The configured topic specific chat controls you want to update.
    #   @return [Array<Types::TopicConfiguration>]
    #
    # @!attribute [rw] topic_configurations_to_delete
    #   The configured topic specific chat controls you want to delete.
    #   @return [Array<Types::TopicConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UpdateChatControlsConfigurationRequest AWS API Documentation
    #
    class UpdateChatControlsConfigurationRequest < Struct.new(
      :application_id,
      :blocked_phrases_configuration_update,
      :client_token,
      :response_scope,
      :topic_configurations_to_create_or_update,
      :topic_configurations_to_delete)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UpdateChatControlsConfigurationResponse AWS API Documentation
    #
    class UpdateChatControlsConfigurationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q application the data source is
    #   attached to.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   Provides the configuration information for an Amazon Q data source.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] data_source_id
    #   The identifier of the data source connector.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the data source connector.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   A name of the data source connector.
    #   @return [String]
    #
    # @!attribute [rw] document_enrichment_configuration
    #   Provides the configuration information for altering document
    #   metadata and content during the document ingestion process.
    #
    #   For more information, see [Custom document enrichment][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/business-use-dg/custom-document-enrichment.html
    #   @return [Types::DocumentEnrichmentConfiguration]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index attached to the data source connector.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role with permission to
    #   access the data source and required resources.
    #   @return [String]
    #
    # @!attribute [rw] sync_schedule
    #   The chosen update frequency for your data source.
    #   @return [String]
    #
    # @!attribute [rw] vpc_configuration
    #   Provides configuration information needed to connect to an Amazon
    #   VPC (Virtual Private Cloud).
    #   @return [Types::DataSourceVpcConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UpdateDataSourceRequest AWS API Documentation
    #
    class UpdateDataSourceRequest < Struct.new(
      :application_id,
      :configuration,
      :data_source_id,
      :description,
      :display_name,
      :document_enrichment_configuration,
      :index_id,
      :role_arn,
      :sync_schedule,
      :vpc_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UpdateDataSourceResponse AWS API Documentation
    #
    class UpdateDataSourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q application connected to the index.
    #   @return [String]
    #
    # @!attribute [rw] capacity_configuration
    #   The storage capacity units you want to provision for your Amazon Q
    #   index. You can add and remove capacity to fit your usage needs.
    #   @return [Types::IndexCapacityConfiguration]
    #
    # @!attribute [rw] description
    #   The description of the Amazon Q index.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of the Amazon Q index.
    #   @return [String]
    #
    # @!attribute [rw] document_attribute_configurations
    #   Configuration information for document metadata or fields. Document
    #   metadata are fields or attributes associated with your documents.
    #   For example, the company department name associated with each
    #   document. For more information, see [Understanding document
    #   attributes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/business-use-dg/doc-attributes-types.html#doc-attributes
    #   @return [Array<Types::DocumentAttributeConfiguration>]
    #
    # @!attribute [rw] index_id
    #   The identifier of the Amazon Q index.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UpdateIndexRequest AWS API Documentation
    #
    class UpdateIndexRequest < Struct.new(
      :application_id,
      :capacity_configuration,
      :description,
      :display_name,
      :document_attribute_configurations,
      :index_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UpdateIndexResponse AWS API Documentation
    #
    class UpdateIndexResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_id
    #   The identifier of the application the plugin is attached to.
    #   @return [String]
    #
    # @!attribute [rw] auth_configuration
    #   The authentication configuration the plugin is using.
    #   @return [Types::PluginAuthConfiguration]
    #
    # @!attribute [rw] display_name
    #   The name of the plugin.
    #   @return [String]
    #
    # @!attribute [rw] plugin_id
    #   The identifier of the plugin.
    #   @return [String]
    #
    # @!attribute [rw] server_url
    #   The source URL used for plugin configuration.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The status of the plugin.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UpdatePluginRequest AWS API Documentation
    #
    class UpdatePluginRequest < Struct.new(
      :application_id,
      :auth_configuration,
      :display_name,
      :plugin_id,
      :server_url,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UpdatePluginResponse AWS API Documentation
    #
    class UpdatePluginResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_id
    #   The identifier of your Amazon Q application.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   Provides information on how the retriever used for your Amazon Q
    #   application is configured.
    #   @return [Types::RetrieverConfiguration]
    #
    # @!attribute [rw] display_name
    #   The name of your retriever.
    #   @return [String]
    #
    # @!attribute [rw] retriever_id
    #   The identifier of your retriever.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role with permission to
    #   access the retriever and required resources.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UpdateRetrieverRequest AWS API Documentation
    #
    class UpdateRetrieverRequest < Struct.new(
      :application_id,
      :configuration,
      :display_name,
      :retriever_id,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UpdateRetrieverResponse AWS API Documentation
    #
    class UpdateRetrieverResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_id
    #   The identifier of the application the user is attached to.
    #   @return [String]
    #
    # @!attribute [rw] user_aliases_to_delete
    #   The user aliases attached to the user id that are to be deleted.
    #   @return [Array<Types::UserAlias>]
    #
    # @!attribute [rw] user_aliases_to_update
    #   The user aliases attached to the user id that are to be updated.
    #   @return [Array<Types::UserAlias>]
    #
    # @!attribute [rw] user_id
    #   The email id attached to the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UpdateUserRequest AWS API Documentation
    #
    class UpdateUserRequest < Struct.new(
      :application_id,
      :user_aliases_to_delete,
      :user_aliases_to_update,
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_aliases_added
    #   The user aliases that have been to be added to a user id.
    #   @return [Array<Types::UserAlias>]
    #
    # @!attribute [rw] user_aliases_deleted
    #   The user aliases that have been deleted from a user id.
    #   @return [Array<Types::UserAlias>]
    #
    # @!attribute [rw] user_aliases_updated
    #   The user aliases attached to a user id that have been updated.
    #   @return [Array<Types::UserAlias>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UpdateUserResponse AWS API Documentation
    #
    class UpdateUserResponse < Struct.new(
      :user_aliases_added,
      :user_aliases_deleted,
      :user_aliases_updated)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q application attached to the web
    #   experience.
    #   @return [String]
    #
    # @!attribute [rw] authentication_configuration
    #   The authentication configuration of the Amazon Q web experience.
    #   @return [Types::WebExperienceAuthConfiguration]
    #
    # @!attribute [rw] sample_prompts_control_mode
    #   Determines whether sample prompts are enabled in the web experience
    #   for an end user.
    #   @return [String]
    #
    # @!attribute [rw] subtitle
    #   The subtitle of the Amazon Q web experience.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the Amazon Q web experience.
    #   @return [String]
    #
    # @!attribute [rw] web_experience_id
    #   The identifier of the Amazon Q web experience.
    #   @return [String]
    #
    # @!attribute [rw] welcome_message
    #   A customized welcome message for an end user in an Amazon Q web
    #   experience.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UpdateWebExperienceRequest AWS API Documentation
    #
    class UpdateWebExperienceRequest < Struct.new(
      :application_id,
      :authentication_configuration,
      :sample_prompts_control_mode,
      :subtitle,
      :title,
      :web_experience_id,
      :welcome_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UpdateWebExperienceResponse AWS API Documentation
    #
    class UpdateWebExperienceResponse < Aws::EmptyStructure; end

    # Aliases attached to a user id within an Amazon Q application.
    #
    # @!attribute [rw] data_source_id
    #   The identifier of the data source that the user aliases are
    #   associated with.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index that the user aliases are associated
    #   with.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user id associated with the user aliases.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UserAlias AWS API Documentation
    #
    class UserAlias < Struct.new(
      :data_source_id,
      :index_id,
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about users and groups associated with a topic
    # control rule.
    #
    # @!attribute [rw] user_groups
    #   The user groups associated with a topic control rule.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_ids
    #   The user ids associated with a topic control rule.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UsersAndGroups AWS API Documentation
    #
    class UsersAndGroups < Struct.new(
      :user_groups,
      :user_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input doesn't meet the constraints set by the Amazon Q service.
    # Provide the correct input and try again.
    #
    # @!attribute [rw] fields
    #   The input field(s) that failed validation.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @!attribute [rw] message
    #   The message describing the `ValidationException`.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the `ValidationException`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :fields,
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input failed to meet the constraints specified by Amazon Q in a
    # specified field.
    #
    # @!attribute [rw] message
    #   A message about the validation exception.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The field name where the invalid entry was detected.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :message,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information for an Amazon Q web experience.
    #
    # @!attribute [rw] created_at
    #   The Unix timestamp when the Amazon Q application was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] default_endpoint
    #   The endpoint URLs for your Amazon Q web experience. The URLs are
    #   unique and fully hosted by Amazon Web Services.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of your Amazon Q web experience.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The Unix timestamp when your Amazon Q web experience was updated.
    #   @return [Time]
    #
    # @!attribute [rw] web_experience_id
    #   The identifier of your Amazon Q web experience.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/WebExperience AWS API Documentation
    #
    class WebExperience < Struct.new(
      :created_at,
      :default_endpoint,
      :status,
      :updated_at,
      :web_experience_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the authorization configuration information needed to deploy
    # a Amazon Q web experience to end users.
    #
    # @note WebExperienceAuthConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note WebExperienceAuthConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of WebExperienceAuthConfiguration corresponding to the set member.
    #
    # @!attribute [rw] saml_configuration
    #   Provides the SAML 2.0 compliant identity provider (IdP)
    #   configuration information Amazon Q needs to deploy a Amazon Q web
    #   experience.
    #   @return [Types::SamlConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/WebExperienceAuthConfiguration AWS API Documentation
    #
    class WebExperienceAuthConfiguration < Struct.new(
      :saml_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class SamlConfiguration < WebExperienceAuthConfiguration; end
      class Unknown < WebExperienceAuthConfiguration; end
    end

  end
end
