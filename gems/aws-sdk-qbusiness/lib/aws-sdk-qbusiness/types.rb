# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::QBusiness
  module Types

    # Contains details about the OpenAPI schema for a custom plugin. For
    # more information, see [custom plugin OpenAPI schemas][1]. You can
    # either include the schema directly in the payload field or you can
    # upload it to an S3 bucket and specify the S3 bucket location in the
    # `s3` field.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/custom-plugin.html#plugins-api-schema
    #
    # @note APISchema is a union - when making an API calls you must set exactly one of the members.
    #
    # @note APISchema is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of APISchema corresponding to the set member.
    #
    # @!attribute [rw] payload
    #   The JSON or YAML-formatted payload defining the OpenAPI schema for a
    #   custom plugin.
    #   @return [String]
    #
    # @!attribute [rw] s3
    #   Contains details about the S3 object containing the OpenAPI schema
    #   for a custom plugin. The schema could be in either JSON or YAML
    #   format.
    #   @return [Types::S3]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/APISchema AWS API Documentation
    #
    class APISchema < Struct.new(
      :payload,
      :s3,
      :unknown)
      SENSITIVE = [:payload]
      include Aws::Structure
      include Aws::Structure::Union

      class Payload < APISchema; end
      class S3 < APISchema; end
      class Unknown < APISchema; end
    end

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
    # @!attribute [rw] principals
    #   Contains a list of principals, where a principal can be either a
    #   `USER` or a `GROUP`. Each principal can be have the following type
    #   of document access: `ALLOW` or `DENY`.
    #   @return [Array<Types::Principal>]
    #
    # @!attribute [rw] member_relation
    #   Describes the member relation within a principal list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/AccessControl AWS API Documentation
    #
    class AccessControl < Struct.new(
      :principals,
      :member_relation)
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

    # Specifies an allowed action and its associated filter configuration.
    #
    # @!attribute [rw] action
    #   The Amazon Q Business action that is allowed.
    #   @return [String]
    #
    # @!attribute [rw] filter_configuration
    #   The filter configuration for the action, if any.
    #   @return [Types::ActionFilterConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ActionConfiguration AWS API Documentation
    #
    class ActionConfiguration < Struct.new(
      :action,
      :filter_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Performs an Amazon Q Business plugin action during a non-streaming
    # chat conversation.
    #
    # @!attribute [rw] plugin_id
    #   The identifier of the plugin the action is attached to.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   A mapping of field names to the field values in input that an end
    #   user provides to Amazon Q Business requests to perform their plugin
    #   action.
    #   @return [Hash<String,Types::ActionExecutionPayloadField>]
    #
    # @!attribute [rw] payload_field_name_separator
    #   A string used to retain information about the hierarchical contexts
    #   within an action execution event payload.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ActionExecution AWS API Documentation
    #
    class ActionExecution < Struct.new(
      :plugin_id,
      :payload,
      :payload_field_name_separator)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request from an end user signalling an intent to perform an Amazon Q
    # Business plugin action during a streaming chat.
    #
    # @!attribute [rw] plugin_id
    #   The identifier of the plugin for which the action is being
    #   requested.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   A mapping of field names to the field values in input that an end
    #   user provides to Amazon Q Business requests to perform their plugin
    #   action.
    #   @return [Hash<String,Types::ActionExecutionPayloadField>]
    #
    # @!attribute [rw] payload_field_name_separator
    #   A string used to retain information about the hierarchical contexts
    #   within a action execution event payload.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ActionExecutionEvent AWS API Documentation
    #
    class ActionExecutionEvent < Struct.new(
      :plugin_id,
      :payload,
      :payload_field_name_separator,
      :event_type)
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

    # Specifies filters to apply to an allowed action.
    #
    # @!attribute [rw] document_attribute_filter
    #   Enables filtering of responses based on document attributes or
    #   metadata fields.
    #   @return [Types::AttributeFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ActionFilterConfiguration AWS API Documentation
    #
    class ActionFilterConfiguration < Struct.new(
      :document_attribute_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # An output event that Amazon Q Business returns to an user who wants to
    # perform a plugin action during a non-streaming chat conversation. It
    # contains information about the selected action with a list of possible
    # user input fields, some pre-populated by Amazon Q Business.
    #
    # @!attribute [rw] plugin_id
    #   The identifier of the plugin associated with the action review.
    #   @return [String]
    #
    # @!attribute [rw] plugin_type
    #   The type of plugin.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   Field values that an end user needs to provide to Amazon Q Business
    #   for Amazon Q Business to perform the requested plugin action.
    #   @return [Hash<String,Types::ActionReviewPayloadField>]
    #
    # @!attribute [rw] payload_field_name_separator
    #   A string used to retain information about the hierarchical contexts
    #   within an action review payload.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ActionReview AWS API Documentation
    #
    class ActionReview < Struct.new(
      :plugin_id,
      :plugin_type,
      :payload,
      :payload_field_name_separator)
      SENSITIVE = []
      include Aws::Structure
    end

    # An output event that Amazon Q Business returns to an user who wants to
    # perform a plugin action during a streaming chat conversation. It
    # contains information about the selected action with a list of possible
    # user input fields, some pre-populated by Amazon Q Business.
    #
    # @!attribute [rw] conversation_id
    #   The identifier of the conversation with which the action review
    #   event is associated.
    #   @return [String]
    #
    # @!attribute [rw] user_message_id
    #   The identifier of the conversation with which the plugin action is
    #   associated.
    #   @return [String]
    #
    # @!attribute [rw] system_message_id
    #   The identifier of an Amazon Q Business AI generated associated with
    #   the action review event.
    #   @return [String]
    #
    # @!attribute [rw] plugin_id
    #   The identifier of the plugin associated with the action review
    #   event.
    #   @return [String]
    #
    # @!attribute [rw] plugin_type
    #   The type of plugin.
    #   @return [String]
    #
    # @!attribute [rw] payload
    #   Field values that an end user needs to provide to Amazon Q Business
    #   for Amazon Q Business to perform the requested plugin action.
    #   @return [Hash<String,Types::ActionReviewPayloadField>]
    #
    # @!attribute [rw] payload_field_name_separator
    #   A string used to retain information about the hierarchical contexts
    #   within an action review event payload.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ActionReviewEvent AWS API Documentation
    #
    class ActionReviewEvent < Struct.new(
      :conversation_id,
      :user_message_id,
      :system_message_id,
      :plugin_id,
      :plugin_type,
      :payload,
      :payload_field_name_separator,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A user input field in an plugin action review payload.
    #
    # @!attribute [rw] display_name
    #   The name of the field.
    #   @return [String]
    #
    # @!attribute [rw] display_order
    #   The display order of fields in a payload.
    #   @return [Integer]
    #
    # @!attribute [rw] display_description
    #   The field level description of each action review input field. This
    #   could be an explanation of the field. In the Amazon Q Business web
    #   experience, these descriptions could be used to display as tool tips
    #   to help users understand the field.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of field.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The field value.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] allowed_values
    #   Information about the field values that an end user can use to
    #   provide to Amazon Q Business for Amazon Q Business to perform the
    #   requested plugin action.
    #   @return [Array<Types::ActionReviewPayloadFieldAllowedValue>]
    #
    # @!attribute [rw] allowed_format
    #   The expected data format for the action review input field value.
    #   For example, in PTO request, `from` and `to` would be of `datetime`
    #   allowed format.
    #   @return [String]
    #
    # @!attribute [rw] array_item_json_schema
    #   Use to create a custom form with array fields (fields with nested
    #   objects inside an array).
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] required
    #   Information about whether the field is required.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ActionReviewPayloadField AWS API Documentation
    #
    class ActionReviewPayloadField < Struct.new(
      :display_name,
      :display_order,
      :display_description,
      :type,
      :value,
      :allowed_values,
      :allowed_format,
      :array_item_json_schema,
      :required)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the field values that an end user can use to provide
    # to Amazon Q Business for Amazon Q Business to perform the requested
    # plugin action.
    #
    # @!attribute [rw] value
    #   The field value.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] display_value
    #   The name of the field.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ActionReviewPayloadFieldAllowedValue AWS API Documentation
    #
    class ActionReviewPayloadFieldAllowedValue < Struct.new(
      :value,
      :display_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information for an Amazon Q Business plugin action.
    #
    # @!attribute [rw] action_identifier
    #   The identifier of an Amazon Q Business plugin action.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name assigned by Amazon Q Business to a plugin action.
    #   You can't modify this value.
    #   @return [String]
    #
    # @!attribute [rw] instruction_example
    #   An Amazon Q Business suggested prompt and end user can use to invoke
    #   a plugin action. This value can be modified and sent as input to
    #   initiate an action. For example:
    #
    #   * Create a Jira task
    #
    #   * Create a chat assistant task to find the root cause of a specific
    #     incident
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of an Amazon Q Business plugin action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ActionSummary AWS API Documentation
    #
    class ActionSummary < Struct.new(
      :action_identifier,
      :display_name,
      :instruction_example,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information for an Amazon Q Business application.
    #
    # @!attribute [rw] display_name
    #   The name of the Amazon Q Business application.
    #   @return [String]
    #
    # @!attribute [rw] application_id
    #   The identifier for the Amazon Q Business application.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The Unix timestamp when the Amazon Q Business application was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The Unix timestamp when the Amazon Q Business application was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the Amazon Q Business application. The application is
    #   ready to use when the status is `ACTIVE`.
    #   @return [String]
    #
    # @!attribute [rw] identity_type
    #   The authentication type being used by a Amazon Q Business
    #   application.
    #   @return [String]
    #
    # @!attribute [rw] quick_sight_configuration
    #   The Amazon QuickSight configuration for an Amazon Q Business
    #   application that uses QuickSight as the identity provider.
    #   @return [Types::QuickSightConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/Application AWS API Documentation
    #
    class Application < Struct.new(
      :display_name,
      :application_id,
      :created_at,
      :updated_at,
      :status,
      :identity_type,
      :quick_sight_configuration)
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

    # The creator mode specific admin controls configured for an Amazon Q
    # Business application. Determines whether an end user can generate
    # LLM-only responses when they use the web experience.
    #
    # For more information, see [Admin controls and guardrails][1] and
    # [Conversation settings][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/guardrails.html
    # [2]: https://docs.aws.amazon.com/amazonq/latest/business-use-dg/using-web-experience.html#chat-source-scope
    #
    # @!attribute [rw] creator_mode_control
    #   Information about whether creator mode is enabled or disabled for an
    #   Amazon Q Business application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/AppliedCreatorModeConfiguration AWS API Documentation
    #
    class AppliedCreatorModeConfiguration < Struct.new(
      :creator_mode_control)
      SENSITIVE = []
      include Aws::Structure
    end

    # The chat orchestration specific admin controls configured for an
    # Amazon Q Business application. Determines whether Amazon Q Business
    # automatically routes chat requests across configured plugins and data
    # sources in your Amazon Q Business application.
    #
    # For more information, see [Chat orchestration settings][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/guardrails-global-controls.html#guardrails-global-orchestration
    #
    # @!attribute [rw] control
    #   Information about whether chat orchestration is enabled or disabled
    #   for an Amazon Q Business application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/AppliedOrchestrationConfiguration AWS API Documentation
    #
    class AppliedOrchestrationConfiguration < Struct.new(
      :control)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The unique identifier of the Amazon Q Business application.
    #   @return [String]
    #
    # @!attribute [rw] statement_id
    #   A unique identifier for the policy statement.
    #   @return [String]
    #
    # @!attribute [rw] actions
    #   The list of Amazon Q Business actions that the ISV is allowed to
    #   perform.
    #   @return [Array<String>]
    #
    # @!attribute [rw] principal
    #   The Amazon Resource Name of the IAM role for the ISV that is being
    #   granted permission.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/AssociatePermissionRequest AWS API Documentation
    #
    class AssociatePermissionRequest < Struct.new(
      :application_id,
      :statement_id,
      :actions,
      :principal)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] statement
    #   The JSON representation of the added permission statement.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/AssociatePermissionResponse AWS API Documentation
    #
    class AssociatePermissionResponse < Struct.new(
      :statement)
      SENSITIVE = []
      include Aws::Structure
    end

    # An attachment in an Amazon Q Business conversation.
    #
    # @!attribute [rw] attachment_id
    #   The identifier of the Amazon Q Business attachment.
    #   @return [String]
    #
    # @!attribute [rw] conversation_id
    #   The identifier of the Amazon Q Business conversation the attachment
    #   is associated with.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Filename of the Amazon Q Business attachment.
    #   @return [String]
    #
    # @!attribute [rw] copy_from
    #   A CopyFromSource containing a reference to the original source of
    #   the Amazon Q Business attachment.
    #   @return [Types::CopyFromSource]
    #
    # @!attribute [rw] file_type
    #   Filetype of the Amazon Q Business attachment.
    #   @return [String]
    #
    # @!attribute [rw] file_size
    #   Size in bytes of the Amazon Q Business attachment.
    #   @return [Integer]
    #
    # @!attribute [rw] md5chksum
    #   MD5 checksum of the Amazon Q Business attachment contents.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The Unix timestamp when the Amazon Q Business attachment was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   AttachmentStatus of the Amazon Q Business attachment.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   ErrorDetail providing information about a Amazon Q Business
    #   attachment error.
    #   @return [Types::ErrorDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/Attachment AWS API Documentation
    #
    class Attachment < Struct.new(
      :attachment_id,
      :conversation_id,
      :name,
      :copy_from,
      :file_type,
      :file_size,
      :md5chksum,
      :created_at,
      :status,
      :error)
      SENSITIVE = []
      include Aws::Structure
    end

    # This is either a file directly uploaded into a web experience chat or
    # a reference to an existing attachment that is part of a web experience
    # chat.
    #
    # @!attribute [rw] data
    #   The contents of the attachment.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The filename of the attachment.
    #   @return [String]
    #
    # @!attribute [rw] copy_from
    #   A reference to an existing attachment.
    #   @return [Types::CopyFromSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/AttachmentInput AWS API Documentation
    #
    class AttachmentInput < Struct.new(
      :data,
      :name,
      :copy_from)
      SENSITIVE = []
      include Aws::Structure
    end

    # A file input event activated by a end user request to upload files
    # into their web experience chat.
    #
    # @!attribute [rw] attachment
    #   This is either a file directly uploaded into a web experience chat
    #   or a reference to an existing attachment that is part of a web
    #   experience chat.
    #   @return [Types::AttachmentInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/AttachmentInputEvent AWS API Documentation
    #
    class AttachmentInputEvent < Struct.new(
      :attachment,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a file uploaded during chat.
    #
    # @!attribute [rw] name
    #   The name of a file uploaded during chat.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a file uploaded during chat.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   An error associated with a file uploaded during chat.
    #   @return [Types::ErrorDetail]
    #
    # @!attribute [rw] attachment_id
    #   The unique identifier of the Amazon Q Business attachment.
    #   @return [String]
    #
    # @!attribute [rw] conversation_id
    #   The unique identifier of the Amazon Q Business conversation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/AttachmentOutput AWS API Documentation
    #
    class AttachmentOutput < Struct.new(
      :name,
      :status,
      :error,
      :attachment_id,
      :conversation_id)
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

    # Enables filtering of responses based on document attributes or
    # metadata fields.
    #
    # @!attribute [rw] and_all_filters
    #   Performs a logical `AND` operation on all supplied filters.
    #   @return [Array<Types::AttributeFilter>]
    #
    # @!attribute [rw] or_all_filters
    #   Performs a logical `OR` operation on all supplied filters.
    #   @return [Array<Types::AttributeFilter>]
    #
    # @!attribute [rw] not_filter
    #   Performs a logical `NOT` operation on all supplied filters.
    #   @return [Types::AttributeFilter]
    #
    # @!attribute [rw] equals_to
    #   Performs an equals operation on two document attributes or metadata
    #   fields. Supported for the following [document attribute value
    #   types][1]: `dateValue`, `longValue`, `stringListValue` and
    #   `stringValue`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeValue.html
    #   @return [Types::DocumentAttribute]
    #
    # @!attribute [rw] contains_all
    #   Returns `true` when a document contains all the specified document
    #   attributes or metadata fields. Supported for the following [document
    #   attribute value types][1]: `stringListValue`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeValue.html
    #   @return [Types::DocumentAttribute]
    #
    # @!attribute [rw] contains_any
    #   Returns `true` when a document contains any of the specified
    #   document attributes or metadata fields. Supported for the following
    #   [document attribute value types][1]: `stringListValue`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeValue.html
    #   @return [Types::DocumentAttribute]
    #
    # @!attribute [rw] greater_than
    #   Performs a greater than operation on two document attributes or
    #   metadata fields. Supported for the following [document attribute
    #   value types][1]: `dateValue` and `longValue`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeValue.html
    #   @return [Types::DocumentAttribute]
    #
    # @!attribute [rw] greater_than_or_equals
    #   Performs a greater or equals than operation on two document
    #   attributes or metadata fields. Supported for the following [document
    #   attribute value types][1]: `dateValue` and `longValue`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeValue.html
    #   @return [Types::DocumentAttribute]
    #
    # @!attribute [rw] less_than
    #   Performs a less than operation on two document attributes or
    #   metadata fields. Supported for the following [document attribute
    #   value types][1]: `dateValue` and `longValue`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeValue.html
    #   @return [Types::DocumentAttribute]
    #
    # @!attribute [rw] less_than_or_equals
    #   Performs a less than or equals operation on two document attributes
    #   or metadata fields.Supported for the following [document attribute
    #   value type][1]: `dateValue` and `longValue`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeValue.html
    #   @return [Types::DocumentAttribute]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/AttributeFilter AWS API Documentation
    #
    class AttributeFilter < Struct.new(
      :and_all_filters,
      :or_all_filters,
      :not_filter,
      :equals_to,
      :contains_all,
      :contains_any,
      :greater_than,
      :greater_than_or_equals,
      :less_than,
      :less_than_or_equals)
      SENSITIVE = []
      include Aws::Structure
    end

    # A request made by Amazon Q Business to a third paty authentication
    # server to authenticate a custom plugin user.
    #
    # @!attribute [rw] authorization_url
    #   The URL sent by Amazon Q Business to the third party authentication
    #   server to authenticate a custom plugin user through an OAuth
    #   protocol.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/AuthChallengeRequest AWS API Documentation
    #
    class AuthChallengeRequest < Struct.new(
      :authorization_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # An authentication verification event activated by an end user request
    # to use a custom plugin.
    #
    # @!attribute [rw] authorization_url
    #   The URL sent by Amazon Q Business to a third party authentication
    #   server in response to an authentication verification event activated
    #   by an end user request to use a custom plugin.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/AuthChallengeRequestEvent AWS API Documentation
    #
    class AuthChallengeRequestEvent < Struct.new(
      :authorization_url,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details of the authentication information received from a
    # third party authentication server in response to an authentication
    # challenge.
    #
    # @!attribute [rw] response_map
    #   The mapping of key-value pairs in an authentication challenge
    #   response.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/AuthChallengeResponse AWS API Documentation
    #
    class AuthChallengeResponse < Struct.new(
      :response_map)
      SENSITIVE = []
      include Aws::Structure
    end

    # An authentication verification event response by a third party
    # authentication server to Amazon Q Business.
    #
    # @!attribute [rw] response_map
    #   The mapping of key-value pairs in an authentication challenge
    #   response.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/AuthChallengeResponseEvent AWS API Documentation
    #
    class AuthChallengeResponseEvent < Struct.new(
      :response_map,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Subscription configuration information for an Amazon Q Business
    # application using IAM identity federation for user management.
    #
    # @!attribute [rw] auto_subscribe
    #   Describes whether automatic subscriptions are enabled for an Amazon
    #   Q Business application using IAM identity federation for user
    #   management.
    #   @return [String]
    #
    # @!attribute [rw] default_subscription_type
    #   Describes the default subscription type assigned to an Amazon Q
    #   Business application using IAM identity federation for user
    #   management. If the value for `autoSubscribe` is set to `ENABLED` you
    #   must select a value for this field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/AutoSubscriptionConfiguration AWS API Documentation
    #
    class AutoSubscriptionConfiguration < Struct.new(
      :auto_subscribe,
      :default_subscription_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the basic authentication credentials used to
    # configure a plugin.
    #
    # @!attribute [rw] secret_arn
    #   The ARN of the Secrets Manager secret that stores the basic
    #   authentication credentials used for plugin configuration..
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of an IAM role used by Amazon Q Business to access the basic
    #   authentication credentials stored in a Secrets Manager secret.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/BasicAuthConfiguration AWS API Documentation
    #
    class BasicAuthConfiguration < Struct.new(
      :secret_arn,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q Business application.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the Amazon Q Business index that contains the
    #   documents to delete.
    #   @return [String]
    #
    # @!attribute [rw] documents
    #   Documents deleted from the Amazon Q Business index.
    #   @return [Array<Types::DeleteDocument>]
    #
    # @!attribute [rw] data_source_sync_id
    #   The identifier of the data source sync during which the documents
    #   were deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/BatchDeleteDocumentRequest AWS API Documentation
    #
    class BatchDeleteDocumentRequest < Struct.new(
      :application_id,
      :index_id,
      :documents,
      :data_source_sync_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_documents
    #   A list of documents that couldn't be removed from the Amazon Q
    #   Business index. Each entry contains an error message that indicates
    #   why the document couldn't be removed from the index.
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
    #   The identifier of the Amazon Q Business application.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the Amazon Q Business index to add the documents
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] documents
    #   One or more documents to add to the index.
    #   @return [Array<Types::Document>]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role with permission to
    #   access your S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] data_source_sync_id
    #   The identifier of the data source sync during which the documents
    #   were added.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/BatchPutDocumentRequest AWS API Documentation
    #
    class BatchPutDocumentRequest < Struct.new(
      :application_id,
      :index_id,
      :documents,
      :role_arn,
      :data_source_sync_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed_documents
    #   A list of documents that were not added to the Amazon Q Business
    #   index because the document failed a validation check. Each document
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
    #   A list of phrases blocked from a Amazon Q Business web experience
    #   chat.
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

    # Updates a blocked phrases configuration in your Amazon Q Business
    # application.
    #
    # @!attribute [rw] blocked_phrases_to_create_or_update
    #   Creates or updates a blocked phrases configuration in your Amazon Q
    #   Business application.
    #   @return [Array<String>]
    #
    # @!attribute [rw] blocked_phrases_to_delete
    #   Deletes a blocked phrases configuration in your Amazon Q Business
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

    # The container for browser extension configuration for an Amazon Q
    # Business web experience.
    #
    # @!attribute [rw] enabled_browser_extensions
    #   Specify the browser extensions allowed for your Amazon Q web
    #   experience.
    #
    #   * `CHROME` — Enables the extension for Chromium-based browsers
    #     (Google Chrome, Microsoft Edge, Opera, etc.).
    #
    #   * `FIREFOX` — Enables the extension for Mozilla Firefox.
    #
    #   * `CHROME` and `FIREFOX` — Enable the extension for Chromium-based
    #     browsers and Mozilla Firefox.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/BrowserExtensionConfiguration AWS API Documentation
    #
    class BrowserExtensionConfiguration < Struct.new(
      :enabled_browser_extensions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q Business application for which the
    #   subscription is being cancelled.
    #   @return [String]
    #
    # @!attribute [rw] subscription_id
    #   The identifier of the Amazon Q Business subscription being
    #   cancelled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/CancelSubscriptionRequest AWS API Documentation
    #
    class CancelSubscriptionRequest < Struct.new(
      :application_id,
      :subscription_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscription_arn
    #   The Amazon Resource Name (ARN) of the Amazon Q Business subscription
    #   being cancelled.
    #   @return [String]
    #
    # @!attribute [rw] current_subscription
    #   The type of your current Amazon Q Business subscription.
    #   @return [Types::SubscriptionDetails]
    #
    # @!attribute [rw] next_subscription
    #   The type of the Amazon Q Business subscription for the next month.
    #   @return [Types::SubscriptionDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/CancelSubscriptionResponse AWS API Documentation
    #
    class CancelSubscriptionResponse < Struct.new(
      :subscription_arn,
      :current_subscription,
      :next_subscription)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q Business application linked to a
    #   streaming Amazon Q Business conversation.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user attached to the chat input.
    #   @return [String]
    #
    # @!attribute [rw] user_groups
    #   The group names that a user associated with the chat input belongs
    #   to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] conversation_id
    #   The identifier of the Amazon Q Business conversation.
    #   @return [String]
    #
    # @!attribute [rw] parent_message_id
    #   The identifier used to associate a user message with a AI generated
    #   response.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A token that you provide to identify the chat input.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] input_stream
    #   The streaming input for the `Chat` API.
    #   @return [Types::ChatInputStream]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ChatInput AWS API Documentation
    #
    class ChatInput < Struct.new(
      :application_id,
      :user_id,
      :user_groups,
      :conversation_id,
      :parent_message_id,
      :client_token,
      :input_stream)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information for Amazon Q Business conversation modes.
    #
    # For more information, see [Admin controls and guardrails][1] and
    # [Conversation settings][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/guardrails.html
    # [2]: https://docs.aws.amazon.com/amazonq/latest/business-use-dg/using-web-experience.html#chat-source-scope
    #
    # @note ChatModeConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] plugin_configuration
    #   Configuration information required to invoke chat in `PLUGIN_MODE`.
    #   @return [Types::PluginConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ChatModeConfiguration AWS API Documentation
    #
    class ChatModeConfiguration < Struct.new(
      :plugin_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class PluginConfiguration < ChatModeConfiguration; end
      class Unknown < ChatModeConfiguration; end
    end

    # @!attribute [rw] output_stream
    #   The streaming output for the `Chat` API.
    #   @return [Types::ChatOutputStream]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ChatOutput AWS API Documentation
    #
    class ChatOutput < Struct.new(
      :output_stream)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q Business application linked to the
    #   Amazon Q Business conversation.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user attached to the chat input.
    #   @return [String]
    #
    # @!attribute [rw] user_groups
    #   The group names that a user associated with the chat input belongs
    #   to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_message
    #   A end user message in a conversation.
    #   @return [String]
    #
    # @!attribute [rw] attachments
    #   A list of files uploaded directly during chat. You can upload a
    #   maximum of 5 files of upto 10 MB each.
    #   @return [Array<Types::AttachmentInput>]
    #
    # @!attribute [rw] action_execution
    #   A request from an end user to perform an Amazon Q Business plugin
    #   action.
    #   @return [Types::ActionExecution]
    #
    # @!attribute [rw] auth_challenge_response
    #   An authentication verification event response by a third party
    #   authentication server to Amazon Q Business.
    #   @return [Types::AuthChallengeResponse]
    #
    # @!attribute [rw] conversation_id
    #   The identifier of the Amazon Q Business conversation.
    #   @return [String]
    #
    # @!attribute [rw] parent_message_id
    #   The identifier of the previous system message in a conversation.
    #   @return [String]
    #
    # @!attribute [rw] attribute_filter
    #   Enables filtering of Amazon Q Business web experience responses
    #   based on document attributes or metadata fields.
    #   @return [Types::AttributeFilter]
    #
    # @!attribute [rw] chat_mode
    #   The `chatMode` parameter determines the chat modes available to
    #   Amazon Q Business users:
    #
    #   * `RETRIEVAL_MODE` - If you choose this mode, Amazon Q generates
    #     responses solely from the data sources connected and indexed by
    #     the application. If an answer is not found in the data sources or
    #     there are no data sources available, Amazon Q will respond with a
    #     "*No Answer Found*" message, unless LLM knowledge has been
    #     enabled. In that case, Amazon Q will generate a response from the
    #     LLM knowledge
    #
    #   * `CREATOR_MODE` - By selecting this mode, you can choose to
    #     generate responses only from the LLM knowledge. You can also
    #     attach files and have Amazon Q generate a response based on the
    #     data in those files. If the attached files do not contain an
    #     answer for the query, Amazon Q will automatically fall back to
    #     generating a response from the LLM knowledge.
    #
    #   * `PLUGIN_MODE` - By selecting this mode, users can choose to use
    #     plugins in chat to get their responses.
    #
    #   <note markdown="1"> If none of the modes are selected, Amazon Q will only respond using
    #   the information from the attached files.
    #
    #    </note>
    #
    #   For more information, see [Admin controls and guardrails][1],
    #   [Plugins][2], and [Response sources][3].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/guardrails.html
    #   [2]: https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/plugins.html
    #   [3]: https://docs.aws.amazon.com/amazonq/latest/business-use-dg/using-web-experience.html#chat-source-scope
    #   @return [String]
    #
    # @!attribute [rw] chat_mode_configuration
    #   The chat mode configuration for an Amazon Q Business application.
    #   @return [Types::ChatModeConfiguration]
    #
    # @!attribute [rw] client_token
    #   A token that you provide to identify a chat request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ChatSyncInput AWS API Documentation
    #
    class ChatSyncInput < Struct.new(
      :application_id,
      :user_id,
      :user_groups,
      :user_message,
      :attachments,
      :action_execution,
      :auth_challenge_response,
      :conversation_id,
      :parent_message_id,
      :attribute_filter,
      :chat_mode,
      :chat_mode_configuration,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] conversation_id
    #   The identifier of the Amazon Q Business conversation.
    #   @return [String]
    #
    # @!attribute [rw] system_message
    #   An AI-generated message in a conversation.
    #   @return [String]
    #
    # @!attribute [rw] system_message_id
    #   The identifier of an Amazon Q Business AI generated message within
    #   the conversation.
    #   @return [String]
    #
    # @!attribute [rw] user_message_id
    #   The identifier of an Amazon Q Business end user text input message
    #   within the conversation.
    #   @return [String]
    #
    # @!attribute [rw] action_review
    #   A request from Amazon Q Business to the end user for information
    #   Amazon Q Business needs to successfully complete a requested plugin
    #   action.
    #   @return [Types::ActionReview]
    #
    # @!attribute [rw] auth_challenge_request
    #   An authentication verification event activated by an end user
    #   request to use a custom plugin.
    #   @return [Types::AuthChallengeRequest]
    #
    # @!attribute [rw] source_attributions
    #   The source documents used to generate the conversation response.
    #   @return [Array<Types::SourceAttribution>]
    #
    # @!attribute [rw] failed_attachments
    #   A list of files which failed to upload during chat.
    #   @return [Array<Types::AttachmentOutput>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ChatSyncOutput AWS API Documentation
    #
    class ChatSyncOutput < Struct.new(
      :conversation_id,
      :system_message,
      :system_message_id,
      :user_message_id,
      :action_review,
      :auth_challenge_request,
      :source_attributions,
      :failed_attachments)
      SENSITIVE = []
      include Aws::Structure
    end

    # A configuration event activated by an end user request to select a
    # specific chat mode.
    #
    # @!attribute [rw] chat_mode
    #   The chat modes available to an Amazon Q Business end user.
    #
    #   * `RETRIEVAL_MODE` - The default chat mode for an Amazon Q Business
    #     application. When this mode is enabled, Amazon Q Business
    #     generates responses only from data sources connected to an Amazon
    #     Q Business application.
    #
    #   * `CREATOR_MODE` - By selecting this mode, users can choose to
    #     generate responses only from the LLM knowledge, without consulting
    #     connected data sources, for a chat request.
    #
    #   * `PLUGIN_MODE` - By selecting this mode, users can choose to use
    #     plugins in chat.
    #
    #   For more information, see [Admin controls and guardrails][1],
    #   [Plugins][2], and [Conversation settings][3].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/guardrails.html
    #   [2]: https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/plugins.html
    #   [3]: https://docs.aws.amazon.com/amazonq/latest/business-use-dg/using-web-experience.html#chat-source-scope
    #   @return [String]
    #
    # @!attribute [rw] chat_mode_configuration
    #   Configuration information for Amazon Q Business conversation modes.
    #
    #   For more information, see [Admin controls and guardrails][1] and
    #   [Conversation settings][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/guardrails.html
    #   [2]: https://docs.aws.amazon.com/amazonq/latest/business-use-dg/using-web-experience.html#chat-source-scope
    #   @return [Types::ChatModeConfiguration]
    #
    # @!attribute [rw] attribute_filter
    #   Enables filtering of responses based on document attributes or
    #   metadata fields.
    #   @return [Types::AttributeFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ConfigurationEvent AWS API Documentation
    #
    class ConfigurationEvent < Struct.new(
      :chat_mode,
      :chat_mode_configuration,
      :attribute_filter,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # You are trying to perform an action that conflicts with the current
    # status of your resource. Fix any inconsistencies with your resources
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

    # A rule for configuring how Amazon Q Business responds when it
    # encounters a a blocked topic. You can configure a custom message to
    # inform your end users that they have asked about a restricted topic
    # and suggest any next steps they should take.
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
    # Business application for a specific topic control configuration.
    #
    # @!attribute [rw] eligible_data_sources
    #   Specifies data sources in a Amazon Q Business application to use for
    #   content generation.
    #   @return [Array<Types::EligibleDataSource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ContentRetrievalRule AWS API Documentation
    #
    class ContentRetrievalRule < Struct.new(
      :eligible_data_sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the source of content to search in.
    #
    # @note ContentSource is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] retriever
    #   The retriever to use as the content source.
    #   @return [Types::RetrieverContentSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ContentSource AWS API Documentation
    #
    class ContentSource < Struct.new(
      :retriever,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Retriever < ContentSource; end
      class Unknown < ContentSource; end
    end

    # A conversation in an Amazon Q Business application.
    #
    # @!attribute [rw] conversation_id
    #   The identifier of the Amazon Q Business conversation.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the conversation.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start time of the conversation.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/Conversation AWS API Documentation
    #
    class Conversation < Struct.new(
      :conversation_id,
      :title,
      :start_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source reference for an existing attachment in an existing
    # conversation.
    #
    # @!attribute [rw] conversation_id
    #   The unique identifier of the Amazon Q Business conversation.
    #   @return [String]
    #
    # @!attribute [rw] attachment_id
    #   The unique identifier of the Amazon Q Business attachment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ConversationSource AWS API Documentation
    #
    class ConversationSource < Struct.new(
      :conversation_id,
      :attachment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source reference for an existing attachment.
    #
    # @note CopyFromSource is a union - when making an API calls you must set exactly one of the members.
    #
    # @note CopyFromSource is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of CopyFromSource corresponding to the set member.
    #
    # @!attribute [rw] conversation
    #   A reference to an attachment in an existing conversation.
    #   @return [Types::ConversationSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/CopyFromSource AWS API Documentation
    #
    class CopyFromSource < Struct.new(
      :conversation,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Conversation < CopyFromSource; end
      class Unknown < CopyFromSource; end
    end

    # @!attribute [rw] display_name
    #   A name for the Amazon Q Business application.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role with permissions to
    #   access your Amazon CloudWatch logs and metrics. If this property is
    #   not specified, Amazon Q Business will create a [service linked role
    #   (SLR)][1] and use it as the application's role.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/using-service-linked-roles.html#slr-permissions
    #   @return [String]
    #
    # @!attribute [rw] identity_type
    #   The authentication type being used by a Amazon Q Business
    #   application.
    #   @return [String]
    #
    # @!attribute [rw] iam_identity_provider_arn
    #   The Amazon Resource Name (ARN) of an identity provider being used by
    #   an Amazon Q Business application.
    #   @return [String]
    #
    # @!attribute [rw] identity_center_instance_arn
    #   The Amazon Resource Name (ARN) of the IAM Identity Center instance
    #   you are either creating for—or connecting to—your Amazon Q Business
    #   application.
    #   @return [String]
    #
    # @!attribute [rw] client_ids_for_oidc
    #   The OIDC client ID for a Amazon Q Business application.
    #   @return [Array<String>]
    #
    # @!attribute [rw] description
    #   A description for the Amazon Q Business application.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   The identifier of the KMS key that is used to encrypt your data.
    #   Amazon Q Business doesn't support asymmetric keys.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs that identify or categorize your Amazon Q
    #   Business application. You can also use tags to help control access
    #   to the application. Tag keys and values can consist of Unicode
    #   letters, digits, white space, and any of the following symbols: \_ .
    #   \: / = + - @.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] client_token
    #   A token that you provide to identify the request to create your
    #   Amazon Q Business application.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] attachments_configuration
    #   An option to allow end users to upload files directly during chat.
    #   @return [Types::AttachmentsConfiguration]
    #
    # @!attribute [rw] q_apps_configuration
    #   An option to allow end users to create and use Amazon Q Apps in the
    #   web experience.
    #   @return [Types::QAppsConfiguration]
    #
    # @!attribute [rw] personalization_configuration
    #   Configuration information about chat response personalization. For
    #   more information, see [Personalizing chat responses][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/personalizing-chat-responses.html
    #   @return [Types::PersonalizationConfiguration]
    #
    # @!attribute [rw] quick_sight_configuration
    #   The Amazon QuickSight configuration for an Amazon Q Business
    #   application that uses QuickSight for authentication. This
    #   configuration is required if your application uses QuickSight as the
    #   identity provider. For more information, see [Creating an Amazon
    #   QuickSight integrated application][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/create-quicksight-integrated-application.html
    #   @return [Types::QuickSightConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/CreateApplicationRequest AWS API Documentation
    #
    class CreateApplicationRequest < Struct.new(
      :display_name,
      :role_arn,
      :identity_type,
      :iam_identity_provider_arn,
      :identity_center_instance_arn,
      :client_ids_for_oidc,
      :description,
      :encryption_configuration,
      :tags,
      :client_token,
      :attachments_configuration,
      :q_apps_configuration,
      :personalization_configuration,
      :quick_sight_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q Business application.
    #   @return [String]
    #
    # @!attribute [rw] application_arn
    #   The Amazon Resource Name (ARN) of the Amazon Q Business application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/CreateApplicationResponse AWS API Documentation
    #
    class CreateApplicationResponse < Struct.new(
      :application_id,
      :application_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The unique identifier of the Amazon Q Business application.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   The Amazon Resource Name (ARN) of the IAM role for the ISV that will
    #   be accessing the data.
    #   @return [String]
    #
    # @!attribute [rw] action_configurations
    #   A list of action configurations specifying the allowed actions and
    #   any associated filters.
    #   @return [Array<Types::ActionConfiguration>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier you provide to ensure
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   A friendly name for the data accessor.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to associate with the data accessor.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/CreateDataAccessorRequest AWS API Documentation
    #
    class CreateDataAccessorRequest < Struct.new(
      :application_id,
      :principal,
      :action_configurations,
      :client_token,
      :display_name,
      :tags)
      SENSITIVE = [:display_name]
      include Aws::Structure
    end

    # @!attribute [rw] data_accessor_id
    #   The unique identifier of the created data accessor.
    #   @return [String]
    #
    # @!attribute [rw] idc_application_arn
    #   The Amazon Resource Name (ARN) of the IAM Identity Center
    #   application created for this data accessor.
    #   @return [String]
    #
    # @!attribute [rw] data_accessor_arn
    #   The Amazon Resource Name (ARN) of the created data accessor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/CreateDataAccessorResponse AWS API Documentation
    #
    class CreateDataAccessorResponse < Struct.new(
      :data_accessor_id,
      :idc_application_arn,
      :data_accessor_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q Business application the data source
    #   will be attached to.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index that you want to use with the data
    #   source connector.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   A name for the data source connector.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   Configuration information to connect your data source repository to
    #   Amazon Q Business. Use this parameter to provide a JSON schema with
    #   configuration information specific to your data source connector.
    #
    #   Each data source has a JSON schema provided by Amazon Q Business
    #   that you must use. For example, the Amazon S3 and Web Crawler
    #   connectors require the following JSON schemas:
    #
    #   * [Amazon S3 JSON schema][1]
    #
    #   * [Web Crawler JSON schema][2]
    #
    #   You can find configuration templates for your specific data source
    #   using the following steps:
    #
    #   1.  Navigate to the [Supported connectors][3] page in the Amazon Q
    #       Business User Guide, and select the data source of your choice.
    #
    #   2.  Then, from your specific data source connector page, select
    #       **Using the API**. You will find the JSON schema for your data
    #       source, including parameter descriptions, in this section.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/s3-api.html
    #   [2]: https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/web-crawler-api.html
    #   [3]: https://docs.aws.amazon.com/amazonq/latest/business-use-dg/connectors-list.html
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] vpc_configuration
    #   Configuration information for an Amazon VPC (Virtual Private Cloud)
    #   to connect to your data source. For more information, see [Using
    #   Amazon VPC with Amazon Q Business connectors][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/business-use-dg/connector-vpc.html
    #   @return [Types::DataSourceVpcConfiguration]
    #
    # @!attribute [rw] description
    #   A description for the data source connector.
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
    # @!attribute [rw] sync_schedule
    #   Sets the frequency for Amazon Q Business to check the documents in
    #   your data source repository and update your index. If you don't set
    #   a schedule, Amazon Q Business won't periodically update the index.
    #
    #   Specify a `cron-` format schedule string or an empty string to
    #   indicate that the index is updated on demand. You can't specify the
    #   `Schedule` parameter when the `Type` parameter is set to `CUSTOM`.
    #   If you do, you receive a `ValidationException` exception.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role with permission to
    #   access the data source and required resources.
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
    # @!attribute [rw] media_extraction_configuration
    #   The configuration for extracting information from media in documents
    #   during ingestion.
    #   @return [Types::MediaExtractionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/CreateDataSourceRequest AWS API Documentation
    #
    class CreateDataSourceRequest < Struct.new(
      :application_id,
      :index_id,
      :display_name,
      :configuration,
      :vpc_configuration,
      :description,
      :tags,
      :sync_schedule,
      :role_arn,
      :client_token,
      :document_enrichment_configuration,
      :media_extraction_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_source_id
    #   The identifier of the data source connector.
    #   @return [String]
    #
    # @!attribute [rw] data_source_arn
    #   The Amazon Resource Name (ARN) of a data source in an Amazon Q
    #   Business application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/CreateDataSourceResponse AWS API Documentation
    #
    class CreateDataSourceResponse < Struct.new(
      :data_source_id,
      :data_source_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q Business application using the index.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   A name for the Amazon Q Business index.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the Amazon Q Business index.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The index type that's suitable for your needs. For more information
    #   on what's included in each type of index, see [Amazon Q Business
    #   tiers][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/tiers.html#index-tiers
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs that identify or categorize the index. You
    #   can also use tags to help control access to the index. Tag keys and
    #   values can consist of Unicode letters, digits, white space, and any
    #   of the following symbols: \_ . : / = + - @.
    #   @return [Array<Types::Tag>]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/CreateIndexRequest AWS API Documentation
    #
    class CreateIndexRequest < Struct.new(
      :application_id,
      :display_name,
      :description,
      :type,
      :tags,
      :capacity_configuration,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] index_id
    #   The identifier for the Amazon Q Business index.
    #   @return [String]
    #
    # @!attribute [rw] index_arn
    #   The Amazon Resource Name (ARN) of an Amazon Q Business index.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/CreateIndexResponse AWS API Documentation
    #
    class CreateIndexResponse < Struct.new(
      :index_id,
      :index_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the application that will contain the plugin.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   A the name for your plugin.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of plugin you want to create.
    #   @return [String]
    #
    # @!attribute [rw] auth_configuration
    #   Authentication configuration information for an Amazon Q Business
    #   plugin.
    #   @return [Types::PluginAuthConfiguration]
    #
    # @!attribute [rw] server_url
    #   The source URL used for plugin configuration.
    #   @return [String]
    #
    # @!attribute [rw] custom_plugin_configuration
    #   Contains configuration for a custom plugin.
    #   @return [Types::CustomPluginConfiguration]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs that identify or categorize the data
    #   source connector. You can also use tags to help control access to
    #   the data source connector. Tag keys and values can consist of
    #   Unicode letters, digits, white space, and any of the following
    #   symbols: \_ . : / = + - @.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] client_token
    #   A token that you provide to identify the request to create your
    #   Amazon Q Business plugin.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/CreatePluginRequest AWS API Documentation
    #
    class CreatePluginRequest < Struct.new(
      :application_id,
      :display_name,
      :type,
      :auth_configuration,
      :server_url,
      :custom_plugin_configuration,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] plugin_id
    #   The identifier of the plugin created.
    #   @return [String]
    #
    # @!attribute [rw] plugin_arn
    #   The Amazon Resource Name (ARN) of a plugin.
    #   @return [String]
    #
    # @!attribute [rw] build_status
    #   The current status of a plugin. A plugin is modified asynchronously.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/CreatePluginResponse AWS API Documentation
    #
    class CreatePluginResponse < Struct.new(
      :plugin_id,
      :plugin_arn,
      :build_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of your Amazon Q Business application.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of retriever you are using.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of your retriever.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   Provides information on how the retriever used for your Amazon Q
    #   Business application is configured.
    #   @return [Types::RetrieverConfiguration]
    #
    # @!attribute [rw] role_arn
    #   The ARN of an IAM role used by Amazon Q Business to access the basic
    #   authentication credentials stored in a Secrets Manager secret.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A token that you provide to identify the request to create your
    #   Amazon Q Business application retriever.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs that identify or categorize the retriever.
    #   You can also use tags to help control access to the retriever. Tag
    #   keys and values can consist of Unicode letters, digits, white space,
    #   and any of the following symbols: \_ . : / = + - @.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/CreateRetrieverRequest AWS API Documentation
    #
    class CreateRetrieverRequest < Struct.new(
      :application_id,
      :type,
      :display_name,
      :configuration,
      :role_arn,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] retriever_id
    #   The identifier of the retriever you are using.
    #   @return [String]
    #
    # @!attribute [rw] retriever_arn
    #   The Amazon Resource Name (ARN) of an IAM role associated with a
    #   retriever.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/CreateRetrieverResponse AWS API Documentation
    #
    class CreateRetrieverResponse < Struct.new(
      :retriever_id,
      :retriever_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q Business application the subscription
    #   should be added to.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   The IAM Identity Center `UserId` or `GroupId` of a user or group in
    #   the IAM Identity Center instance connected to the Amazon Q Business
    #   application.
    #   @return [Types::SubscriptionPrincipal]
    #
    # @!attribute [rw] type
    #   The type of Amazon Q Business subscription you want to create.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A token that you provide to identify the request to create a
    #   subscription for your Amazon Q Business application.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/CreateSubscriptionRequest AWS API Documentation
    #
    class CreateSubscriptionRequest < Struct.new(
      :application_id,
      :principal,
      :type,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscription_id
    #   The identifier of the Amazon Q Business subscription created.
    #   @return [String]
    #
    # @!attribute [rw] subscription_arn
    #   The Amazon Resource Name (ARN) of the Amazon Q Business subscription
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] current_subscription
    #   The type of your current Amazon Q Business subscription.
    #   @return [Types::SubscriptionDetails]
    #
    # @!attribute [rw] next_subscription
    #   The type of the Amazon Q Business subscription for the next month.
    #   @return [Types::SubscriptionDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/CreateSubscriptionResponse AWS API Documentation
    #
    class CreateSubscriptionResponse < Struct.new(
      :subscription_id,
      :subscription_arn,
      :current_subscription,
      :next_subscription)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the application for which the user mapping will be
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The user emails attached to a user mapping.
    #   @return [String]
    #
    # @!attribute [rw] user_aliases
    #   The list of user aliases in the mapping.
    #   @return [Array<Types::UserAlias>]
    #
    # @!attribute [rw] client_token
    #   A token that you provide to identify the request to create your
    #   Amazon Q Business user mapping.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/CreateUserRequest AWS API Documentation
    #
    class CreateUserRequest < Struct.new(
      :application_id,
      :user_id,
      :user_aliases,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/CreateUserResponse AWS API Documentation
    #
    class CreateUserResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q Business web experience.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title for your Amazon Q Business web experience.
    #   @return [String]
    #
    # @!attribute [rw] subtitle
    #   A subtitle to personalize your Amazon Q Business web experience.
    #   @return [String]
    #
    # @!attribute [rw] welcome_message
    #   The customized welcome message for end users of an Amazon Q Business
    #   web experience.
    #   @return [String]
    #
    # @!attribute [rw] sample_prompts_control_mode
    #   Determines whether sample prompts are enabled in the web experience
    #   for an end user.
    #   @return [String]
    #
    # @!attribute [rw] origins
    #   Sets the website domain origins that are allowed to embed the Amazon
    #   Q Business web experience.      The <i>domain origin</i> refers to
    #   the base URL for accessing a website including the protocol
    #   (<code>http/https</code>), the domain name, and the port number (if
    #   specified). </p> <note> <p>You must only submit a <i>base URL</i>
    #   and not a full path. For example,
    #   <code>https://docs.aws.amazon.com</code>.</p> </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the service role attached to your
    #   web experience.
    #
    #   <note markdown="1"> You must provide this value if you're using IAM Identity Center to
    #   manage end user access to your application. If you're using legacy
    #   identity management to manage user access, you don't need to
    #   provide this value.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs that identify or categorize your Amazon Q
    #   Business web experience. You can also use tags to help control
    #   access to the web experience. Tag keys and values can consist of
    #   Unicode letters, digits, white space, and any of the following
    #   symbols: \_ . : / = + - @.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] client_token
    #   A token you provide to identify a request to create an Amazon Q
    #   Business web experience.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] identity_provider_configuration
    #   Information about the identity provider (IdP) used to authenticate
    #   end users of an Amazon Q Business web experience.
    #   @return [Types::IdentityProviderConfiguration]
    #
    # @!attribute [rw] browser_extension_configuration
    #   The browser extension configuration for an Amazon Q Business web
    #   experience.
    #
    #   <note markdown="1"> For Amazon Q Business application using external OIDC-compliant
    #   identity providers (IdPs). The IdP administrator must add the
    #   browser extension sign-in redirect URLs to the IdP application. For
    #   more information, see [Configure external OIDC identity provider for
    #   your browser extensions.][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/browser-extensions.html
    #   @return [Types::BrowserExtensionConfiguration]
    #
    # @!attribute [rw] customization_configuration
    #   Sets the custom logo, favicon, font, and color used in the Amazon Q
    #   web experience.
    #   @return [Types::CustomizationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/CreateWebExperienceRequest AWS API Documentation
    #
    class CreateWebExperienceRequest < Struct.new(
      :application_id,
      :title,
      :subtitle,
      :welcome_message,
      :sample_prompts_control_mode,
      :origins,
      :role_arn,
      :tags,
      :client_token,
      :identity_provider_configuration,
      :browser_extension_configuration,
      :customization_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] web_experience_id
    #   The identifier of the Amazon Q Business web experience.
    #   @return [String]
    #
    # @!attribute [rw] web_experience_arn
    #   The Amazon Resource Name (ARN) of an Amazon Q Business web
    #   experience.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/CreateWebExperienceResponse AWS API Documentation
    #
    class CreateWebExperienceResponse < Struct.new(
      :web_experience_id,
      :web_experience_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information required to invoke chat in `CREATOR_MODE`.
    #
    # For more information, see [Admin controls and guardrails][1] and
    # [Conversation settings][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/guardrails.html
    # [2]: https://docs.aws.amazon.com/amazonq/latest/business-use-dg/using-web-experience.html#chat-source-scope
    #
    # @!attribute [rw] creator_mode_control
    #   Status information about whether `CREATOR_MODE` has been enabled or
    #   disabled. The default status is `DISABLED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/CreatorModeConfiguration AWS API Documentation
    #
    class CreatorModeConfiguration < Struct.new(
      :creator_mode_control)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information required to create a custom plugin.
    #
    # @!attribute [rw] description
    #   A description for your custom plugin configuration.
    #   @return [String]
    #
    # @!attribute [rw] api_schema_type
    #   The type of OpenAPI schema to use.
    #   @return [String]
    #
    # @!attribute [rw] api_schema
    #   Contains either details about the S3 object containing the OpenAPI
    #   schema for the action group or the JSON or YAML-formatted payload
    #   defining the schema.
    #   @return [Types::APISchema]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/CustomPluginConfiguration AWS API Documentation
    #
    class CustomPluginConfiguration < Struct.new(
      :description,
      :api_schema_type,
      :api_schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the configuration information to customize the logo, font,
    # and color of an Amazon Q Business web experience with individual files
    # for each property or a CSS file for them all.
    #
    # @!attribute [rw] custom_css_url
    #   Provides the URL where the custom CSS file is hosted for an Amazon Q
    #   web experience.
    #   @return [String]
    #
    # @!attribute [rw] logo_url
    #   Provides the URL where the custom logo file is hosted for an Amazon
    #   Q web experience.
    #   @return [String]
    #
    # @!attribute [rw] font_url
    #   Provides the URL where the custom font file is hosted for an Amazon
    #   Q web experience.
    #   @return [String]
    #
    # @!attribute [rw] favicon_url
    #   Provides the URL where the custom favicon file is hosted for an
    #   Amazon Q web experience.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/CustomizationConfiguration AWS API Documentation
    #
    class CustomizationConfiguration < Struct.new(
      :custom_css_url,
      :logo_url,
      :font_url,
      :favicon_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides summary information about a data accessor.
    #
    # @!attribute [rw] display_name
    #   The friendly name of the data accessor.
    #   @return [String]
    #
    # @!attribute [rw] data_accessor_id
    #   The unique identifier of the data accessor.
    #   @return [String]
    #
    # @!attribute [rw] data_accessor_arn
    #   The Amazon Resource Name (ARN) of the data accessor.
    #   @return [String]
    #
    # @!attribute [rw] idc_application_arn
    #   The Amazon Resource Name (ARN) of the associated IAM Identity Center
    #   application.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   The Amazon Resource Name (ARN) of the IAM role for the ISV
    #   associated with this data accessor.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the data accessor was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the data accessor was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DataAccessor AWS API Documentation
    #
    class DataAccessor < Struct.new(
      :display_name,
      :data_accessor_id,
      :data_accessor_arn,
      :idc_application_arn,
      :principal,
      :created_at,
      :updated_at)
      SENSITIVE = [:display_name]
      include Aws::Structure
    end

    # A data source in an Amazon Q Business application.
    #
    # @!attribute [rw] display_name
    #   The name of the Amazon Q Business data source.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The identifier of the Amazon Q Business data source.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the Amazon Q Business data source.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The Unix timestamp when the Amazon Q Business data source was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The Unix timestamp when the Amazon Q Business data source was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the Amazon Q Business data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DataSource AWS API Documentation
    #
    class DataSource < Struct.new(
      :display_name,
      :data_source_id,
      :type,
      :created_at,
      :updated_at,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an Amazon Q Business data source connector
    # synchronization job.
    #
    # @!attribute [rw] execution_id
    #   The identifier of a data source synchronization job.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The Unix time stamp when the data source synchronization job
    #   started.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The Unix timestamp when the synchronization job completed.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the synchronization job. When the `Status` field is
    #   set to `SUCCEEDED`, the synchronization job is done. If the status
    #   code is `FAILED`, the `ErrorCode` and `ErrorMessage` fields give you
    #   the reason for the failure.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   If the `Status` field is set to `FAILED`, the `ErrorCode` field
    #   indicates the reason the synchronization failed.
    #   @return [Types::ErrorDetail]
    #
    # @!attribute [rw] data_source_error_code
    #   If the reason that the synchronization failed is due to an error
    #   with the underlying data source, this field contains a code that
    #   identifies the error.
    #   @return [String]
    #
    # @!attribute [rw] metrics
    #   Maps a batch delete document request to a specific data source sync
    #   job. This is optional and should only be supplied when documents are
    #   deleted by a data source connector.
    #   @return [Types::DataSourceSyncJobMetrics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DataSourceSyncJob AWS API Documentation
    #
    class DataSourceSyncJob < Struct.new(
      :execution_id,
      :start_time,
      :end_time,
      :status,
      :error,
      :data_source_error_code,
      :metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # Maps a batch delete document request to a specific Amazon Q Business
    # data source connector sync job.
    #
    # @!attribute [rw] documents_added
    #   The current count of documents added from the data source during the
    #   data source sync.
    #   @return [String]
    #
    # @!attribute [rw] documents_modified
    #   The current count of documents modified in the data source during
    #   the data source sync.
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
    # @!attribute [rw] documents_scanned
    #   The current count of documents crawled by the ongoing sync job in
    #   the data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DataSourceSyncJobMetrics AWS API Documentation
    #
    class DataSourceSyncJobMetrics < Struct.new(
      :documents_added,
      :documents_modified,
      :documents_deleted,
      :documents_failed,
      :documents_scanned)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides configuration information needed to connect to an Amazon VPC
    # (Virtual Private Cloud).
    #
    # @!attribute [rw] subnet_ids
    #   A list of identifiers for subnets within your Amazon VPC. The
    #   subnets should be able to connect to each other in the VPC, and they
    #   should have outgoing access to the Internet through a NAT device.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   A list of identifiers of security groups within your Amazon VPC. The
    #   security groups should enable Amazon Q Business to connect to the
    #   data source.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DataSourceVpcConfiguration AWS API Documentation
    #
    class DataSourceVpcConfiguration < Struct.new(
      :subnet_ids,
      :security_group_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information on boosting `DATE` type document attributes.
    #
    # For more information on how boosting document attributes work in
    # Amazon Q Business, see [Boosting using document attributes][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazonq/latest/business-use-dg/metadata-boosting.html
    #
    # @!attribute [rw] boosting_level
    #   Specifies how much a document attribute is boosted.
    #   @return [String]
    #
    # @!attribute [rw] boosting_duration_in_seconds
    #   Specifies the duration, in seconds, of a boost applies to a `DATE`
    #   type document attribute.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DateAttributeBoostingConfiguration AWS API Documentation
    #
    class DateAttributeBoostingConfiguration < Struct.new(
      :boosting_level,
      :boosting_duration_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q Business application.
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

    # @!attribute [rw] conversation_id
    #   The identifier of the Amazon Q Business web experience conversation
    #   being deleted.
    #   @return [String]
    #
    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q Business application associated with
    #   the conversation.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user who is deleting the conversation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DeleteConversationRequest AWS API Documentation
    #
    class DeleteConversationRequest < Struct.new(
      :conversation_id,
      :application_id,
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DeleteConversationResponse AWS API Documentation
    #
    class DeleteConversationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_id
    #   The unique identifier of the Amazon Q Business application.
    #   @return [String]
    #
    # @!attribute [rw] data_accessor_id
    #   The unique identifier of the data accessor to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DeleteDataAccessorRequest AWS API Documentation
    #
    class DeleteDataAccessorRequest < Struct.new(
      :application_id,
      :data_accessor_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DeleteDataAccessorResponse AWS API Documentation
    #
    class DeleteDataAccessorResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q Business application used with the
    #   data source connector.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index used with the data source connector.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The identifier of the data source connector that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DeleteDataSourceRequest AWS API Documentation
    #
    class DeleteDataSourceRequest < Struct.new(
      :application_id,
      :index_id,
      :data_source_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DeleteDataSourceResponse AWS API Documentation
    #
    class DeleteDataSourceResponse < Aws::EmptyStructure; end

    # A document deleted from an Amazon Q Business data source connector.
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
    # @!attribute [rw] index_id
    #   The identifier of the index you want to delete the group from.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The name of the group you want to delete.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DeleteGroupRequest AWS API Documentation
    #
    class DeleteGroupRequest < Struct.new(
      :application_id,
      :index_id,
      :group_name,
      :data_source_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DeleteGroupResponse AWS API Documentation
    #
    class DeleteGroupResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q Business application the Amazon Q
    #   Business index is linked to.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the Amazon Q Business index.
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
    #   The identifier the application attached to the Amazon Q Business
    #   plugin.
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
    #   The identifier of the Amazon Q Business application using the
    #   retriever.
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
    #   The identifier of the Amazon Q Business application linked to the
    #   Amazon Q Business web experience.
    #   @return [String]
    #
    # @!attribute [rw] web_experience_id
    #   The identifier of the Amazon Q Business web experience being
    #   deleted.
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

    # @!attribute [rw] application_id
    #   The unique identifier of the Amazon Q Business application.
    #   @return [String]
    #
    # @!attribute [rw] statement_id
    #   The statement ID of the permission to remove.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DisassociatePermissionRequest AWS API Documentation
    #
    class DisassociatePermissionRequest < Struct.new(
      :application_id,
      :statement_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DisassociatePermissionResponse AWS API Documentation
    #
    class DisassociatePermissionResponse < Aws::EmptyStructure; end

    # A document in an Amazon Q Business application.
    #
    # @!attribute [rw] id
    #   The identifier of the document.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   Custom attributes to apply to the document for refining Amazon Q
    #   Business web experience responses.
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
    # @!attribute [rw] title
    #   The title of the document.
    #   @return [String]
    #
    # @!attribute [rw] access_configuration
    #   Configuration information for access permission to a document.
    #   @return [Types::AccessConfiguration]
    #
    # @!attribute [rw] document_enrichment_configuration
    #   The configuration information for altering document metadata and
    #   content during the document ingestion process.
    #   @return [Types::DocumentEnrichmentConfiguration]
    #
    # @!attribute [rw] media_extraction_configuration
    #   The configuration for extracting information from media in the
    #   document.
    #   @return [Types::MediaExtractionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/Document AWS API Documentation
    #
    class Document < Struct.new(
      :id,
      :attributes,
      :content,
      :content_type,
      :title,
      :access_configuration,
      :document_enrichment_configuration,
      :media_extraction_configuration)
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

    # Provides information on boosting supported Amazon Q Business document
    # attribute types. When an end user chat query matches document
    # attributes that have been boosted, Amazon Q Business prioritizes
    # generating responses from content that matches the boosted document
    # attributes.
    #
    # <note markdown="1"> For `STRING` and `STRING_LIST` type document attributes to be used for
    # boosting on the console and the API, they must be enabled for search
    # using the [DocumentAttributeConfiguration][1] object of the
    # [UpdateIndex][2] API. If you haven't enabled searching on these
    # attributes, you can't boost attributes of these data types on either
    # the console or the API.
    #
    #  </note>
    #
    # For more information on how boosting document attributes work in
    # Amazon Q Business, see [Boosting using document attributes][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeConfiguration.html
    # [2]: https://docs.aws.amazon.com/amazonq/latest/api-reference/API_UpdateIndex.html
    # [3]: https://docs.aws.amazon.com/amazonq/latest/business-use-dg/metadata-boosting.html
    #
    # @note DocumentAttributeBoostingConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note DocumentAttributeBoostingConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of DocumentAttributeBoostingConfiguration corresponding to the set member.
    #
    # @!attribute [rw] number_configuration
    #   Provides information on boosting `NUMBER` type document attributes.
    #   @return [Types::NumberAttributeBoostingConfiguration]
    #
    # @!attribute [rw] string_configuration
    #   Provides information on boosting `STRING` type document attributes.
    #   @return [Types::StringAttributeBoostingConfiguration]
    #
    # @!attribute [rw] date_configuration
    #   Provides information on boosting `DATE` type document attributes.
    #   @return [Types::DateAttributeBoostingConfiguration]
    #
    # @!attribute [rw] string_list_configuration
    #   Provides information on boosting `STRING_LIST` type document
    #   attributes.
    #   @return [Types::StringListAttributeBoostingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DocumentAttributeBoostingConfiguration AWS API Documentation
    #
    class DocumentAttributeBoostingConfiguration < Struct.new(
      :number_configuration,
      :string_configuration,
      :date_configuration,
      :string_list_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class NumberConfiguration < DocumentAttributeBoostingConfiguration; end
      class StringConfiguration < DocumentAttributeBoostingConfiguration; end
      class DateConfiguration < DocumentAttributeBoostingConfiguration; end
      class StringListConfiguration < DocumentAttributeBoostingConfiguration; end
      class Unknown < DocumentAttributeBoostingConfiguration; end
    end

    # The condition used for the target document attribute or metadata field
    # when ingesting documents into Amazon Q Business. You use this with [
    # `DocumentAttributeTarget` ][1] to apply the condition.
    #
    # For example, you can create the 'Department' target field and have
    # it prefill department names associated with the documents based on
    # information in the 'Source\_URI' field. Set the condition that if
    # the 'Source\_URI' field contains 'financial' in its URI value,
    # then prefill the target field 'Department' with the target value
    # 'Finance' for the document.
    #
    # Amazon Q Business can't create a target field if it has not already
    # been created as an index field. After you create your index field, you
    # can create a document metadata field using `DocumentAttributeTarget`.
    # Amazon Q Business then will map your newly created metadata field to
    # your index field.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeTarget.html
    #
    # @!attribute [rw] key
    #   The identifier of the document attribute used for the condition.
    #
    #   For example, 'Source\_URI' could be an identifier for the
    #   attribute or metadata field that contains source URIs associated
    #   with the documents.
    #
    #   Amazon Q Business currently doesn't support `_document_body` as an
    #   attribute key used for the condition.
    #   @return [String]
    #
    # @!attribute [rw] operator
    #   The identifier of the document attribute used for the condition.
    #
    #   For example, 'Source\_URI' could be an identifier for the
    #   attribute or metadata field that contains source URIs associated
    #   with the documents.
    #
    #   Amazon Q Business currently does not support `_document_body` as an
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
    # @!attribute [rw] type
    #   The type of document attribute.
    #   @return [String]
    #
    # @!attribute [rw] search
    #   Information about whether the document attribute can be used by an
    #   end user to search for information on their web experience.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DocumentAttributeConfiguration AWS API Documentation
    #
    class DocumentAttributeConfiguration < Struct.new(
      :name,
      :type,
      :search)
      SENSITIVE = []
      include Aws::Structure
    end

    # The target document attribute or metadata field you want to alter when
    # ingesting documents into Amazon Q Business.
    #
    # For example, you can delete all customer identification numbers
    # associated with the documents, stored in the document metadata field
    # called 'Customer\_ID' by setting the target key as 'Customer\_ID'
    # and the deletion flag to `TRUE`. This removes all customer ID values
    # in the field 'Customer\_ID'. This would scrub personally
    # identifiable information from each document's metadata.
    #
    # Amazon Q Business can't create a target field if it has not already
    # been created as an index field. After you create your index field, you
    # can create a document metadata field using [ `DocumentAttributeTarget`
    # ][1]. Amazon Q Business will then map your newly created document
    # attribute to your index field.
    #
    # You can also use this with [ `DocumentAttributeCondition` ][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeTarget.html
    # [2]: https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeCondition.html
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
    # @!attribute [rw] attribute_value_operator
    #   `TRUE` to delete the existing target value for your specified target
    #   attribute key. You cannot create a target value and set this to
    #   `TRUE`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DocumentAttributeTarget AWS API Documentation
    #
    class DocumentAttributeTarget < Struct.new(
      :key,
      :value,
      :attribute_value_operator)
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
    # @!attribute [rw] string_value
    #   A string.
    #   @return [String]
    #
    # @!attribute [rw] string_list_value
    #   A list of strings.
    #   @return [Array<String>]
    #
    # @!attribute [rw] long_value
    #   A long integer value.
    #   @return [Integer]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DocumentAttributeValue AWS API Documentation
    #
    class DocumentAttributeValue < Struct.new(
      :string_value,
      :string_list_value,
      :long_value,
      :date_value,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class StringValue < DocumentAttributeValue; end
      class StringListValue < DocumentAttributeValue; end
      class LongValue < DocumentAttributeValue; end
      class DateValue < DocumentAttributeValue; end
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
    #   to call Amazon Q Business APIs. If you are calling the Amazon Q
    #   Business endpoint directly using REST, you must base64 encode the
    #   contents before sending.
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

    # The details of a document within an Amazon Q Business index.
    #
    # @!attribute [rw] document_id
    #   The identifier of the document.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the document.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   An error message associated with the document.
    #   @return [Types::ErrorDetail]
    #
    # @!attribute [rw] created_at
    #   The timestamp for when the document was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp for when the document was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DocumentDetails AWS API Documentation
    #
    class DocumentDetails < Struct.new(
      :document_id,
      :status,
      :error,
      :created_at,
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
    #   fields and content when ingesting documents into Amazon Q Business.
    #   @return [Array<Types::InlineDocumentEnrichmentConfiguration>]
    #
    # @!attribute [rw] pre_extraction_hook_configuration
    #   Provides the configuration information for invoking a Lambda
    #   function in Lambda to alter document metadata and content when
    #   ingesting documents into Amazon Q Business.
    #
    #   You can configure your Lambda function using the
    #   `PreExtractionHookConfiguration` parameter if you want to apply
    #   advanced alterations on the original or raw documents.
    #
    #   If you want to apply advanced alterations on the Amazon Q Business
    #   structured documents, you must configure your Lambda function using
    #   `PostExtractionHookConfiguration`.
    #
    #   You can only invoke one Lambda function. However, this function can
    #   invoke other functions it requires.
    #
    #   For more information, see [Custom document enrichment][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/business-use-dg/custom-document-enrichment.html
    #   @return [Types::HookConfiguration]
    #
    # @!attribute [rw] post_extraction_hook_configuration
    #   Provides the configuration information for invoking a Lambda
    #   function in Lambda to alter document metadata and content when
    #   ingesting documents into Amazon Q Business.
    #
    #   You can configure your Lambda function using the
    #   `PreExtractionHookConfiguration` parameter if you want to apply
    #   advanced alterations on the original or raw documents.
    #
    #   If you want to apply advanced alterations on the Amazon Q Business
    #   structured documents, you must configure your Lambda function using
    #   `PostExtractionHookConfiguration`.
    #
    #   You can only invoke one Lambda function. However, this function can
    #   invoke other functions it requires.
    #
    #   For more information, see [Custom document enrichment][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/business-use-dg/custom-document-enrichment.html
    #   @return [Types::HookConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/DocumentEnrichmentConfiguration AWS API Documentation
    #
    class DocumentEnrichmentConfiguration < Struct.new(
      :inline_configurations,
      :pre_extraction_hook_configuration,
      :post_extraction_hook_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The identifier of the data source Amazon Q Business will generate
    # responses from.
    #
    # @!attribute [rw] index_id
    #   The identifier of the index the data source is attached to.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The identifier of the data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/EligibleDataSource AWS API Documentation
    #
    class EligibleDataSource < Struct.new(
      :index_id,
      :data_source_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the identifier of the KMS key used to encrypt data indexed by
    # Amazon Q Business. Amazon Q Business doesn't support asymmetric keys.
    #
    # @!attribute [rw] kms_key_id
    #   The identifier of the KMS key. Amazon Q Business doesn't support
    #   asymmetric keys.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/EncryptionConfiguration AWS API Documentation
    #
    class EncryptionConfiguration < Struct.new(
      :kms_key_id)
      SENSITIVE = [:kms_key_id]
      include Aws::Structure
    end

    # The end of the streaming input for the `Chat` API.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/EndOfInputEvent AWS API Documentation
    #
    class EndOfInputEvent < Struct.new(
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a Amazon Q Business request error.
    #
    # @!attribute [rw] error_message
    #   The message explaining the Amazon Q Business request error.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The code associated with the Amazon Q Business request error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ErrorDetail AWS API Documentation
    #
    class ErrorDetail < Struct.new(
      :error_message,
      :error_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # An external resource that you configured with your application is
    # returning errors and preventing this operation from succeeding. Fix
    # those errors and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ExternalResourceException AWS API Documentation
    #
    class ExternalResourceException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A failed file upload during web experience chat.
    #
    # @!attribute [rw] conversation_id
    #   The identifier of the conversation associated with the failed file
    #   upload.
    #   @return [String]
    #
    # @!attribute [rw] user_message_id
    #   The identifier of the end user chat message associated with the file
    #   upload.
    #   @return [String]
    #
    # @!attribute [rw] system_message_id
    #   The identifier of the AI-generated message associated with the file
    #   upload.
    #   @return [String]
    #
    # @!attribute [rw] attachment
    #   The details of a file uploaded during chat.
    #   @return [Types::AttachmentOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/FailedAttachmentEvent AWS API Documentation
    #
    class FailedAttachmentEvent < Struct.new(
      :conversation_id,
      :user_message_id,
      :system_message_id,
      :attachment,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of documents that could not be removed from an Amazon Q
    # Business index. Each entry contains an error message that indicates
    # why the document couldn't be removed from the index.
    #
    # @!attribute [rw] id
    #   The identifier of the document that couldn't be removed from the
    #   Amazon Q Business index.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   An explanation for why the document couldn't be removed from the
    #   index.
    #   @return [Types::ErrorDetail]
    #
    # @!attribute [rw] data_source_id
    #   The identifier of the Amazon Q Business data source connector that
    #   contains the failed document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/FailedDocument AWS API Documentation
    #
    class FailedDocument < Struct.new(
      :id,
      :error,
      :data_source_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q Business application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GetApplicationRequest AWS API Documentation
    #
    class GetApplicationRequest < Struct.new(
      :application_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] display_name
    #   The name of the Amazon Q Business application.
    #   @return [String]
    #
    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q Business application.
    #   @return [String]
    #
    # @!attribute [rw] application_arn
    #   The Amazon Resource Name (ARN) of the Amazon Q Business application.
    #   @return [String]
    #
    # @!attribute [rw] identity_type
    #   The authentication type being used by a Amazon Q Business
    #   application.
    #   @return [String]
    #
    # @!attribute [rw] iam_identity_provider_arn
    #   The Amazon Resource Name (ARN) of an identity provider being used by
    #   an Amazon Q Business application.
    #   @return [String]
    #
    # @!attribute [rw] identity_center_application_arn
    #   The Amazon Resource Name (ARN) of the AWS IAM Identity Center
    #   instance attached to your Amazon Q Business application.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM with permissions to access
    #   your CloudWatch logs and metrics.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Amazon Q Business application.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the Amazon Q Business application.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   The identifier of the Amazon Web Services KMS key that is used to
    #   encrypt your data. Amazon Q Business doesn't support asymmetric
    #   keys.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] created_at
    #   The Unix timestamp when the Amazon Q Business application was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The Unix timestamp when the Amazon Q Business application was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] error
    #   If the `Status` field is set to `ERROR`, the `ErrorMessage` field
    #   contains a description of the error that caused the synchronization
    #   to fail.
    #   @return [Types::ErrorDetail]
    #
    # @!attribute [rw] attachments_configuration
    #   Settings for whether end users can upload files directly during
    #   chat.
    #   @return [Types::AppliedAttachmentsConfiguration]
    #
    # @!attribute [rw] q_apps_configuration
    #   Settings for whether end users can create and use Amazon Q Apps in
    #   the web experience.
    #   @return [Types::QAppsConfiguration]
    #
    # @!attribute [rw] personalization_configuration
    #   Configuration information about chat response personalization. For
    #   more information, see [Personalizing chat responses][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/personalizing-chat-responses.html
    #   @return [Types::PersonalizationConfiguration]
    #
    # @!attribute [rw] auto_subscription_configuration
    #   Settings for auto-subscription behavior for this application. This
    #   is only applicable to SAML and OIDC applications.
    #   @return [Types::AutoSubscriptionConfiguration]
    #
    # @!attribute [rw] client_ids_for_oidc
    #   The OIDC client ID for a Amazon Q Business application.
    #   @return [Array<String>]
    #
    # @!attribute [rw] quick_sight_configuration
    #   The Amazon QuickSight authentication configuration for the Amazon Q
    #   Business application.
    #   @return [Types::QuickSightConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GetApplicationResponse AWS API Documentation
    #
    class GetApplicationResponse < Struct.new(
      :display_name,
      :application_id,
      :application_arn,
      :identity_type,
      :iam_identity_provider_arn,
      :identity_center_application_arn,
      :role_arn,
      :status,
      :description,
      :encryption_configuration,
      :created_at,
      :updated_at,
      :error,
      :attachments_configuration,
      :q_apps_configuration,
      :personalization_configuration,
      :auto_subscription_configuration,
      :client_ids_for_oidc,
      :quick_sight_configuration)
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
    #   data to retrieve, Amazon Q Business returns a pagination token in
    #   the response. You can use this pagination token to retrieve the next
    #   set of Amazon Q Business chat controls configured.
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

    # @!attribute [rw] response_scope
    #   The response scope configured for a Amazon Q Business application.
    #   This determines whether your application uses its retrieval
    #   augmented generation (RAG) system to generate answers only from your
    #   enterprise data, or also uses the large language models (LLM)
    #   knowledge to respons to end user questions in chat.
    #   @return [String]
    #
    # @!attribute [rw] orchestration_configuration
    #   The chat response orchestration settings for your application.
    #
    #   <note markdown="1"> Chat orchestration is optimized to work for English language
    #   content. For more details on language support in Amazon Q Business,
    #   see [Supported languages][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/supported-languages.html
    #   @return [Types::AppliedOrchestrationConfiguration]
    #
    # @!attribute [rw] blocked_phrases
    #   The phrases blocked from chat by your chat control configuration.
    #   @return [Types::BlockedPhrasesConfiguration]
    #
    # @!attribute [rw] topic_configurations
    #   The topic specific controls configured for a Amazon Q Business
    #   application.
    #   @return [Array<Types::TopicConfiguration>]
    #
    # @!attribute [rw] creator_mode_configuration
    #   The configuration details for `CREATOR_MODE`.
    #   @return [Types::AppliedCreatorModeConfiguration]
    #
    # @!attribute [rw] next_token
    #   If the `maxResults` response was incomplete because there is more
    #   data to retrieve, Amazon Q Business returns a pagination token in
    #   the response. You can use this pagination token to retrieve the next
    #   set of Amazon Q Business chat controls configured.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GetChatControlsConfigurationResponse AWS API Documentation
    #
    class GetChatControlsConfigurationResponse < Struct.new(
      :response_scope,
      :orchestration_configuration,
      :blocked_phrases,
      :topic_configurations,
      :creator_mode_configuration,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The unique identifier of the Amazon Q Business application.
    #   @return [String]
    #
    # @!attribute [rw] data_accessor_id
    #   The unique identifier of the data accessor to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GetDataAccessorRequest AWS API Documentation
    #
    class GetDataAccessorRequest < Struct.new(
      :application_id,
      :data_accessor_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] display_name
    #   The friendly name of the data accessor.
    #   @return [String]
    #
    # @!attribute [rw] data_accessor_id
    #   The unique identifier of the data accessor.
    #   @return [String]
    #
    # @!attribute [rw] data_accessor_arn
    #   The Amazon Resource Name (ARN) of the data accessor.
    #   @return [String]
    #
    # @!attribute [rw] application_id
    #   The unique identifier of the Amazon Q Business application
    #   associated with this data accessor.
    #   @return [String]
    #
    # @!attribute [rw] idc_application_arn
    #   The Amazon Resource Name (ARN) of the IAM Identity Center
    #   application associated with this data accessor.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   The Amazon Resource Name (ARN) of the IAM role for the ISV
    #   associated with this data accessor.
    #   @return [String]
    #
    # @!attribute [rw] action_configurations
    #   The list of action configurations specifying the allowed actions and
    #   any associated filters.
    #   @return [Array<Types::ActionConfiguration>]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the data accessor was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the data accessor was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GetDataAccessorResponse AWS API Documentation
    #
    class GetDataAccessorResponse < Struct.new(
      :display_name,
      :data_accessor_id,
      :data_accessor_arn,
      :application_id,
      :idc_application_arn,
      :principal,
      :action_configurations,
      :created_at,
      :updated_at)
      SENSITIVE = [:display_name]
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q Business application.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identfier of the index used with the data source connector.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The identifier of the data source connector.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GetDataSourceRequest AWS API Documentation
    #
    class GetDataSourceRequest < Struct.new(
      :application_id,
      :index_id,
      :data_source_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q Business application.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index linked to the data source connector.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The identifier of the data source connector.
    #   @return [String]
    #
    # @!attribute [rw] data_source_arn
    #   The Amazon Resource Name (ARN) of the data source.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name for the data source connector.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the data source connector. For example, `S3`.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The details of how the data source connector is configured.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] vpc_configuration
    #   Configuration information for an Amazon VPC (Virtual Private Cloud)
    #   to connect to your data source.
    #   @return [Types::DataSourceVpcConfiguration]
    #
    # @!attribute [rw] created_at
    #   The Unix timestamp when the data source connector was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The Unix timestamp when the data source connector was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description for the data source connector.
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
    #   The schedule for Amazon Q Business to update the index.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the role with permission to access
    #   the data source and required resources.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   When the `Status` field value is `FAILED`, the `ErrorMessage` field
    #   contains a description of the error that caused the data source
    #   connector to fail.
    #   @return [Types::ErrorDetail]
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
    # @!attribute [rw] media_extraction_configuration
    #   The configuration for extracting information from media in documents
    #   for the data source.
    #   @return [Types::MediaExtractionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GetDataSourceResponse AWS API Documentation
    #
    class GetDataSourceResponse < Struct.new(
      :application_id,
      :index_id,
      :data_source_id,
      :data_source_arn,
      :display_name,
      :type,
      :configuration,
      :vpc_configuration,
      :created_at,
      :updated_at,
      :description,
      :status,
      :sync_schedule,
      :role_arn,
      :error,
      :document_enrichment_configuration,
      :media_extraction_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the application id the group is attached to.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index the group is attached to.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The name of the group.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The identifier of the data source the group is attached to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GetGroupRequest AWS API Documentation
    #
    class GetGroupRequest < Struct.new(
      :application_id,
      :index_id,
      :group_name,
      :data_source_id)
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
    #   The identifier of the Amazon Q Business application connected to the
    #   index.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the Amazon Q Business index you want information
    #   on.
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
    #   The identifier of the Amazon Q Business application associated with
    #   the index.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the Amazon Q Business index.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of the Amazon Q Business index.
    #   @return [String]
    #
    # @!attribute [rw] index_arn
    #   The Amazon Resource Name (ARN) of the Amazon Q Business index.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the index. When the value is `ACTIVE`, the
    #   index is ready for use. If the `Status` field value is `FAILED`, the
    #   `ErrorMessage` field contains a message that explains why.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of index attached to your Amazon Q Business application.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the Amazon Q Business index.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The Unix timestamp when the Amazon Q Business index was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The Unix timestamp when the Amazon Q Business index was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] capacity_configuration
    #   The storage capacity units chosen for your Amazon Q Business index.
    #   @return [Types::IndexCapacityConfiguration]
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
    # @!attribute [rw] index_statistics
    #   Provides information about the number of documents indexed.
    #   @return [Types::IndexStatistics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GetIndexResponse AWS API Documentation
    #
    class GetIndexResponse < Struct.new(
      :application_id,
      :index_id,
      :display_name,
      :index_arn,
      :status,
      :type,
      :description,
      :created_at,
      :updated_at,
      :capacity_configuration,
      :document_attribute_configurations,
      :error,
      :index_statistics)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q Business which contains the media
    #   object.
    #   @return [String]
    #
    # @!attribute [rw] conversation_id
    #   The identifier of the Amazon Q Business conversation.
    #   @return [String]
    #
    # @!attribute [rw] message_id
    #   The identifier of the Amazon Q Business message.
    #   @return [String]
    #
    # @!attribute [rw] media_id
    #   The identifier of the media object. You can find this in the
    #   `sourceAttributions` returned by the `Chat`, `ChatSync`, and
    #   `ListMessages` API responses.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GetMediaRequest AWS API Documentation
    #
    class GetMediaRequest < Struct.new(
      :application_id,
      :conversation_id,
      :message_id,
      :media_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] media_bytes
    #   The base64-encoded bytes of the media object.
    #   @return [String]
    #
    # @!attribute [rw] media_mime_type
    #   The MIME type of the media object (image/png).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GetMediaResponse AWS API Documentation
    #
    class GetMediaResponse < Struct.new(
      :media_bytes,
      :media_mime_type)
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
    # @!attribute [rw] plugin_id
    #   The identifier of the plugin.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of the plugin.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the plugin.
    #   @return [String]
    #
    # @!attribute [rw] server_url
    #   The source URL used for plugin configuration.
    #   @return [String]
    #
    # @!attribute [rw] auth_configuration
    #   Authentication configuration information for an Amazon Q Business
    #   plugin.
    #   @return [Types::PluginAuthConfiguration]
    #
    # @!attribute [rw] custom_plugin_configuration
    #   Configuration information required to create a custom plugin.
    #   @return [Types::CustomPluginConfiguration]
    #
    # @!attribute [rw] build_status
    #   The current status of a plugin. A plugin is modified asynchronously.
    #   @return [String]
    #
    # @!attribute [rw] plugin_arn
    #   The Amazon Resource Name (ARN) of the role with permission to access
    #   resources needed to create the plugin.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the plugin.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp for when the plugin was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp for when the plugin was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GetPluginResponse AWS API Documentation
    #
    class GetPluginResponse < Struct.new(
      :application_id,
      :plugin_id,
      :display_name,
      :type,
      :server_url,
      :auth_configuration,
      :custom_plugin_configuration,
      :build_status,
      :plugin_arn,
      :state,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The unique identifier of the Amazon Q Business application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GetPolicyRequest AWS API Documentation
    #
    class GetPolicyRequest < Struct.new(
      :application_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   The JSON representation of the permission policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GetPolicyResponse AWS API Documentation
    #
    class GetPolicyResponse < Struct.new(
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q Business application using the
    #   retriever.
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
    #   The identifier of the Amazon Q Business application using the
    #   retriever.
    #   @return [String]
    #
    # @!attribute [rw] retriever_id
    #   The identifier of the retriever.
    #   @return [String]
    #
    # @!attribute [rw] retriever_arn
    #   The Amazon Resource Name (ARN) of the IAM role associated with the
    #   retriever.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the retriever.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the retriever.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of the retriever.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   Provides information on how the retriever used for your Amazon Q
    #   Business application is configured.
    #   @return [Types::RetrieverConfiguration]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the role with the permission to
    #   access the retriever and required resources.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The Unix timestamp when the retriever was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The Unix timestamp when the retriever was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GetRetrieverResponse AWS API Documentation
    #
    class GetRetrieverResponse < Struct.new(
      :application_id,
      :retriever_id,
      :retriever_arn,
      :type,
      :status,
      :display_name,
      :configuration,
      :role_arn,
      :created_at,
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
    #   The identifier of the Amazon Q Business application linked to the
    #   web experience.
    #   @return [String]
    #
    # @!attribute [rw] web_experience_id
    #   The identifier of the Amazon Q Business web experience.
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
    #   The identifier of the Amazon Q Business application linked to the
    #   web experience.
    #   @return [String]
    #
    # @!attribute [rw] web_experience_id
    #   The identifier of the Amazon Q Business web experience.
    #   @return [String]
    #
    # @!attribute [rw] web_experience_arn
    #   The Amazon Resource Name (ARN) of the role with the permission to
    #   access the Amazon Q Business web experience and required resources.
    #   @return [String]
    #
    # @!attribute [rw] default_endpoint
    #   The endpoint of your Amazon Q Business web experience.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the Amazon Q Business web experience. When the
    #   `Status` field value is `FAILED`, the `ErrorMessage` field contains
    #   a description of the error that caused the data source connector to
    #   fail.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The Unix timestamp when the Amazon Q Business web experience was
    #   last created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The Unix timestamp when the Amazon Q Business web experience was
    #   last updated.
    #   @return [Time]
    #
    # @!attribute [rw] title
    #   The title for your Amazon Q Business web experience.
    #   @return [String]
    #
    # @!attribute [rw] subtitle
    #   The subtitle for your Amazon Q Business web experience.
    #   @return [String]
    #
    # @!attribute [rw] welcome_message
    #   The customized welcome message for end users of an Amazon Q Business
    #   web experience.
    #   @return [String]
    #
    # @!attribute [rw] sample_prompts_control_mode
    #   Determines whether sample prompts are enabled in the web experience
    #   for an end user.
    #   @return [String]
    #
    # @!attribute [rw] origins
    #   Gets the website domain origins that are allowed to embed the Amazon
    #   Q Business web experience.      The <i>domain origin</i> refers to
    #   the base URL for accessing a website including the protocol
    #   (<code>http/https</code>), the domain name, and the port number (if
    #   specified). </p>
    #   @return [Array<String>]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the service role attached to your
    #   web experience.
    #   @return [String]
    #
    # @!attribute [rw] identity_provider_configuration
    #   Information about the identity provider (IdP) used to authenticate
    #   end users of an Amazon Q Business web experience.
    #   @return [Types::IdentityProviderConfiguration]
    #
    # @!attribute [rw] authentication_configuration
    #   The authentication configuration information for your Amazon Q
    #   Business web experience.
    #   @return [Types::WebExperienceAuthConfiguration]
    #
    # @!attribute [rw] error
    #   When the `Status` field value is `FAILED`, the `ErrorMessage` field
    #   contains a description of the error that caused the data source
    #   connector to fail.
    #   @return [Types::ErrorDetail]
    #
    # @!attribute [rw] browser_extension_configuration
    #   The browser extension configuration for an Amazon Q Business web
    #   experience.
    #   @return [Types::BrowserExtensionConfiguration]
    #
    # @!attribute [rw] customization_configuration
    #   Gets the custom logo, favicon, font, and color used in the Amazon Q
    #   web experience.
    #   @return [Types::CustomizationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GetWebExperienceResponse AWS API Documentation
    #
    class GetWebExperienceResponse < Struct.new(
      :application_id,
      :web_experience_id,
      :web_experience_arn,
      :default_endpoint,
      :status,
      :created_at,
      :updated_at,
      :title,
      :subtitle,
      :welcome_message,
      :sample_prompts_control_mode,
      :origins,
      :role_arn,
      :identity_provider_configuration,
      :authentication_configuration,
      :error,
      :browser_extension_configuration,
      :customization_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of users or sub groups that belong to a group. This is for
    # generating Amazon Q Business chat results only from document a user
    # has access to.
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
    # @!attribute [rw] s3_path_for_group_members
    #   Information required for Amazon Q Business to find a specific file
    #   in an Amazon S3 bucket.
    #   @return [Types::S3]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GroupMembers AWS API Documentation
    #
    class GroupMembers < Struct.new(
      :member_groups,
      :member_users,
      :s3_path_for_group_members)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the details of a group's status.
    #
    # @!attribute [rw] status
    #   The status of a group.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The Unix timestamp when the Amazon Q Business application was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] error_detail
    #   The details of an error associated a group status.
    #   @return [Types::ErrorDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/GroupStatusDetail AWS API Documentation
    #
    class GroupStatusDetail < Struct.new(
      :status,
      :last_updated_at,
      :error_detail)
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
    # documents into Amazon Q Business.
    #
    # You can configure your Lambda function using the
    # `PreExtractionHookConfiguration` parameter if you want to apply
    # advanced alterations on the original or raw documents.
    #
    # If you want to apply advanced alterations on the Amazon Q Business
    # structured documents, you must configure your Lambda function using
    # `PostExtractionHookConfiguration`.
    #
    # You can only invoke one Lambda function. However, this function can
    # invoke other functions it requires.
    #
    # For more information, see [Custom document enrichment][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazonq/latest/business-use-dg/custom-document-enrichment.html
    #
    # @!attribute [rw] invocation_condition
    #   The condition used for when a Lambda function should be invoked.
    #
    #   For example, you can specify a condition that if there are empty
    #   date-time values, then Amazon Q Business should invoke a function
    #   that inserts the current date-time.
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
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of a role with permission to run
    #   `PreExtractionHookConfiguration` and
    #   `PostExtractionHookConfiguration` for altering document metadata and
    #   content during the document ingestion process.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/HookConfiguration AWS API Documentation
    #
    class HookConfiguration < Struct.new(
      :invocation_condition,
      :lambda_arn,
      :s3_bucket_name,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the IAM Identity Center Application used to
    # configure authentication for a plugin.
    #
    # @!attribute [rw] idc_application_arn
    #   The Amazon Resource Name (ARN) of the IAM Identity Center
    #   Application used to configure authentication.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role with permissions to
    #   perform actions on Amazon Web Services services on your behalf.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/IdcAuthConfiguration AWS API Documentation
    #
    class IdcAuthConfiguration < Struct.new(
      :idc_application_arn,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the identity provider (IdP) used to
    # authenticate end users of an Amazon Q Business web experience.
    #
    # @note IdentityProviderConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note IdentityProviderConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of IdentityProviderConfiguration corresponding to the set member.
    #
    # @!attribute [rw] saml_configuration
    #   Information about the SAML 2.0-compliant identity provider (IdP)
    #   used to authenticate end users of an Amazon Q Business web
    #   experience.
    #   @return [Types::SamlProviderConfiguration]
    #
    # @!attribute [rw] open_id_connect_configuration
    #   Information about the OIDC-compliant identity provider (IdP) used to
    #   authenticate end users of an Amazon Q Business web experience.
    #   @return [Types::OpenIDConnectProviderConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/IdentityProviderConfiguration AWS API Documentation
    #
    class IdentityProviderConfiguration < Struct.new(
      :saml_configuration,
      :open_id_connect_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class SamlConfiguration < IdentityProviderConfiguration; end
      class OpenIdConnectConfiguration < IdentityProviderConfiguration; end
      class Unknown < IdentityProviderConfiguration; end
    end

    # The configuration for extracting semantic meaning from images in
    # documents. For more information, see [Extracting semantic meaning from
    # images and visuals][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/extracting-meaning-from-images.html
    #
    # @!attribute [rw] image_extraction_status
    #   Specify whether to extract semantic meaning from images and visuals
    #   from documents.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ImageExtractionConfiguration AWS API Documentation
    #
    class ImageExtractionConfiguration < Struct.new(
      :image_extraction_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information for your Amazon Q Business index.
    #
    # @!attribute [rw] display_name
    #   The name of the index.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier for the index.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The Unix timestamp when the index was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The Unix timestamp when the index was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the index. When the status is `ACTIVE`, the
    #   index is ready.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/Index AWS API Documentation
    #
    class Index < Struct.new(
      :display_name,
      :index_id,
      :created_at,
      :updated_at,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about index capacity configuration.
    #
    # @!attribute [rw] units
    #   The number of storage units configured for an Amazon Q Business
    #   index.
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
    # Amazon Q Business.
    #
    # To apply advanced logic, to go beyond what you can do with basic
    # logic, see [ `HookConfiguration` ][1].
    #
    # For more information, see [Custom document enrichment][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazonq/latest/api-reference/API_HookConfiguration.html
    # [2]: https://docs.aws.amazon.com/amazonq/latest/business-use-dg/custom-document-enrichment.html
    #
    # @!attribute [rw] condition
    #   The condition used for the target document attribute or metadata
    #   field when ingesting documents into Amazon Q Business. You use this
    #   with [ `DocumentAttributeTarget` ][1] to apply the condition.
    #
    #   For example, you can create the 'Department' target field and have
    #   it prefill department names associated with the documents based on
    #   information in the 'Source\_URI' field. Set the condition that if
    #   the 'Source\_URI' field contains 'financial' in its URI value,
    #   then prefill the target field 'Department' with the target value
    #   'Finance' for the document.
    #
    #   Amazon Q Business can't create a target field if it has not already
    #   been created as an index field. After you create your index field,
    #   you can create a document metadata field using
    #   `DocumentAttributeTarget`. Amazon Q Business then will map your
    #   newly created metadata field to your index field.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeTarget.html
    #   @return [Types::DocumentAttributeCondition]
    #
    # @!attribute [rw] target
    #   The target document attribute or metadata field you want to alter
    #   when ingesting documents into Amazon Q Business.
    #
    #   For example, you can delete all customer identification numbers
    #   associated with the documents, stored in the document metadata field
    #   called 'Customer\_ID' by setting the target key as
    #   'Customer\_ID' and the deletion flag to `TRUE`. This removes all
    #   customer ID values in the field 'Customer\_ID'. This would scrub
    #   personally identifiable information from each document's metadata.
    #
    #   Amazon Q Business can't create a target field if it has not already
    #   been created as an index field. After you create your index field,
    #   you can create a document metadata field using [
    #   `DocumentAttributeTarget` ][1]. Amazon Q Business will then map your
    #   newly created document attribute to your index field.
    #
    #   You can also use this with [ `DocumentAttributeCondition` ][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeTarget.html
    #   [2]: https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeCondition.html
    #   @return [Types::DocumentAttributeTarget]
    #
    # @!attribute [rw] document_content_operator
    #   `TRUE` to delete content if the condition used for the target
    #   attribute is met.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/InlineDocumentEnrichmentConfiguration AWS API Documentation
    #
    class InlineDocumentEnrichmentConfiguration < Struct.new(
      :condition,
      :target,
      :document_content_operator)
      SENSITIVE = []
      include Aws::Structure
    end

    # An issue occurred with the internal server used for your Amazon Q
    # Business service. Wait some minutes and try again, or contact
    # [Support][1] for help.
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

    # @!attribute [rw] next_token
    #   If the `maxResults` response was incomplete because there is more
    #   data to retrieve, Amazon Q Business returns a pagination token in
    #   the response. You can use this pagination token to retrieve the next
    #   set of Amazon Q Business applications.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of Amazon Q Business applications to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListApplicationsRequest AWS API Documentation
    #
    class ListApplicationsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Q Business returns this token.
    #   You can use this token in a subsequent request to retrieve the next
    #   set of applications.
    #   @return [String]
    #
    # @!attribute [rw] applications
    #   An array of summary information on the configuration of one or more
    #   Amazon Q Business applications.
    #   @return [Array<Types::Application>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListApplicationsResponse AWS API Documentation
    #
    class ListApplicationsResponse < Struct.new(
      :next_token,
      :applications)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The unique identifier for the Amazon Q Business application.
    #   @return [String]
    #
    # @!attribute [rw] conversation_id
    #   The unique identifier of the Amazon Q Business web experience
    #   conversation.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The unique identifier of the user involved in the Amazon Q Business
    #   web experience conversation.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the number of attachments returned exceeds `maxResults`, Amazon Q
    #   Business returns a next token as a pagination token to retrieve the
    #   next set of attachments.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of attachements to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListAttachmentsRequest AWS API Documentation
    #
    class ListAttachmentsRequest < Struct.new(
      :application_id,
      :conversation_id,
      :user_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attachments
    #   An array of information on one or more attachments.
    #   @return [Array<Types::Attachment>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Q Business returns this token,
    #   which you can use in a later request to list the next set of
    #   attachments.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListAttachmentsResponse AWS API Documentation
    #
    class ListAttachmentsResponse < Struct.new(
      :attachments,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q Business application.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user involved in the Amazon Q Business web
    #   experience conversation.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the `maxResults` response was incomplete because there is more
    #   data to retrieve, Amazon Q Business returns a pagination token in
    #   the response. You can use this pagination token to retrieve the next
    #   set of Amazon Q Business conversations.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of Amazon Q Business conversations to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListConversationsRequest AWS API Documentation
    #
    class ListConversationsRequest < Struct.new(
      :application_id,
      :user_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Q Business returns this token,
    #   which you can use in a later request to list the next set of
    #   messages.
    #   @return [String]
    #
    # @!attribute [rw] conversations
    #   An array of summary information on the configuration of one or more
    #   Amazon Q Business web experiences.
    #   @return [Array<Types::Conversation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListConversationsResponse AWS API Documentation
    #
    class ListConversationsResponse < Struct.new(
      :next_token,
      :conversations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The unique identifier of the Amazon Q Business application.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. (You received this token from
    #   a previous call.)
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListDataAccessorsRequest AWS API Documentation
    #
    class ListDataAccessorsRequest < Struct.new(
      :application_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_accessors
    #   The list of data accessors.
    #   @return [Array<Types::DataAccessor>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results, if there are
    #   any.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListDataAccessorsResponse AWS API Documentation
    #
    class ListDataAccessorsResponse < Struct.new(
      :data_accessors,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_source_id
    #   The identifier of the data source connector.
    #   @return [String]
    #
    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q Business application connected to the
    #   data source.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index used with the Amazon Q Business data
    #   source connector.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the `maxResults` response was incpmplete because there is more
    #   data to retriever, Amazon Q Business returns a pagination token in
    #   the response. You can use this pagination token to retrieve the next
    #   set of responses.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of synchronization jobs to return in the
    #   response.
    #   @return [Integer]
    #
    # @!attribute [rw] start_time
    #   The start time of the data source connector sync.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time of the data source connector sync.
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
      :data_source_id,
      :application_id,
      :index_id,
      :next_token,
      :max_results,
      :start_time,
      :end_time,
      :status_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] history
    #   A history of synchronization jobs for the data source connector.
    #   @return [Array<Types::DataSourceSyncJob>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Q Business returns this token.
    #   You can use this token in any subsequent request to retrieve the
    #   next set of jobs.
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
    #   The identifier of the Amazon Q Business application linked to the
    #   data source connectors.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index used with one or more data source
    #   connectors.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the `maxResults` response was incomplete because there is more
    #   data to retrieve, Amazon Q Business returns a pagination token in
    #   the response. You can use this pagination token to retrieve the next
    #   set of Amazon Q Business data source connectors.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of data source connectors to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListDataSourcesRequest AWS API Documentation
    #
    class ListDataSourcesRequest < Struct.new(
      :application_id,
      :index_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_sources
    #   An array of summary information for one or more data source
    #   connector.
    #   @return [Array<Types::DataSource>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Q Business returns this token.
    #   You can use this token in a subsequent request to retrieve the next
    #   set of data source connectors.
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
    # @!attribute [rw] index_id
    #   The identifier of the index the documents are attached to.
    #   @return [String]
    #
    # @!attribute [rw] data_source_ids
    #   The identifier of the data sources the documents are attached to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   If the `maxResults` response was incomplete because there is more
    #   data to retrieve, Amazon Q Business returns a pagination token in
    #   the response. You can use this pagination token to retrieve the next
    #   set of documents.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of documents to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListDocumentsRequest AWS API Documentation
    #
    class ListDocumentsRequest < Struct.new(
      :application_id,
      :index_id,
      :data_source_ids,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] document_detail_list
    #   A list of document details.
    #   @return [Array<Types::DocumentDetails>]
    #
    # @!attribute [rw] next_token
    #   If the `maxResults` response was incomplete because there is more
    #   data to retrieve, Amazon Q Business returns a pagination token in
    #   the response. You can use this pagination token to retrieve the next
    #   set of documents.
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
    # @!attribute [rw] index_id
    #   The identifier of the index for getting a list of groups mapped to
    #   users.
    #   @return [String]
    #
    # @!attribute [rw] updated_earlier_than
    #   The timestamp identifier used for the latest `PUT` or `DELETE`
    #   action for mapping users to their groups.
    #   @return [Time]
    #
    # @!attribute [rw] data_source_id
    #   The identifier of the data source for getting a list of groups
    #   mapped to users.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there is more data
    #   to retrieve), Amazon Q Business returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of groups that are mapped to users.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of returned groups that are mapped to users.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListGroupsRequest AWS API Documentation
    #
    class ListGroupsRequest < Struct.new(
      :application_id,
      :index_id,
      :updated_earlier_than,
      :data_source_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Q Business returns this token
    #   that you can use in the subsequent request to retrieve the next set
    #   of groups that are mapped to users.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   Summary information for list of groups that are mapped to users.
    #   @return [Array<Types::GroupSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListGroupsResponse AWS API Documentation
    #
    class ListGroupsResponse < Struct.new(
      :next_token,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q Business application connected to the
    #   index.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the maxResults response was incomplete because there is more data
    #   to retrieve, Amazon Q Business returns a pagination token in the
    #   response. You can use this pagination token to retrieve the next set
    #   of Amazon Q Business indices.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of indices to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListIndicesRequest AWS API Documentation
    #
    class ListIndicesRequest < Struct.new(
      :application_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Q Business returns this token
    #   that you can use in the subsequent request to retrieve the next set
    #   of indexes.
    #   @return [String]
    #
    # @!attribute [rw] indices
    #   An array of information on the items in one or more indexes.
    #   @return [Array<Types::Index>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListIndicesResponse AWS API Documentation
    #
    class ListIndicesResponse < Struct.new(
      :next_token,
      :indices)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] conversation_id
    #   The identifier of the Amazon Q Business web experience conversation.
    #   @return [String]
    #
    # @!attribute [rw] application_id
    #   The identifier for the Amazon Q Business application.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user involved in the Amazon Q Business web
    #   experience conversation.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the number of messages returned exceeds `maxResults`, Amazon Q
    #   Business returns a next token as a pagination token to retrieve the
    #   next set of messages.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of messages to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListMessagesRequest AWS API Documentation
    #
    class ListMessagesRequest < Struct.new(
      :conversation_id,
      :application_id,
      :user_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] messages
    #   An array of information on one or more messages.
    #   @return [Array<Types::Message>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Q Business returns this token,
    #   which you can use in a later request to list the next set of
    #   messages.
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
    #   The identifier of the Amazon Q Business application the plugin is
    #   attached to.
    #   @return [String]
    #
    # @!attribute [rw] plugin_id
    #   The identifier of the Amazon Q Business plugin.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the number of plugin actions returned exceeds `maxResults`,
    #   Amazon Q Business returns a next token as a pagination token to
    #   retrieve the next set of plugin actions.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of plugin actions to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListPluginActionsRequest AWS API Documentation
    #
    class ListPluginActionsRequest < Struct.new(
      :application_id,
      :plugin_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Q Business returns this token,
    #   which you can use in a later request to list the next set of plugin
    #   actions.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   An array of information on one or more plugin actions.
    #   @return [Array<Types::ActionSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListPluginActionsResponse AWS API Documentation
    #
    class ListPluginActionsResponse < Struct.new(
      :next_token,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] plugin_type
    #   The type of the plugin.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the number of plugins returned exceeds `maxResults`, Amazon Q
    #   Business returns a next token as a pagination token to retrieve the
    #   next set of plugins.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of plugins to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListPluginTypeActionsRequest AWS API Documentation
    #
    class ListPluginTypeActionsRequest < Struct.new(
      :plugin_type,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Q Business returns this token,
    #   which you can use in a later request to list the next set of
    #   plugins.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   An array of information on one or more plugins.
    #   @return [Array<Types::ActionSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListPluginTypeActionsResponse AWS API Documentation
    #
    class ListPluginTypeActionsResponse < Struct.new(
      :next_token,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If the metadata returned exceeds `maxResults`, Amazon Q Business
    #   returns a next token as a pagination token to retrieve the next set
    #   of metadata.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of plugin metadata items to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListPluginTypeMetadataRequest AWS API Documentation
    #
    class ListPluginTypeMetadataRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Q Business returns this token,
    #   which you can use in a later request to list the next set of plugin
    #   metadata.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   An array of information on plugin metadata.
    #   @return [Array<Types::PluginTypeMetadataSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListPluginTypeMetadataResponse AWS API Documentation
    #
    class ListPluginTypeMetadataResponse < Struct.new(
      :next_token,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the application the plugin is attached to.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the `maxResults` response was incomplete because there is more
    #   data to retrieve, Amazon Q Business returns a pagination token in
    #   the response. You can use this pagination token to retrieve the next
    #   set of plugins.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of documents to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListPluginsRequest AWS API Documentation
    #
    class ListPluginsRequest < Struct.new(
      :application_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If the `maxResults` response was incomplete because there is more
    #   data to retrieve, Amazon Q Business returns a pagination token in
    #   the response. You can use this pagination token to retrieve the next
    #   set of plugins.
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
    #   The identifier of the Amazon Q Business application using the
    #   retriever.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the number of retrievers returned exceeds `maxResults`, Amazon Q
    #   Business returns a next token as a pagination token to retrieve the
    #   next set of retrievers.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of retrievers returned.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListRetrieversRequest AWS API Documentation
    #
    class ListRetrieversRequest < Struct.new(
      :application_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] retrievers
    #   An array of summary information for one or more retrievers.
    #   @return [Array<Types::Retriever>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Q Business returns this token,
    #   which you can use in a later request to list the next set of
    #   retrievers.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListRetrieversResponse AWS API Documentation
    #
    class ListRetrieversResponse < Struct.new(
      :retrievers,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q Business application linked to the
    #   subscription.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the `maxResults` response was incomplete because there is more
    #   data to retrieve, Amazon Q Business returns a pagination token in
    #   the response. You can use this pagination token to retrieve the next
    #   set of Amazon Q Business subscriptions.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of Amazon Q Business subscriptions to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListSubscriptionsRequest AWS API Documentation
    #
    class ListSubscriptionsRequest < Struct.new(
      :application_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Q Business returns this token.
    #   You can use this token in a subsequent request to retrieve the next
    #   set of subscriptions.
    #   @return [String]
    #
    # @!attribute [rw] subscriptions
    #   An array of summary information on the subscriptions configured for
    #   an Amazon Q Business application.
    #   @return [Array<Types::Subscription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListSubscriptionsResponse AWS API Documentation
    #
    class ListSubscriptionsResponse < Struct.new(
      :next_token,
      :subscriptions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the Amazon Q Business application
    #   or data source to get a list of tags for.
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
    #   A list of tags associated with the Amazon Q Business application or
    #   data source.
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
    #   The identifier of the Amazon Q Business application linked to the
    #   listed web experiences.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the `maxResults` response was incomplete because there is more
    #   data to retrieve, Amazon Q Business returns a pagination token in
    #   the response. You can use this pagination token to retrieve the next
    #   set of Amazon Q Business conversations.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of Amazon Q Business Web Experiences to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListWebExperiencesRequest AWS API Documentation
    #
    class ListWebExperiencesRequest < Struct.new(
      :application_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] web_experiences
    #   An array of summary information for one or more Amazon Q Business
    #   experiences.
    #   @return [Array<Types::WebExperience>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Q Business returns this token,
    #   which you can use in a later request to list the next set of
    #   messages.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ListWebExperiencesResponse AWS API Documentation
    #
    class ListWebExperiencesResponse < Struct.new(
      :web_experiences,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for extracting information from media in documents.
    #
    # @!attribute [rw] image_extraction_configuration
    #   The configuration for extracting semantic meaning from images in
    #   documents. For more information, see [Extracting semantic meaning
    #   from images and visuals][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/extracting-meaning-from-images.html
    #   @return [Types::ImageExtractionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/MediaExtractionConfiguration AWS API Documentation
    #
    class MediaExtractionConfiguration < Struct.new(
      :image_extraction_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested media object is too large to be returned.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/MediaTooLargeException AWS API Documentation
    #
    class MediaTooLargeException < Struct.new(
      :message)
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
    # @!attribute [rw] user_id
    #   The identifier of the user you want to map to a group.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/MemberUser AWS API Documentation
    #
    class MemberUser < Struct.new(
      :user_id,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A message in an Amazon Q Business web experience.
    #
    # @!attribute [rw] message_id
    #   The identifier of the Amazon Q Business web experience message.
    #   @return [String]
    #
    # @!attribute [rw] body
    #   The content of the Amazon Q Business web experience message.
    #   @return [String]
    #
    # @!attribute [rw] time
    #   The timestamp of the first Amazon Q Business web experience message.
    #   @return [Time]
    #
    # @!attribute [rw] type
    #   The type of Amazon Q Business message, whether `HUMAN` or `AI`
    #   generated.
    #   @return [String]
    #
    # @!attribute [rw] attachments
    #   A file directly uploaded into an Amazon Q Business web experience
    #   chat.
    #   @return [Array<Types::AttachmentOutput>]
    #
    # @!attribute [rw] source_attribution
    #   The source documents used to generate Amazon Q Business web
    #   experience message.
    #   @return [Array<Types::SourceAttribution>]
    #
    # @!attribute [rw] action_review
    #   An output event that Amazon Q Business returns to an user who wants
    #   to perform a plugin action during a non-streaming chat conversation.
    #   It contains information about the selected action with a list of
    #   possible user input fields, some pre-populated by Amazon Q Business.
    #   @return [Types::ActionReview]
    #
    # @!attribute [rw] action_execution
    #   Performs an Amazon Q Business plugin action during a non-streaming
    #   chat conversation.
    #   @return [Types::ActionExecution]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/Message AWS API Documentation
    #
    class Message < Struct.new(
      :message_id,
      :body,
      :time,
      :type,
      :attachments,
      :source_attribution,
      :action_review,
      :action_execution)
      SENSITIVE = []
      include Aws::Structure
    end

    # End user feedback on an AI-generated web experience chat message
    # usefulness.
    #
    # @!attribute [rw] usefulness
    #   The usefulness value assigned by an end user to a message.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for a usefulness rating.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   A comment given by an end user on the usefulness of an AI-generated
    #   chat message.
    #   @return [String]
    #
    # @!attribute [rw] submitted_at
    #   The timestamp for when the feedback was submitted.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/MessageUsefulnessFeedback AWS API Documentation
    #
    class MessageUsefulnessFeedback < Struct.new(
      :usefulness,
      :reason,
      :comment,
      :submitted_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # A metadata event for a AI-generated text output message in a Amazon Q
    # Business conversation, containing associated metadata generated.
    #
    # @!attribute [rw] conversation_id
    #   The identifier of the conversation with which the generated metadata
    #   is associated.
    #   @return [String]
    #
    # @!attribute [rw] user_message_id
    #   The identifier of an Amazon Q Business end user text input message
    #   within the conversation.
    #   @return [String]
    #
    # @!attribute [rw] system_message_id
    #   The identifier of an Amazon Q Business AI generated message within
    #   the conversation.
    #   @return [String]
    #
    # @!attribute [rw] source_attributions
    #   The source documents used to generate the conversation response.
    #   @return [Array<Types::SourceAttribution>]
    #
    # @!attribute [rw] final_text_message
    #   The final text output message generated by the system.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/MetadataEvent AWS API Documentation
    #
    class MetadataEvent < Struct.new(
      :conversation_id,
      :user_message_id,
      :system_message_id,
      :source_attributions,
      :final_text_message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information for an Amazon Q Business index.
    #
    # @!attribute [rw] index_id
    #   The identifier for the Amazon Q Business index.
    #   @return [String]
    #
    # @!attribute [rw] boosting_override
    #   Overrides the default boosts applied by Amazon Q Business to
    #   supported document attribute data types.
    #   @return [Hash<String,Types::DocumentAttributeBoostingConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/NativeIndexConfiguration AWS API Documentation
    #
    class NativeIndexConfiguration < Struct.new(
      :index_id,
      :boosting_override)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about invoking a custom plugin without any authentication
    # or authorization requirement.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/NoAuthConfiguration AWS API Documentation
    #
    class NoAuthConfiguration < Aws::EmptyStructure; end

    # Provides information on boosting `NUMBER` type document attributes.
    #
    # For more information on how boosting document attributes work in
    # Amazon Q Business, see [Boosting using document attributes][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazonq/latest/business-use-dg/metadata-boosting.html
    #
    # @!attribute [rw] boosting_level
    #   Specifies the duration, in seconds, of a boost applies to a `NUMBER`
    #   type document attribute.
    #   @return [String]
    #
    # @!attribute [rw] boosting_type
    #   Specifies how much a document attribute is boosted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/NumberAttributeBoostingConfiguration AWS API Documentation
    #
    class NumberAttributeBoostingConfiguration < Struct.new(
      :boosting_level,
      :boosting_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the OAuth 2.0 authentication credential/token used
    # to configure a plugin.
    #
    # @!attribute [rw] secret_arn
    #   The ARN of the Secrets Manager secret that stores the OAuth 2.0
    #   credentials/token used for plugin configuration.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of an IAM role used by Amazon Q Business to access the OAuth
    #   2.0 authentication credentials stored in a Secrets Manager secret.
    #   @return [String]
    #
    # @!attribute [rw] authorization_url
    #   The redirect URL required by the OAuth 2.0 protocol for Amazon Q
    #   Business to authenticate a plugin user through a third party
    #   authentication server.
    #   @return [String]
    #
    # @!attribute [rw] token_url
    #   The URL required by the OAuth 2.0 protocol to exchange an end user
    #   authorization code for an access token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/OAuth2ClientCredentialConfiguration AWS API Documentation
    #
    class OAuth2ClientCredentialConfiguration < Struct.new(
      :secret_arn,
      :role_arn,
      :authorization_url,
      :token_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the OIDC-compliant identity provider (IdP) used to
    # authenticate end users of an Amazon Q Business web experience.
    #
    # @!attribute [rw] secrets_arn
    #   The Amazon Resource Name (ARN) of a Secrets Manager secret
    #   containing the OIDC client secret.
    #   @return [String]
    #
    # @!attribute [rw] secrets_role
    #   An IAM role with permissions to access KMS to decrypt the Secrets
    #   Manager secret containing your OIDC client secret.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/OpenIDConnectProviderConfiguration AWS API Documentation
    #
    class OpenIDConnectProviderConfiguration < Struct.new(
      :secrets_arn,
      :secrets_role)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information required to enable chat orchestration for
    # your Amazon Q Business application.
    #
    # <note markdown="1"> Chat orchestration is optimized to work for English language content.
    # For more details on language support in Amazon Q Business, see
    # [Supported languages][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/supported-languages.html
    #
    # @!attribute [rw] control
    #   Status information about whether chat orchestration is activated or
    #   deactivated for your Amazon Q Business application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/OrchestrationConfiguration AWS API Documentation
    #
    class OrchestrationConfiguration < Struct.new(
      :control)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information about chat response personalization. For
    # more information, see [Personalizing chat responses][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/personalizing-chat-responses.html
    #
    # @!attribute [rw] personalization_control_mode
    #   An option to allow Amazon Q Business to customize chat responses
    #   using user specific metadata—specifically, location and job
    #   information—in your IAM Identity Center instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/PersonalizationConfiguration AWS API Documentation
    #
    class PersonalizationConfiguration < Struct.new(
      :personalization_control_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an Amazon Q Business plugin and its configuration.
    #
    # @!attribute [rw] plugin_id
    #   The identifier of the plugin.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of the plugin.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the plugin.
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
    # @!attribute [rw] build_status
    #   The status of the plugin.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp for when the plugin was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp for when the plugin was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/Plugin AWS API Documentation
    #
    class Plugin < Struct.new(
      :plugin_id,
      :display_name,
      :type,
      :server_url,
      :state,
      :build_status,
      :created_at,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Authentication configuration information for an Amazon Q Business
    # plugin.
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
    # @!attribute [rw] no_auth_configuration
    #   Information about invoking a custom plugin without any
    #   authentication.
    #   @return [Types::NoAuthConfiguration]
    #
    # @!attribute [rw] idc_auth_configuration
    #   Information about the IAM Identity Center Application used to
    #   configure authentication for a plugin.
    #   @return [Types::IdcAuthConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/PluginAuthConfiguration AWS API Documentation
    #
    class PluginAuthConfiguration < Struct.new(
      :basic_auth_configuration,
      :o_auth_2_client_credential_configuration,
      :no_auth_configuration,
      :idc_auth_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class BasicAuthConfiguration < PluginAuthConfiguration; end
      class OAuth2ClientCredentialConfiguration < PluginAuthConfiguration; end
      class NoAuthConfiguration < PluginAuthConfiguration; end
      class IdcAuthConfiguration < PluginAuthConfiguration; end
      class Unknown < PluginAuthConfiguration; end
    end

    # Configuration information required to invoke chat in `PLUGIN_MODE`.
    #
    # For more information, see [Admin controls and guardrails][1],
    # [Plugins][2], and [Conversation settings][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/guardrails.html
    # [2]: https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/plugins.html
    # [3]: https://docs.aws.amazon.com/amazonq/latest/business-use-dg/using-web-experience.html#chat-source-scope
    #
    # @!attribute [rw] plugin_id
    #   The identifier of the plugin you want to use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/PluginConfiguration AWS API Documentation
    #
    class PluginConfiguration < Struct.new(
      :plugin_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary metadata information for a Amazon Q Business plugin.
    #
    # @!attribute [rw] type
    #   The type of the plugin.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   The category of the plugin type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description assigned by Amazon Q Business to a plugin. You
    #   can't modify this value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/PluginTypeMetadataSummary AWS API Documentation
    #
    class PluginTypeMetadataSummary < Struct.new(
      :type,
      :category,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides user and group information used for filtering documents to
    # use for generating Amazon Q Business conversation responses.
    #
    # @note Principal is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] user
    #   The user associated with the principal.
    #   @return [Types::PrincipalUser]
    #
    # @!attribute [rw] group
    #   The group associated with the principal.
    #   @return [Types::PrincipalGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/Principal AWS API Documentation
    #
    class Principal < Struct.new(
      :user,
      :group,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class User < Principal; end
      class Group < Principal; end
      class Unknown < Principal; end
    end

    # Provides information about a group associated with the principal.
    #
    # @!attribute [rw] name
    #   The name of the group.
    #   @return [String]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/PrincipalGroup AWS API Documentation
    #
    class PrincipalGroup < Struct.new(
      :name,
      :access,
      :membership_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a user associated with a principal.
    #
    # @!attribute [rw] id
    #   The identifier of the user.
    #   @return [String]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/PrincipalUser AWS API Documentation
    #
    class PrincipalUser < Struct.new(
      :id,
      :access,
      :membership_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the application associated with the feedback.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user giving the feedback.
    #   @return [String]
    #
    # @!attribute [rw] conversation_id
    #   The identifier of the conversation the feedback is attached to.
    #   @return [String]
    #
    # @!attribute [rw] message_id
    #   The identifier of the chat message that the feedback was given for.
    #   @return [String]
    #
    # @!attribute [rw] message_copied_at
    #   The timestamp for when the feedback was recorded.
    #   @return [Time]
    #
    # @!attribute [rw] message_usefulness
    #   The feedback usefulness value given by the user to the chat message.
    #   @return [Types::MessageUsefulnessFeedback]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/PutFeedbackRequest AWS API Documentation
    #
    class PutFeedbackRequest < Struct.new(
      :application_id,
      :user_id,
      :conversation_id,
      :message_id,
      :message_copied_at,
      :message_usefulness)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the application in which the user and group
    #   mapping belongs.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index in which you want to map users to their
    #   groups.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The list that contains your users or sub groups that belong the same
    #   group. For example, the group "Company" includes the user "CEO"
    #   and the sub groups "Research", "Engineering", and "Sales and
    #   Marketing".
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
    # @!attribute [rw] type
    #   The type of the group.
    #   @return [String]
    #
    # @!attribute [rw] group_members
    #   A list of users or sub groups that belong to a group. This is for
    #   generating Amazon Q Business chat results only from document a user
    #   has access to.
    #   @return [Types::GroupMembers]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that has access to the
    #   S3 file that contains your list of users that belong to a group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/PutGroupRequest AWS API Documentation
    #
    class PutGroupRequest < Struct.new(
      :application_id,
      :index_id,
      :group_name,
      :data_source_id,
      :type,
      :group_members,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/PutGroupResponse AWS API Documentation
    #
    class PutGroupResponse < Aws::EmptyStructure; end

    # Configuration information about Amazon Q Apps.
    #
    # @!attribute [rw] q_apps_control_mode
    #   Status information about whether end users can create and use Amazon
    #   Q Apps in the web experience.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/QAppsConfiguration AWS API Documentation
    #
    class QAppsConfiguration < Struct.new(
      :q_apps_control_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon QuickSight configuration for an Amazon Q Business
    # application that uses QuickSight as the identity provider. For more
    # information, see [Creating an Amazon QuickSight integrated
    # application][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/create-quicksight-integrated-application.html
    #
    # @!attribute [rw] client_namespace
    #   The Amazon QuickSight namespace that is used as the identity
    #   provider. For more information about QuickSight namespaces, see
    #   [Namespace operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/quicksight/latest/developerguide/namespace-operations.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/QuickSightConfiguration AWS API Documentation
    #
    class QuickSightConfiguration < Struct.new(
      :client_namespace)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a piece of content that is relevant to a search query.
    #
    # @!attribute [rw] content
    #   The actual content of the relevant item.
    #   @return [String]
    #
    # @!attribute [rw] document_id
    #   The unique identifier of the document containing the relevant
    #   content.
    #   @return [String]
    #
    # @!attribute [rw] document_title
    #   The title of the document containing the relevant content.
    #   @return [String]
    #
    # @!attribute [rw] document_uri
    #   The URI of the document containing the relevant content.
    #   @return [String]
    #
    # @!attribute [rw] document_attributes
    #   Additional attributes of the document containing the relevant
    #   content.
    #   @return [Array<Types::DocumentAttribute>]
    #
    # @!attribute [rw] score_attributes
    #   Attributes related to the relevance score of the content.
    #   @return [Types::ScoreAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/RelevantContent AWS API Documentation
    #
    class RelevantContent < Struct.new(
      :content,
      :document_id,
      :document_title,
      :document_uri,
      :document_attributes,
      :score_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # The application or plugin resource you want to use doesn’t exist. Make
    # sure you have provided the correct resource and try again.
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

    # Summary information for the retriever used for your Amazon Q Business
    # application.
    #
    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q Business application using the
    #   retriever.
    #   @return [String]
    #
    # @!attribute [rw] retriever_id
    #   The identifier of the retriever used by your Amazon Q Business
    #   application.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of your retriever.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of your retriever.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of your retriever.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/Retriever AWS API Documentation
    #
    class Retriever < Struct.new(
      :application_id,
      :retriever_id,
      :type,
      :status,
      :display_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information on how the retriever used for your Amazon Q
    # Business application is configured.
    #
    # @note RetrieverConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note RetrieverConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of RetrieverConfiguration corresponding to the set member.
    #
    # @!attribute [rw] native_index_configuration
    #   Provides information on how a Amazon Q Business index used as a
    #   retriever for your Amazon Q Business application is configured.
    #   @return [Types::NativeIndexConfiguration]
    #
    # @!attribute [rw] kendra_index_configuration
    #   Provides information on how the Amazon Kendra index used as a
    #   retriever for your Amazon Q Business application is configured.
    #   @return [Types::KendraIndexConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/RetrieverConfiguration AWS API Documentation
    #
    class RetrieverConfiguration < Struct.new(
      :native_index_configuration,
      :kendra_index_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class NativeIndexConfiguration < RetrieverConfiguration; end
      class KendraIndexConfiguration < RetrieverConfiguration; end
      class Unknown < RetrieverConfiguration; end
    end

    # Specifies a retriever as the content source for a search.
    #
    # @!attribute [rw] retriever_id
    #   The unique identifier of the retriever to use as the content source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/RetrieverContentSource AWS API Documentation
    #
    class RetrieverContentSource < Struct.new(
      :retriever_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Guardrail rules for an Amazon Q Business application. Amazon Q
    # Business supports only one rule at a time.
    #
    # @!attribute [rw] included_users_and_groups
    #   Users and groups to be included in a rule.
    #   @return [Types::UsersAndGroups]
    #
    # @!attribute [rw] excluded_users_and_groups
    #   Users and groups to be excluded from a rule.
    #   @return [Types::UsersAndGroups]
    #
    # @!attribute [rw] rule_type
    #   The type of rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_configuration
    #   The configuration information for a rule.
    #   @return [Types::RuleConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/Rule AWS API Documentation
    #
    class Rule < Struct.new(
      :included_users_and_groups,
      :excluded_users_and_groups,
      :rule_type,
      :rule_configuration)
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
    #   A rule for configuring how Amazon Q Business responds when it
    #   encounters a a blocked topic.
    #   @return [Types::ContentBlockerRule]
    #
    # @!attribute [rw] content_retrieval_rule
    #   Rules for retrieving content from data sources connected to a Amazon
    #   Q Business application for a specific topic control configuration.
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

    # Information required for Amazon Q Business to find a specific file in
    # an Amazon S3 bucket.
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
    # information Amazon Q Business needs to deploy a Amazon Q Business web
    # experience.
    #
    # @!attribute [rw] metadata_xml
    #   The metadata XML that your IdP generated.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role assumed by users when
    #   they authenticate into their Amazon Q Business web experience,
    #   containing the relevant Amazon Q Business permissions for conversing
    #   with Amazon Q Business.
    #   @return [String]
    #
    # @!attribute [rw] user_id_attribute
    #   The user attribute name in your IdP that maps to the user email.
    #   @return [String]
    #
    # @!attribute [rw] user_group_attribute
    #   The group attribute name in your IdP that maps to user groups.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/SamlConfiguration AWS API Documentation
    #
    class SamlConfiguration < Struct.new(
      :metadata_xml,
      :role_arn,
      :user_id_attribute,
      :user_group_attribute)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the SAML 2.0-compliant identity provider (IdP) used
    # to authenticate end users of an Amazon Q Business web experience.
    #
    # @!attribute [rw] authentication_url
    #   The URL where Amazon Q Business end users will be redirected for
    #   authentication.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/SamlProviderConfiguration AWS API Documentation
    #
    class SamlProviderConfiguration < Struct.new(
      :authentication_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the relevance score of content.
    #
    # @!attribute [rw] score_confidence
    #   The confidence level of the relevance score.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ScoreAttributes AWS API Documentation
    #
    class ScoreAttributes < Struct.new(
      :score_confidence)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The unique identifier of the Amazon Q Business application to
    #   search.
    #   @return [String]
    #
    # @!attribute [rw] query_text
    #   The text to search for.
    #   @return [String]
    #
    # @!attribute [rw] content_source
    #   The source of content to search in.
    #   @return [Types::ContentSource]
    #
    # @!attribute [rw] attribute_filter
    #   Enables filtering of responses based on document attributes or
    #   metadata fields.
    #   @return [Types::AttributeFilter]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. (You received this token from
    #   a previous call.)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/SearchRelevantContentRequest AWS API Documentation
    #
    class SearchRelevantContentRequest < Struct.new(
      :application_id,
      :query_text,
      :content_source,
      :attribute_filter,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] relevant_content
    #   The list of relevant content items found.
    #   @return [Array<Types::RelevantContent>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retrieve the next set of results, if there are
    #   any.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/SearchRelevantContentResponse AWS API Documentation
    #
    class SearchRelevantContentResponse < Struct.new(
      :relevant_content,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have exceeded the set limits for your Amazon Q Business service.
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

    # Contains the relevant text excerpt from a source that was used to
    # generate a citation text segment in an Amazon Q Business chat
    # response.
    #
    # @!attribute [rw] text
    #   The relevant text excerpt from a source that was used to generate a
    #   citation text segment in an Amazon Q chat response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/SnippetExcerpt AWS API Documentation
    #
    class SnippetExcerpt < Struct.new(
      :text)
      SENSITIVE = []
      include Aws::Structure
    end

    # The documents used to generate an Amazon Q Business web experience
    # response.
    #
    # @!attribute [rw] title
    #   The title of the document which is the source for the Amazon Q
    #   Business generated response.
    #   @return [String]
    #
    # @!attribute [rw] snippet
    #   The content extract from the document on which the generated
    #   response is based.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL of the document which is the source for the Amazon Q
    #   Business generated response.
    #   @return [String]
    #
    # @!attribute [rw] citation_number
    #   The number attached to a citation in an Amazon Q Business generated
    #   response.
    #   @return [Integer]
    #
    # @!attribute [rw] updated_at
    #   The Unix timestamp when the Amazon Q Business application was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] text_message_segments
    #   A text extract from a source document that is used for source
    #   attribution.
    #   @return [Array<Types::TextSegment>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/SourceAttribution AWS API Documentation
    #
    class SourceAttribution < Struct.new(
      :title,
      :snippet,
      :url,
      :citation_number,
      :updated_at,
      :text_message_segments)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_source_id
    #   The identifier of the data source connector.
    #   @return [String]
    #
    # @!attribute [rw] application_id
    #   The identifier of Amazon Q Business application the data source is
    #   connected to.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index used with the data source connector.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/StartDataSourceSyncJobRequest AWS API Documentation
    #
    class StartDataSourceSyncJobRequest < Struct.new(
      :data_source_id,
      :application_id,
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

    # @!attribute [rw] data_source_id
    #   The identifier of the data source connector.
    #   @return [String]
    #
    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q Business application that the data
    #   source is connected to.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index used with the Amazon Q Business data
    #   source connector.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/StopDataSourceSyncJobRequest AWS API Documentation
    #
    class StopDataSourceSyncJobRequest < Struct.new(
      :data_source_id,
      :application_id,
      :index_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/StopDataSourceSyncJobResponse AWS API Documentation
    #
    class StopDataSourceSyncJobResponse < Aws::EmptyStructure; end

    # Provides information on boosting `STRING` type document attributes.
    #
    # <note markdown="1"> For `STRING` and `STRING_LIST` type document attributes to be used for
    # boosting on the console and the API, they must be enabled for search
    # using the [DocumentAttributeConfiguration][1] object of the
    # [UpdateIndex][2] API. If you haven't enabled searching on these
    # attributes, you can't boost attributes of these data types on either
    # the console or the API.
    #
    #  </note>
    #
    # For more information on how boosting document attributes work in
    # Amazon Q Business, see [Boosting using document attributes][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeConfiguration.html
    # [2]: https://docs.aws.amazon.com/amazonq/latest/api-reference/API_UpdateIndex.html
    # [3]: https://docs.aws.amazon.com/amazonq/latest/business-use-dg/metadata-boosting.html
    #
    # @!attribute [rw] boosting_level
    #   Specifies how much a document attribute is boosted.
    #   @return [String]
    #
    # @!attribute [rw] attribute_value_boosting
    #   Specifies specific values of a `STRING` type document attribute
    #   being boosted.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/StringAttributeBoostingConfiguration AWS API Documentation
    #
    class StringAttributeBoostingConfiguration < Struct.new(
      :boosting_level,
      :attribute_value_boosting)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information on boosting `STRING_LIST` type document
    # attributes.
    #
    # <note markdown="1"> For `STRING` and `STRING_LIST` type document attributes to be used for
    # boosting on the console and the API, they must be enabled for search
    # using the [DocumentAttributeConfiguration][1] object of the
    # [UpdateIndex][2] API. If you haven't enabled searching on these
    # attributes, you can't boost attributes of these data types on either
    # the console or the API.
    #
    #  </note>
    #
    # For more information on how boosting document attributes work in
    # Amazon Q Business, see [Boosting using document attributes][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeConfiguration.html
    # [2]: https://docs.aws.amazon.com/amazonq/latest/api-reference/API_UpdateIndex.html
    # [3]: https://docs.aws.amazon.com/amazonq/latest/business-use-dg/metadata-boosting.html
    #
    # @!attribute [rw] boosting_level
    #   Specifies how much a document attribute is boosted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/StringListAttributeBoostingConfiguration AWS API Documentation
    #
    class StringListAttributeBoostingConfiguration < Struct.new(
      :boosting_level)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an Amazon Q Business subscription.
    #
    # Subscriptions are used to provide access for an IAM Identity Center
    # user or a group to an Amazon Q Business application.
    #
    # Amazon Q Business offers two subscription tiers: `Q_LITE` and
    # `Q_BUSINESS`. Subscription tier determines feature access for the
    # user. For more information on subscriptions and pricing tiers, see
    # [Amazon Q Business pricing][1].
    #
    #
    #
    # [1]: https://aws.amazon.com/q/business/pricing/
    #
    # @!attribute [rw] subscription_id
    #   The identifier of the Amazon Q Business subscription to be updated.
    #   @return [String]
    #
    # @!attribute [rw] subscription_arn
    #   The Amazon Resource Name (ARN) of the Amazon Q Business subscription
    #   that was updated.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   The IAM Identity Center `UserId` or `GroupId` of a user or group in
    #   the IAM Identity Center instance connected to the Amazon Q Business
    #   application.
    #   @return [Types::SubscriptionPrincipal]
    #
    # @!attribute [rw] current_subscription
    #   The type of your current Amazon Q Business subscription.
    #   @return [Types::SubscriptionDetails]
    #
    # @!attribute [rw] next_subscription
    #   The type of the Amazon Q Business subscription for the next month.
    #   @return [Types::SubscriptionDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/Subscription AWS API Documentation
    #
    class Subscription < Struct.new(
      :subscription_id,
      :subscription_arn,
      :principal,
      :current_subscription,
      :next_subscription)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of an Amazon Q Business subscription.
    #
    # @!attribute [rw] type
    #   The type of an Amazon Q Business subscription.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/SubscriptionDetails AWS API Documentation
    #
    class SubscriptionDetails < Struct.new(
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A user or group in the IAM Identity Center instance connected to the
    # Amazon Q Business application.
    #
    # @note SubscriptionPrincipal is a union - when making an API calls you must set exactly one of the members.
    #
    # @note SubscriptionPrincipal is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of SubscriptionPrincipal corresponding to the set member.
    #
    # @!attribute [rw] user
    #   The identifier of a user in the IAM Identity Center instance
    #   connected to the Amazon Q Business application.
    #   @return [String]
    #
    # @!attribute [rw] group
    #   The identifier of a group in the IAM Identity Center instance
    #   connected to the Amazon Q Business application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/SubscriptionPrincipal AWS API Documentation
    #
    class SubscriptionPrincipal < Struct.new(
      :user,
      :group,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class User < SubscriptionPrincipal; end
      class Group < SubscriptionPrincipal; end
      class Unknown < SubscriptionPrincipal; end
    end

    # A list of key/value pairs that identify an index, FAQ, or data source.
    # Tag keys and values can consist of Unicode letters, digits, white
    # space, and any of the following symbols: \_ . : / = + - @.
    #
    # @!attribute [rw] key
    #   The key for the tag. Keys are not case sensitive and must be unique
    #   for the Amazon Q Business application or data source.
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
    #   The Amazon Resource Name (ARN) of the Amazon Q Business application
    #   or data source to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tag keys to add to the Amazon Q Business application or
    #   data source. If a tag already exists, the existing value is replaced
    #   with the new value.
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

    # An input event for a end user message in an Amazon Q Business web
    # experience.
    #
    # @!attribute [rw] user_message
    #   A user message in a text message input event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/TextInputEvent AWS API Documentation
    #
    class TextInputEvent < Struct.new(
      :user_message,
      :event_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # An output event for an AI-generated response in an Amazon Q Business
    # web experience.
    #
    # @!attribute [rw] conversation_id
    #   The identifier of the conversation with which the text output event
    #   is associated.
    #   @return [String]
    #
    # @!attribute [rw] user_message_id
    #   The identifier of an end user message in a `TextOutputEvent`.
    #   @return [String]
    #
    # @!attribute [rw] system_message_id
    #   The identifier of an AI-generated message in a `TextOutputEvent`.
    #   @return [String]
    #
    # @!attribute [rw] system_message
    #   An AI-generated message in a `TextOutputEvent`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/TextOutputEvent AWS API Documentation
    #
    class TextOutputEvent < Struct.new(
      :conversation_id,
      :user_message_id,
      :system_message_id,
      :system_message,
      :event_type)
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
    # @!attribute [rw] snippet_excerpt
    #   The relevant text excerpt from a source that was used to generate a
    #   citation text segment in an Amazon Q Business chat response.
    #   @return [Types::SnippetExcerpt]
    #
    # @!attribute [rw] media_id
    #   The identifier of the media object associated with the text segment
    #   in the source attribution.
    #   @return [String]
    #
    # @!attribute [rw] media_mime_type
    #   The MIME type (image/png) of the media object associated with the
    #   text segment in the source attribution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/TextSegment AWS API Documentation
    #
    class TextSegment < Struct.new(
      :begin_offset,
      :end_offset,
      :snippet_excerpt,
      :media_id,
      :media_mime_type)
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

    # The topic specific controls configured for an Amazon Q Business
    # application.
    #
    # @!attribute [rw] name
    #   A name for your topic control configuration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for your topic control configuration. Use this to
    #   outline how the large language model (LLM) should use this topic
    #   control configuration.
    #   @return [String]
    #
    # @!attribute [rw] example_chat_messages
    #   A list of example phrases that you expect the end user to use in
    #   relation to the topic.
    #   @return [Array<String>]
    #
    # @!attribute [rw] rules
    #   Rules defined for a topic configuration.
    #   @return [Array<Types::Rule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/TopicConfiguration AWS API Documentation
    #
    class TopicConfiguration < Struct.new(
      :name,
      :description,
      :example_chat_messages,
      :rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the Amazon Q Business application,
    #   or data source to remove the tag from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of tag keys to remove from the Amazon Q Business application
    #   or data source. If a tag key does not exist on the resource, it is
    #   ignored.
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
    #   The identifier of the Amazon Q Business application.
    #   @return [String]
    #
    # @!attribute [rw] identity_center_instance_arn
    #   The Amazon Resource Name (ARN) of the IAM Identity Center instance
    #   you are either creating for—or connecting to—your Amazon Q Business
    #   application.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   A name for the Amazon Q Business application.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the Amazon Q Business application.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   An Amazon Web Services Identity and Access Management (IAM) role
    #   that gives Amazon Q Business permission to access Amazon CloudWatch
    #   logs and metrics.
    #   @return [String]
    #
    # @!attribute [rw] attachments_configuration
    #   An option to allow end users to upload files directly during chat.
    #   @return [Types::AttachmentsConfiguration]
    #
    # @!attribute [rw] q_apps_configuration
    #   An option to allow end users to create and use Amazon Q Apps in the
    #   web experience.
    #   @return [Types::QAppsConfiguration]
    #
    # @!attribute [rw] personalization_configuration
    #   Configuration information about chat response personalization. For
    #   more information, see [Personalizing chat responses][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/personalizing-chat-responses.html
    #   @return [Types::PersonalizationConfiguration]
    #
    # @!attribute [rw] auto_subscription_configuration
    #   An option to enable updating the default subscription type assigned
    #   to an Amazon Q Business application using IAM identity federation
    #   for user management.
    #   @return [Types::AutoSubscriptionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UpdateApplicationRequest AWS API Documentation
    #
    class UpdateApplicationRequest < Struct.new(
      :application_id,
      :identity_center_instance_arn,
      :display_name,
      :description,
      :role_arn,
      :attachments_configuration,
      :q_apps_configuration,
      :personalization_configuration,
      :auto_subscription_configuration)
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
    # @!attribute [rw] client_token
    #   A token that you provide to identify the request to update a Amazon
    #   Q Business application chat configuration.
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
    # @!attribute [rw] orchestration_configuration
    #   The chat response orchestration settings for your application.
    #   @return [Types::OrchestrationConfiguration]
    #
    # @!attribute [rw] blocked_phrases_configuration_update
    #   The phrases blocked from chat by your chat control configuration.
    #   @return [Types::BlockedPhrasesConfigurationUpdate]
    #
    # @!attribute [rw] topic_configurations_to_create_or_update
    #   The configured topic specific chat controls you want to update.
    #   @return [Array<Types::TopicConfiguration>]
    #
    # @!attribute [rw] topic_configurations_to_delete
    #   The configured topic specific chat controls you want to delete.
    #   @return [Array<Types::TopicConfiguration>]
    #
    # @!attribute [rw] creator_mode_configuration
    #   The configuration details for `CREATOR_MODE`.
    #   @return [Types::CreatorModeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UpdateChatControlsConfigurationRequest AWS API Documentation
    #
    class UpdateChatControlsConfigurationRequest < Struct.new(
      :application_id,
      :client_token,
      :response_scope,
      :orchestration_configuration,
      :blocked_phrases_configuration_update,
      :topic_configurations_to_create_or_update,
      :topic_configurations_to_delete,
      :creator_mode_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UpdateChatControlsConfigurationResponse AWS API Documentation
    #
    class UpdateChatControlsConfigurationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_id
    #   The unique identifier of the Amazon Q Business application.
    #   @return [String]
    #
    # @!attribute [rw] data_accessor_id
    #   The unique identifier of the data accessor to update.
    #   @return [String]
    #
    # @!attribute [rw] action_configurations
    #   The updated list of action configurations specifying the allowed
    #   actions and any associated filters.
    #   @return [Array<Types::ActionConfiguration>]
    #
    # @!attribute [rw] display_name
    #   The updated friendly name for the data accessor.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UpdateDataAccessorRequest AWS API Documentation
    #
    class UpdateDataAccessorRequest < Struct.new(
      :application_id,
      :data_accessor_id,
      :action_configurations,
      :display_name)
      SENSITIVE = [:display_name]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UpdateDataAccessorResponse AWS API Documentation
    #
    class UpdateDataAccessorResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q Business application the data source
    #   is attached to.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the index attached to the data source connector.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The identifier of the data source connector.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   A name of the data source connector.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   Provides the configuration information for an Amazon Q Business data
    #   source.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] vpc_configuration
    #   Provides configuration information needed to connect to an Amazon
    #   VPC (Virtual Private Cloud).
    #   @return [Types::DataSourceVpcConfiguration]
    #
    # @!attribute [rw] description
    #   The description of the data source connector.
    #   @return [String]
    #
    # @!attribute [rw] sync_schedule
    #   The chosen update frequency for your data source.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role with permission to
    #   access the data source and required resources.
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
    # @!attribute [rw] media_extraction_configuration
    #   The configuration for extracting information from media in documents
    #   for your data source.
    #   @return [Types::MediaExtractionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UpdateDataSourceRequest AWS API Documentation
    #
    class UpdateDataSourceRequest < Struct.new(
      :application_id,
      :index_id,
      :data_source_id,
      :display_name,
      :configuration,
      :vpc_configuration,
      :description,
      :sync_schedule,
      :role_arn,
      :document_enrichment_configuration,
      :media_extraction_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UpdateDataSourceResponse AWS API Documentation
    #
    class UpdateDataSourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q Business application connected to the
    #   index.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the Amazon Q Business index.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of the Amazon Q Business index.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the Amazon Q Business index.
    #   @return [String]
    #
    # @!attribute [rw] capacity_configuration
    #   The storage capacity units you want to provision for your Amazon Q
    #   Business index. You can add and remove capacity to fit your usage
    #   needs.
    #   @return [Types::IndexCapacityConfiguration]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UpdateIndexRequest AWS API Documentation
    #
    class UpdateIndexRequest < Struct.new(
      :application_id,
      :index_id,
      :display_name,
      :description,
      :capacity_configuration,
      :document_attribute_configurations)
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
    # @!attribute [rw] plugin_id
    #   The identifier of the plugin.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of the plugin.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The status of the plugin.
    #   @return [String]
    #
    # @!attribute [rw] server_url
    #   The source URL used for plugin configuration.
    #   @return [String]
    #
    # @!attribute [rw] custom_plugin_configuration
    #   The configuration for a custom plugin.
    #   @return [Types::CustomPluginConfiguration]
    #
    # @!attribute [rw] auth_configuration
    #   The authentication configuration the plugin is using.
    #   @return [Types::PluginAuthConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UpdatePluginRequest AWS API Documentation
    #
    class UpdatePluginRequest < Struct.new(
      :application_id,
      :plugin_id,
      :display_name,
      :state,
      :server_url,
      :custom_plugin_configuration,
      :auth_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UpdatePluginResponse AWS API Documentation
    #
    class UpdatePluginResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_id
    #   The identifier of your Amazon Q Business application.
    #   @return [String]
    #
    # @!attribute [rw] retriever_id
    #   The identifier of your retriever.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   Provides information on how the retriever used for your Amazon Q
    #   Business application is configured.
    #   @return [Types::RetrieverConfiguration]
    #
    # @!attribute [rw] display_name
    #   The name of your retriever.
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
      :retriever_id,
      :configuration,
      :display_name,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UpdateRetrieverResponse AWS API Documentation
    #
    class UpdateRetrieverResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q Business application where the
    #   subscription update should take effect.
    #   @return [String]
    #
    # @!attribute [rw] subscription_id
    #   The identifier of the Amazon Q Business subscription to be updated.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the Amazon Q Business subscription to be updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UpdateSubscriptionRequest AWS API Documentation
    #
    class UpdateSubscriptionRequest < Struct.new(
      :application_id,
      :subscription_id,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscription_arn
    #   The Amazon Resource Name (ARN) of the Amazon Q Business subscription
    #   that was updated.
    #   @return [String]
    #
    # @!attribute [rw] current_subscription
    #   The type of your current Amazon Q Business subscription.
    #   @return [Types::SubscriptionDetails]
    #
    # @!attribute [rw] next_subscription
    #   The type of the Amazon Q Business subscription for the next month.
    #   @return [Types::SubscriptionDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UpdateSubscriptionResponse AWS API Documentation
    #
    class UpdateSubscriptionResponse < Struct.new(
      :subscription_arn,
      :current_subscription,
      :next_subscription)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the application the user is attached to.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The email id attached to the user.
    #   @return [String]
    #
    # @!attribute [rw] user_aliases_to_update
    #   The user aliases attached to the user id that are to be updated.
    #   @return [Array<Types::UserAlias>]
    #
    # @!attribute [rw] user_aliases_to_delete
    #   The user aliases attached to the user id that are to be deleted.
    #   @return [Array<Types::UserAlias>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UpdateUserRequest AWS API Documentation
    #
    class UpdateUserRequest < Struct.new(
      :application_id,
      :user_id,
      :user_aliases_to_update,
      :user_aliases_to_delete)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] user_aliases_added
    #   The user aliases that have been to be added to a user id.
    #   @return [Array<Types::UserAlias>]
    #
    # @!attribute [rw] user_aliases_updated
    #   The user aliases attached to a user id that have been updated.
    #   @return [Array<Types::UserAlias>]
    #
    # @!attribute [rw] user_aliases_deleted
    #   The user aliases that have been deleted from a user id.
    #   @return [Array<Types::UserAlias>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UpdateUserResponse AWS API Documentation
    #
    class UpdateUserResponse < Struct.new(
      :user_aliases_added,
      :user_aliases_updated,
      :user_aliases_deleted)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the Amazon Q Business application attached to the
    #   web experience.
    #   @return [String]
    #
    # @!attribute [rw] web_experience_id
    #   The identifier of the Amazon Q Business web experience.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the role with permission to access
    #   the Amazon Q Business web experience and required resources.
    #   @return [String]
    #
    # @!attribute [rw] authentication_configuration
    #   The authentication configuration of the Amazon Q Business web
    #   experience.
    #   @return [Types::WebExperienceAuthConfiguration]
    #
    # @!attribute [rw] title
    #   The title of the Amazon Q Business web experience.
    #   @return [String]
    #
    # @!attribute [rw] subtitle
    #   The subtitle of the Amazon Q Business web experience.
    #   @return [String]
    #
    # @!attribute [rw] welcome_message
    #   A customized welcome message for an end user in an Amazon Q Business
    #   web experience.
    #   @return [String]
    #
    # @!attribute [rw] sample_prompts_control_mode
    #   Determines whether sample prompts are enabled in the web experience
    #   for an end user.
    #   @return [String]
    #
    # @!attribute [rw] identity_provider_configuration
    #   Information about the identity provider (IdP) used to authenticate
    #   end users of an Amazon Q Business web experience.
    #   @return [Types::IdentityProviderConfiguration]
    #
    # @!attribute [rw] origins
    #   Updates the website domain origins that are allowed to embed the
    #   Amazon Q Business web experience.      The <i>domain origin</i>
    #   refers to the <i>base URL</i> for accessing a website including the
    #   protocol (<code>http/https</code>), the domain name, and the port
    #   number (if specified).</p> <note> <ul> <li> <p>Any values except
    #   <code>null</code> submitted as part of this update will replace all
    #   previous values.</p> </li> <li> <p>You must only submit a <i>base
    #   URL</i> and not a full path. For example,
    #   <code>https://docs.aws.amazon.com</code>.</p> </li> </ul> </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] browser_extension_configuration
    #   The browser extension configuration for an Amazon Q Business web
    #   experience.
    #
    #   <note markdown="1"> For Amazon Q Business application using external OIDC-compliant
    #   identity providers (IdPs). The IdP administrator must add the
    #   browser extension sign-in redirect URLs to the IdP application. For
    #   more information, see [Configure external OIDC identity provider for
    #   your browser extensions.][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/browser-extensions.html
    #   @return [Types::BrowserExtensionConfiguration]
    #
    # @!attribute [rw] customization_configuration
    #   Updates the custom logo, favicon, font, and color used in the Amazon
    #   Q web experience.
    #   @return [Types::CustomizationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UpdateWebExperienceRequest AWS API Documentation
    #
    class UpdateWebExperienceRequest < Struct.new(
      :application_id,
      :web_experience_id,
      :role_arn,
      :authentication_configuration,
      :title,
      :subtitle,
      :welcome_message,
      :sample_prompts_control_mode,
      :identity_provider_configuration,
      :origins,
      :browser_extension_configuration,
      :customization_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UpdateWebExperienceResponse AWS API Documentation
    #
    class UpdateWebExperienceResponse < Aws::EmptyStructure; end

    # Aliases attached to a user id within an Amazon Q Business application.
    #
    # @!attribute [rw] index_id
    #   The identifier of the index that the user aliases are associated
    #   with.
    #   @return [String]
    #
    # @!attribute [rw] data_source_id
    #   The identifier of the data source that the user aliases are
    #   associated with.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The identifier of the user id associated with the user aliases.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UserAlias AWS API Documentation
    #
    class UserAlias < Struct.new(
      :index_id,
      :data_source_id,
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about users and group names associated with a
    # topic control rule.
    #
    # @!attribute [rw] user_ids
    #   The user ids associated with a topic control rule.
    #   @return [Array<String>]
    #
    # @!attribute [rw] user_groups
    #   The user group names associated with a topic control rule.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/UsersAndGroups AWS API Documentation
    #
    class UsersAndGroups < Struct.new(
      :user_ids,
      :user_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input doesn't meet the constraints set by the Amazon Q Business
    # service. Provide the correct input and try again.
    #
    # @!attribute [rw] message
    #   The message describing the `ValidationException`.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the `ValidationException`.
    #   @return [String]
    #
    # @!attribute [rw] fields
    #   The input field(s) that failed validation.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input failed to meet the constraints specified by Amazon Q
    # Business in a specified field.
    #
    # @!attribute [rw] name
    #   The field name where the invalid entry was detected.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message about the validation exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information for an Amazon Q Business web experience.
    #
    # @!attribute [rw] web_experience_id
    #   The identifier of your Amazon Q Business web experience.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The Unix timestamp when the Amazon Q Business application was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The Unix timestamp when your Amazon Q Business web experience was
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] default_endpoint
    #   The endpoint URLs for your Amazon Q Business web experience. The
    #   URLs are unique and fully hosted by Amazon Web Services.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of your Amazon Q Business web experience.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/WebExperience AWS API Documentation
    #
    class WebExperience < Struct.new(
      :web_experience_id,
      :created_at,
      :updated_at,
      :default_endpoint,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the authorization configuration information needed to deploy
    # a Amazon Q Business web experience to end users.
    #
    # @note WebExperienceAuthConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note WebExperienceAuthConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of WebExperienceAuthConfiguration corresponding to the set member.
    #
    # @!attribute [rw] saml_configuration
    #   Provides the SAML 2.0 compliant identity provider (IdP)
    #   configuration information Amazon Q Business needs to deploy a Amazon
    #   Q Business web experience.
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

    # The streaming input for the `Chat` API.
    #
    # EventStream is an Enumerator of Events.
    #  #event_types #=> Array, returns all modeled event types in the stream
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ChatInputStream AWS API Documentation
    #
    class ChatInputStream < Enumerator

      def event_types
        [
          :configuration_event,
          :text_event,
          :attachment_event,
          :action_execution_event,
          :end_of_input_event,
          :auth_challenge_response_event
        ]
      end

    end

    # The streaming output for the `Chat` API.
    #
    # EventStream is an Enumerator of Events.
    #  #event_types #=> Array, returns all modeled event types in the stream
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qbusiness-2023-11-27/ChatOutputStream AWS API Documentation
    #
    class ChatOutputStream < Enumerator

      def event_types
        [
          :text_event,
          :metadata_event,
          :action_review_event,
          :failed_attachment_event,
          :auth_challenge_request_event
        ]
      end

    end

  end
end

