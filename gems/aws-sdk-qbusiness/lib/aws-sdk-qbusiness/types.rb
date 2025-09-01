# frozen_string_literal: true

# This is generated code!

module Aws::QBusiness
  # This module contains the types returned by client operations.
  module Types

    # <p>Contains details about the OpenAPI schema for a custom plugin. For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/custom-plugin.html#plugins-api-schema">custom plugin OpenAPI schemas</a>. You can either include the schema directly in the payload field or you can upload it to an S3 bucket and specify the S3 bucket location in the <code>s3</code> field. </p>
    # @!attribute payload
    #   <p>The JSON or YAML-formatted payload defining the OpenAPI schema for a custom plugin. </p>
    #   @return [String]
    # @!attribute s3
    #   <p>Contains details about the S3 object containing the OpenAPI schema for a custom plugin. The schema could be in either JSON or YAML format.</p>
    #   @return [Types::S3]
    class APISchema < Struct.new(
      :payload,
      :s3,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Payload < APISchema; end
      class S3 < APISchema; end
      class Unknown < APISchema; end
    end

    module APISchemaType
      OPEN_API_V3 = 'OPEN_API_V3'
    end

    # <p>Used to configure access permissions for a document.</p>
    # @!attribute access_controls
    #   <p>A list of <code>AccessControlList</code> objects.</p>
    #   @return [Array<Types::AccessControl>]
    # @!attribute member_relation
    #   <p>Describes the member relation within the <code>AccessControlList</code> object.</p>
    #   @return [String]
    class AccessConfiguration < Struct.new(
      :access_controls,
      :member_relation,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A list of principals. Each principal can be either a <code>USER</code> or a <code>GROUP</code> and can be designated document access permissions of either <code>ALLOW</code> or <code>DENY</code>.</p>
    # @!attribute principals
    #   <p>Contains a list of principals, where a principal can be either a <code>USER</code> or a <code>GROUP</code>. Each principal can be have the following type of document access: <code>ALLOW</code> or <code>DENY</code>.</p>
    #   @return [Array<Types::Principal>]
    # @!attribute member_relation
    #   <p>Describes the member relation within a principal list.</p>
    #   @return [String]
    class AccessControl < Struct.new(
      :principals,
      :member_relation,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> You don't have access to perform this action. Make sure you have the required permission policies and user accounts and try again.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies an allowed action and its associated filter configuration.</p>
    # @!attribute action
    #   <p>The Amazon Q Business action that is allowed.</p>
    #   @return [String]
    # @!attribute filter_configuration
    #   <p>The filter configuration for the action, if any.</p>
    #   @return [Types::ActionFilterConfiguration]
    class ActionConfiguration < Struct.new(
      :action,
      :filter_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Performs an Amazon Q Business plugin action during a non-streaming chat conversation.</p>
    # @!attribute plugin_id
    #   <p>The identifier of the plugin the action is attached to.</p>
    #   @return [String]
    # @!attribute payload
    #   <p>A mapping of field names to the field values in input that an end user provides to Amazon Q Business requests to perform their plugin action. </p>
    #   @return [Hash<String, Types::ActionExecutionPayloadField>]
    # @!attribute payload_field_name_separator
    #   <p>A string used to retain information about the hierarchical contexts within an action execution event payload.</p>
    #   @return [String]
    class ActionExecution < Struct.new(
      :plugin_id,
      :payload,
      :payload_field_name_separator,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A request from an end user signalling an intent to perform an Amazon Q Business plugin action during a streaming chat.</p>
    # @!attribute plugin_id
    #   <p>The identifier of the plugin for which the action is being requested.</p>
    #   @return [String]
    # @!attribute payload
    #   <p>A mapping of field names to the field values in input that an end user provides to Amazon Q Business requests to perform their plugin action. </p>
    #   @return [Hash<String, Types::ActionExecutionPayloadField>]
    # @!attribute payload_field_name_separator
    #   <p>A string used to retain information about the hierarchical contexts within a action execution event payload.</p>
    #   @return [String]
    class ActionExecutionEvent < Struct.new(
      :plugin_id,
      :payload,
      :payload_field_name_separator,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A user input field in an plugin action execution payload.</p>
    # @!attribute value
    #   <p>The content of a user input field in an plugin action execution payload.</p>
    #   @return [JSON]
    class ActionExecutionPayloadField < Struct.new(
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies filters to apply to an allowed action.</p>
    # @!attribute document_attribute_filter
    #   <p>Enables filtering of responses based on document attributes or metadata fields.</p>
    #   @return [Types::AttributeFilter]
    class ActionFilterConfiguration < Struct.new(
      :document_attribute_filter,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ActionPayloadFieldType
      STRING = 'STRING'
      NUMBER = 'NUMBER'
      ARRAY = 'ARRAY'
      BOOLEAN = 'BOOLEAN'
    end

    # <p>An output event that Amazon Q Business returns to an user who wants to perform a plugin action during a non-streaming chat conversation. It contains information about the selected action with a list of possible user input fields, some pre-populated by Amazon Q Business.</p>
    # @!attribute plugin_id
    #   <p>The identifier of the plugin associated with the action review.</p>
    #   @return [String]
    # @!attribute plugin_type
    #   <p>The type of plugin.</p>
    #   @return [String]
    # @!attribute payload
    #   <p>Field values that an end user needs to provide to Amazon Q Business for Amazon Q Business to perform the requested plugin action.</p>
    #   @return [Hash<String, Types::ActionReviewPayloadField>]
    # @!attribute payload_field_name_separator
    #   <p>A string used to retain information about the hierarchical contexts within an action review payload.</p>
    #   @return [String]
    class ActionReview < Struct.new(
      :plugin_id,
      :plugin_type,
      :payload,
      :payload_field_name_separator,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An output event that Amazon Q Business returns to an user who wants to perform a plugin action during a streaming chat conversation. It contains information about the selected action with a list of possible user input fields, some pre-populated by Amazon Q Business. </p>
    # @!attribute conversation_id
    #   <p>The identifier of the conversation with which the action review event is associated.</p>
    #   @return [String]
    # @!attribute user_message_id
    #   <p>The identifier of the conversation with which the plugin action is associated.</p>
    #   @return [String]
    # @!attribute system_message_id
    #   <p>The identifier of an Amazon Q Business AI generated associated with the action review event.</p>
    #   @return [String]
    # @!attribute plugin_id
    #   <p>The identifier of the plugin associated with the action review event.</p>
    #   @return [String]
    # @!attribute plugin_type
    #   <p>The type of plugin.</p>
    #   @return [String]
    # @!attribute payload
    #   <p>Field values that an end user needs to provide to Amazon Q Business for Amazon Q Business to perform the requested plugin action.</p>
    #   @return [Hash<String, Types::ActionReviewPayloadField>]
    # @!attribute payload_field_name_separator
    #   <p>A string used to retain information about the hierarchical contexts within an action review event payload.</p>
    #   @return [String]
    class ActionReviewEvent < Struct.new(
      :conversation_id,
      :user_message_id,
      :system_message_id,
      :plugin_id,
      :plugin_type,
      :payload,
      :payload_field_name_separator,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A user input field in an plugin action review payload.</p>
    # @!attribute display_name
    #   <p> The name of the field. </p>
    #   @return [String]
    # @!attribute display_order
    #   <p>The display order of fields in a payload.</p>
    #   @return [Integer]
    # @!attribute display_description
    #   <p>The field level description of each action review input field. This could be an explanation of the field. In the Amazon Q Business web experience, these descriptions could be used to display as tool tips to help users understand the field. </p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of field. </p>
    #   @return [String]
    # @!attribute value
    #   <p>The field value.</p>
    #   @return [JSON]
    # @!attribute allowed_values
    #   <p>Information about the field values that an end user can use to provide to Amazon Q Business for Amazon Q Business to perform the requested plugin action.</p>
    #   @return [Array<Types::ActionReviewPayloadFieldAllowedValue>]
    # @!attribute allowed_format
    #   <p>The expected data format for the action review input field value. For example, in PTO request, <code>from</code> and <code>to</code> would be of <code>datetime</code> allowed format. </p>
    #   @return [String]
    # @!attribute array_item_json_schema
    #   <p>Use to create a custom form with array fields (fields with nested objects inside an array).</p>
    #   @return [JSON]
    # @!attribute required
    #   <p>Information about whether the field is required.</p>
    #   @return [Boolean]
    class ActionReviewPayloadField < Struct.new(
      :display_name,
      :display_order,
      :display_description,
      :type,
      :value,
      :allowed_values,
      :allowed_format,
      :array_item_json_schema,
      :required,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about the field values that an end user can use to provide to Amazon Q Business for Amazon Q Business to perform the requested plugin action.</p>
    # @!attribute value
    #   <p>The field value.</p>
    #   @return [JSON]
    # @!attribute display_value
    #   <p>The name of the field.</p>
    #   @return [JSON]
    class ActionReviewPayloadFieldAllowedValue < Struct.new(
      :value,
      :display_value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Summary information for an Amazon Q Business plugin action.</p>
    # @!attribute action_identifier
    #   <p>The identifier of an Amazon Q Business plugin action.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name assigned by Amazon Q Business to a plugin action. You can't modify this value.</p>
    #   @return [String]
    # @!attribute instruction_example
    #   <p>An Amazon Q Business suggested prompt and end user can use to invoke a plugin action. This value can be modified and sent as input to initiate an action. For example:</p> <ul> <li> <p>Create a Jira task</p> </li> <li> <p>Create a chat assistant task to find the root cause of a specific incident</p> </li> </ul>
    #   @return [String]
    # @!attribute description
    #   <p>The description of an Amazon Q Business plugin action.</p>
    #   @return [String]
    class ActionSummary < Struct.new(
      :action_identifier,
      :display_name,
      :instruction_example,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Summary information for an Amazon Q Business application.</p>
    # @!attribute display_name
    #   <p>The name of the Amazon Q Business application.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>The identifier for the Amazon Q Business application.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The Unix timestamp when the Amazon Q Business application was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The Unix timestamp when the Amazon Q Business application was last updated. </p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the Amazon Q Business application. The application is ready to use when the status is <code>ACTIVE</code>.</p>
    #   @return [String]
    # @!attribute identity_type
    #   <p>The authentication type being used by a Amazon Q Business application.</p>
    #   @return [String]
    # @!attribute quick_sight_configuration
    #   <p>The Amazon QuickSight configuration for an Amazon Q Business application that uses QuickSight as the identity provider.</p>
    #   @return [Types::QuickSightConfiguration]
    class Application < Struct.new(
      :display_name,
      :application_id,
      :created_at,
      :updated_at,
      :status,
      :identity_type,
      :quick_sight_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ApplicationStatus
      CREATING = 'CREATING'
      ACTIVE = 'ACTIVE'
      DELETING = 'DELETING'
      FAILED = 'FAILED'
      UPDATING = 'UPDATING'
    end

    # <p>Configuration information about the file upload during chat feature for your application.</p>
    # @!attribute attachments_control_mode
    #   <p>Information about whether file upload during chat functionality is activated for your application.</p>
    #   @return [String]
    class AppliedAttachmentsConfiguration < Struct.new(
      :attachments_control_mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The creator mode specific admin controls configured for an Amazon Q Business application. Determines whether an end user can generate LLM-only responses when they use the web experience.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/guardrails.html">Admin controls and guardrails</a> and <a href="https://docs.aws.amazon.com/amazonq/latest/business-use-dg/using-web-experience.html#chat-source-scope">Conversation settings</a>.</p>
    # @!attribute creator_mode_control
    #   <p> Information about whether creator mode is enabled or disabled for an Amazon Q Business application. </p>
    #   @return [String]
    class AppliedCreatorModeConfiguration < Struct.new(
      :creator_mode_control,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The chat orchestration specific admin controls configured for an Amazon Q Business application. Determines whether Amazon Q Business automatically routes chat requests across configured plugins and data sources in your Amazon Q Business application.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/guardrails-global-controls.html#guardrails-global-orchestration">Chat orchestration settings</a>.</p>
    # @!attribute control
    #   <p> Information about whether chat orchestration is enabled or disabled for an Amazon Q Business application. </p>
    #   @return [String]
    class AppliedOrchestrationConfiguration < Struct.new(
      :control,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier of the Amazon Q Business application.</p>
    #   @return [String]
    # @!attribute statement_id
    #   <p>A unique identifier for the policy statement.</p>
    #   @return [String]
    # @!attribute actions
    #   <p>The list of Amazon Q Business actions that the ISV is allowed to perform.</p>
    #   @return [Array<String>]
    # @!attribute conditions
    #   <p>The conditions that restrict when the permission is effective. These conditions can be used to limit the permission based on specific attributes of the request.</p>
    #   @return [Array<Types::PermissionCondition>]
    # @!attribute principal
    #   <p>The Amazon Resource Name of the IAM role for the ISV that is being granted permission.</p>
    #   @return [String]
    class AssociatePermissionRequest < Struct.new(
      :application_id,
      :statement_id,
      :actions,
      :conditions,
      :principal,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute statement
    #   <p>The JSON representation of the added permission statement.</p>
    #   @return [String]
    class AssociatePermissionResponse < Struct.new(
      :statement,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents a group associated with a given user in the access control system.</p>
    # @!attribute name
    #   <p>The name of the group associated with the user. This is used to identify the group in access control decisions.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the associated group. This indicates the scope of the group's applicability.</p>
    #   @return [String]
    class AssociatedGroup < Struct.new(
      :name,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents an associated user in the access control system.</p>
    # @!attribute id
    #   <p>The unique identifier of the associated user. This is used to identify the user in access control decisions.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the associated user. This indicates the scope of the user's association.</p>
    #   @return [String]
    class AssociatedUser < Struct.new(
      :id,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An attachment in an Amazon Q Business conversation.</p>
    # @!attribute attachment_id
    #   <p>The identifier of the Amazon Q Business attachment.</p>
    #   @return [String]
    # @!attribute conversation_id
    #   <p>The identifier of the Amazon Q Business conversation the attachment is associated with.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Filename of the Amazon Q Business attachment.</p>
    #   @return [String]
    # @!attribute copy_from
    #   <p>A CopyFromSource containing a reference to the original source of the Amazon Q Business attachment.</p>
    #   @return [Types::CopyFromSource]
    # @!attribute file_type
    #   <p>Filetype of the Amazon Q Business attachment.</p>
    #   @return [String]
    # @!attribute file_size
    #   <p>Size in bytes of the Amazon Q Business attachment.</p>
    #   @return [Integer]
    # @!attribute md5chksum
    #   <p>MD5 checksum of the Amazon Q Business attachment contents.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The Unix timestamp when the Amazon Q Business attachment was created.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>AttachmentStatus of the Amazon Q Business attachment.</p>
    #   @return [String]
    # @!attribute error
    #   <p>ErrorDetail providing information about a Amazon Q Business attachment error. </p>
    #   @return [Types::ErrorDetail]
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
      :error,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This is either a file directly uploaded into a web experience chat or a reference to an existing attachment that is part of a web experience chat.</p>
    # @!attribute data
    #   <p>The contents of the attachment.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The filename of the attachment.</p>
    #   @return [String]
    # @!attribute copy_from
    #   <p>A reference to an existing attachment.</p>
    #   @return [Types::CopyFromSource]
    class AttachmentInput < Struct.new(
      :data,
      :name,
      :copy_from,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A file input event activated by a end user request to upload files into their web experience chat.</p>
    # @!attribute attachment
    #   <p>This is either a file directly uploaded into a web experience chat or a reference to an existing attachment that is part of a web experience chat.</p>
    #   @return [Types::AttachmentInput]
    class AttachmentInputEvent < Struct.new(
      :attachment,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The details of a file uploaded during chat.</p>
    # @!attribute name
    #   <p>The name of a file uploaded during chat.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of a file uploaded during chat.</p>
    #   @return [String]
    # @!attribute error
    #   <p>An error associated with a file uploaded during chat.</p>
    #   @return [Types::ErrorDetail]
    # @!attribute attachment_id
    #   <p>The unique identifier of the Amazon Q Business attachment.</p>
    #   @return [String]
    # @!attribute conversation_id
    #   <p>The unique identifier of the Amazon Q Business conversation.</p>
    #   @return [String]
    class AttachmentOutput < Struct.new(
      :name,
      :status,
      :error,
      :attachment_id,
      :conversation_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AttachmentStatus
      FAILED = 'FAILED'
      SUCCESS = 'SUCCESS'
    end

    # <p>Configuration information for the file upload during chat feature.</p>
    # @!attribute attachments_control_mode
    #   <p>Status information about whether file upload functionality is activated or deactivated for your end user.</p>
    #   @return [String]
    class AttachmentsConfiguration < Struct.new(
      :attachments_control_mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AttachmentsControlMode
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # <p>Enables filtering of responses based on document attributes or metadata fields.</p>
    # @!attribute and_all_filters
    #   <p>Performs a logical <code>AND</code> operation on all supplied filters.</p>
    #   @return [Array<Types::AttributeFilter>]
    # @!attribute or_all_filters
    #   <p> Performs a logical <code>OR</code> operation on all supplied filters. </p>
    #   @return [Array<Types::AttributeFilter>]
    # @!attribute not_filter
    #   <p>Performs a logical <code>NOT</code> operation on all supplied filters. </p>
    #   @return [Types::AttributeFilter]
    # @!attribute equals_to
    #   <p>Performs an equals operation on two document attributes or metadata fields. Supported for the following <a href="https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeValue.html">document attribute value types</a>: <code>dateValue</code>, <code>longValue</code>, <code>stringListValue</code> and <code>stringValue</code>.</p>
    #   @return [Types::DocumentAttribute]
    # @!attribute contains_all
    #   <p>Returns <code>true</code> when a document contains all the specified document attributes or metadata fields. Supported for the following <a href="https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeValue.html">document attribute value types</a>: <code>stringListValue</code>.</p>
    #   @return [Types::DocumentAttribute]
    # @!attribute contains_any
    #   <p>Returns <code>true</code> when a document contains any of the specified document attributes or metadata fields. Supported for the following <a href="https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeValue.html">document attribute value types</a>: <code>stringListValue</code>.</p>
    #   @return [Types::DocumentAttribute]
    # @!attribute greater_than
    #   <p>Performs a greater than operation on two document attributes or metadata fields. Supported for the following <a href="https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeValue.html">document attribute value types</a>: <code>dateValue</code> and <code>longValue</code>.</p>
    #   @return [Types::DocumentAttribute]
    # @!attribute greater_than_or_equals
    #   <p>Performs a greater or equals than operation on two document attributes or metadata fields. Supported for the following <a href="https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeValue.html">document attribute value types</a>: <code>dateValue</code> and <code>longValue</code>. </p>
    #   @return [Types::DocumentAttribute]
    # @!attribute less_than
    #   <p>Performs a less than operation on two document attributes or metadata fields. Supported for the following <a href="https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeValue.html">document attribute value types</a>: <code>dateValue</code> and <code>longValue</code>.</p>
    #   @return [Types::DocumentAttribute]
    # @!attribute less_than_or_equals
    #   <p>Performs a less than or equals operation on two document attributes or metadata fields.Supported for the following <a href="https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeValue.html">document attribute value type</a>: <code>dateValue</code> and <code>longValue</code>. </p>
    #   @return [Types::DocumentAttribute]
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
      :less_than_or_equals,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AttributeType
      STRING = 'STRING'
      STRING_LIST = 'STRING_LIST'
      NUMBER = 'NUMBER'
      DATE = 'DATE'
    end

    module AttributeValueOperator
      DELETE = 'DELETE'
    end

    # <p>Configuration settings for audio content extraction and processing.</p>
    # @!attribute audio_extraction_status
    #   <p>The status of audio extraction (ENABLED or DISABLED) for processing audio content from files.</p>
    #   @return [String]
    class AudioExtractionConfiguration < Struct.new(
      :audio_extraction_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AudioExtractionStatus
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    module AudioExtractionType
      TRANSCRIPT = 'TRANSCRIPT'
      SUMMARY = 'SUMMARY'
    end

    # <p>Details about an audio source, including its identifier, format, and time information.</p>
    # @!attribute media_id
    #   <p>Unique identifier for the audio media file.</p>
    #   @return [String]
    # @!attribute media_mime_type
    #   <p>The MIME type of the audio file (e.g., audio/mp3, audio/wav).</p>
    #   @return [String]
    # @!attribute start_time_milliseconds
    #   <p>The starting timestamp in milliseconds for the relevant audio segment.</p>
    #   @return [Integer]
    # @!attribute end_time_milliseconds
    #   <p>The ending timestamp in milliseconds for the relevant audio segment.</p>
    #   @return [Integer]
    # @!attribute audio_extraction_type
    #   <p>The type of audio extraction performed on the content.</p>
    #   @return [String]
    class AudioSourceDetails < Struct.new(
      :media_id,
      :media_mime_type,
      :start_time_milliseconds,
      :end_time_milliseconds,
      :audio_extraction_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A request made by Amazon Q Business to a third paty authentication server to authenticate a custom plugin user.</p>
    # @!attribute authorization_url
    #   <p>The URL sent by Amazon Q Business to the third party authentication server to authenticate a custom plugin user through an OAuth protocol.</p>
    #   @return [String]
    class AuthChallengeRequest < Struct.new(
      :authorization_url,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An authentication verification event activated by an end user request to use a custom plugin.</p>
    # @!attribute authorization_url
    #   <p>The URL sent by Amazon Q Business to a third party authentication server in response to an authentication verification event activated by an end user request to use a custom plugin. </p>
    #   @return [String]
    class AuthChallengeRequestEvent < Struct.new(
      :authorization_url,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains details of the authentication information received from a third party authentication server in response to an authentication challenge.</p>
    # @!attribute response_map
    #   <p>The mapping of key-value pairs in an authentication challenge response.</p>
    #   @return [Hash<String, String>]
    class AuthChallengeResponse < Struct.new(
      :response_map,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An authentication verification event response by a third party authentication server to Amazon Q Business.</p>
    # @!attribute response_map
    #   <p>The mapping of key-value pairs in an authentication challenge response.</p>
    #   @return [Hash<String, String>]
    class AuthChallengeResponseEvent < Struct.new(
      :response_map,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Subscription configuration information for an Amazon Q Business application using IAM identity federation for user management. </p>
    # @!attribute auto_subscribe
    #   <p>Describes whether automatic subscriptions are enabled for an Amazon Q Business application using IAM identity federation for user management.</p>
    #   @return [String]
    # @!attribute default_subscription_type
    #   <p>Describes the default subscription type assigned to an Amazon Q Business application using IAM identity federation for user management. If the value for <code>autoSubscribe</code> is set to <code>ENABLED</code> you must select a value for this field.</p>
    #   @return [String]
    class AutoSubscriptionConfiguration < Struct.new(
      :auto_subscribe,
      :default_subscription_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AutoSubscriptionStatus
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # <p>Information about the basic authentication credentials used to configure a plugin.</p>
    # @!attribute secret_arn
    #   <p>The ARN of the Secrets Manager secret that stores the basic authentication credentials used for plugin configuration..</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of an IAM role used by Amazon Q Business to access the basic authentication credentials stored in a Secrets Manager secret.</p>
    #   @return [String]
    class BasicAuthConfiguration < Struct.new(
      :secret_arn,
      :role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the Amazon Q Business application.</p>
    #   @return [String]
    # @!attribute index_id
    #   <p>The identifier of the Amazon Q Business index that contains the documents to delete.</p>
    #   @return [String]
    # @!attribute documents
    #   <p>Documents deleted from the Amazon Q Business index.</p>
    #   @return [Array<Types::DeleteDocument>]
    # @!attribute data_source_sync_id
    #   <p>The identifier of the data source sync during which the documents were deleted.</p>
    #   @return [String]
    class BatchDeleteDocumentRequest < Struct.new(
      :application_id,
      :index_id,
      :documents,
      :data_source_sync_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute failed_documents
    #   <p>A list of documents that couldn't be removed from the Amazon Q Business index. Each entry contains an error message that indicates why the document couldn't be removed from the index. </p>
    #   @return [Array<Types::FailedDocument>]
    class BatchDeleteDocumentResponse < Struct.new(
      :failed_documents,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the Amazon Q Business application.</p>
    #   @return [String]
    # @!attribute index_id
    #   <p>The identifier of the Amazon Q Business index to add the documents to. </p>
    #   @return [String]
    # @!attribute documents
    #   <p>One or more documents to add to the index.</p>
    #   @return [Array<Types::Document>]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role with permission to access your S3 bucket.</p>
    #   @return [String]
    # @!attribute data_source_sync_id
    #   <p>The identifier of the data source sync during which the documents were added.</p>
    #   @return [String]
    class BatchPutDocumentRequest < Struct.new(
      :application_id,
      :index_id,
      :documents,
      :role_arn,
      :data_source_sync_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute failed_documents
    #   <p> A list of documents that were not added to the Amazon Q Business index because the document failed a validation check. Each document contains an error message that indicates why the document couldn't be added to the index. </p>
    #   @return [Array<Types::FailedDocument>]
    class BatchPutDocumentResponse < Struct.new(
      :failed_documents,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information about the phrases blocked from chat by your chat control configuration.</p>
    # @!attribute blocked_phrases
    #   <p>A list of phrases blocked from a Amazon Q Business web experience chat.</p>
    #   @return [Array<String>]
    # @!attribute system_message_override
    #   <p>The configured custom message displayed to an end user informing them that they've used a blocked phrase during chat.</p>
    #   @return [String]
    class BlockedPhrasesConfiguration < Struct.new(
      :blocked_phrases,
      :system_message_override,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Updates a blocked phrases configuration in your Amazon Q Business application.</p>
    # @!attribute blocked_phrases_to_create_or_update
    #   <p>Creates or updates a blocked phrases configuration in your Amazon Q Business application.</p>
    #   @return [Array<String>]
    # @!attribute blocked_phrases_to_delete
    #   <p>Deletes a blocked phrases configuration in your Amazon Q Business application.</p>
    #   @return [Array<String>]
    # @!attribute system_message_override
    #   <p>The configured custom message displayed to your end user when they use blocked phrase during chat.</p>
    #   @return [String]
    class BlockedPhrasesConfigurationUpdate < Struct.new(
      :blocked_phrases_to_create_or_update,
      :blocked_phrases_to_delete,
      :system_message_override,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The container for browser extension configuration for an Amazon Q Business web experience.</p>
    # @!attribute enabled_browser_extensions
    #   <p>Specify the browser extensions allowed for your Amazon Q web experience.</p> <ul> <li> <p> <code>CHROME</code> — Enables the extension for Chromium-based browsers (Google Chrome, Microsoft Edge, Opera, etc.).</p> </li> <li> <p> <code>FIREFOX</code> — Enables the extension for Mozilla Firefox.</p> </li> <li> <p> <code>CHROME</code> and <code>FIREFOX</code> — Enable the extension for Chromium-based browsers and Mozilla Firefox.</p> </li> </ul>
    #   @return [Array<String>]
    class BrowserExtensionConfiguration < Struct.new(
      :enabled_browser_extensions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the Amazon Q Business application for which the subscription is being cancelled.</p>
    #   @return [String]
    # @!attribute subscription_id
    #   <p>The identifier of the Amazon Q Business subscription being cancelled.</p>
    #   @return [String]
    class CancelSubscriptionRequest < Struct.new(
      :application_id,
      :subscription_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute subscription_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Q Business subscription being cancelled.</p>
    #   @return [String]
    # @!attribute current_subscription
    #   <p>The type of your current Amazon Q Business subscription.</p>
    #   @return [Types::SubscriptionDetails]
    # @!attribute next_subscription
    #   <p>The type of the Amazon Q Business subscription for the next month.</p>
    #   @return [Types::SubscriptionDetails]
    class CancelSubscriptionResponse < Struct.new(
      :subscription_arn,
      :current_subscription,
      :next_subscription,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the Amazon Q Business application linked to a streaming Amazon Q Business conversation.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The identifier of the user attached to the chat input. </p>
    #   @return [String]
    # @!attribute user_groups
    #   <p>The group names that a user associated with the chat input belongs to.</p>
    #   @return [Array<String>]
    # @!attribute conversation_id
    #   <p>The identifier of the Amazon Q Business conversation.</p>
    #   @return [String]
    # @!attribute parent_message_id
    #   <p>The identifier used to associate a user message with a AI generated response.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A token that you provide to identify the chat input.</p>
    #   @return [String]
    # @!attribute input_stream
    #   <p>The streaming input for the <code>Chat</code> API.</p>
    #   @return [Types::ChatInputStream]
    class ChatInput < Struct.new(
      :application_id,
      :user_id,
      :user_groups,
      :conversation_id,
      :parent_message_id,
      :client_token,
      :input_stream,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The streaming input for the <code>Chat</code> API.</p>
    # @!attribute configuration_event
    #   <p>A configuration event activated by an end user request to select a specific chat mode.</p>
    #   @return [Types::ConfigurationEvent]
    # @!attribute text_event
    #   <p>Information about the payload of the <code>ChatInputStream</code> event containing the end user message input.</p>
    #   @return [Types::TextInputEvent]
    # @!attribute attachment_event
    #   <p>A request by an end user to upload a file during chat.</p>
    #   @return [Types::AttachmentInputEvent]
    # @!attribute action_execution_event
    #   <p>A request from an end user to perform an Amazon Q Business plugin action.</p>
    #   @return [Types::ActionExecutionEvent]
    # @!attribute end_of_input_event
    #   <p>The end of the streaming input for the <code>Chat</code> API.</p>
    #   @return [Types::EndOfInputEvent]
    # @!attribute auth_challenge_response_event
    #   <p>An authentication verification event response by a third party authentication server to Amazon Q Business.</p>
    #   @return [Types::AuthChallengeResponseEvent]
    class ChatInputStream < Struct.new(
      :configuration_event,
      :text_event,
      :attachment_event,
      :action_execution_event,
      :end_of_input_event,
      :auth_challenge_response_event,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class ConfigurationEvent < ChatInputStream; end
      class TextEvent < ChatInputStream; end
      class AttachmentEvent < ChatInputStream; end
      class ActionExecutionEvent < ChatInputStream; end
      class EndOfInputEvent < ChatInputStream; end
      class AuthChallengeResponseEvent < ChatInputStream; end
      class Unknown < ChatInputStream; end
    end

    module ChatMode
      RETRIEVAL_MODE = 'RETRIEVAL_MODE'
      CREATOR_MODE = 'CREATOR_MODE'
      PLUGIN_MODE = 'PLUGIN_MODE'
    end

    # <p>Configuration information for Amazon Q Business conversation modes.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/guardrails.html">Admin controls and guardrails</a> and <a href="https://docs.aws.amazon.com/amazonq/latest/business-use-dg/using-web-experience.html#chat-source-scope">Conversation settings</a>.</p>
    # @!attribute plugin_configuration
    #   <p>Configuration information required to invoke chat in <code>PLUGIN_MODE</code>.</p>
    #   @return [Types::PluginConfiguration]
    class ChatModeConfiguration < Struct.new(
      :plugin_configuration,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class PluginConfiguration < ChatModeConfiguration; end
      class Unknown < ChatModeConfiguration; end
    end

    # @!attribute output_stream
    #   <p>The streaming output for the <code>Chat</code> API.</p>
    #   @return [Types::ChatOutputStream]
    class ChatOutput < Struct.new(
      :output_stream,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The streaming output for the <code>Chat</code> API.</p>
    # @!attribute text_event
    #   <p>Information about the payload of the <code>ChatOutputStream</code> event containing the AI-generated message output.</p>
    #   @return [Types::TextOutputEvent]
    # @!attribute metadata_event
    #   <p>A metadata event for a AI-generated text output message in a Amazon Q Business conversation. </p>
    #   @return [Types::MetadataEvent]
    # @!attribute action_review_event
    #   <p>A request from Amazon Q Business to the end user for information Amazon Q Business needs to successfully complete a requested plugin action.</p>
    #   @return [Types::ActionReviewEvent]
    # @!attribute failed_attachment_event
    #   <p>A failed file upload event during a web experience chat.</p>
    #   @return [Types::FailedAttachmentEvent]
    # @!attribute auth_challenge_request_event
    #   <p>An authentication verification event activated by an end user request to use a custom plugin.</p>
    #   @return [Types::AuthChallengeRequestEvent]
    class ChatOutputStream < Struct.new(
      :text_event,
      :metadata_event,
      :action_review_event,
      :failed_attachment_event,
      :auth_challenge_request_event,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class TextEvent < ChatOutputStream; end
      class MetadataEvent < ChatOutputStream; end
      class ActionReviewEvent < ChatOutputStream; end
      class FailedAttachmentEvent < ChatOutputStream; end
      class AuthChallengeRequestEvent < ChatOutputStream; end
      class Unknown < ChatOutputStream; end
    end

    # <p>Configuration details that define how Amazon Q Business generates and formats responses to user queries in chat interactions. This configuration allows administrators to customize response characteristics to meet specific organizational needs and communication standards.</p>
    # @!attribute chat_response_configuration_id
    #   <p>A unique identifier for your chat response configuration settings, used to reference and manage the configuration within the Amazon Q Business service.</p>
    #   @return [String]
    # @!attribute chat_response_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the chat response configuration, which uniquely identifies the resource across all Amazon Web Services services and accounts.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>A human-readable name for the chat response configuration, making it easier to identify and manage multiple configurations within an organization.</p>
    #   @return [String]
    # @!attribute response_configuration_summary
    #   <p>A summary of the response configuration settings, providing a concise overview of the key parameters that define how responses are generated and formatted.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the chat response configuration, indicating whether it is active, pending, or in another state that affects its availability for use in chat interactions.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp indicating when the chat response configuration was initially created, useful for tracking the lifecycle of configuration resources.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp indicating when the chat response configuration was last modified, helping administrators track changes and maintain version awareness.</p>
    #   @return [Time]
    class ChatResponseConfiguration < Struct.new(
      :chat_response_configuration_id,
      :chat_response_configuration_arn,
      :display_name,
      :response_configuration_summary,
      :status,
      :created_at,
      :updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Detailed information about a chat response configuration, including comprehensive settings and parameters that define how Amazon Q Business generates and formats responses.</p>
    # @!attribute response_configurations
    #   <p>A collection of specific response configuration settings that collectively define how responses are generated, formatted, and presented to users in chat interactions.</p>
    #   @return [Hash<String, Types::ResponseConfiguration>]
    # @!attribute response_configuration_summary
    #   <p>A summary of the response configuration details, providing a concise overview of the key parameters and settings that define the response generation behavior.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the chat response configuration, indicating whether it is active, pending, or in another state that affects its availability for use.</p>
    #   @return [String]
    # @!attribute error
    #   <p>Provides information about a Amazon Q Business request error.</p>
    #   @return [Types::ErrorDetail]
    # @!attribute updated_at
    #   <p>The timestamp indicating when the detailed chat response configuration was last modified, helping administrators track changes and maintain version awareness.</p>
    #   @return [Time]
    class ChatResponseConfigurationDetail < Struct.new(
      :response_configurations,
      :response_configuration_summary,
      :status,
      :error,
      :updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ChatResponseConfigurationStatus
      CREATING = 'CREATING'
      UPDATING = 'UPDATING'
      FAILED = 'FAILED'
      ACTIVE = 'ACTIVE'
    end

    # @!attribute application_id
    #   <p>The identifier of the Amazon Q Business application linked to the Amazon Q Business conversation.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The identifier of the user attached to the chat input.</p>
    #   @return [String]
    # @!attribute user_groups
    #   <p>The group names that a user associated with the chat input belongs to.</p>
    #   @return [Array<String>]
    # @!attribute user_message
    #   <p>A end user message in a conversation.</p>
    #   @return [String]
    # @!attribute attachments
    #   <p>A list of files uploaded directly during chat. You can upload a maximum of 5 files of upto 10 MB each.</p>
    #   @return [Array<Types::AttachmentInput>]
    # @!attribute action_execution
    #   <p>A request from an end user to perform an Amazon Q Business plugin action.</p>
    #   @return [Types::ActionExecution]
    # @!attribute auth_challenge_response
    #   <p>An authentication verification event response by a third party authentication server to Amazon Q Business.</p>
    #   @return [Types::AuthChallengeResponse]
    # @!attribute conversation_id
    #   <p>The identifier of the Amazon Q Business conversation.</p>
    #   @return [String]
    # @!attribute parent_message_id
    #   <p>The identifier of the previous system message in a conversation.</p>
    #   @return [String]
    # @!attribute attribute_filter
    #   <p>Enables filtering of Amazon Q Business web experience responses based on document attributes or metadata fields.</p>
    #   @return [Types::AttributeFilter]
    # @!attribute chat_mode
    #   <p>The <code>chatMode</code> parameter determines the chat modes available to Amazon Q Business users:</p> <ul> <li> <p> <code>RETRIEVAL_MODE</code> - If you choose this mode, Amazon Q generates responses solely from the data sources connected and indexed by the application. If an answer is not found in the data sources or there are no data sources available, Amazon Q will respond with a "<i>No Answer Found</i>" message, unless LLM knowledge has been enabled. In that case, Amazon Q will generate a response from the LLM knowledge</p> </li> <li> <p> <code>CREATOR_MODE</code> - By selecting this mode, you can choose to generate responses only from the LLM knowledge. You can also attach files and have Amazon Q generate a response based on the data in those files. If the attached files do not contain an answer for the query, Amazon Q will automatically fall back to generating a response from the LLM knowledge.</p> </li> <li> <p> <code>PLUGIN_MODE</code> - By selecting this mode, users can choose to use plugins in chat to get their responses.</p> </li> </ul> <note> <p>If none of the modes are selected, Amazon Q will only respond using the information from the attached files.</p> </note> <p>For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/guardrails.html">Admin controls and guardrails</a>, <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/plugins.html">Plugins</a>, and <a href="https://docs.aws.amazon.com/amazonq/latest/business-use-dg/using-web-experience.html#chat-source-scope">Response sources</a>.</p>
    #   @return [String]
    # @!attribute chat_mode_configuration
    #   <p>The chat mode configuration for an Amazon Q Business application.</p>
    #   @return [Types::ChatModeConfiguration]
    # @!attribute client_token
    #   <p>A token that you provide to identify a chat request.</p>
    #   @return [String]
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
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute conversation_id
    #   <p>The identifier of the Amazon Q Business conversation.</p>
    #   @return [String]
    # @!attribute system_message
    #   <p>An AI-generated message in a conversation.</p>
    #   @return [String]
    # @!attribute system_message_id
    #   <p>The identifier of an Amazon Q Business AI generated message within the conversation.</p>
    #   @return [String]
    # @!attribute user_message_id
    #   <p>The identifier of an Amazon Q Business end user text input message within the conversation.</p>
    #   @return [String]
    # @!attribute action_review
    #   <p>A request from Amazon Q Business to the end user for information Amazon Q Business needs to successfully complete a requested plugin action.</p>
    #   @return [Types::ActionReview]
    # @!attribute auth_challenge_request
    #   <p>An authentication verification event activated by an end user request to use a custom plugin.</p>
    #   @return [Types::AuthChallengeRequest]
    # @!attribute source_attributions
    #   <p>The source documents used to generate the conversation response.</p>
    #   @return [Array<Types::SourceAttribution>]
    # @!attribute failed_attachments
    #   <p>A list of files which failed to upload during chat.</p>
    #   @return [Array<Types::AttachmentOutput>]
    class ChatSyncOutput < Struct.new(
      :conversation_id,
      :system_message,
      :system_message_id,
      :user_message_id,
      :action_review,
      :auth_challenge_request,
      :source_attributions,
      :failed_attachments,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier of the application. This is required to identify the specific Amazon Q Business application context for the document access check.</p>
    #   @return [String]
    # @!attribute index_id
    #   <p>The unique identifier of the index. Used to locate the correct index within the application where the document is stored.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The unique identifier of the user. Used to check the access permissions for this specific user against the document's ACL.</p>
    #   @return [String]
    # @!attribute document_id
    #   <p>The unique identifier of the document. Specifies which document's access permissions are being checked.</p>
    #   @return [String]
    # @!attribute data_source_id
    #   <p>The unique identifier of the data source. Identifies the specific data source from which the document originates. Should not be used when a document is uploaded directly with BatchPutDocument, as no dataSourceId is available or necessary. </p>
    #   @return [String]
    class CheckDocumentAccessRequest < Struct.new(
      :application_id,
      :index_id,
      :user_id,
      :document_id,
      :data_source_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_groups
    #   <p>An array of groups the user is part of for the specified data source. Each group has a name and type.</p>
    #   @return [Array<Types::AssociatedGroup>]
    # @!attribute user_aliases
    #   <p>An array of aliases associated with the user. This includes both global and local aliases, each with a name and type.</p>
    #   @return [Array<Types::AssociatedUser>]
    # @!attribute has_access
    #   <p>A boolean value indicating whether the specified user has access to the document, either direct access or transitive access via groups and aliases attached to the document.</p>
    #   @return [Boolean]
    # @!attribute document_acl
    #   <p>The Access Control List (ACL) associated with the document. Includes allowlist and denylist conditions that determine user access.</p>
    #   @return [Types::DocumentAcl]
    class CheckDocumentAccessResponse < Struct.new(
      :user_groups,
      :user_aliases,
      :has_access,
      :document_acl,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A configuration event activated by an end user request to select a specific chat mode.</p>
    # @!attribute chat_mode
    #   <p>The chat modes available to an Amazon Q Business end user.</p> <ul> <li> <p> <code>RETRIEVAL_MODE</code> - The default chat mode for an Amazon Q Business application. When this mode is enabled, Amazon Q Business generates responses only from data sources connected to an Amazon Q Business application.</p> </li> <li> <p> <code>CREATOR_MODE</code> - By selecting this mode, users can choose to generate responses only from the LLM knowledge, without consulting connected data sources, for a chat request.</p> </li> <li> <p> <code>PLUGIN_MODE</code> - By selecting this mode, users can choose to use plugins in chat.</p> </li> </ul> <p>For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/guardrails.html">Admin controls and guardrails</a>, <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/plugins.html">Plugins</a>, and <a href="https://docs.aws.amazon.com/amazonq/latest/business-use-dg/using-web-experience.html#chat-source-scope">Conversation settings</a>.</p>
    #   @return [String]
    # @!attribute chat_mode_configuration
    #   <p>Configuration information for Amazon Q Business conversation modes.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/guardrails.html">Admin controls and guardrails</a> and <a href="https://docs.aws.amazon.com/amazonq/latest/business-use-dg/using-web-experience.html#chat-source-scope">Conversation settings</a>.</p>
    #   @return [Types::ChatModeConfiguration]
    # @!attribute attribute_filter
    #   <p>Enables filtering of responses based on document attributes or metadata fields.</p>
    #   @return [Types::AttributeFilter]
    class ConfigurationEvent < Struct.new(
      :chat_mode,
      :chat_mode_configuration,
      :attribute_filter,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You are trying to perform an action that conflicts with the current status of your resource. Fix any inconsistencies with your resources and try again.</p>
    # @!attribute message
    #   <p>The message describing a <code>ConflictException</code>.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource affected.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource affected.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A rule for configuring how Amazon Q Business responds when it encounters a a blocked topic. You can configure a custom message to inform your end users that they have asked about a restricted topic and suggest any next steps they should take.</p>
    # @!attribute system_message_override
    #   <p>The configured custom message displayed to an end user informing them that they've used a blocked phrase during chat.</p>
    #   @return [String]
    class ContentBlockerRule < Struct.new(
      :system_message_override,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Rules for retrieving content from data sources connected to a Amazon Q Business application for a specific topic control configuration.</p>
    # @!attribute eligible_data_sources
    #   <p>Specifies data sources in a Amazon Q Business application to use for content generation.</p>
    #   @return [Array<Types::EligibleDataSource>]
    class ContentRetrievalRule < Struct.new(
      :eligible_data_sources,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the source of content to search in.</p>
    # @!attribute retriever
    #   <p>The retriever to use as the content source.</p>
    #   @return [Types::RetrieverContentSource]
    class ContentSource < Struct.new(
      :retriever,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Retriever < ContentSource; end
      class Unknown < ContentSource; end
    end

    module ContentType
      PDF = 'PDF'
      HTML = 'HTML'
      MS_WORD = 'MS_WORD'
      PLAIN_TEXT = 'PLAIN_TEXT'
      PPT = 'PPT'
      RTF = 'RTF'
      XML = 'XML'
      XSLT = 'XSLT'
      MS_EXCEL = 'MS_EXCEL'
      CSV = 'CSV'
      JSON = 'JSON'
      MD = 'MD'
    end

    # <p>A conversation in an Amazon Q Business application.</p>
    # @!attribute conversation_id
    #   <p>The identifier of the Amazon Q Business conversation.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the conversation.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The start time of the conversation.</p>
    #   @return [Time]
    class Conversation < Struct.new(
      :conversation_id,
      :title,
      :start_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The source reference for an existing attachment in an existing conversation.</p>
    # @!attribute conversation_id
    #   <p>The unique identifier of the Amazon Q Business conversation.</p>
    #   @return [String]
    # @!attribute attachment_id
    #   <p>The unique identifier of the Amazon Q Business attachment.</p>
    #   @return [String]
    class ConversationSource < Struct.new(
      :conversation_id,
      :attachment_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The source reference for an existing attachment.</p>
    # @!attribute conversation
    #   <p>A reference to an attachment in an existing conversation.</p>
    #   @return [Types::ConversationSource]
    class CopyFromSource < Struct.new(
      :conversation,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Conversation < CopyFromSource; end
      class Unknown < CopyFromSource; end
    end

    # @!attribute application_id
    #   <p>The identifier of the Amazon Q Business application environment attached to the web experience.</p>
    #   @return [String]
    # @!attribute web_experience_id
    #   <p>The identifier of the web experience.</p>
    #   @return [String]
    # @!attribute session_duration_in_minutes
    #   <p>The duration of the session associated with the unique URL for the web experience.</p>
    #   @return [Integer]
    class CreateAnonymousWebExperienceUrlRequest < Struct.new(
      :application_id,
      :web_experience_id,
      :session_duration_in_minutes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute anonymous_url
    #   <p>The unique URL for accessing the web experience.</p> <important> <p>This URL can only be used once and must be used within 5 minutes after it's generated.</p> </important>
    #   @return [String]
    class CreateAnonymousWebExperienceUrlResponse < Struct.new(
      :anonymous_url,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute display_name
    #   <p>A name for the Amazon Q Business application. </p>
    #   @return [String]
    # @!attribute role_arn
    #   <p> The Amazon Resource Name (ARN) of an IAM role with permissions to access your Amazon CloudWatch logs and metrics. If this property is not specified, Amazon Q Business will create a <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/using-service-linked-roles.html#slr-permissions">service linked role (SLR)</a> and use it as the application's role.</p>
    #   @return [String]
    # @!attribute identity_type
    #   <p>The authentication type being used by a Amazon Q Business application.</p>
    #   @return [String]
    # @!attribute iam_identity_provider_arn
    #   <p>The Amazon Resource Name (ARN) of an identity provider being used by an Amazon Q Business application.</p>
    #   @return [String]
    # @!attribute identity_center_instance_arn
    #   <p> The Amazon Resource Name (ARN) of the IAM Identity Center instance you are either creating for—or connecting to—your Amazon Q Business application.</p>
    #   @return [String]
    # @!attribute client_ids_for_oidc
    #   <p>The OIDC client ID for a Amazon Q Business application.</p>
    #   @return [Array<String>]
    # @!attribute description
    #   <p>A description for the Amazon Q Business application. </p>
    #   @return [String]
    # @!attribute encryption_configuration
    #   <p>The identifier of the KMS key that is used to encrypt your data. Amazon Q Business doesn't support asymmetric keys.</p>
    #   @return [Types::EncryptionConfiguration]
    # @!attribute tags
    #   <p>A list of key-value pairs that identify or categorize your Amazon Q Business application. You can also use tags to help control access to the application. Tag keys and values can consist of Unicode letters, digits, white space, and any of the following symbols: _ . : / = + - @.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_token
    #   <p>A token that you provide to identify the request to create your Amazon Q Business application.</p>
    #   @return [String]
    # @!attribute attachments_configuration
    #   <p>An option to allow end users to upload files directly during chat.</p>
    #   @return [Types::AttachmentsConfiguration]
    # @!attribute q_apps_configuration
    #   <p>An option to allow end users to create and use Amazon Q Apps in the web experience.</p>
    #   @return [Types::QAppsConfiguration]
    # @!attribute personalization_configuration
    #   <p>Configuration information about chat response personalization. For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/personalizing-chat-responses.html">Personalizing chat responses</a> </p>
    #   @return [Types::PersonalizationConfiguration]
    # @!attribute quick_sight_configuration
    #   <p>The Amazon QuickSight configuration for an Amazon Q Business application that uses QuickSight for authentication. This configuration is required if your application uses QuickSight as the identity provider. For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/create-quicksight-integrated-application.html">Creating an Amazon QuickSight integrated application</a>.</p>
    #   @return [Types::QuickSightConfiguration]
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
      :quick_sight_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the Amazon Q Business application.</p>
    #   @return [String]
    # @!attribute application_arn
    #   <p> The Amazon Resource Name (ARN) of the Amazon Q Business application. </p>
    #   @return [String]
    class CreateApplicationResponse < Struct.new(
      :application_id,
      :application_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier of the Amazon Q Business application for which to create the new chat response configuration.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>A human-readable name for the new chat response configuration, making it easier to identify and manage among multiple configurations.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request. This helps prevent the same configuration from being created multiple times if retries occur.</p>
    #   @return [String]
    # @!attribute response_configurations
    #   <p>A collection of response configuration settings that define how Amazon Q Business will generate and format responses to user queries in chat interactions.</p>
    #   @return [Hash<String, Types::ResponseConfiguration>]
    # @!attribute tags
    #   <p>A list of key-value pairs to apply as tags to the new chat response configuration, enabling categorization and management of resources across Amazon Web Services services.</p>
    #   @return [Array<Types::Tag>]
    class CreateChatResponseConfigurationRequest < Struct.new(
      :application_id,
      :display_name,
      :client_token,
      :response_configurations,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute chat_response_configuration_id
    #   <p>The unique identifier assigned to a newly created chat response configuration, used for subsequent operations on this resource.</p>
    #   @return [String]
    # @!attribute chat_response_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the newly created chat response configuration, which uniquely identifies the resource across all Amazon Web Services services. </p>
    #   @return [String]
    class CreateChatResponseConfigurationResponse < Struct.new(
      :chat_response_configuration_id,
      :chat_response_configuration_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier of the Amazon Q Business application.</p>
    #   @return [String]
    # @!attribute principal
    #   <p>The Amazon Resource Name (ARN) of the IAM role for the ISV that will be accessing the data.</p>
    #   @return [String]
    # @!attribute action_configurations
    #   <p>A list of action configurations specifying the allowed actions and any associated filters.</p>
    #   @return [Array<Types::ActionConfiguration>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier you provide to ensure idempotency of the request.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>A friendly name for the data accessor.</p>
    #   @return [String]
    # @!attribute authentication_detail
    #   <p>The authentication configuration details for the data accessor. This specifies how the ISV will authenticate when accessing data through this data accessor.</p>
    #   @return [Types::DataAccessorAuthenticationDetail]
    # @!attribute tags
    #   <p>The tags to associate with the data accessor.</p>
    #   @return [Array<Types::Tag>]
    class CreateDataAccessorRequest < Struct.new(
      :application_id,
      :principal,
      :action_configurations,
      :client_token,
      :display_name,
      :authentication_detail,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute data_accessor_id
    #   <p>The unique identifier of the created data accessor.</p>
    #   @return [String]
    # @!attribute idc_application_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM Identity Center application created for this data accessor.</p>
    #   @return [String]
    # @!attribute data_accessor_arn
    #   <p>The Amazon Resource Name (ARN) of the created data accessor.</p>
    #   @return [String]
    class CreateDataAccessorResponse < Struct.new(
      :data_accessor_id,
      :idc_application_arn,
      :data_accessor_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p> The identifier of the Amazon Q Business application the data source will be attached to.</p>
    #   @return [String]
    # @!attribute index_id
    #   <p>The identifier of the index that you want to use with the data source connector.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>A name for the data source connector.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>Configuration information to connect your data source repository to Amazon Q Business. Use this parameter to provide a JSON schema with configuration information specific to your data source connector.</p> <p>Each data source has a JSON schema provided by Amazon Q Business that you must use. For example, the Amazon S3 and Web Crawler connectors require the following JSON schemas:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/s3-api.html">Amazon S3 JSON schema</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/web-crawler-api.html">Web Crawler JSON schema</a> </p> </li> </ul> <p>You can find configuration templates for your specific data source using the following steps:</p> <ol> <li> <p>Navigate to the <a href="https://docs.aws.amazon.com/amazonq/latest/business-use-dg/connectors-list.html">Supported connectors</a> page in the Amazon Q Business User Guide, and select the data source of your choice.</p> </li> <li> <p>Then, from your specific data source connector page, select <b>Using the API</b>. You will find the JSON schema for your data source, including parameter descriptions, in this section.</p> </li> </ol>
    #   @return [JSON]
    # @!attribute vpc_configuration
    #   <p>Configuration information for an Amazon VPC (Virtual Private Cloud) to connect to your data source. For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/business-use-dg/connector-vpc.html">Using Amazon VPC with Amazon Q Business connectors</a>.</p>
    #   @return [Types::DataSourceVpcConfiguration]
    # @!attribute description
    #   <p>A description for the data source connector.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of key-value pairs that identify or categorize the data source connector. You can also use tags to help control access to the data source connector. Tag keys and values can consist of Unicode letters, digits, white space, and any of the following symbols: _ . : / = + - @.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute sync_schedule
    #   <p>Sets the frequency for Amazon Q Business to check the documents in your data source repository and update your index. If you don't set a schedule, Amazon Q Business won't periodically update the index.</p> <p>Specify a <code>cron-</code> format schedule string or an empty string to indicate that the index is updated on demand. You can't specify the <code>Schedule</code> parameter when the <code>Type</code> parameter is set to <code>CUSTOM</code>. If you do, you receive a <code>ValidationException</code> exception. </p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role with permission to access the data source and required resources.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A token you provide to identify a request to create a data source connector. Multiple calls to the <code>CreateDataSource</code> API with the same client token will create only one data source connector. </p>
    #   @return [String]
    # @!attribute document_enrichment_configuration
    #   <p>Provides the configuration information for altering document metadata and content during the document ingestion process.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/business-use-dg/custom-document-enrichment.html">Custom document enrichment</a>.</p>
    #   @return [Types::DocumentEnrichmentConfiguration]
    # @!attribute media_extraction_configuration
    #   <p>The configuration for extracting information from media in documents during ingestion.</p>
    #   @return [Types::MediaExtractionConfiguration]
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
      :media_extraction_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute data_source_id
    #   <p>The identifier of the data source connector.</p>
    #   @return [String]
    # @!attribute data_source_arn
    #   <p> The Amazon Resource Name (ARN) of a data source in an Amazon Q Business application. </p>
    #   @return [String]
    class CreateDataSourceResponse < Struct.new(
      :data_source_id,
      :data_source_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the Amazon Q Business application using the index.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>A name for the Amazon Q Business index.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the Amazon Q Business index.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The index type that's suitable for your needs. For more information on what's included in each type of index, see <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/tiers.html#index-tiers">Amazon Q Business tiers</a>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of key-value pairs that identify or categorize the index. You can also use tags to help control access to the index. Tag keys and values can consist of Unicode letters, digits, white space, and any of the following symbols: _ . : / = + - @.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute capacity_configuration
    #   <p>The capacity units you want to provision for your index. You can add and remove capacity to fit your usage needs.</p>
    #   @return [Types::IndexCapacityConfiguration]
    # @!attribute client_token
    #   <p>A token that you provide to identify the request to create an index. Multiple calls to the <code>CreateIndex</code> API with the same client token will create only one index.</p>
    #   @return [String]
    class CreateIndexRequest < Struct.new(
      :application_id,
      :display_name,
      :description,
      :type,
      :tags,
      :capacity_configuration,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute index_id
    #   <p>The identifier for the Amazon Q Business index.</p>
    #   @return [String]
    # @!attribute index_arn
    #   <p> The Amazon Resource Name (ARN) of an Amazon Q Business index.</p>
    #   @return [String]
    class CreateIndexResponse < Struct.new(
      :index_id,
      :index_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the application that will contain the plugin.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>A the name for your plugin.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of plugin you want to create.</p>
    #   @return [String]
    # @!attribute auth_configuration
    #   <p>Authentication configuration information for an Amazon Q Business plugin.</p>
    #   @return [Types::PluginAuthConfiguration]
    # @!attribute server_url
    #   <p>The source URL used for plugin configuration.</p>
    #   @return [String]
    # @!attribute custom_plugin_configuration
    #   <p>Contains configuration for a custom plugin.</p>
    #   @return [Types::CustomPluginConfiguration]
    # @!attribute tags
    #   <p>A list of key-value pairs that identify or categorize the data source connector. You can also use tags to help control access to the data source connector. Tag keys and values can consist of Unicode letters, digits, white space, and any of the following symbols: _ . : / = + - @.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_token
    #   <p>A token that you provide to identify the request to create your Amazon Q Business plugin.</p>
    #   @return [String]
    class CreatePluginRequest < Struct.new(
      :application_id,
      :display_name,
      :type,
      :auth_configuration,
      :server_url,
      :custom_plugin_configuration,
      :tags,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute plugin_id
    #   <p>The identifier of the plugin created.</p>
    #   @return [String]
    # @!attribute plugin_arn
    #   <p>The Amazon Resource Name (ARN) of a plugin.</p>
    #   @return [String]
    # @!attribute build_status
    #   <p>The current status of a plugin. A plugin is modified asynchronously.</p>
    #   @return [String]
    class CreatePluginResponse < Struct.new(
      :plugin_id,
      :plugin_arn,
      :build_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of your Amazon Q Business application.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of retriever you are using.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The name of your retriever.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>Provides information on how the retriever used for your Amazon Q Business application is configured.</p>
    #   @return [Types::RetrieverConfiguration]
    # @!attribute role_arn
    #   <p>The ARN of an IAM role used by Amazon Q Business to access the basic authentication credentials stored in a Secrets Manager secret.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A token that you provide to identify the request to create your Amazon Q Business application retriever.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of key-value pairs that identify or categorize the retriever. You can also use tags to help control access to the retriever. Tag keys and values can consist of Unicode letters, digits, white space, and any of the following symbols: _ . : / = + - @.</p>
    #   @return [Array<Types::Tag>]
    class CreateRetrieverRequest < Struct.new(
      :application_id,
      :type,
      :display_name,
      :configuration,
      :role_arn,
      :client_token,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute retriever_id
    #   <p>The identifier of the retriever you are using.</p>
    #   @return [String]
    # @!attribute retriever_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role associated with a retriever.</p>
    #   @return [String]
    class CreateRetrieverResponse < Struct.new(
      :retriever_id,
      :retriever_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the Amazon Q Business application the subscription should be added to.</p>
    #   @return [String]
    # @!attribute principal
    #   <p>The IAM Identity Center <code>UserId</code> or <code>GroupId</code> of a user or group in the IAM Identity Center instance connected to the Amazon Q Business application.</p>
    #   @return [Types::SubscriptionPrincipal]
    # @!attribute type
    #   <p>The type of Amazon Q Business subscription you want to create.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A token that you provide to identify the request to create a subscription for your Amazon Q Business application.</p>
    #   @return [String]
    class CreateSubscriptionRequest < Struct.new(
      :application_id,
      :principal,
      :type,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute subscription_id
    #   <p>The identifier of the Amazon Q Business subscription created.</p>
    #   @return [String]
    # @!attribute subscription_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Q Business subscription created.</p>
    #   @return [String]
    # @!attribute current_subscription
    #   <p>The type of your current Amazon Q Business subscription.</p>
    #   @return [Types::SubscriptionDetails]
    # @!attribute next_subscription
    #   <p>The type of the Amazon Q Business subscription for the next month.</p>
    #   @return [Types::SubscriptionDetails]
    class CreateSubscriptionResponse < Struct.new(
      :subscription_id,
      :subscription_arn,
      :current_subscription,
      :next_subscription,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the application for which the user mapping will be created.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The user emails attached to a user mapping.</p>
    #   @return [String]
    # @!attribute user_aliases
    #   <p>The list of user aliases in the mapping.</p>
    #   @return [Array<Types::UserAlias>]
    # @!attribute client_token
    #   <p>A token that you provide to identify the request to create your Amazon Q Business user mapping.</p>
    #   @return [String]
    class CreateUserRequest < Struct.new(
      :application_id,
      :user_id,
      :user_aliases,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class CreateUserResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the Amazon Q Business web experience.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title for your Amazon Q Business web experience.</p>
    #   @return [String]
    # @!attribute subtitle
    #   <p>A subtitle to personalize your Amazon Q Business web experience.</p>
    #   @return [String]
    # @!attribute welcome_message
    #   <p>The customized welcome message for end users of an Amazon Q Business web experience.</p>
    #   @return [String]
    # @!attribute sample_prompts_control_mode
    #   <p>Determines whether sample prompts are enabled in the web experience for an end user.</p>
    #   @return [String]
    # @!attribute origins
    #   <p>Sets the website domain origins that are allowed to embed the Amazon Q Business web experience. The <i>domain origin</i> refers to the base URL for accessing a website including the protocol (<code>http/https</code>), the domain name, and the port number (if specified). </p> <note> <p>You must only submit a <i>base URL</i> and not a full path. For example, <code>https://docs.aws.amazon.com</code>.</p> </note>
    #   @return [Array<String>]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the service role attached to your web experience.</p> <note> <p>You must provide this value if you're using IAM Identity Center to manage end user access to your application. If you're using legacy identity management to manage user access, you don't need to provide this value.</p> </note>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of key-value pairs that identify or categorize your Amazon Q Business web experience. You can also use tags to help control access to the web experience. Tag keys and values can consist of Unicode letters, digits, white space, and any of the following symbols: _ . : / = + - @.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_token
    #   <p>A token you provide to identify a request to create an Amazon Q Business web experience. </p>
    #   @return [String]
    # @!attribute identity_provider_configuration
    #   <p>Information about the identity provider (IdP) used to authenticate end users of an Amazon Q Business web experience.</p>
    #   @return [Types::IdentityProviderConfiguration]
    # @!attribute browser_extension_configuration
    #   <p>The browser extension configuration for an Amazon Q Business web experience.</p> <note> <p> For Amazon Q Business application using external OIDC-compliant identity providers (IdPs). The IdP administrator must add the browser extension sign-in redirect URLs to the IdP application. For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/browser-extensions.html">Configure external OIDC identity provider for your browser extensions.</a>. </p> </note>
    #   @return [Types::BrowserExtensionConfiguration]
    # @!attribute customization_configuration
    #   <p>Sets the custom logo, favicon, font, and color used in the Amazon Q web experience. </p>
    #   @return [Types::CustomizationConfiguration]
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
      :customization_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute web_experience_id
    #   <p>The identifier of the Amazon Q Business web experience.</p>
    #   @return [String]
    # @!attribute web_experience_arn
    #   <p> The Amazon Resource Name (ARN) of an Amazon Q Business web experience.</p>
    #   @return [String]
    class CreateWebExperienceResponse < Struct.new(
      :web_experience_id,
      :web_experience_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Configuration information required to invoke chat in <code>CREATOR_MODE</code>.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/guardrails.html">Admin controls and guardrails</a> and <a href="https://docs.aws.amazon.com/amazonq/latest/business-use-dg/using-web-experience.html#chat-source-scope">Conversation settings</a>.</p>
    # @!attribute creator_mode_control
    #   <p>Status information about whether <code>CREATOR_MODE</code> has been enabled or disabled. The default status is <code>DISABLED</code>.</p>
    #   @return [String]
    class CreatorModeConfiguration < Struct.new(
      :creator_mode_control,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module CreatorModeControl
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # <p> Configuration information required to create a custom plugin.</p>
    # @!attribute description
    #   <p>A description for your custom plugin configuration.</p>
    #   @return [String]
    # @!attribute api_schema_type
    #   <p>The type of OpenAPI schema to use.</p>
    #   @return [String]
    # @!attribute api_schema
    #   <p>Contains either details about the S3 object containing the OpenAPI schema for the action group or the JSON or YAML-formatted payload defining the schema.</p>
    #   @return [Types::APISchema]
    class CustomPluginConfiguration < Struct.new(
      :description,
      :api_schema_type,
      :api_schema,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the configuration information to customize the logo, font, and color of an Amazon Q Business web experience with individual files for each property or a CSS file for them all.</p>
    # @!attribute custom_css_url
    #   <p>Provides the URL where the custom CSS file is hosted for an Amazon Q web experience.</p>
    #   @return [String]
    # @!attribute logo_url
    #   <p>Provides the URL where the custom logo file is hosted for an Amazon Q web experience.</p>
    #   @return [String]
    # @!attribute font_url
    #   <p>Provides the URL where the custom font file is hosted for an Amazon Q web experience.</p>
    #   @return [String]
    # @!attribute favicon_url
    #   <p>Provides the URL where the custom favicon file is hosted for an Amazon Q web experience.</p>
    #   @return [String]
    class CustomizationConfiguration < Struct.new(
      :custom_css_url,
      :logo_url,
      :font_url,
      :favicon_url,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides summary information about a data accessor.</p>
    # @!attribute display_name
    #   <p>The friendly name of the data accessor.</p>
    #   @return [String]
    # @!attribute data_accessor_id
    #   <p>The unique identifier of the data accessor.</p>
    #   @return [String]
    # @!attribute data_accessor_arn
    #   <p>The Amazon Resource Name (ARN) of the data accessor.</p>
    #   @return [String]
    # @!attribute idc_application_arn
    #   <p>The Amazon Resource Name (ARN) of the associated IAM Identity Center application.</p>
    #   @return [String]
    # @!attribute principal
    #   <p>The Amazon Resource Name (ARN) of the IAM role for the ISV associated with this data accessor.</p>
    #   @return [String]
    # @!attribute authentication_detail
    #   <p>The authentication configuration details for the data accessor. This specifies how the ISV authenticates when accessing data through this data accessor.</p>
    #   @return [Types::DataAccessorAuthenticationDetail]
    # @!attribute created_at
    #   <p>The timestamp when the data accessor was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the data accessor was last updated.</p>
    #   @return [Time]
    class DataAccessor < Struct.new(
      :display_name,
      :data_accessor_id,
      :data_accessor_arn,
      :idc_application_arn,
      :principal,
      :authentication_detail,
      :created_at,
      :updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A union type that contains the specific authentication configuration based on the authentication type selected.</p>
    # @!attribute idc_trusted_token_issuer_configuration
    #   <p>Configuration for IAM Identity Center Trusted Token Issuer (TTI) authentication used when the authentication type is <code>AWS_IAM_IDC_TTI</code>.</p>
    #   @return [Types::DataAccessorIdcTrustedTokenIssuerConfiguration]
    class DataAccessorAuthenticationConfiguration < Struct.new(
      :idc_trusted_token_issuer_configuration,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class IdcTrustedTokenIssuerConfiguration < DataAccessorAuthenticationConfiguration; end
      class Unknown < DataAccessorAuthenticationConfiguration; end
    end

    # <p>Contains the authentication configuration details for a data accessor. This structure defines how the ISV authenticates when accessing data through the data accessor.</p>
    # @!attribute authentication_type
    #   <p>The type of authentication to use for the data accessor. This determines how the ISV authenticates when accessing data. You can use one of two authentication types:</p> <ul> <li> <p> <code>AWS_IAM_IDC_TTI</code> - Authentication using IAM Identity Center Trusted Token Issuer (TTI). This authentication type allows the ISV to use a trusted token issuer to generate tokens for accessing the data.</p> </li> <li> <p> <code>AWS_IAM_IDC_AUTH_CODE</code> - Authentication using IAM Identity Center authorization code flow. This authentication type uses the standard OAuth 2.0 authorization code flow for authentication.</p> </li> </ul>
    #   @return [String]
    # @!attribute authentication_configuration
    #   <p>The specific authentication configuration based on the authentication type.</p>
    #   @return [Types::DataAccessorAuthenticationConfiguration]
    # @!attribute external_ids
    #   <p>A list of external identifiers associated with this authentication configuration. These are used to correlate the data accessor with external systems.</p>
    #   @return [Array<String>]
    class DataAccessorAuthenticationDetail < Struct.new(
      :authentication_type,
      :authentication_configuration,
      :external_ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The type of authentication mechanism used by the data accessor.</p>
    module DataAccessorAuthenticationType
      AWS_IAM_IDC_TTI = 'AWS_IAM_IDC_TTI'
      AWS_IAM_IDC_AUTH_CODE = 'AWS_IAM_IDC_AUTH_CODE'
    end

    # <p>Configuration details for IAM Identity Center Trusted Token Issuer (TTI) authentication.</p>
    # @!attribute idc_trusted_token_issuer_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM Identity Center Trusted Token Issuer that will be used for authentication.</p>
    #   @return [String]
    class DataAccessorIdcTrustedTokenIssuerConfiguration < Struct.new(
      :idc_trusted_token_issuer_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A data source in an Amazon Q Business application.</p>
    # @!attribute display_name
    #   <p>The name of the Amazon Q Business data source.</p>
    #   @return [String]
    # @!attribute data_source_id
    #   <p>The identifier of the Amazon Q Business data source.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the Amazon Q Business data source.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The Unix timestamp when the Amazon Q Business data source was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The Unix timestamp when the Amazon Q Business data source was last updated. </p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the Amazon Q Business data source.</p>
    #   @return [String]
    class DataSource < Struct.new(
      :display_name,
      :data_source_id,
      :type,
      :created_at,
      :updated_at,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DataSourceStatus
      PENDING_CREATION = 'PENDING_CREATION'
      CREATING = 'CREATING'
      ACTIVE = 'ACTIVE'
      DELETING = 'DELETING'
      FAILED = 'FAILED'
      UPDATING = 'UPDATING'
    end

    # <p>Provides information about an Amazon Q Business data source connector synchronization job.</p>
    # @!attribute execution_id
    #   <p>The identifier of a data source synchronization job.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The Unix time stamp when the data source synchronization job started.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The Unix timestamp when the synchronization job completed.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the synchronization job. When the <code>Status</code> field is set to <code>SUCCEEDED</code>, the synchronization job is done. If the status code is <code>FAILED</code>, the <code>ErrorCode</code> and <code>ErrorMessage</code> fields give you the reason for the failure.</p>
    #   @return [String]
    # @!attribute error
    #   <p>If the <code>Status</code> field is set to <code>FAILED</code>, the <code>ErrorCode</code> field indicates the reason the synchronization failed. </p>
    #   @return [Types::ErrorDetail]
    # @!attribute data_source_error_code
    #   <p>If the reason that the synchronization failed is due to an error with the underlying data source, this field contains a code that identifies the error.</p>
    #   @return [String]
    # @!attribute metrics
    #   <p>Maps a batch delete document request to a specific data source sync job. This is optional and should only be supplied when documents are deleted by a data source connector.</p>
    #   @return [Types::DataSourceSyncJobMetrics]
    class DataSourceSyncJob < Struct.new(
      :execution_id,
      :start_time,
      :end_time,
      :status,
      :error,
      :data_source_error_code,
      :metrics,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Maps a batch delete document request to a specific Amazon Q Business data source connector sync job.</p>
    # @!attribute documents_added
    #   <p>The current count of documents added from the data source during the data source sync.</p>
    #   @return [String]
    # @!attribute documents_modified
    #   <p>The current count of documents modified in the data source during the data source sync.</p>
    #   @return [String]
    # @!attribute documents_deleted
    #   <p>The current count of documents deleted from the data source during the data source sync.</p>
    #   @return [String]
    # @!attribute documents_failed
    #   <p>The current count of documents that failed to sync from the data source during the data source sync.</p>
    #   @return [String]
    # @!attribute documents_scanned
    #   <p>The current count of documents crawled by the ongoing sync job in the data source.</p>
    #   @return [String]
    class DataSourceSyncJobMetrics < Struct.new(
      :documents_added,
      :documents_modified,
      :documents_deleted,
      :documents_failed,
      :documents_scanned,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DataSourceSyncJobStatus
      FAILED = 'FAILED'
      SUCCEEDED = 'SUCCEEDED'
      SYNCING = 'SYNCING'
      INCOMPLETE = 'INCOMPLETE'
      STOPPING = 'STOPPING'
      ABORTED = 'ABORTED'
      SYNCING_INDEXING = 'SYNCING_INDEXING'
    end

    # <p>Provides configuration information needed to connect to an Amazon VPC (Virtual Private Cloud).</p>
    # @!attribute subnet_ids
    #   <p>A list of identifiers for subnets within your Amazon VPC. The subnets should be able to connect to each other in the VPC, and they should have outgoing access to the Internet through a NAT device.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>A list of identifiers of security groups within your Amazon VPC. The security groups should enable Amazon Q Business to connect to the data source.</p>
    #   @return [Array<String>]
    class DataSourceVpcConfiguration < Struct.new(
      :subnet_ids,
      :security_group_ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information on boosting <code>DATE</code> type document attributes.</p> <p>For more information on how boosting document attributes work in Amazon Q Business, see <a href="https://docs.aws.amazon.com/amazonq/latest/business-use-dg/metadata-boosting.html">Boosting using document attributes</a>.</p>
    # @!attribute boosting_level
    #   <p>Specifies the priority tier ranking of boosting applied to document attributes. For version 2, this parameter indicates the relative ranking between boosted fields (ONE being highest priority, TWO being second highest, etc.) and determines the order in which attributes influence document ranking in search results. For version 1, this parameter specifies the boosting intensity. For version 2, boosting intensity (VERY HIGH, HIGH, MEDIUM, LOW, NONE) are not supported. Note that in version 2, you are not allowed to boost on only one field and make this value TWO.</p>
    #   @return [String]
    # @!attribute boosting_duration_in_seconds
    #   <p>Specifies the duration, in seconds, of a boost applies to a <code>DATE</code> type document attribute.</p>
    #   @return [Integer]
    class DateAttributeBoostingConfiguration < Struct.new(
      :boosting_level,
      :boosting_duration_in_seconds,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the Amazon Q Business application.</p>
    #   @return [String]
    class DeleteApplicationRequest < Struct.new(
      :application_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteApplicationResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the Amazon Q Business application environment.</p>
    #   @return [String]
    # @!attribute conversation_id
    #   <p>The unique identifier of the conversation.</p>
    #   @return [String]
    # @!attribute attachment_id
    #   <p>The unique identifier for the attachment.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The unique identifier of the user involved in the conversation.</p>
    #   @return [String]
    class DeleteAttachmentRequest < Struct.new(
      :application_id,
      :conversation_id,
      :attachment_id,
      :user_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteAttachmentResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the application the chat controls have been configured for.</p>
    #   @return [String]
    class DeleteChatControlsConfigurationRequest < Struct.new(
      :application_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteChatControlsConfigurationResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier of theAmazon Q Business application from which to delete the chat response configuration.</p>
    #   @return [String]
    # @!attribute chat_response_configuration_id
    #   <p>The unique identifier of the chat response configuration to delete from the specified application. </p>
    #   @return [String]
    class DeleteChatResponseConfigurationRequest < Struct.new(
      :application_id,
      :chat_response_configuration_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteChatResponseConfigurationResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute conversation_id
    #   <p>The identifier of the Amazon Q Business web experience conversation being deleted.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>The identifier of the Amazon Q Business application associated with the conversation.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The identifier of the user who is deleting the conversation.</p>
    #   @return [String]
    class DeleteConversationRequest < Struct.new(
      :conversation_id,
      :application_id,
      :user_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteConversationResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier of the Amazon Q Business application.</p>
    #   @return [String]
    # @!attribute data_accessor_id
    #   <p>The unique identifier of the data accessor to delete.</p>
    #   @return [String]
    class DeleteDataAccessorRequest < Struct.new(
      :application_id,
      :data_accessor_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteDataAccessorResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the Amazon Q Business application used with the data source connector.</p>
    #   @return [String]
    # @!attribute index_id
    #   <p>The identifier of the index used with the data source connector.</p>
    #   @return [String]
    # @!attribute data_source_id
    #   <p>The identifier of the data source connector that you want to delete. </p>
    #   @return [String]
    class DeleteDataSourceRequest < Struct.new(
      :application_id,
      :index_id,
      :data_source_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteDataSourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A document deleted from an Amazon Q Business data source connector.</p>
    # @!attribute document_id
    #   <p>The identifier of the deleted document.</p>
    #   @return [String]
    class DeleteDocument < Struct.new(
      :document_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the application in which the group mapping belongs.</p>
    #   @return [String]
    # @!attribute index_id
    #   <p>The identifier of the index you want to delete the group from.</p>
    #   @return [String]
    # @!attribute group_name
    #   <p>The name of the group you want to delete.</p>
    #   @return [String]
    # @!attribute data_source_id
    #   <p>The identifier of the data source linked to the group</p> <p>A group can be tied to multiple data sources. You can delete a group from accessing documents in a certain data source. For example, the groups "Research", "Engineering", and "Sales and Marketing" are all tied to the company's documents stored in the data sources Confluence and Salesforce. You want to delete "Research" and "Engineering" groups from Salesforce, so that these groups cannot access customer-related documents stored in Salesforce. Only "Sales and Marketing" should access documents in the Salesforce data source.</p>
    #   @return [String]
    class DeleteGroupRequest < Struct.new(
      :application_id,
      :index_id,
      :group_name,
      :data_source_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteGroupResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the Amazon Q Business application the Amazon Q Business index is linked to.</p>
    #   @return [String]
    # @!attribute index_id
    #   <p>The identifier of the Amazon Q Business index.</p>
    #   @return [String]
    class DeleteIndexRequest < Struct.new(
      :application_id,
      :index_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteIndexResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier the application attached to the Amazon Q Business plugin.</p>
    #   @return [String]
    # @!attribute plugin_id
    #   <p>The identifier of the plugin being deleted.</p>
    #   @return [String]
    class DeletePluginRequest < Struct.new(
      :application_id,
      :plugin_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeletePluginResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the Amazon Q Business application using the retriever.</p>
    #   @return [String]
    # @!attribute retriever_id
    #   <p>The identifier of the retriever being deleted.</p>
    #   @return [String]
    class DeleteRetrieverRequest < Struct.new(
      :application_id,
      :retriever_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteRetrieverResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the application from which the user is being deleted.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The user email being deleted.</p>
    #   @return [String]
    class DeleteUserRequest < Struct.new(
      :application_id,
      :user_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteUserResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the Amazon Q Business application linked to the Amazon Q Business web experience.</p>
    #   @return [String]
    # @!attribute web_experience_id
    #   <p>The identifier of the Amazon Q Business web experience being deleted.</p>
    #   @return [String]
    class DeleteWebExperienceRequest < Struct.new(
      :application_id,
      :web_experience_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteWebExperienceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier of the Amazon Q Business application.</p>
    #   @return [String]
    # @!attribute statement_id
    #   <p>The statement ID of the permission to remove.</p>
    #   @return [String]
    class DisassociatePermissionRequest < Struct.new(
      :application_id,
      :statement_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DisassociatePermissionResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A document in an Amazon Q Business application.</p>
    # @!attribute id
    #   <p>The identifier of the document.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>Custom attributes to apply to the document for refining Amazon Q Business web experience responses.</p>
    #   @return [Array<Types::DocumentAttribute>]
    # @!attribute content
    #   <p>The contents of the document.</p>
    #   @return [Types::DocumentContent]
    # @!attribute content_type
    #   <p>The file type of the document in the Blob field.</p> <p>If you want to index snippets or subsets of HTML documents instead of the entirety of the HTML documents, you add the <code>HTML</code> start and closing tags (<code>&lt;HTML&gt;content&lt;/HTML&gt;</code>) around the content.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the document.</p>
    #   @return [String]
    # @!attribute access_configuration
    #   <p>Configuration information for access permission to a document.</p>
    #   @return [Types::AccessConfiguration]
    # @!attribute document_enrichment_configuration
    #   <p>The configuration information for altering document metadata and content during the document ingestion process.</p>
    #   @return [Types::DocumentEnrichmentConfiguration]
    # @!attribute media_extraction_configuration
    #   <p>The configuration for extracting information from media in the document.</p>
    #   @return [Types::MediaExtractionConfiguration]
    class Document < Struct.new(
      :id,
      :attributes,
      :content,
      :content_type,
      :title,
      :access_configuration,
      :document_enrichment_configuration,
      :media_extraction_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents the Access Control List (ACL) for a document, containing both allowlist and denylist conditions.</p>
    # @!attribute allowlist
    #   <p>The allowlist conditions for the document. Users or groups matching these conditions are granted access to the document.</p>
    #   @return [Types::DocumentAclMembership]
    # @!attribute deny_list
    #   <p>The denylist conditions for the document. Users or groups matching these conditions are denied access to the document, overriding allowlist permissions.</p>
    #   @return [Types::DocumentAclMembership]
    class DocumentAcl < Struct.new(
      :allowlist,
      :deny_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents a condition in the document's ACL, specifying access rules for users and groups.</p>
    # @!attribute member_relation
    #   <p>The logical relation between members in the condition, determining how multiple user or group conditions are combined.</p>
    #   @return [String]
    # @!attribute users
    #   <p>An array of user identifiers that this condition applies to. Users listed here are subject to the access rule defined by this condition.</p>
    #   @return [Array<Types::DocumentAclUser>]
    # @!attribute groups
    #   <p>An array of group identifiers that this condition applies to. Groups listed here are subject to the access rule defined by this condition.</p>
    #   @return [Array<Types::DocumentAclGroup>]
    class DocumentAclCondition < Struct.new(
      :member_relation,
      :users,
      :groups,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents a group in the document's ACL, used to define access permissions for multiple users collectively.</p>
    # @!attribute name
    #   <p>The name of the group in the document's ACL. This is used to identify the group when applying access rules.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the group. This indicates the scope of the group's applicability in access control.</p>
    #   @return [String]
    class DocumentAclGroup < Struct.new(
      :name,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents membership rules in the document's ACL, defining how users or groups are associated with access permissions.</p>
    # @!attribute member_relation
    #   <p>The logical relation between members in the membership rule, determining how multiple conditions are combined.</p>
    #   @return [String]
    # @!attribute conditions
    #   <p>An array of conditions that define the membership rules. Each condition specifies criteria for users or groups to be included in this membership.</p>
    #   @return [Array<Types::DocumentAclCondition>]
    class DocumentAclMembership < Struct.new(
      :member_relation,
      :conditions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents a user in the document's ACL, used to define access permissions for individual users.</p>
    # @!attribute id
    #   <p>The unique identifier of the user in the document's ACL. This is used to identify the user when applying access rules.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the user. This indicates the scope of the user's applicability in access control.</p>
    #   @return [String]
    class DocumentAclUser < Struct.new(
      :id,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A document attribute or metadata field.</p>
    # @!attribute name
    #   <p>The identifier for the attribute.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the attribute. </p>
    #   @return [Types::DocumentAttributeValue]
    class DocumentAttribute < Struct.new(
      :name,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information on boosting supported Amazon Q Business document attribute types. When an end user chat query matches document attributes that have been boosted, Amazon Q Business prioritizes generating responses from content that matches the boosted document attributes.</p> <p>In version 2, boosting uses numeric values (ONE, TWO) to indicate priority tiers that establish clear hierarchical relationships between boosted attributes. This allows for more precise control over how different attributes influence search results.</p> <note> <p>For <code>STRING</code> and <code>STRING_LIST</code> type document attributes to be used for boosting on the console and the API, they must be enabled for search using the <a href="https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeConfiguration.html">DocumentAttributeConfiguration</a> object of the <a href="https://docs.aws.amazon.com/amazonq/latest/api-reference/API_UpdateIndex.html">UpdateIndex</a> API. If you haven't enabled searching on these attributes, you can't boost attributes of these data types on either the console or the API.</p> </note> <p>For more information on how boosting document attributes work in Amazon Q Business, see <a href="https://docs.aws.amazon.com/amazonq/latest/business-use-dg/metadata-boosting.html">Boosting using document attributes</a>.</p>
    # @!attribute number_configuration
    #   <p>Provides information on boosting <code>NUMBER</code> type document attributes.</p> <p> <code>NUMBER</code> attributes are not supported when using <code>NativeIndexConfiguration</code> version 2, which focuses on <code>DATE</code> attributes for recency and <code>STRING</code> attributes for source prioritization.</p>
    #   @return [Types::NumberAttributeBoostingConfiguration]
    # @!attribute string_configuration
    #   <p>Provides information on boosting <code>STRING</code> type document attributes.</p> <p>Version 2 assigns priority tiers to <code>STRING</code> attributes, establishing clear hierarchical relationships with other boosted attributes.</p>
    #   @return [Types::StringAttributeBoostingConfiguration]
    # @!attribute date_configuration
    #   <p>Provides information on boosting <code>DATE</code> type document attributes.</p> <p>Version 2 assigns priority tiers to <code>DATE</code> attributes, establishing clear hierarchical relationships with other boosted attributes.</p>
    #   @return [Types::DateAttributeBoostingConfiguration]
    # @!attribute string_list_configuration
    #   <p>Provides information on boosting <code>STRING_LIST</code> type document attributes.</p> <p> <code>STRING_LIST</code> attributes are not supported when using <code>NativeIndexConfiguration</code> version 2, which focuses on <code>DATE</code> attributes for recency and <code>STRING</code> attributes for source prioritization.</p>
    #   @return [Types::StringListAttributeBoostingConfiguration]
    class DocumentAttributeBoostingConfiguration < Struct.new(
      :number_configuration,
      :string_configuration,
      :date_configuration,
      :string_list_configuration,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class NumberConfiguration < DocumentAttributeBoostingConfiguration; end
      class StringConfiguration < DocumentAttributeBoostingConfiguration; end
      class DateConfiguration < DocumentAttributeBoostingConfiguration; end
      class StringListConfiguration < DocumentAttributeBoostingConfiguration; end
      class Unknown < DocumentAttributeBoostingConfiguration; end
    end

    module DocumentAttributeBoostingLevel
      NONE = 'NONE'
      LOW = 'LOW'
      MEDIUM = 'MEDIUM'
      HIGH = 'HIGH'
      VERY_HIGH = 'VERY_HIGH'
      ONE = 'ONE'
      TWO = 'TWO'
    end

    # <p>The condition used for the target document attribute or metadata field when ingesting documents into Amazon Q Business. You use this with <a href="https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeTarget.html"> <code>DocumentAttributeTarget</code> </a> to apply the condition.</p> <p>For example, you can create the 'Department' target field and have it prefill department names associated with the documents based on information in the 'Source_URI' field. Set the condition that if the 'Source_URI' field contains 'financial' in its URI value, then prefill the target field 'Department' with the target value 'Finance' for the document.</p> <p>Amazon Q Business can't create a target field if it has not already been created as an index field. After you create your index field, you can create a document metadata field using <code>DocumentAttributeTarget</code>. Amazon Q Business then will map your newly created metadata field to your index field.</p>
    # @!attribute key
    #   <p>The identifier of the document attribute used for the condition.</p> <p>For example, 'Source_URI' could be an identifier for the attribute or metadata field that contains source URIs associated with the documents.</p> <p>Amazon Q Business currently doesn't support <code>_document_body</code> as an attribute key used for the condition.</p>
    #   @return [String]
    # @!attribute operator
    #   <p>The identifier of the document attribute used for the condition.</p> <p>For example, 'Source_URI' could be an identifier for the attribute or metadata field that contains source URIs associated with the documents.</p> <p>Amazon Q Business currently does not support <code>_document_body</code> as an attribute key used for the condition.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of a document attribute. You can only provide one value for a document attribute.</p>
    #   @return [Types::DocumentAttributeValue]
    class DocumentAttributeCondition < Struct.new(
      :key,
      :operator,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Configuration information for document attributes. Document attributes are metadata or fields associated with your documents. For example, the company department name associated with each document.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/business-use-dg/doc-attributes.html">Understanding document attributes</a>.</p>
    # @!attribute name
    #   <p>The name of the document attribute.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of document attribute.</p>
    #   @return [String]
    # @!attribute search
    #   <p>Information about whether the document attribute can be used by an end user to search for information on their web experience.</p>
    #   @return [String]
    class DocumentAttributeConfiguration < Struct.new(
      :name,
      :type,
      :search,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The target document attribute or metadata field you want to alter when ingesting documents into Amazon Q Business.</p> <p>For example, you can delete all customer identification numbers associated with the documents, stored in the document metadata field called 'Customer_ID' by setting the target key as 'Customer_ID' and the deletion flag to <code>TRUE</code>. This removes all customer ID values in the field 'Customer_ID'. This would scrub personally identifiable information from each document's metadata.</p> <p>Amazon Q Business can't create a target field if it has not already been created as an index field. After you create your index field, you can create a document metadata field using <a href="https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeTarget.html"> <code>DocumentAttributeTarget</code> </a>. Amazon Q Business will then map your newly created document attribute to your index field.</p> <p>You can also use this with <a href="https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeCondition.html"> <code>DocumentAttributeCondition</code> </a>.</p>
    # @!attribute key
    #   <p>The identifier of the target document attribute or metadata field. For example, 'Department' could be an identifier for the target attribute or metadata field that includes the department names associated with the documents.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of a document attribute. You can only provide one value for a document attribute.</p>
    #   @return [Types::DocumentAttributeValue]
    # @!attribute attribute_value_operator
    #   <p> <code>TRUE</code> to delete the existing target value for your specified target attribute key. You cannot create a target value and set this to <code>TRUE</code>.</p>
    #   @return [String]
    class DocumentAttributeTarget < Struct.new(
      :key,
      :value,
      :attribute_value_operator,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The value of a document attribute. You can only provide one value for a document attribute.</p>
    # @!attribute string_value
    #   <p>A string.</p>
    #   @return [String]
    # @!attribute string_list_value
    #   <p>A list of strings.</p>
    #   @return [Array<String>]
    # @!attribute long_value
    #   <p>A long integer value. </p>
    #   @return [Integer]
    # @!attribute date_value
    #   <p>A date expressed as an ISO 8601 string.</p> <p>It's important for the time zone to be included in the ISO 8601 date-time format. For example, 2012-03-25T12:30:10+01:00 is the ISO 8601 date-time format for March 25th 2012 at 12:30PM (plus 10 seconds) in Central European Time. </p>
    #   @return [Time]
    class DocumentAttributeValue < Struct.new(
      :string_value,
      :string_list_value,
      :long_value,
      :date_value,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class StringValue < DocumentAttributeValue; end
      class StringListValue < DocumentAttributeValue; end
      class LongValue < DocumentAttributeValue; end
      class DateValue < DocumentAttributeValue; end
      class Unknown < DocumentAttributeValue; end
    end

    # <p>The contents of a document.</p> <note> <p>Documents have size limitations. The maximum file size for a document is 50 MB. The maximum amount of text that can be extracted from a single document is 5 MB. For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/doc-types.html">Supported document formats in Amazon Q Business</a>.</p> </note>
    # @!attribute blob
    #   <p>The contents of the document. Documents passed to the <code>blob</code> parameter must be base64 encoded. Your code might not need to encode the document file bytes if you're using an Amazon Web Services SDK to call Amazon Q Business APIs. If you are calling the Amazon Q Business endpoint directly using REST, you must base64 encode the contents before sending.</p>
    #   @return [String]
    # @!attribute s3
    #   <p>The path to the document in an Amazon S3 bucket.</p>
    #   @return [Types::S3]
    class DocumentContent < Struct.new(
      :blob,
      :s3,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Blob < DocumentContent; end
      class S3 < DocumentContent; end
      class Unknown < DocumentContent; end
    end

    module DocumentContentOperator
      DELETE = 'DELETE'
    end

    # <p>The details of a document within an Amazon Q Business index.</p>
    # @!attribute document_id
    #   <p>The identifier of the document.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the document.</p>
    #   @return [String]
    # @!attribute error
    #   <p>An error message associated with the document.</p>
    #   @return [Types::ErrorDetail]
    # @!attribute created_at
    #   <p>The timestamp for when the document was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp for when the document was last updated.</p>
    #   @return [Time]
    class DocumentDetails < Struct.new(
      :document_id,
      :status,
      :error,
      :created_at,
      :updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DocumentEnrichmentConditionOperator
      GREATER_THAN = 'GREATER_THAN'
      GREATER_THAN_OR_EQUALS = 'GREATER_THAN_OR_EQUALS'
      LESS_THAN = 'LESS_THAN'
      LESS_THAN_OR_EQUALS = 'LESS_THAN_OR_EQUALS'
      EQUALS = 'EQUALS'
      NOT_EQUALS = 'NOT_EQUALS'
      CONTAINS = 'CONTAINS'
      NOT_CONTAINS = 'NOT_CONTAINS'
      EXISTS = 'EXISTS'
      NOT_EXISTS = 'NOT_EXISTS'
      BEGINS_WITH = 'BEGINS_WITH'
    end

    # <p>Provides the configuration information for altering document metadata and content during the document ingestion process.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/business-use-dg/custom-document-enrichment.html">Custom document enrichment</a>.</p>
    # @!attribute inline_configurations
    #   <p>Configuration information to alter document attributes or metadata fields and content when ingesting documents into Amazon Q Business.</p>
    #   @return [Array<Types::InlineDocumentEnrichmentConfiguration>]
    # @!attribute pre_extraction_hook_configuration
    #   <p>Provides the configuration information for invoking a Lambda function in Lambda to alter document metadata and content when ingesting documents into Amazon Q Business.</p> <p>You can configure your Lambda function using the <code>PreExtractionHookConfiguration</code> parameter if you want to apply advanced alterations on the original or raw documents.</p> <p>If you want to apply advanced alterations on the Amazon Q Business structured documents, you must configure your Lambda function using <code>PostExtractionHookConfiguration</code>.</p> <p>You can only invoke one Lambda function. However, this function can invoke other functions it requires.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/business-use-dg/custom-document-enrichment.html">Custom document enrichment</a>. </p>
    #   @return [Types::HookConfiguration]
    # @!attribute post_extraction_hook_configuration
    #   <p>Provides the configuration information for invoking a Lambda function in Lambda to alter document metadata and content when ingesting documents into Amazon Q Business.</p> <p>You can configure your Lambda function using the <code>PreExtractionHookConfiguration</code> parameter if you want to apply advanced alterations on the original or raw documents.</p> <p>If you want to apply advanced alterations on the Amazon Q Business structured documents, you must configure your Lambda function using <code>PostExtractionHookConfiguration</code>.</p> <p>You can only invoke one Lambda function. However, this function can invoke other functions it requires.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/business-use-dg/custom-document-enrichment.html">Custom document enrichment</a>. </p>
    #   @return [Types::HookConfiguration]
    class DocumentEnrichmentConfiguration < Struct.new(
      :inline_configurations,
      :pre_extraction_hook_configuration,
      :post_extraction_hook_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DocumentStatus
      RECEIVED = 'RECEIVED'
      PROCESSING = 'PROCESSING'
      INDEXED = 'INDEXED'
      UPDATED = 'UPDATED'
      FAILED = 'FAILED'
      DELETING = 'DELETING'
      DELETED = 'DELETED'
      DOCUMENT_FAILED_TO_INDEX = 'DOCUMENT_FAILED_TO_INDEX'
    end

    # <p>The identifier of the data source Amazon Q Business will generate responses from.</p>
    # @!attribute index_id
    #   <p>The identifier of the index the data source is attached to.</p>
    #   @return [String]
    # @!attribute data_source_id
    #   <p>The identifier of the data source.</p>
    #   @return [String]
    class EligibleDataSource < Struct.new(
      :index_id,
      :data_source_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides the identifier of the KMS key used to encrypt data indexed by Amazon Q Business. Amazon Q Business doesn't support asymmetric keys.</p>
    # @!attribute kms_key_id
    #   <p>The identifier of the KMS key. Amazon Q Business doesn't support asymmetric keys.</p>
    #   @return [String]
    class EncryptionConfiguration < Struct.new(
      :kms_key_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The end of the streaming input for the <code>Chat</code> API.</p>
    class EndOfInputEvent < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ErrorCode
      INTERNAL_ERROR = 'InternalError'
      INVALID_REQUEST = 'InvalidRequest'
      RESOURCE_INACTIVE = 'ResourceInactive'
      RESOURCE_NOT_FOUND = 'ResourceNotFound'
    end

    # <p>Provides information about a Amazon Q Business request error.</p>
    # @!attribute error_message
    #   <p>The message explaining the Amazon Q Business request error.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The code associated with the Amazon Q Business request error.</p>
    #   @return [String]
    class ErrorDetail < Struct.new(
      :error_message,
      :error_code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An external resource that you configured with your application is returning errors and preventing this operation from succeeding. Fix those errors and try again. </p>
    # @!attribute message
    #   @return [String]
    class ExternalResourceException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A failed file upload during web experience chat.</p>
    # @!attribute conversation_id
    #   <p> The identifier of the conversation associated with the failed file upload.</p>
    #   @return [String]
    # @!attribute user_message_id
    #   <p>The identifier of the end user chat message associated with the file upload.</p>
    #   @return [String]
    # @!attribute system_message_id
    #   <p>The identifier of the AI-generated message associated with the file upload.</p>
    #   @return [String]
    # @!attribute attachment
    #   <p>The details of a file uploaded during chat.</p>
    #   @return [Types::AttachmentOutput]
    class FailedAttachmentEvent < Struct.new(
      :conversation_id,
      :user_message_id,
      :system_message_id,
      :attachment,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A list of documents that could not be removed from an Amazon Q Business index. Each entry contains an error message that indicates why the document couldn't be removed from the index.</p>
    # @!attribute id
    #   <p>The identifier of the document that couldn't be removed from the Amazon Q Business index.</p>
    #   @return [String]
    # @!attribute error
    #   <p>An explanation for why the document couldn't be removed from the index.</p>
    #   @return [Types::ErrorDetail]
    # @!attribute data_source_id
    #   <p>The identifier of the Amazon Q Business data source connector that contains the failed document.</p>
    #   @return [String]
    class FailedDocument < Struct.new(
      :id,
      :error,
      :data_source_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the Amazon Q Business application.</p>
    #   @return [String]
    class GetApplicationRequest < Struct.new(
      :application_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute display_name
    #   <p>The name of the Amazon Q Business application.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>The identifier of the Amazon Q Business application.</p>
    #   @return [String]
    # @!attribute application_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Q Business application.</p>
    #   @return [String]
    # @!attribute identity_type
    #   <p>The authentication type being used by a Amazon Q Business application.</p>
    #   @return [String]
    # @!attribute iam_identity_provider_arn
    #   <p>The Amazon Resource Name (ARN) of an identity provider being used by an Amazon Q Business application.</p>
    #   @return [String]
    # @!attribute identity_center_application_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS IAM Identity Center instance attached to your Amazon Q Business application.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM with permissions to access your CloudWatch logs and metrics.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the Amazon Q Business application.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the Amazon Q Business application.</p>
    #   @return [String]
    # @!attribute encryption_configuration
    #   <p>The identifier of the Amazon Web Services KMS key that is used to encrypt your data. Amazon Q Business doesn't support asymmetric keys.</p>
    #   @return [Types::EncryptionConfiguration]
    # @!attribute created_at
    #   <p>The Unix timestamp when the Amazon Q Business application was last updated.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The Unix timestamp when the Amazon Q Business application was last updated.</p>
    #   @return [Time]
    # @!attribute error
    #   <p>If the <code>Status</code> field is set to <code>ERROR</code>, the <code>ErrorMessage</code> field contains a description of the error that caused the synchronization to fail.</p>
    #   @return [Types::ErrorDetail]
    # @!attribute attachments_configuration
    #   <p>Settings for whether end users can upload files directly during chat.</p>
    #   @return [Types::AppliedAttachmentsConfiguration]
    # @!attribute q_apps_configuration
    #   <p>Settings for whether end users can create and use Amazon Q Apps in the web experience.</p>
    #   @return [Types::QAppsConfiguration]
    # @!attribute personalization_configuration
    #   <p>Configuration information about chat response personalization. For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/personalizing-chat-responses.html">Personalizing chat responses</a>.</p>
    #   @return [Types::PersonalizationConfiguration]
    # @!attribute auto_subscription_configuration
    #   <p>Settings for auto-subscription behavior for this application. This is only applicable to SAML and OIDC applications.</p>
    #   @return [Types::AutoSubscriptionConfiguration]
    # @!attribute client_ids_for_oidc
    #   <p>The OIDC client ID for a Amazon Q Business application.</p>
    #   @return [Array<String>]
    # @!attribute quick_sight_configuration
    #   <p>The Amazon QuickSight authentication configuration for the Amazon Q Business application.</p>
    #   @return [Types::QuickSightConfiguration]
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
      :quick_sight_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the application for which the chat controls are configured.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of configured chat controls to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If the <code>maxResults</code> response was incomplete because there is more data to retrieve, Amazon Q Business returns a pagination token in the response. You can use this pagination token to retrieve the next set of Amazon Q Business chat controls configured.</p>
    #   @return [String]
    class GetChatControlsConfigurationRequest < Struct.new(
      :application_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute response_scope
    #   <p>The response scope configured for a Amazon Q Business application. This determines whether your application uses its retrieval augmented generation (RAG) system to generate answers only from your enterprise data, or also uses the large language models (LLM) knowledge to respons to end user questions in chat.</p>
    #   @return [String]
    # @!attribute orchestration_configuration
    #   <p> The chat response orchestration settings for your application.</p> <note> <p>Chat orchestration is optimized to work for English language content. For more details on language support in Amazon Q Business, see <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/supported-languages.html">Supported languages</a>.</p> </note>
    #   @return [Types::AppliedOrchestrationConfiguration]
    # @!attribute blocked_phrases
    #   <p>The phrases blocked from chat by your chat control configuration.</p>
    #   @return [Types::BlockedPhrasesConfiguration]
    # @!attribute topic_configurations
    #   <p>The topic specific controls configured for a Amazon Q Business application.</p>
    #   @return [Array<Types::TopicConfiguration>]
    # @!attribute creator_mode_configuration
    #   <p>The configuration details for <code>CREATOR_MODE</code>.</p>
    #   @return [Types::AppliedCreatorModeConfiguration]
    # @!attribute next_token
    #   <p>If the <code>maxResults</code> response was incomplete because there is more data to retrieve, Amazon Q Business returns a pagination token in the response. You can use this pagination token to retrieve the next set of Amazon Q Business chat controls configured.</p>
    #   @return [String]
    # @!attribute hallucination_reduction_configuration
    #   <p> The hallucination reduction settings for your application.</p>
    #   @return [Types::HallucinationReductionConfiguration]
    class GetChatControlsConfigurationResponse < Struct.new(
      :response_scope,
      :orchestration_configuration,
      :blocked_phrases,
      :topic_configurations,
      :creator_mode_configuration,
      :next_token,
      :hallucination_reduction_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier of the Amazon Q Business application containing the chat response configuration to retrieve.</p>
    #   @return [String]
    # @!attribute chat_response_configuration_id
    #   <p>The unique identifier of the chat response configuration to retrieve from the specified application.</p>
    #   @return [String]
    class GetChatResponseConfigurationRequest < Struct.new(
      :application_id,
      :chat_response_configuration_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute chat_response_configuration_id
    #   <p>The unique identifier of the retrieved chat response configuration.</p>
    #   @return [String]
    # @!attribute chat_response_configuration_arn
    #   <p>The Amazon Resource Name (ARN) of the retrieved chat response configuration, which uniquely identifies the resource across all Amazon Web Services services. </p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The human-readable name of the retrieved chat response configuration, making it easier to identify among multiple configurations.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp indicating when the chat response configuration was initially created.</p>
    #   @return [Time]
    # @!attribute in_use_configuration
    #   <p>The currently active configuration settings that are being used to generate responses in the Amazon Q Business application.</p>
    #   @return [Types::ChatResponseConfigurationDetail]
    # @!attribute last_update_configuration
    #   <p>Information about the most recent update to the configuration, including timestamp and modification details.</p>
    #   @return [Types::ChatResponseConfigurationDetail]
    class GetChatResponseConfigurationResponse < Struct.new(
      :chat_response_configuration_id,
      :chat_response_configuration_arn,
      :display_name,
      :created_at,
      :in_use_configuration,
      :last_update_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier of the Amazon Q Business application.</p>
    #   @return [String]
    # @!attribute data_accessor_id
    #   <p>The unique identifier of the data accessor to retrieve.</p>
    #   @return [String]
    class GetDataAccessorRequest < Struct.new(
      :application_id,
      :data_accessor_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute display_name
    #   <p>The friendly name of the data accessor.</p>
    #   @return [String]
    # @!attribute data_accessor_id
    #   <p>The unique identifier of the data accessor.</p>
    #   @return [String]
    # @!attribute data_accessor_arn
    #   <p>The Amazon Resource Name (ARN) of the data accessor.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>The unique identifier of the Amazon Q Business application associated with this data accessor.</p>
    #   @return [String]
    # @!attribute idc_application_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM Identity Center application associated with this data accessor.</p>
    #   @return [String]
    # @!attribute principal
    #   <p>The Amazon Resource Name (ARN) of the IAM role for the ISV associated with this data accessor.</p>
    #   @return [String]
    # @!attribute action_configurations
    #   <p>The list of action configurations specifying the allowed actions and any associated filters.</p>
    #   @return [Array<Types::ActionConfiguration>]
    # @!attribute authentication_detail
    #   <p>The authentication configuration details for the data accessor. This specifies how the ISV authenticates when accessing data through this data accessor.</p>
    #   @return [Types::DataAccessorAuthenticationDetail]
    # @!attribute created_at
    #   <p>The timestamp when the data accessor was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the data accessor was last updated.</p>
    #   @return [Time]
    class GetDataAccessorResponse < Struct.new(
      :display_name,
      :data_accessor_id,
      :data_accessor_arn,
      :application_id,
      :idc_application_arn,
      :principal,
      :action_configurations,
      :authentication_detail,
      :created_at,
      :updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the Amazon Q Business application.</p>
    #   @return [String]
    # @!attribute index_id
    #   <p>The identfier of the index used with the data source connector.</p>
    #   @return [String]
    # @!attribute data_source_id
    #   <p>The identifier of the data source connector.</p>
    #   @return [String]
    class GetDataSourceRequest < Struct.new(
      :application_id,
      :index_id,
      :data_source_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the Amazon Q Business application.</p>
    #   @return [String]
    # @!attribute index_id
    #   <p>The identifier of the index linked to the data source connector.</p>
    #   @return [String]
    # @!attribute data_source_id
    #   <p>The identifier of the data source connector.</p>
    #   @return [String]
    # @!attribute data_source_arn
    #   <p>The Amazon Resource Name (ARN) of the data source.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The name for the data source connector.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the data source connector. For example, <code>S3</code>.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The details of how the data source connector is configured.</p>
    #   @return [JSON]
    # @!attribute vpc_configuration
    #   <p>Configuration information for an Amazon VPC (Virtual Private Cloud) to connect to your data source.</p>
    #   @return [Types::DataSourceVpcConfiguration]
    # @!attribute created_at
    #   <p>The Unix timestamp when the data source connector was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The Unix timestamp when the data source connector was last updated.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description for the data source connector.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the data source connector. When the <code>Status</code> field value is <code>FAILED</code>, the <code>ErrorMessage</code> field contains a description of the error that caused the data source connector to fail.</p>
    #   @return [String]
    # @!attribute sync_schedule
    #   <p>The schedule for Amazon Q Business to update the index.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the role with permission to access the data source and required resources.</p>
    #   @return [String]
    # @!attribute error
    #   <p>When the <code>Status</code> field value is <code>FAILED</code>, the <code>ErrorMessage</code> field contains a description of the error that caused the data source connector to fail.</p>
    #   @return [Types::ErrorDetail]
    # @!attribute document_enrichment_configuration
    #   <p>Provides the configuration information for altering document metadata and content during the document ingestion process.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/business-use-dg/custom-document-enrichment.html">Custom document enrichment</a>.</p>
    #   @return [Types::DocumentEnrichmentConfiguration]
    # @!attribute media_extraction_configuration
    #   <p>The configuration for extracting information from media in documents for the data source. </p>
    #   @return [Types::MediaExtractionConfiguration]
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
      :media_extraction_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier of the Amazon Q Business application containing the document. This ensures the request is scoped to the correct application environment and its associated security policies.</p>
    #   @return [String]
    # @!attribute index_id
    #   <p>The identifier of the index where documents are indexed.</p>
    #   @return [String]
    # @!attribute data_source_id
    #   <p>The identifier of the data source from which the document was ingested. This field is not present if the document is ingested by directly calling the BatchPutDocument API. If the document is from a file-upload data source, the datasource will be "uploaded-docs-file-stat-datasourceid".</p>
    #   @return [String]
    # @!attribute document_id
    #   <p>The unique identifier of the document that is indexed via BatchPutDocument API or file-upload or connector sync. It is also found in chat or chatSync response.</p>
    #   @return [String]
    # @!attribute output_format
    #   <p>Raw document outputFormat.</p>
    #   @return [String]
    class GetDocumentContentRequest < Struct.new(
      :application_id,
      :index_id,
      :data_source_id,
      :document_id,
      :output_format,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute presigned_url
    #   <p>A pre-signed URL that provides temporary access to download the document content directly from Amazon Q Business. The URL expires after 5 minutes for security purposes. This URL is generated only after successful ACL validation.</p>
    #   @return [String]
    # @!attribute mime_type
    #   <p>The MIME type of the document content (e.g., application/pdf, text/plain, application/vnd.openxmlformats-officedocument.wordprocessingml.document).</p>
    #   @return [String]
    class GetDocumentContentResponse < Struct.new(
      :presigned_url,
      :mime_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the application id the group is attached to.</p>
    #   @return [String]
    # @!attribute index_id
    #   <p>The identifier of the index the group is attached to.</p>
    #   @return [String]
    # @!attribute group_name
    #   <p>The name of the group.</p>
    #   @return [String]
    # @!attribute data_source_id
    #   <p>The identifier of the data source the group is attached to.</p>
    #   @return [String]
    class GetGroupRequest < Struct.new(
      :application_id,
      :index_id,
      :group_name,
      :data_source_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The current status of the group.</p>
    #   @return [Types::GroupStatusDetail]
    # @!attribute status_history
    #   <p>The status history of the group.</p>
    #   @return [Array<Types::GroupStatusDetail>]
    class GetGroupResponse < Struct.new(
      :status,
      :status_history,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the Amazon Q Business application connected to the index.</p>
    #   @return [String]
    # @!attribute index_id
    #   <p>The identifier of the Amazon Q Business index you want information on.</p>
    #   @return [String]
    class GetIndexRequest < Struct.new(
      :application_id,
      :index_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the Amazon Q Business application associated with the index.</p>
    #   @return [String]
    # @!attribute index_id
    #   <p>The identifier of the Amazon Q Business index.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The name of the Amazon Q Business index.</p>
    #   @return [String]
    # @!attribute index_arn
    #   <p> The Amazon Resource Name (ARN) of the Amazon Q Business index. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the index. When the value is <code>ACTIVE</code>, the index is ready for use. If the <code>Status</code> field value is <code>FAILED</code>, the <code>ErrorMessage</code> field contains a message that explains why.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of index attached to your Amazon Q Business application.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description for the Amazon Q Business index.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The Unix timestamp when the Amazon Q Business index was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The Unix timestamp when the Amazon Q Business index was last updated.</p>
    #   @return [Time]
    # @!attribute capacity_configuration
    #   <p>The storage capacity units chosen for your Amazon Q Business index.</p>
    #   @return [Types::IndexCapacityConfiguration]
    # @!attribute document_attribute_configurations
    #   <p>Configuration information for document attributes or metadata. Document metadata are fields associated with your documents. For example, the company department name associated with each document. For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/business-use-dg/doc-attributes-types.html#doc-attributes">Understanding document attributes</a>.</p>
    #   @return [Array<Types::DocumentAttributeConfiguration>]
    # @!attribute error
    #   <p>When the <code>Status</code> field value is <code>FAILED</code>, the <code>ErrorMessage</code> field contains a message that explains why.</p>
    #   @return [Types::ErrorDetail]
    # @!attribute index_statistics
    #   <p>Provides information about the number of documents indexed.</p>
    #   @return [Types::IndexStatistics]
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
      :index_statistics,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the Amazon Q Business which contains the media object.</p>
    #   @return [String]
    # @!attribute conversation_id
    #   <p>The identifier of the Amazon Q Business conversation.</p>
    #   @return [String]
    # @!attribute message_id
    #   <p>The identifier of the Amazon Q Business message.</p>
    #   @return [String]
    # @!attribute media_id
    #   <p>The identifier of the media object. You can find this in the <code>sourceAttributions</code> returned by the <code>Chat</code>, <code>ChatSync</code>, and <code>ListMessages</code> API responses.</p>
    #   @return [String]
    class GetMediaRequest < Struct.new(
      :application_id,
      :conversation_id,
      :message_id,
      :media_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute media_bytes
    #   <p>The base64-encoded bytes of the media object.</p>
    #   @return [String]
    # @!attribute media_mime_type
    #   <p>The MIME type of the media object (image/png).</p>
    #   @return [String]
    class GetMediaResponse < Struct.new(
      :media_bytes,
      :media_mime_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the application which contains the plugin.</p>
    #   @return [String]
    # @!attribute plugin_id
    #   <p>The identifier of the plugin.</p>
    #   @return [String]
    class GetPluginRequest < Struct.new(
      :application_id,
      :plugin_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the application which contains the plugin.</p>
    #   @return [String]
    # @!attribute plugin_id
    #   <p>The identifier of the plugin.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The name of the plugin.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the plugin.</p>
    #   @return [String]
    # @!attribute server_url
    #   <p>The source URL used for plugin configuration.</p>
    #   @return [String]
    # @!attribute auth_configuration
    #   <p>Authentication configuration information for an Amazon Q Business plugin.</p>
    #   @return [Types::PluginAuthConfiguration]
    # @!attribute custom_plugin_configuration
    #   <p>Configuration information required to create a custom plugin.</p>
    #   @return [Types::CustomPluginConfiguration]
    # @!attribute build_status
    #   <p>The current status of a plugin. A plugin is modified asynchronously.</p>
    #   @return [String]
    # @!attribute plugin_arn
    #   <p>The Amazon Resource Name (ARN) of the role with permission to access resources needed to create the plugin.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the plugin.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp for when the plugin was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp for when the plugin was last updated.</p>
    #   @return [Time]
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
      :updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier of the Amazon Q Business application.</p>
    #   @return [String]
    class GetPolicyRequest < Struct.new(
      :application_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>The JSON representation of the permission policy.</p>
    #   @return [String]
    class GetPolicyResponse < Struct.new(
      :policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the Amazon Q Business application using the retriever.</p>
    #   @return [String]
    # @!attribute retriever_id
    #   <p>The identifier of the retriever.</p>
    #   @return [String]
    class GetRetrieverRequest < Struct.new(
      :application_id,
      :retriever_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the Amazon Q Business application using the retriever. </p>
    #   @return [String]
    # @!attribute retriever_id
    #   <p>The identifier of the retriever.</p>
    #   @return [String]
    # @!attribute retriever_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role associated with the retriever.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the retriever.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the retriever.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The name of the retriever.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>Provides information on how the retriever used for your Amazon Q Business application is configured.</p>
    #   @return [Types::RetrieverConfiguration]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the role with the permission to access the retriever and required resources.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The Unix timestamp when the retriever was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The Unix timestamp when the retriever was last updated.</p>
    #   @return [Time]
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
      :updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the application connected to the user.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The user email address attached to the user.</p>
    #   @return [String]
    class GetUserRequest < Struct.new(
      :application_id,
      :user_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_aliases
    #   <p>A list of user aliases attached to a user.</p>
    #   @return [Array<Types::UserAlias>]
    class GetUserResponse < Struct.new(
      :user_aliases,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the Amazon Q Business application linked to the web experience.</p>
    #   @return [String]
    # @!attribute web_experience_id
    #   <p>The identifier of the Amazon Q Business web experience. </p>
    #   @return [String]
    class GetWebExperienceRequest < Struct.new(
      :application_id,
      :web_experience_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the Amazon Q Business application linked to the web experience.</p>
    #   @return [String]
    # @!attribute web_experience_id
    #   <p>The identifier of the Amazon Q Business web experience.</p>
    #   @return [String]
    # @!attribute web_experience_arn
    #   <p>The Amazon Resource Name (ARN) of the role with the permission to access the Amazon Q Business web experience and required resources.</p>
    #   @return [String]
    # @!attribute default_endpoint
    #   <p>The endpoint of your Amazon Q Business web experience.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the Amazon Q Business web experience. When the <code>Status</code> field value is <code>FAILED</code>, the <code>ErrorMessage</code> field contains a description of the error that caused the data source connector to fail. </p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The Unix timestamp when the Amazon Q Business web experience was last created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The Unix timestamp when the Amazon Q Business web experience was last updated.</p>
    #   @return [Time]
    # @!attribute title
    #   <p>The title for your Amazon Q Business web experience. </p>
    #   @return [String]
    # @!attribute subtitle
    #   <p>The subtitle for your Amazon Q Business web experience. </p>
    #   @return [String]
    # @!attribute welcome_message
    #   <p>The customized welcome message for end users of an Amazon Q Business web experience.</p>
    #   @return [String]
    # @!attribute sample_prompts_control_mode
    #   <p>Determines whether sample prompts are enabled in the web experience for an end user.</p>
    #   @return [String]
    # @!attribute origins
    #   <p>Gets the website domain origins that are allowed to embed the Amazon Q Business web experience. The <i>domain origin</i> refers to the base URL for accessing a website including the protocol (<code>http/https</code>), the domain name, and the port number (if specified). </p>
    #   @return [Array<String>]
    # @!attribute role_arn
    #   <p> The Amazon Resource Name (ARN) of the service role attached to your web experience.</p>
    #   @return [String]
    # @!attribute identity_provider_configuration
    #   <p>Information about the identity provider (IdP) used to authenticate end users of an Amazon Q Business web experience.</p>
    #   @return [Types::IdentityProviderConfiguration]
    # @!attribute authentication_configuration
    #   <p>The authentication configuration information for your Amazon Q Business web experience.</p>
    #   @deprecated
    #     Property associated with legacy SAML IdP flow. Deprecated in favor of using AWS IAM Identity Center for user management.
    #   @return [Types::WebExperienceAuthConfiguration]
    # @!attribute error
    #   <p>When the <code>Status</code> field value is <code>FAILED</code>, the <code>ErrorMessage</code> field contains a description of the error that caused the data source connector to fail.</p>
    #   @return [Types::ErrorDetail]
    # @!attribute browser_extension_configuration
    #   <p>The browser extension configuration for an Amazon Q Business web experience.</p>
    #   @return [Types::BrowserExtensionConfiguration]
    # @!attribute customization_configuration
    #   <p>Gets the custom logo, favicon, font, and color used in the Amazon Q web experience. </p>
    #   @return [Types::CustomizationConfiguration]
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
      :customization_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A list of users or sub groups that belong to a group. This is for generating Amazon Q Business chat results only from document a user has access to.</p>
    # @!attribute member_groups
    #   <p>A list of sub groups that belong to a group. For example, the sub groups "Research", "Engineering", and "Sales and Marketing" all belong to the group "Company".</p>
    #   @return [Array<Types::MemberGroup>]
    # @!attribute member_users
    #   <p>A list of users that belong to a group. For example, a list of interns all belong to the "Interns" group.</p>
    #   @return [Array<Types::MemberUser>]
    # @!attribute s3_path_for_group_members
    #   <p>Information required for Amazon Q Business to find a specific file in an Amazon S3 bucket.</p>
    #   @return [Types::S3]
    class GroupMembers < Struct.new(
      :member_groups,
      :member_users,
      :s3_path_for_group_members,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module GroupStatus
      FAILED = 'FAILED'
      SUCCEEDED = 'SUCCEEDED'
      PROCESSING = 'PROCESSING'
      DELETING = 'DELETING'
      DELETED = 'DELETED'
    end

    # <p>Provides the details of a group's status.</p>
    # @!attribute status
    #   <p>The status of a group.</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>The Unix timestamp when the Amazon Q Business application was last updated.</p>
    #   @return [Time]
    # @!attribute error_detail
    #   <p>The details of an error associated a group status.</p>
    #   @return [Types::ErrorDetail]
    class GroupStatusDetail < Struct.new(
      :status,
      :last_updated_at,
      :error_detail,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Summary information for groups.</p>
    # @!attribute group_name
    #   <p>The name of the group the summary information is for.</p>
    #   @return [String]
    class GroupSummary < Struct.new(
      :group_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Configuration information required to setup hallucination reduction. For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/hallucination-reduction.html"> hallucination reduction</a>.</p> <note> <p>The hallucination reduction feature won't work if chat orchestration controls are enabled for your application.</p> </note>
    # @!attribute hallucination_reduction_control
    #   <p>Controls whether hallucination reduction has been enabled or disabled for your application. The default status is <code>DISABLED</code>. </p>
    #   @return [String]
    class HallucinationReductionConfiguration < Struct.new(
      :hallucination_reduction_control,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module HallucinationReductionControl
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # <p>Provides the configuration information for invoking a Lambda function in Lambda to alter document metadata and content when ingesting documents into Amazon Q Business.</p> <p>You can configure your Lambda function using the <code>PreExtractionHookConfiguration</code> parameter if you want to apply advanced alterations on the original or raw documents.</p> <p>If you want to apply advanced alterations on the Amazon Q Business structured documents, you must configure your Lambda function using <code>PostExtractionHookConfiguration</code>.</p> <p>You can only invoke one Lambda function. However, this function can invoke other functions it requires.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/business-use-dg/custom-document-enrichment.html">Custom document enrichment</a>. </p>
    # @!attribute invocation_condition
    #   <p>The condition used for when a Lambda function should be invoked.</p> <p>For example, you can specify a condition that if there are empty date-time values, then Amazon Q Business should invoke a function that inserts the current date-time.</p>
    #   @return [Types::DocumentAttributeCondition]
    # @!attribute lambda_arn
    #   <p>The Amazon Resource Name (ARN) of the Lambda function during ingestion. For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/cde-lambda-operations.html">Using Lambda functions for Amazon Q Business document enrichment</a>.</p>
    #   @return [String]
    # @!attribute s3_bucket_name
    #   <p>Stores the original, raw documents or the structured, parsed documents before and after altering them. For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/business-use-dg/cde-lambda-operations.html#cde-lambda-operations-data-contracts">Data contracts for Lambda functions</a>.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of a role with permission to run <code>PreExtractionHookConfiguration</code> and <code>PostExtractionHookConfiguration</code> for altering document metadata and content during the document ingestion process.</p>
    #   @return [String]
    class HookConfiguration < Struct.new(
      :invocation_condition,
      :lambda_arn,
      :s3_bucket_name,
      :role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about the IAM Identity Center Application used to configure authentication for a plugin.</p>
    # @!attribute idc_application_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM Identity Center Application used to configure authentication.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role with permissions to perform actions on Amazon Web Services services on your behalf.</p>
    #   @return [String]
    class IdcAuthConfiguration < Struct.new(
      :idc_application_arn,
      :role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information about the identity provider (IdP) used to authenticate end users of an Amazon Q Business web experience.</p>
    # @!attribute saml_configuration
    #   <p>Information about the SAML 2.0-compliant identity provider (IdP) used to authenticate end users of an Amazon Q Business web experience.</p>
    #   @return [Types::SamlProviderConfiguration]
    # @!attribute open_id_connect_configuration
    #   <p>Information about the OIDC-compliant identity provider (IdP) used to authenticate end users of an Amazon Q Business web experience.</p>
    #   @return [Types::OpenIDConnectProviderConfiguration]
    class IdentityProviderConfiguration < Struct.new(
      :saml_configuration,
      :open_id_connect_configuration,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class SamlConfiguration < IdentityProviderConfiguration; end
      class OpenIDConnectConfiguration < IdentityProviderConfiguration; end
      class Unknown < IdentityProviderConfiguration; end
    end

    module IdentityType
      AWS_IAM_IDP_SAML = 'AWS_IAM_IDP_SAML'
      AWS_IAM_IDP_OIDC = 'AWS_IAM_IDP_OIDC'
      AWS_IAM_IDC = 'AWS_IAM_IDC'
      AWS_QUICKSIGHT_IDP = 'AWS_QUICKSIGHT_IDP'
      ANONYMOUS = 'ANONYMOUS'
    end

    # <p>The configuration for extracting semantic meaning from images in documents. For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/extracting-meaning-from-images.html">Extracting semantic meaning from images and visuals</a>.</p>
    # @!attribute image_extraction_status
    #   <p>Specify whether to extract semantic meaning from images and visuals from documents.</p>
    #   @return [String]
    class ImageExtractionConfiguration < Struct.new(
      :image_extraction_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ImageExtractionStatus
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # <p>Details about an image source, including its identifier and format.</p>
    # @!attribute media_id
    #   <p>Unique identifier for the image file.</p>
    #   @return [String]
    # @!attribute media_mime_type
    #   <p>The MIME type of the image file.</p>
    #   @return [String]
    class ImageSourceDetails < Struct.new(
      :media_id,
      :media_mime_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Summary information for your Amazon Q Business index.</p>
    # @!attribute display_name
    #   <p>The name of the index.</p>
    #   @return [String]
    # @!attribute index_id
    #   <p>The identifier for the index.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The Unix timestamp when the index was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The Unix timestamp when the index was last updated.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the index. When the status is <code>ACTIVE</code>, the index is ready.</p>
    #   @return [String]
    class Index < Struct.new(
      :display_name,
      :index_id,
      :created_at,
      :updated_at,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information about index capacity configuration.</p>
    # @!attribute units
    #   <p>The number of storage units configured for an Amazon Q Business index.</p>
    #   @return [Integer]
    class IndexCapacityConfiguration < Struct.new(
      :units,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information about the number of documents in an index.</p>
    # @!attribute text_document_statistics
    #   <p>The number of documents indexed.</p>
    #   @return [Types::TextDocumentStatistics]
    class IndexStatistics < Struct.new(
      :text_document_statistics,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module IndexStatus
      CREATING = 'CREATING'
      ACTIVE = 'ACTIVE'
      DELETING = 'DELETING'
      FAILED = 'FAILED'
      UPDATING = 'UPDATING'
    end

    module IndexType
      ENTERPRISE = 'ENTERPRISE'
      STARTER = 'STARTER'
    end

    # <p>Provides the configuration information for applying basic logic to alter document metadata and content when ingesting documents into Amazon Q Business.</p> <p>To apply advanced logic, to go beyond what you can do with basic logic, see <a href="https://docs.aws.amazon.com/amazonq/latest/api-reference/API_HookConfiguration.html"> <code>HookConfiguration</code> </a>.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/business-use-dg/custom-document-enrichment.html">Custom document enrichment</a>. </p>
    # @!attribute condition
    #   <p>The condition used for the target document attribute or metadata field when ingesting documents into Amazon Q Business. You use this with <a href="https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeTarget.html"> <code>DocumentAttributeTarget</code> </a> to apply the condition.</p> <p>For example, you can create the 'Department' target field and have it prefill department names associated with the documents based on information in the 'Source_URI' field. Set the condition that if the 'Source_URI' field contains 'financial' in its URI value, then prefill the target field 'Department' with the target value 'Finance' for the document.</p> <p>Amazon Q Business can't create a target field if it has not already been created as an index field. After you create your index field, you can create a document metadata field using <code>DocumentAttributeTarget</code>. Amazon Q Business then will map your newly created metadata field to your index field.</p>
    #   @return [Types::DocumentAttributeCondition]
    # @!attribute target
    #   <p>The target document attribute or metadata field you want to alter when ingesting documents into Amazon Q Business.</p> <p>For example, you can delete all customer identification numbers associated with the documents, stored in the document metadata field called 'Customer_ID' by setting the target key as 'Customer_ID' and the deletion flag to <code>TRUE</code>. This removes all customer ID values in the field 'Customer_ID'. This would scrub personally identifiable information from each document's metadata.</p> <p>Amazon Q Business can't create a target field if it has not already been created as an index field. After you create your index field, you can create a document metadata field using <a href="https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeTarget.html"> <code>DocumentAttributeTarget</code> </a>. Amazon Q Business will then map your newly created document attribute to your index field.</p> <p>You can also use this with <a href="https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeCondition.html"> <code>DocumentAttributeCondition</code> </a>.</p>
    #   @return [Types::DocumentAttributeTarget]
    # @!attribute document_content_operator
    #   <p> <code>TRUE</code> to delete content if the condition used for the target attribute is met.</p>
    #   @return [String]
    class InlineDocumentEnrichmentConfiguration < Struct.new(
      :condition,
      :target,
      :document_content_operator,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A set of instructions that define how Amazon Q Business should generate and format responses to user queries. This collection includes parameters for controlling response characteristics such as length, audience targeting, perspective, style, identity, tone, and custom instructions.</p>
    # @!attribute response_length
    #   <p>Specifies the desired length of responses generated by Amazon Q Business. This parameter allows administrators to control whether responses are concise and brief or more detailed and comprehensive.</p>
    #   @return [String]
    # @!attribute target_audience
    #   <p>Defines the intended audience for the responses, allowing Amazon Q Business to tailor its language, terminology, and explanations appropriately. This could range from technical experts to general users with varying levels of domain knowledge.</p>
    #   @return [String]
    # @!attribute perspective
    #   <p>Determines the point of view or perspective from which Amazon Q Business generates responses, such as first-person, second-person, or third-person perspective, affecting how information is presented to users.</p>
    #   @return [String]
    # @!attribute output_style
    #   <p>Specifies the formatting and structural style of responses, such as bullet points, paragraphs, step-by-step instructions, or other organizational formats that enhance readability and comprehension.</p>
    #   @return [String]
    # @!attribute identity
    #   <p>Defines the persona or identity that Amazon Q Business should adopt when responding to users, allowing for customization of the assistant's character, role, or representation within an organization.</p>
    #   @return [String]
    # @!attribute tone
    #   <p>Controls the emotional tone and communication style of responses, such as formal, casual, technical, friendly, or professional, to align with organizational communication standards and user expectations.</p>
    #   @return [String]
    # @!attribute custom_instructions
    #   <p>Allows administrators to provide specific, custom instructions that guide how Amazon Q Business should respond in particular scenarios or to certain types of queries, enabling fine-grained control over response generation.</p>
    #   @return [String]
    # @!attribute examples
    #   <p>Provides sample responses or templates that Amazon Q Business can reference when generating responses, helping to establish consistent patterns and formats for different types of user queries.</p>
    #   @return [String]
    class InstructionCollection < Struct.new(
      :response_length,
      :target_audience,
      :perspective,
      :output_style,
      :identity,
      :tone,
      :custom_instructions,
      :examples,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An issue occurred with the internal server used for your Amazon Q Business service. Wait some minutes and try again, or contact <a href="http://aws.amazon.com/contact-us/">Support</a> for help.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Stores an Amazon Kendra index as a retriever.</p>
    # @!attribute index_id
    #   <p>The identifier of the Amazon Kendra index.</p>
    #   @return [String]
    class KendraIndexConfiguration < Struct.new(
      :index_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You don't have permissions to perform the action because your license is inactive. Ask your admin to activate your license and try again after your licence is active.</p>
    # @!attribute message
    #   @return [String]
    class LicenseNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the <code>maxResults</code> response was incomplete because there is more data to retrieve, Amazon Q Business returns a pagination token in the response. You can use this pagination token to retrieve the next set of Amazon Q Business applications.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of Amazon Q Business applications to return.</p>
    #   @return [Integer]
    class ListApplicationsRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Q Business returns this token. You can use this token in a subsequent request to retrieve the next set of applications.</p>
    #   @return [String]
    # @!attribute applications
    #   <p>An array of summary information on the configuration of one or more Amazon Q Business applications.</p>
    #   @return [Array<Types::Application>]
    class ListApplicationsResponse < Struct.new(
      :next_token,
      :applications,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier for the Amazon Q Business application.</p>
    #   @return [String]
    # @!attribute conversation_id
    #   <p>The unique identifier of the Amazon Q Business web experience conversation.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The unique identifier of the user involved in the Amazon Q Business web experience conversation.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If the number of attachments returned exceeds <code>maxResults</code>, Amazon Q Business returns a next token as a pagination token to retrieve the next set of attachments.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of attachements to return.</p>
    #   @return [Integer]
    class ListAttachmentsRequest < Struct.new(
      :application_id,
      :conversation_id,
      :user_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute attachments
    #   <p>An array of information on one or more attachments.</p>
    #   @return [Array<Types::Attachment>]
    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Q Business returns this token, which you can use in a later request to list the next set of attachments.</p>
    #   @return [String]
    class ListAttachmentsResponse < Struct.new(
      :attachments,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier of the Amazon Q Business application for which to list available chat response configurations.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of chat response configurations to return in a single response. This parameter helps control pagination of results when many configurations exist.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A pagination token used to retrieve the next set of results when the number of configurations exceeds the specified <code>maxResults</code> value.</p>
    #   @return [String]
    class ListChatResponseConfigurationsRequest < Struct.new(
      :application_id,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute chat_response_configurations
    #   <p>A list of chat response configuration summaries, each containing key information about an available configuration in the specified application.</p>
    #   @return [Array<Types::ChatResponseConfiguration>]
    # @!attribute next_token
    #   <p>A pagination token that can be used in a subsequent request to retrieve additional chat response configurations if the results were truncated due to the <code>maxResults</code> parameter.</p>
    #   @return [String]
    class ListChatResponseConfigurationsResponse < Struct.new(
      :chat_response_configurations,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the Amazon Q Business application.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The identifier of the user involved in the Amazon Q Business web experience conversation. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If the <code>maxResults</code> response was incomplete because there is more data to retrieve, Amazon Q Business returns a pagination token in the response. You can use this pagination token to retrieve the next set of Amazon Q Business conversations.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of Amazon Q Business conversations to return.</p>
    #   @return [Integer]
    class ListConversationsRequest < Struct.new(
      :application_id,
      :user_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Q Business returns this token, which you can use in a later request to list the next set of messages.</p>
    #   @return [String]
    # @!attribute conversations
    #   <p>An array of summary information on the configuration of one or more Amazon Q Business web experiences.</p>
    #   @return [Array<Types::Conversation>]
    class ListConversationsResponse < Struct.new(
      :next_token,
      :conversations,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier of the Amazon Q Business application.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. (You received this token from a previous call.)</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #   @return [Integer]
    class ListDataAccessorsRequest < Struct.new(
      :application_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute data_accessors
    #   <p>The list of data accessors.</p>
    #   @return [Array<Types::DataAccessor>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results, if there are any.</p>
    #   @return [String]
    class ListDataAccessorsResponse < Struct.new(
      :data_accessors,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute data_source_id
    #   <p> The identifier of the data source connector.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>The identifier of the Amazon Q Business application connected to the data source.</p>
    #   @return [String]
    # @!attribute index_id
    #   <p>The identifier of the index used with the Amazon Q Business data source connector.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If the <code>maxResults</code> response was incpmplete because there is more data to retriever, Amazon Q Business returns a pagination token in the response. You can use this pagination token to retrieve the next set of responses.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of synchronization jobs to return in the response.</p>
    #   @return [Integer]
    # @!attribute start_time
    #   <p> The start time of the data source connector sync. </p>
    #   @return [Time]
    # @!attribute end_time
    #   <p> The end time of the data source connector sync.</p>
    #   @return [Time]
    # @!attribute status_filter
    #   <p>Only returns synchronization jobs with the <code>Status</code> field equal to the specified status.</p>
    #   @return [String]
    class ListDataSourceSyncJobsRequest < Struct.new(
      :data_source_id,
      :application_id,
      :index_id,
      :next_token,
      :max_results,
      :start_time,
      :end_time,
      :status_filter,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute history
    #   <p>A history of synchronization jobs for the data source connector.</p>
    #   @return [Array<Types::DataSourceSyncJob>]
    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Q Business returns this token. You can use this token in any subsequent request to retrieve the next set of jobs.</p>
    #   @return [String]
    class ListDataSourceSyncJobsResponse < Struct.new(
      :history,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the Amazon Q Business application linked to the data source connectors.</p>
    #   @return [String]
    # @!attribute index_id
    #   <p>The identifier of the index used with one or more data source connectors.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If the <code>maxResults</code> response was incomplete because there is more data to retrieve, Amazon Q Business returns a pagination token in the response. You can use this pagination token to retrieve the next set of Amazon Q Business data source connectors.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of data source connectors to return.</p>
    #   @return [Integer]
    class ListDataSourcesRequest < Struct.new(
      :application_id,
      :index_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute data_sources
    #   <p>An array of summary information for one or more data source connector.</p>
    #   @return [Array<Types::DataSource>]
    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Q Business returns this token. You can use this token in a subsequent request to retrieve the next set of data source connectors.</p>
    #   @return [String]
    class ListDataSourcesResponse < Struct.new(
      :data_sources,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the application id the documents are attached to.</p>
    #   @return [String]
    # @!attribute index_id
    #   <p>The identifier of the index the documents are attached to.</p>
    #   @return [String]
    # @!attribute data_source_ids
    #   <p>The identifier of the data sources the documents are attached to.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>If the <code>maxResults</code> response was incomplete because there is more data to retrieve, Amazon Q Business returns a pagination token in the response. You can use this pagination token to retrieve the next set of documents.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of documents to return.</p>
    #   @return [Integer]
    class ListDocumentsRequest < Struct.new(
      :application_id,
      :index_id,
      :data_source_ids,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute document_detail_list
    #   <p>A list of document details.</p>
    #   @return [Array<Types::DocumentDetails>]
    # @!attribute next_token
    #   <p>If the <code>maxResults</code> response was incomplete because there is more data to retrieve, Amazon Q Business returns a pagination token in the response. You can use this pagination token to retrieve the next set of documents.</p>
    #   @return [String]
    class ListDocumentsResponse < Struct.new(
      :document_detail_list,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the application for getting a list of groups mapped to users.</p>
    #   @return [String]
    # @!attribute index_id
    #   <p>The identifier of the index for getting a list of groups mapped to users.</p>
    #   @return [String]
    # @!attribute updated_earlier_than
    #   <p>The timestamp identifier used for the latest <code>PUT</code> or <code>DELETE</code> action for mapping users to their groups.</p>
    #   @return [Time]
    # @!attribute data_source_id
    #   <p>The identifier of the data source for getting a list of groups mapped to users.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If the previous response was incomplete (because there is more data to retrieve), Amazon Q Business returns a pagination token in the response. You can use this pagination token to retrieve the next set of groups that are mapped to users.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of returned groups that are mapped to users.</p>
    #   @return [Integer]
    class ListGroupsRequest < Struct.new(
      :application_id,
      :index_id,
      :updated_earlier_than,
      :data_source_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Q Business returns this token that you can use in the subsequent request to retrieve the next set of groups that are mapped to users.</p>
    #   @return [String]
    # @!attribute items
    #   <p>Summary information for list of groups that are mapped to users.</p>
    #   @return [Array<Types::GroupSummary>]
    class ListGroupsResponse < Struct.new(
      :next_token,
      :items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the Amazon Q Business application connected to the index.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If the maxResults response was incomplete because there is more data to retrieve, Amazon Q Business returns a pagination token in the response. You can use this pagination token to retrieve the next set of Amazon Q Business indices.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of indices to return.</p>
    #   @return [Integer]
    class ListIndicesRequest < Struct.new(
      :application_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Q Business returns this token that you can use in the subsequent request to retrieve the next set of indexes.</p>
    #   @return [String]
    # @!attribute indices
    #   <p>An array of information on the items in one or more indexes.</p>
    #   @return [Array<Types::Index>]
    class ListIndicesResponse < Struct.new(
      :next_token,
      :indices,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute conversation_id
    #   <p>The identifier of the Amazon Q Business web experience conversation.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>The identifier for the Amazon Q Business application.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The identifier of the user involved in the Amazon Q Business web experience conversation.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If the number of messages returned exceeds <code>maxResults</code>, Amazon Q Business returns a next token as a pagination token to retrieve the next set of messages.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of messages to return.</p>
    #   @return [Integer]
    class ListMessagesRequest < Struct.new(
      :conversation_id,
      :application_id,
      :user_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute messages
    #   <p>An array of information on one or more messages.</p>
    #   @return [Array<Types::Message>]
    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Q Business returns this token, which you can use in a later request to list the next set of messages.</p>
    #   @return [String]
    class ListMessagesResponse < Struct.new(
      :messages,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the Amazon Q Business application the plugin is attached to.</p>
    #   @return [String]
    # @!attribute plugin_id
    #   <p>The identifier of the Amazon Q Business plugin.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If the number of plugin actions returned exceeds <code>maxResults</code>, Amazon Q Business returns a next token as a pagination token to retrieve the next set of plugin actions.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of plugin actions to return.</p>
    #   @return [Integer]
    class ListPluginActionsRequest < Struct.new(
      :application_id,
      :plugin_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Q Business returns this token, which you can use in a later request to list the next set of plugin actions.</p>
    #   @return [String]
    # @!attribute items
    #   <p>An array of information on one or more plugin actions.</p>
    #   @return [Array<Types::ActionSummary>]
    class ListPluginActionsResponse < Struct.new(
      :next_token,
      :items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute plugin_type
    #   <p>The type of the plugin.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If the number of plugins returned exceeds <code>maxResults</code>, Amazon Q Business returns a next token as a pagination token to retrieve the next set of plugins.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of plugins to return.</p>
    #   @return [Integer]
    class ListPluginTypeActionsRequest < Struct.new(
      :plugin_type,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Q Business returns this token, which you can use in a later request to list the next set of plugins.</p>
    #   @return [String]
    # @!attribute items
    #   <p>An array of information on one or more plugins.</p>
    #   @return [Array<Types::ActionSummary>]
    class ListPluginTypeActionsResponse < Struct.new(
      :next_token,
      :items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the metadata returned exceeds <code>maxResults</code>, Amazon Q Business returns a next token as a pagination token to retrieve the next set of metadata.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of plugin metadata items to return.</p>
    #   @return [Integer]
    class ListPluginTypeMetadataRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Q Business returns this token, which you can use in a later request to list the next set of plugin metadata.</p>
    #   @return [String]
    # @!attribute items
    #   <p>An array of information on plugin metadata.</p>
    #   @return [Array<Types::PluginTypeMetadataSummary>]
    class ListPluginTypeMetadataResponse < Struct.new(
      :next_token,
      :items,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the application the plugin is attached to.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If the <code>maxResults</code> response was incomplete because there is more data to retrieve, Amazon Q Business returns a pagination token in the response. You can use this pagination token to retrieve the next set of plugins.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of documents to return.</p>
    #   @return [Integer]
    class ListPluginsRequest < Struct.new(
      :application_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the <code>maxResults</code> response was incomplete because there is more data to retrieve, Amazon Q Business returns a pagination token in the response. You can use this pagination token to retrieve the next set of plugins.</p>
    #   @return [String]
    # @!attribute plugins
    #   <p>Information about a configured plugin.</p>
    #   @return [Array<Types::Plugin>]
    class ListPluginsResponse < Struct.new(
      :next_token,
      :plugins,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the Amazon Q Business application using the retriever.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If the number of retrievers returned exceeds <code>maxResults</code>, Amazon Q Business returns a next token as a pagination token to retrieve the next set of retrievers.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of retrievers returned.</p>
    #   @return [Integer]
    class ListRetrieversRequest < Struct.new(
      :application_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute retrievers
    #   <p>An array of summary information for one or more retrievers.</p>
    #   @return [Array<Types::Retriever>]
    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Q Business returns this token, which you can use in a later request to list the next set of retrievers.</p>
    #   @return [String]
    class ListRetrieversResponse < Struct.new(
      :retrievers,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the Amazon Q Business application linked to the subscription.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If the <code>maxResults</code> response was incomplete because there is more data to retrieve, Amazon Q Business returns a pagination token in the response. You can use this pagination token to retrieve the next set of Amazon Q Business subscriptions.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of Amazon Q Business subscriptions to return.</p>
    #   @return [Integer]
    class ListSubscriptionsRequest < Struct.new(
      :application_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Q Business returns this token. You can use this token in a subsequent request to retrieve the next set of subscriptions.</p>
    #   @return [String]
    # @!attribute subscriptions
    #   <p>An array of summary information on the subscriptions configured for an Amazon Q Business application.</p>
    #   @return [Array<Types::Subscription>]
    class ListSubscriptionsResponse < Struct.new(
      :next_token,
      :subscriptions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Q Business application or data source to get a list of tags for.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A list of tags associated with the Amazon Q Business application or data source.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the Amazon Q Business application linked to the listed web experiences.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If the <code>maxResults</code> response was incomplete because there is more data to retrieve, Amazon Q Business returns a pagination token in the response. You can use this pagination token to retrieve the next set of Amazon Q Business conversations.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of Amazon Q Business Web Experiences to return.</p>
    #   @return [Integer]
    class ListWebExperiencesRequest < Struct.new(
      :application_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute web_experiences
    #   <p>An array of summary information for one or more Amazon Q Business experiences.</p>
    #   @return [Array<Types::WebExperience>]
    # @!attribute next_token
    #   <p>If the response is truncated, Amazon Q Business returns this token, which you can use in a later request to list the next set of messages.</p>
    #   @return [String]
    class ListWebExperiencesResponse < Struct.new(
      :web_experiences,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The configuration for extracting information from media in documents.</p>
    # @!attribute image_extraction_configuration
    #   <p>The configuration for extracting semantic meaning from images in documents. For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/extracting-meaning-from-images.html">Extracting semantic meaning from images and visuals</a>. </p>
    #   @return [Types::ImageExtractionConfiguration]
    # @!attribute audio_extraction_configuration
    #   <p>Configuration settings for extracting and processing audio content from media files.</p>
    #   @return [Types::AudioExtractionConfiguration]
    # @!attribute video_extraction_configuration
    #   <p>Configuration settings for extracting and processing video content from media files.</p>
    #   @return [Types::VideoExtractionConfiguration]
    class MediaExtractionConfiguration < Struct.new(
      :image_extraction_configuration,
      :audio_extraction_configuration,
      :video_extraction_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The requested media object is too large to be returned.</p>
    # @!attribute message
    #   @return [String]
    class MediaTooLargeException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The sub groups that belong to a group.</p>
    # @!attribute group_name
    #   <p>The name of the sub group.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the sub group.</p>
    #   @return [String]
    class MemberGroup < Struct.new(
      :group_name,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module MemberRelation
      AND = 'AND'
      OR = 'OR'
    end

    # <p>The users that belong to a group.</p>
    # @!attribute user_id
    #   <p>The identifier of the user you want to map to a group.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the user.</p>
    #   @return [String]
    class MemberUser < Struct.new(
      :user_id,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module MembershipType
      INDEX = 'INDEX'
      DATASOURCE = 'DATASOURCE'
    end

    # <p>A message in an Amazon Q Business web experience.</p>
    # @!attribute message_id
    #   <p>The identifier of the Amazon Q Business web experience message.</p>
    #   @return [String]
    # @!attribute body
    #   <p>The content of the Amazon Q Business web experience message.</p>
    #   @return [String]
    # @!attribute time
    #   <p>The timestamp of the first Amazon Q Business web experience message.</p>
    #   @return [Time]
    # @!attribute type
    #   <p>The type of Amazon Q Business message, whether <code>HUMAN</code> or <code>AI</code> generated.</p>
    #   @return [String]
    # @!attribute attachments
    #   <p>A file directly uploaded into an Amazon Q Business web experience chat.</p>
    #   @return [Array<Types::AttachmentOutput>]
    # @!attribute source_attribution
    #   <p>The source documents used to generate Amazon Q Business web experience message.</p>
    #   @return [Array<Types::SourceAttribution>]
    # @!attribute action_review
    #   <p>An output event that Amazon Q Business returns to an user who wants to perform a plugin action during a non-streaming chat conversation. It contains information about the selected action with a list of possible user input fields, some pre-populated by Amazon Q Business.</p>
    #   @return [Types::ActionReview]
    # @!attribute action_execution
    #   <p>Performs an Amazon Q Business plugin action during a non-streaming chat conversation.</p>
    #   @return [Types::ActionExecution]
    class Message < Struct.new(
      :message_id,
      :body,
      :time,
      :type,
      :attachments,
      :source_attribution,
      :action_review,
      :action_execution,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module MessageType
      USER = 'USER'
      SYSTEM = 'SYSTEM'
    end

    module MessageUsefulness
      USEFUL = 'USEFUL'
      NOT_USEFUL = 'NOT_USEFUL'
    end

    # <p>End user feedback on an AI-generated web experience chat message usefulness.</p>
    # @!attribute usefulness
    #   <p>The usefulness value assigned by an end user to a message.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for a usefulness rating.</p>
    #   @return [String]
    # @!attribute comment
    #   <p>A comment given by an end user on the usefulness of an AI-generated chat message.</p>
    #   @return [String]
    # @!attribute submitted_at
    #   <p>The timestamp for when the feedback was submitted.</p>
    #   @return [Time]
    class MessageUsefulnessFeedback < Struct.new(
      :usefulness,
      :reason,
      :comment,
      :submitted_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module MessageUsefulnessReason
      NOT_FACTUALLY_CORRECT = 'NOT_FACTUALLY_CORRECT'
      HARMFUL_OR_UNSAFE = 'HARMFUL_OR_UNSAFE'
      INCORRECT_OR_MISSING_SOURCES = 'INCORRECT_OR_MISSING_SOURCES'
      NOT_HELPFUL = 'NOT_HELPFUL'
      FACTUALLY_CORRECT = 'FACTUALLY_CORRECT'
      COMPLETE = 'COMPLETE'
      RELEVANT_SOURCES = 'RELEVANT_SOURCES'
      HELPFUL = 'HELPFUL'
      NOT_BASED_ON_DOCUMENTS = 'NOT_BASED_ON_DOCUMENTS'
      NOT_COMPLETE = 'NOT_COMPLETE'
      NOT_CONCISE = 'NOT_CONCISE'
      OTHER = 'OTHER'
    end

    # <p>A metadata event for a AI-generated text output message in a Amazon Q Business conversation, containing associated metadata generated.</p>
    # @!attribute conversation_id
    #   <p>The identifier of the conversation with which the generated metadata is associated.</p>
    #   @return [String]
    # @!attribute user_message_id
    #   <p>The identifier of an Amazon Q Business end user text input message within the conversation.</p>
    #   @return [String]
    # @!attribute system_message_id
    #   <p>The identifier of an Amazon Q Business AI generated message within the conversation.</p>
    #   @return [String]
    # @!attribute source_attributions
    #   <p>The source documents used to generate the conversation response.</p>
    #   @return [Array<Types::SourceAttribution>]
    # @!attribute final_text_message
    #   <p>The final text output message generated by the system.</p>
    #   @return [String]
    class MetadataEvent < Struct.new(
      :conversation_id,
      :user_message_id,
      :system_message_id,
      :source_attributions,
      :final_text_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Configuration information for an Amazon Q Business index.</p>
    # @!attribute index_id
    #   <p>The identifier for the Amazon Q Business index.</p>
    #   @return [String]
    # @!attribute version
    #   <p>A read-only field that specifies the version of the <code>NativeIndexConfiguration</code>.</p> <p>Amazon Q Business introduces enhanced document retrieval capabilities in version 2 of <code>NativeIndexConfiguration</code>, focusing on streamlined metadata boosting that prioritizes recency and source relevance to deliver more accurate responses to your queries. Version 2 has the following differences from version 1:</p> <ul> <li> <p>Version 2 supports a single Date field (created_at OR last_updated_at) for recency boosting</p> </li> <li> <p>Version 2 supports a single String field with an ordered list of up to 5 values</p> </li> <li> <p>Version 2 introduces number-based boost levels (ONE, TWO) alongside the text-based levels</p> </li> <li> <p>Version 2 allows specifying prioritization between Date and String fields</p> </li> <li> <p>Version 2 maintains backward compatibility with existing configurations</p> </li> </ul>
    #   @return [Integer]
    # @!attribute boosting_override
    #   <p>Overrides the default boosts applied by Amazon Q Business to supported document attribute data types.</p>
    #   @return [Hash<String, Types::DocumentAttributeBoostingConfiguration>]
    class NativeIndexConfiguration < Struct.new(
      :index_id,
      :version,
      :boosting_override,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about invoking a custom plugin without any authentication or authorization requirement.</p>
    class NoAuthConfiguration < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information on boosting <code>NUMBER</code> type document attributes.</p> <p>In the current boosting implementation, boosting focuses primarily on <code>DATE</code> attributes for recency and <code>STRING</code> attributes for source prioritization. <code>NUMBER</code> attributes can serve as additional boosting factors when needed, but are not supported when using <code>NativeIndexConfiguration</code> version 2.</p> <p>For more information on how boosting document attributes work in Amazon Q Business, see <a href="https://docs.aws.amazon.com/amazonq/latest/business-use-dg/metadata-boosting.html">Boosting using document attributes</a>.</p>
    # @!attribute boosting_level
    #   <p>Specifies the priority of boosted document attributes in relation to other boosted attributes. This parameter determines how strongly the attribute influences document ranking in search results. <code>NUMBER</code> attributes can serve as additional boosting factors when needed, but are not supported when using <code>NativeIndexConfiguration</code> version 2.</p>
    #   @return [String]
    # @!attribute boosting_type
    #   <p>Specifies whether higher or lower numeric values should be prioritized when boosting. Valid values are ASCENDING (higher numbers are more important) and DESCENDING (lower numbers are more important).</p>
    #   @return [String]
    class NumberAttributeBoostingConfiguration < Struct.new(
      :boosting_level,
      :boosting_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module NumberAttributeBoostingType
      PRIORITIZE_LARGER_VALUES = 'PRIORITIZE_LARGER_VALUES'
      PRIORITIZE_SMALLER_VALUES = 'PRIORITIZE_SMALLER_VALUES'
    end

    # <p>Information about the OAuth 2.0 authentication credential/token used to configure a plugin.</p>
    # @!attribute secret_arn
    #   <p>The ARN of the Secrets Manager secret that stores the OAuth 2.0 credentials/token used for plugin configuration.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of an IAM role used by Amazon Q Business to access the OAuth 2.0 authentication credentials stored in a Secrets Manager secret.</p>
    #   @return [String]
    # @!attribute authorization_url
    #   <p>The redirect URL required by the OAuth 2.0 protocol for Amazon Q Business to authenticate a plugin user through a third party authentication server.</p>
    #   @return [String]
    # @!attribute token_url
    #   <p>The URL required by the OAuth 2.0 protocol to exchange an end user authorization code for an access token.</p>
    #   @return [String]
    class OAuth2ClientCredentialConfiguration < Struct.new(
      :secret_arn,
      :role_arn,
      :authorization_url,
      :token_url,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about the OIDC-compliant identity provider (IdP) used to authenticate end users of an Amazon Q Business web experience.</p>
    # @!attribute secrets_arn
    #   <p>The Amazon Resource Name (ARN) of a Secrets Manager secret containing the OIDC client secret.</p>
    #   @return [String]
    # @!attribute secrets_role
    #   <p>An IAM role with permissions to access KMS to decrypt the Secrets Manager secret containing your OIDC client secret.</p>
    #   @return [String]
    class OpenIDConnectProviderConfiguration < Struct.new(
      :secrets_arn,
      :secrets_role,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Configuration information required to enable chat orchestration for your Amazon Q Business application.</p> <note> <p>Chat orchestration is optimized to work for English language content. For more details on language support in Amazon Q Business, see <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/supported-languages.html">Supported languages</a>.</p> </note>
    # @!attribute control
    #   <p> Status information about whether chat orchestration is activated or deactivated for your Amazon Q Business application.</p>
    #   @return [String]
    class OrchestrationConfiguration < Struct.new(
      :control,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module OrchestrationControl
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    module OutputFormat
      RAW = 'RAW'
    end

    # <p>Defines a condition that restricts when a permission is effective. Conditions allow you to control access based on specific attributes of the request.</p>
    # @!attribute condition_operator
    #   <p>The operator to use for the condition evaluation. This determines how the condition values are compared.</p>
    #   @return [String]
    # @!attribute condition_key
    #   <p>The key for the condition. This identifies the attribute that the condition applies to.</p>
    #   @return [String]
    # @!attribute condition_values
    #   <p>The values to compare against using the specified condition operator.</p>
    #   @return [Array<String>]
    class PermissionCondition < Struct.new(
      :condition_operator,
      :condition_key,
      :condition_values,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module PermissionConditionOperator
      STRING_EQUALS = 'StringEquals'
    end

    # <p>Configuration information about chat response personalization. For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/personalizing-chat-responses.html">Personalizing chat responses</a>.</p>
    # @!attribute personalization_control_mode
    #   <p>An option to allow Amazon Q Business to customize chat responses using user specific metadata—specifically, location and job information—in your IAM Identity Center instance.</p>
    #   @return [String]
    class PersonalizationConfiguration < Struct.new(
      :personalization_control_mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module PersonalizationControlMode
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # <p>Information about an Amazon Q Business plugin and its configuration.</p>
    # @!attribute plugin_id
    #   <p>The identifier of the plugin.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The name of the plugin.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the plugin.</p>
    #   @return [String]
    # @!attribute server_url
    #   <p>The plugin server URL used for configuration.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current status of the plugin.</p>
    #   @return [String]
    # @!attribute build_status
    #   <p>The status of the plugin.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp for when the plugin was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp for when the plugin was last updated.</p>
    #   @return [Time]
    class Plugin < Struct.new(
      :plugin_id,
      :display_name,
      :type,
      :server_url,
      :state,
      :build_status,
      :created_at,
      :updated_at,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Authentication configuration information for an Amazon Q Business plugin.</p>
    # @!attribute basic_auth_configuration
    #   <p>Information about the basic authentication credentials used to configure a plugin.</p>
    #   @return [Types::BasicAuthConfiguration]
    # @!attribute o_auth2_client_credential_configuration
    #   <p>Information about the OAuth 2.0 authentication credential/token used to configure a plugin.</p>
    #   @return [Types::OAuth2ClientCredentialConfiguration]
    # @!attribute no_auth_configuration
    #   <p>Information about invoking a custom plugin without any authentication.</p>
    #   @return [Types::NoAuthConfiguration]
    # @!attribute idc_auth_configuration
    #   <p>Information about the IAM Identity Center Application used to configure authentication for a plugin.</p>
    #   @return [Types::IdcAuthConfiguration]
    class PluginAuthConfiguration < Struct.new(
      :basic_auth_configuration,
      :o_auth2_client_credential_configuration,
      :no_auth_configuration,
      :idc_auth_configuration,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class BasicAuthConfiguration < PluginAuthConfiguration; end
      class OAuth2ClientCredentialConfiguration < PluginAuthConfiguration; end
      class NoAuthConfiguration < PluginAuthConfiguration; end
      class IdcAuthConfiguration < PluginAuthConfiguration; end
      class Unknown < PluginAuthConfiguration; end
    end

    module PluginBuildStatus
      READY = 'READY'
      CREATE_IN_PROGRESS = 'CREATE_IN_PROGRESS'
      CREATE_FAILED = 'CREATE_FAILED'
      UPDATE_IN_PROGRESS = 'UPDATE_IN_PROGRESS'
      UPDATE_FAILED = 'UPDATE_FAILED'
      DELETE_IN_PROGRESS = 'DELETE_IN_PROGRESS'
      DELETE_FAILED = 'DELETE_FAILED'
    end

    # <p>Configuration information required to invoke chat in <code>PLUGIN_MODE</code>.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/guardrails.html">Admin controls and guardrails</a>, <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/plugins.html">Plugins</a>, and <a href="https://docs.aws.amazon.com/amazonq/latest/business-use-dg/using-web-experience.html#chat-source-scope">Conversation settings</a>.</p>
    # @!attribute plugin_id
    #   <p> The identifier of the plugin you want to use.</p>
    #   @return [String]
    class PluginConfiguration < Struct.new(
      :plugin_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module PluginState
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    module PluginType
      SERVICE_NOW = 'SERVICE_NOW'
      SALESFORCE = 'SALESFORCE'
      JIRA = 'JIRA'
      ZENDESK = 'ZENDESK'
      CUSTOM = 'CUSTOM'
      QUICKSIGHT = 'QUICKSIGHT'
      SERVICENOW_NOW_PLATFORM = 'SERVICENOW_NOW_PLATFORM'
      JIRA_CLOUD = 'JIRA_CLOUD'
      SALESFORCE_CRM = 'SALESFORCE_CRM'
      ZENDESK_SUITE = 'ZENDESK_SUITE'
      ATLASSIAN_CONFLUENCE = 'ATLASSIAN_CONFLUENCE'
      GOOGLE_CALENDAR = 'GOOGLE_CALENDAR'
      MICROSOFT_TEAMS = 'MICROSOFT_TEAMS'
      MICROSOFT_EXCHANGE = 'MICROSOFT_EXCHANGE'
      PAGERDUTY_ADVANCE = 'PAGERDUTY_ADVANCE'
      SMARTSHEET = 'SMARTSHEET'
      ASANA = 'ASANA'
    end

    module PluginTypeCategory
      CRM = 'Customer relationship management (CRM)'
      PROJECT_MANAGEMENT = 'Project management'
      COMMUNICATION = 'Communication'
      PRODUCTIVITY = 'Productivity'
      TICKETING_MANAGEMENT = 'Ticketing and incident management'
    end

    # <p>Summary metadata information for a Amazon Q Business plugin.</p>
    # @!attribute type
    #   <p>The type of the plugin.</p>
    #   @return [String]
    # @!attribute category
    #   <p>The category of the plugin type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description assigned by Amazon Q Business to a plugin. You can't modify this value.</p>
    #   @return [String]
    class PluginTypeMetadataSummary < Struct.new(
      :type,
      :category,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides user and group information used for filtering documents to use for generating Amazon Q Business conversation responses.</p>
    # @!attribute user
    #   <p>The user associated with the principal.</p>
    #   @return [Types::PrincipalUser]
    # @!attribute group
    #   <p> The group associated with the principal.</p>
    #   @return [Types::PrincipalGroup]
    class Principal < Struct.new(
      :user,
      :group,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class User < Principal; end
      class Group < Principal; end
      class Unknown < Principal; end
    end

    # <p>Provides information about a group associated with the principal.</p>
    # @!attribute name
    #   <p>The name of the group.</p>
    #   @return [String]
    # @!attribute access
    #   <p>Provides information about whether to allow or deny access to the principal.</p>
    #   @return [String]
    # @!attribute membership_type
    #   <p>The type of group.</p>
    #   @return [String]
    class PrincipalGroup < Struct.new(
      :name,
      :access,
      :membership_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information about a user associated with a principal.</p>
    # @!attribute id
    #   <p> The identifier of the user. </p>
    #   @return [String]
    # @!attribute access
    #   <p>Provides information about whether to allow or deny access to the principal.</p>
    #   @return [String]
    # @!attribute membership_type
    #   <p>The type of group.</p>
    #   @return [String]
    class PrincipalUser < Struct.new(
      :id,
      :access,
      :membership_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the application associated with the feedback.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The identifier of the user giving the feedback.</p>
    #   @return [String]
    # @!attribute conversation_id
    #   <p>The identifier of the conversation the feedback is attached to.</p>
    #   @return [String]
    # @!attribute message_id
    #   <p>The identifier of the chat message that the feedback was given for.</p>
    #   @return [String]
    # @!attribute message_copied_at
    #   <p>The timestamp for when the feedback was recorded.</p>
    #   @return [Time]
    # @!attribute message_usefulness
    #   <p>The feedback usefulness value given by the user to the chat message.</p>
    #   @return [Types::MessageUsefulnessFeedback]
    class PutFeedbackRequest < Struct.new(
      :application_id,
      :user_id,
      :conversation_id,
      :message_id,
      :message_copied_at,
      :message_usefulness,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the application in which the user and group mapping belongs.</p>
    #   @return [String]
    # @!attribute index_id
    #   <p>The identifier of the index in which you want to map users to their groups.</p>
    #   @return [String]
    # @!attribute group_name
    #   <p>The list that contains your users or sub groups that belong the same group. For example, the group "Company" includes the user "CEO" and the sub groups "Research", "Engineering", and "Sales and Marketing".</p>
    #   @return [String]
    # @!attribute data_source_id
    #   <p>The identifier of the data source for which you want to map users to their groups. This is useful if a group is tied to multiple data sources, but you only want the group to access documents of a certain data source. For example, the groups "Research", "Engineering", and "Sales and Marketing" are all tied to the company's documents stored in the data sources Confluence and Salesforce. However, "Sales and Marketing" team only needs access to customer-related documents stored in Salesforce.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the group.</p>
    #   @return [String]
    # @!attribute group_members
    #   <p>A list of users or sub groups that belong to a group. This is for generating Amazon Q Business chat results only from document a user has access to.</p>
    #   @return [Types::GroupMembers]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that has access to the S3 file that contains your list of users that belong to a group.</p>
    #   @return [String]
    class PutGroupRequest < Struct.new(
      :application_id,
      :index_id,
      :group_name,
      :data_source_id,
      :type,
      :group_members,
      :role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class PutGroupResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Configuration information about Amazon Q Apps.</p>
    # @!attribute q_apps_control_mode
    #   <p>Status information about whether end users can create and use Amazon Q Apps in the web experience.</p>
    #   @return [String]
    class QAppsConfiguration < Struct.new(
      :q_apps_control_mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module QAppsControlMode
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # <p>The Amazon QuickSight configuration for an Amazon Q Business application that uses QuickSight as the identity provider. For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/create-quicksight-integrated-application.html">Creating an Amazon QuickSight integrated application</a>.</p>
    # @!attribute client_namespace
    #   <p>The Amazon QuickSight namespace that is used as the identity provider. For more information about QuickSight namespaces, see <a href="https://docs.aws.amazon.com/quicksight/latest/developerguide/namespace-operations.html">Namespace operations</a>. </p>
    #   @return [String]
    class QuickSightConfiguration < Struct.new(
      :client_namespace,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ReadAccessType
      ALLOW = 'ALLOW'
      DENY = 'DENY'
    end

    # <p>Represents a piece of content that is relevant to a search query.</p>
    # @!attribute content
    #   <p>The actual content of the relevant item.</p>
    #   @return [String]
    # @!attribute document_id
    #   <p>The unique identifier of the document containing the relevant content.</p>
    #   @return [String]
    # @!attribute document_title
    #   <p>The title of the document containing the relevant content.</p>
    #   @return [String]
    # @!attribute document_uri
    #   <p>The URI of the document containing the relevant content.</p>
    #   @return [String]
    # @!attribute document_attributes
    #   <p>Additional attributes of the document containing the relevant content.</p>
    #   @return [Array<Types::DocumentAttribute>]
    # @!attribute score_attributes
    #   <p>Attributes related to the relevance score of the content.</p>
    #   @return [Types::ScoreAttributes]
    class RelevantContent < Struct.new(
      :content,
      :document_id,
      :document_title,
      :document_uri,
      :document_attributes,
      :score_attributes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The application or plugin resource you want to use doesn’t exist. Make sure you have provided the correct resource and try again.</p>
    # @!attribute message
    #   <p>The message describing a <code>ResourceNotFoundException</code>.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource affected.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource affected.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Configuration settings to define how Amazon Q Business generates and formats responses to user queries. This includes customization options for response style, tone, length, and other characteristics.</p>
    # @!attribute instruction_collection
    #   <p>A collection of instructions that guide how Amazon Q Business generates responses, including parameters for response length, target audience, perspective, output style, identity, tone, and custom instructions.</p>
    #   @return [Types::InstructionCollection]
    class ResponseConfiguration < Struct.new(
      :instruction_collection,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ResponseConfigurationType
      ALL = 'ALL'
    end

    module ResponseScope
      ENTERPRISE_CONTENT_ONLY = 'ENTERPRISE_CONTENT_ONLY'
      EXTENDED_KNOWLEDGE_ENABLED = 'EXTENDED_KNOWLEDGE_ENABLED'
    end

    # <p>Summary information for the retriever used for your Amazon Q Business application.</p>
    # @!attribute application_id
    #   <p>The identifier of the Amazon Q Business application using the retriever.</p>
    #   @return [String]
    # @!attribute retriever_id
    #   <p>The identifier of the retriever used by your Amazon Q Business application.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of your retriever.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of your retriever.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The name of your retriever.</p>
    #   @return [String]
    class Retriever < Struct.new(
      :application_id,
      :retriever_id,
      :type,
      :status,
      :display_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information on how the retriever used for your Amazon Q Business application is configured.</p>
    # @!attribute native_index_configuration
    #   <p>Provides information on how a Amazon Q Business index used as a retriever for your Amazon Q Business application is configured.</p>
    #   @return [Types::NativeIndexConfiguration]
    # @!attribute kendra_index_configuration
    #   <p>Provides information on how the Amazon Kendra index used as a retriever for your Amazon Q Business application is configured.</p>
    #   @return [Types::KendraIndexConfiguration]
    class RetrieverConfiguration < Struct.new(
      :native_index_configuration,
      :kendra_index_configuration,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class NativeIndexConfiguration < RetrieverConfiguration; end
      class KendraIndexConfiguration < RetrieverConfiguration; end
      class Unknown < RetrieverConfiguration; end
    end

    # <p>Specifies a retriever as the content source for a search.</p>
    # @!attribute retriever_id
    #   <p>The unique identifier of the retriever to use as the content source.</p>
    #   @return [String]
    class RetrieverContentSource < Struct.new(
      :retriever_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module RetrieverStatus
      CREATING = 'CREATING'
      ACTIVE = 'ACTIVE'
      FAILED = 'FAILED'
    end

    module RetrieverType
      NATIVE_INDEX = 'NATIVE_INDEX'
      KENDRA_INDEX = 'KENDRA_INDEX'
    end

    # <p>Guardrail rules for an Amazon Q Business application. Amazon Q Business supports only one rule at a time.</p>
    # @!attribute included_users_and_groups
    #   <p>Users and groups to be included in a rule.</p>
    #   @return [Types::UsersAndGroups]
    # @!attribute excluded_users_and_groups
    #   <p>Users and groups to be excluded from a rule.</p>
    #   @return [Types::UsersAndGroups]
    # @!attribute rule_type
    #   <p>The type of rule.</p>
    #   @return [String]
    # @!attribute rule_configuration
    #   <p>The configuration information for a rule.</p>
    #   @return [Types::RuleConfiguration]
    class Rule < Struct.new(
      :included_users_and_groups,
      :excluded_users_and_groups,
      :rule_type,
      :rule_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides configuration information about a rule.</p>
    # @!attribute content_blocker_rule
    #   <p>A rule for configuring how Amazon Q Business responds when it encounters a a blocked topic.</p>
    #   @return [Types::ContentBlockerRule]
    # @!attribute content_retrieval_rule
    #   <p>Rules for retrieving content from data sources connected to a Amazon Q Business application for a specific topic control configuration.</p>
    #   @return [Types::ContentRetrievalRule]
    class RuleConfiguration < Struct.new(
      :content_blocker_rule,
      :content_retrieval_rule,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class ContentBlockerRule < RuleConfiguration; end
      class ContentRetrievalRule < RuleConfiguration; end
      class Unknown < RuleConfiguration; end
    end

    module RuleType
      CONTENT_BLOCKER_RULE = 'CONTENT_BLOCKER_RULE'
      CONTENT_RETRIEVAL_RULE = 'CONTENT_RETRIEVAL_RULE'
    end

    # <p>Information required for Amazon Q Business to find a specific file in an Amazon S3 bucket.</p>
    # @!attribute bucket
    #   <p>The name of the S3 bucket that contains the file.</p>
    #   @return [String]
    # @!attribute key
    #   <p>The name of the file.</p>
    #   @return [String]
    class S3 < Struct.new(
      :bucket,
      :key,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides the SAML 2.0 compliant identity provider (IdP) configuration information Amazon Q Business needs to deploy a Amazon Q Business web experience.</p>
    # @!attribute metadata_xml
    #   <p>The metadata XML that your IdP generated.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role assumed by users when they authenticate into their Amazon Q Business web experience, containing the relevant Amazon Q Business permissions for conversing with Amazon Q Business.</p>
    #   @return [String]
    # @!attribute user_id_attribute
    #   <p>The user attribute name in your IdP that maps to the user email.</p>
    #   @return [String]
    # @!attribute user_group_attribute
    #   <p>The group attribute name in your IdP that maps to user groups.</p>
    #   @return [String]
    class SamlConfiguration < Struct.new(
      :metadata_xml,
      :role_arn,
      :user_id_attribute,
      :user_group_attribute,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about the SAML 2.0-compliant identity provider (IdP) used to authenticate end users of an Amazon Q Business web experience.</p>
    # @!attribute authentication_url
    #   <p>The URL where Amazon Q Business end users will be redirected for authentication. </p>
    #   @return [String]
    class SamlProviderConfiguration < Struct.new(
      :authentication_url,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information about the relevance score of content.</p>
    # @!attribute score_confidence
    #   <p>The confidence level of the relevance score.</p>
    #   @return [String]
    class ScoreAttributes < Struct.new(
      :score_confidence,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ScoreConfidence
      VERY_HIGH = 'VERY_HIGH'
      HIGH = 'HIGH'
      MEDIUM = 'MEDIUM'
      LOW = 'LOW'
      NOT_AVAILABLE = 'NOT_AVAILABLE'
    end

    # @!attribute application_id
    #   <p>The unique identifier of the Amazon Q Business application to search.</p>
    #   @return [String]
    # @!attribute query_text
    #   <p>The text to search for.</p>
    #   @return [String]
    # @!attribute content_source
    #   <p>The source of content to search in.</p>
    #   @return [Types::ContentSource]
    # @!attribute attribute_filter
    #   <p>Enables filtering of responses based on document attributes or metadata fields.</p>
    #   @return [Types::AttributeFilter]
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. (You received this token from a previous call.)</p>
    #   @return [String]
    class SearchRelevantContentRequest < Struct.new(
      :application_id,
      :query_text,
      :content_source,
      :attribute_filter,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute relevant_content
    #   <p>The list of relevant content items found.</p>
    #   @return [Array<Types::RelevantContent>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next set of results, if there are any.</p>
    #   @return [String]
    class SearchRelevantContentResponse < Struct.new(
      :relevant_content,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You have exceeded the set limits for your Amazon Q Business service. </p>
    # @!attribute message
    #   <p>The message describing a <code>ServiceQuotaExceededException</code>.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The identifier of the resource affected.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource affected.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the relevant text excerpt from a source that was used to generate a citation text segment in an Amazon Q Business chat response.</p>
    # @!attribute text
    #   <p>The relevant text excerpt from a source that was used to generate a citation text segment in an Amazon Q chat response.</p>
    #   @return [String]
    class SnippetExcerpt < Struct.new(
      :text,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The documents used to generate an Amazon Q Business web experience response.</p>
    # @!attribute title
    #   <p>The title of the document which is the source for the Amazon Q Business generated response. </p>
    #   @return [String]
    # @!attribute snippet
    #   <p>The content extract from the document on which the generated response is based. </p>
    #   @return [String]
    # @!attribute url
    #   <p>The URL of the document which is the source for the Amazon Q Business generated response. </p>
    #   @return [String]
    # @!attribute citation_number
    #   <p>The number attached to a citation in an Amazon Q Business generated response.</p>
    #   @return [Integer]
    # @!attribute updated_at
    #   <p>The Unix timestamp when the Amazon Q Business application was last updated.</p>
    #   @return [Time]
    # @!attribute text_message_segments
    #   <p>A text extract from a source document that is used for source attribution.</p>
    #   @return [Array<Types::TextSegment>]
    # @!attribute document_id
    #   <p>The unique identifier of the source document used in the citation, obtained from the Amazon Q Business index during chat response generation. This ID is used as input to the <code>GetDocumentContent</code> API to retrieve the actual document content for user verification.</p>
    #   @return [String]
    # @!attribute index_id
    #   <p>The identifier of the index containing the source document's metadata and access control information. This links the citation back to the specific Amazon Q Business index where the document's searchable content and permissions are stored.</p>
    #   @return [String]
    # @!attribute datasource_id
    #   <p>The identifier of the data source from which the document was ingested. This field is not present if the document is ingested by directly calling the BatchPutDocument API (similar to checkDocumentAccess). If the document is from a file-upload data source, the datasource will be "uploaded-docs-file-stat-datasourceid".</p>
    #   @return [String]
    class SourceAttribution < Struct.new(
      :title,
      :snippet,
      :url,
      :citation_number,
      :updated_at,
      :text_message_segments,
      :document_id,
      :index_id,
      :datasource_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Container for details about different types of media sources (image, audio, or video).</p>
    # @!attribute image_source_details
    #   <p>Details specific to image content within the source.</p>
    #   @return [Types::ImageSourceDetails]
    # @!attribute audio_source_details
    #   <p>Details specific to audio content within the source.</p>
    #   @return [Types::AudioSourceDetails]
    # @!attribute video_source_details
    #   <p>Details specific to video content within the source.</p>
    #   @return [Types::VideoSourceDetails]
    class SourceDetails < Struct.new(
      :image_source_details,
      :audio_source_details,
      :video_source_details,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class ImageSourceDetails < SourceDetails; end
      class AudioSourceDetails < SourceDetails; end
      class VideoSourceDetails < SourceDetails; end
      class Unknown < SourceDetails; end
    end

    # @!attribute data_source_id
    #   <p> The identifier of the data source connector. </p>
    #   @return [String]
    # @!attribute application_id
    #   <p>The identifier of Amazon Q Business application the data source is connected to.</p>
    #   @return [String]
    # @!attribute index_id
    #   <p>The identifier of the index used with the data source connector.</p>
    #   @return [String]
    class StartDataSourceSyncJobRequest < Struct.new(
      :data_source_id,
      :application_id,
      :index_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute execution_id
    #   <p>The identifier for a particular synchronization job.</p>
    #   @return [String]
    class StartDataSourceSyncJobResponse < Struct.new(
      :execution_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module Status
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # @!attribute data_source_id
    #   <p> The identifier of the data source connector. </p>
    #   @return [String]
    # @!attribute application_id
    #   <p>The identifier of the Amazon Q Business application that the data source is connected to.</p>
    #   @return [String]
    # @!attribute index_id
    #   <p>The identifier of the index used with the Amazon Q Business data source connector.</p>
    #   @return [String]
    class StopDataSourceSyncJobRequest < Struct.new(
      :data_source_id,
      :application_id,
      :index_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class StopDataSourceSyncJobResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information on boosting <code>STRING</code> type document attributes.</p> <note> <p>For <code>STRING</code> and <code>STRING_LIST</code> type document attributes to be used for boosting on the console and the API, they must be enabled for search using the <a href="https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeConfiguration.html">DocumentAttributeConfiguration</a> object of the <a href="https://docs.aws.amazon.com/amazonq/latest/api-reference/API_UpdateIndex.html">UpdateIndex</a> API. If you haven't enabled searching on these attributes, you can't boost attributes of these data types on either the console or the API.</p> </note> <p>For more information on how boosting document attributes work in Amazon Q Business, see <a href="https://docs.aws.amazon.com/amazonq/latest/business-use-dg/metadata-boosting.html">Boosting using document attributes</a>.</p>
    # @!attribute boosting_level
    #   <p>Specifies the priority tier ranking of boosting applied to document attributes. For version 2, this parameter indicates the relative ranking between boosted fields (ONE being highest priority, TWO being second highest, etc.) and determines the order in which attributes influence document ranking in search results. For version 1, this parameter specifies the boosting intensity. For version 2, boosting intensity (VERY HIGH, HIGH, MEDIUM, LOW, NONE) are not supported. Note that in version 2, you are not allowed to boost on only one field and make this value TWO.</p>
    #   @return [String]
    # @!attribute attribute_value_boosting
    #   <p>Specifies specific values of a <code>STRING</code> type document attribute being boosted. When using <code>NativeIndexConfiguration</code> version 2, you can specify up to five values in order of priority.</p>
    #   @return [Hash<String, String>]
    class StringAttributeBoostingConfiguration < Struct.new(
      :boosting_level,
      :attribute_value_boosting,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module StringAttributeValueBoostingLevel
      LOW = 'LOW'
      MEDIUM = 'MEDIUM'
      HIGH = 'HIGH'
      VERY_HIGH = 'VERY_HIGH'
      ONE = 'ONE'
      TWO = 'TWO'
      THREE = 'THREE'
      FOUR = 'FOUR'
      FIVE = 'FIVE'
    end

    # <p>Provides information on boosting <code>STRING_LIST</code> type document attributes.</p> <p>In the current boosting implementation, boosting focuses primarily on <code>DATE</code> attributes for recency and <code>STRING</code> attributes for source prioritization. <code>STRING_LIST</code> attributes can serve as additional boosting factors when needed, but are not supported when using <code>NativeIndexConfiguration</code> version 2.</p> <note> <p>For <code>STRING</code> and <code>STRING_LIST</code> type document attributes to be used for boosting on the console and the API, they must be enabled for search using the <a href="https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeConfiguration.html">DocumentAttributeConfiguration</a> object of the <a href="https://docs.aws.amazon.com/amazonq/latest/api-reference/API_UpdateIndex.html">UpdateIndex</a> API. If you haven't enabled searching on these attributes, you can't boost attributes of these data types on either the console or the API.</p> </note> <p>For more information on how boosting document attributes work in Amazon Q Business, see <a href="https://docs.aws.amazon.com/amazonq/latest/business-use-dg/metadata-boosting.html">Boosting using document attributes</a>.</p>
    # @!attribute boosting_level
    #   <p>Specifies the priority of boosted document attributes in relation to other boosted attributes. This parameter determines how strongly the attribute influences document ranking in search results. <code>STRING_LIST</code> attributes can serve as additional boosting factors when needed, but are not supported when using <code>NativeIndexConfiguration</code> version 2.</p>
    #   @return [String]
    class StringListAttributeBoostingConfiguration < Struct.new(
      :boosting_level,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about an Amazon Q Business subscription.</p> <p>Subscriptions are used to provide access for an IAM Identity Center user or a group to an Amazon Q Business application.</p> <p>Amazon Q Business offers two subscription tiers: <code>Q_LITE</code> and <code>Q_BUSINESS</code>. Subscription tier determines feature access for the user. For more information on subscriptions and pricing tiers, see <a href="https://aws.amazon.com/q/business/pricing/">Amazon Q Business pricing</a>.</p>
    # @!attribute subscription_id
    #   <p>The identifier of the Amazon Q Business subscription to be updated.</p>
    #   @return [String]
    # @!attribute subscription_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Q Business subscription that was updated.</p>
    #   @return [String]
    # @!attribute principal
    #   <p>The IAM Identity Center <code>UserId</code> or <code>GroupId</code> of a user or group in the IAM Identity Center instance connected to the Amazon Q Business application.</p>
    #   @return [Types::SubscriptionPrincipal]
    # @!attribute current_subscription
    #   <p>The type of your current Amazon Q Business subscription.</p>
    #   @return [Types::SubscriptionDetails]
    # @!attribute next_subscription
    #   <p>The type of the Amazon Q Business subscription for the next month.</p>
    #   @return [Types::SubscriptionDetails]
    class Subscription < Struct.new(
      :subscription_id,
      :subscription_arn,
      :principal,
      :current_subscription,
      :next_subscription,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The details of an Amazon Q Business subscription. </p>
    # @!attribute type
    #   <p> The type of an Amazon Q Business subscription. </p>
    #   @return [String]
    class SubscriptionDetails < Struct.new(
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A user or group in the IAM Identity Center instance connected to the Amazon Q Business application.</p>
    # @!attribute user
    #   <p>The identifier of a user in the IAM Identity Center instance connected to the Amazon Q Business application.</p>
    #   @return [String]
    # @!attribute group
    #   <p>The identifier of a group in the IAM Identity Center instance connected to the Amazon Q Business application.</p>
    #   @return [String]
    class SubscriptionPrincipal < Struct.new(
      :user,
      :group,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class User < SubscriptionPrincipal; end
      class Group < SubscriptionPrincipal; end
      class Unknown < SubscriptionPrincipal; end
    end

    module SubscriptionType
      Q_LITE = 'Q_LITE'
      Q_BUSINESS = 'Q_BUSINESS'
    end

    module SystemMessageType
      RESPONSE = 'RESPONSE'
      GROUNDED_RESPONSE = 'GROUNDED_RESPONSE'
    end

    # <p>A list of key/value pairs that identify an index, FAQ, or data source. Tag keys and values can consist of Unicode letters, digits, white space, and any of the following symbols: _ . : / = + - @.</p>
    # @!attribute key
    #   <p> The key for the tag. Keys are not case sensitive and must be unique for the Amazon Q Business application or data source.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value associated with the tag. The value may be an empty string but it can't be null.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Q Business application or data source to tag.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tag keys to add to the Amazon Q Business application or data source. If a tag already exists, the existing value is replaced with the new value.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information about text documents in an index.</p>
    # @!attribute indexed_text_bytes
    #   <p>The total size, in bytes, of the indexed documents.</p>
    #   @return [Integer]
    # @!attribute indexed_text_document_count
    #   <p>The number of text documents indexed.</p>
    #   @return [Integer]
    class TextDocumentStatistics < Struct.new(
      :indexed_text_bytes,
      :indexed_text_document_count,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An input event for a end user message in an Amazon Q Business web experience. </p>
    # @!attribute user_message
    #   <p>A user message in a text message input event.</p>
    #   @return [String]
    class TextInputEvent < Struct.new(
      :user_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An output event for an AI-generated response in an Amazon Q Business web experience.</p>
    # @!attribute system_message_type
    #   <p>The type of AI-generated message in a <code>TextOutputEvent</code>. Amazon Q Business currently supports two types of messages:</p> <ul> <li> <p> <code>RESPONSE</code> - The Amazon Q Business system response.</p> </li> <li> <p> <code>GROUNDED_RESPONSE</code> - The corrected, hallucination-reduced, response returned by Amazon Q Business. Available only if hallucination reduction is supported and configured for the application and detected in the end user chat query by Amazon Q Business.</p> </li> </ul>
    #   @return [String]
    # @!attribute conversation_id
    #   <p>The identifier of the conversation with which the text output event is associated.</p>
    #   @return [String]
    # @!attribute user_message_id
    #   <p>The identifier of an end user message in a <code>TextOutputEvent</code>.</p>
    #   @return [String]
    # @!attribute system_message_id
    #   <p>The identifier of an AI-generated message in a <code>TextOutputEvent</code>.</p>
    #   @return [String]
    # @!attribute system_message
    #   <p>An AI-generated message in a <code>TextOutputEvent</code>.</p>
    #   @return [String]
    class TextOutputEvent < Struct.new(
      :system_message_type,
      :conversation_id,
      :user_message_id,
      :system_message_id,
      :system_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information about a text extract in a chat response that can be attributed to a source document.</p>
    # @!attribute begin_offset
    #   <p>The zero-based location in the response string where the source attribution starts.</p>
    #   @return [Integer]
    # @!attribute end_offset
    #   <p>The zero-based location in the response string where the source attribution ends.</p>
    #   @return [Integer]
    # @!attribute snippet_excerpt
    #   <p>The relevant text excerpt from a source that was used to generate a citation text segment in an Amazon Q Business chat response.</p>
    #   @return [Types::SnippetExcerpt]
    # @!attribute media_id
    #   <p>The identifier of the media object associated with the text segment in the source attribution.</p>
    #   @deprecated
    #     Deprecated in favor of using mediaId within the respective sourceDetails field.
    #     Since: 2025-02-28
    #   @return [String]
    # @!attribute media_mime_type
    #   <p>The MIME type (image/png) of the media object associated with the text segment in the source attribution.</p>
    #   @deprecated
    #     Deprecated in favor of using mediaMimeType within the respective sourceDetails field.
    #     Since: 2025-02-28
    #   @return [String]
    # @!attribute source_details
    #   <p>Source information for a segment of extracted text, including its media type.</p>
    #   @return [Types::SourceDetails]
    class TextSegment < Struct.new(
      :begin_offset,
      :end_offset,
      :snippet_excerpt,
      :media_id,
      :media_mime_type,
      :source_details,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was denied due to throttling. Reduce the number of requests and try again.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The topic specific controls configured for an Amazon Q Business application.</p>
    # @!attribute name
    #   <p>A name for your topic control configuration.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for your topic control configuration. Use this to outline how the large language model (LLM) should use this topic control configuration.</p>
    #   @return [String]
    # @!attribute example_chat_messages
    #   <p>A list of example phrases that you expect the end user to use in relation to the topic.</p>
    #   @return [Array<String>]
    # @!attribute rules
    #   <p>Rules defined for a topic configuration.</p>
    #   @return [Array<Types::Rule>]
    class TopicConfiguration < Struct.new(
      :name,
      :description,
      :example_chat_messages,
      :rules,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Q Business application, or data source to remove the tag from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of tag keys to remove from the Amazon Q Business application or data source. If a tag key does not exist on the resource, it is ignored.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the Amazon Q Business application.</p>
    #   @return [String]
    # @!attribute identity_center_instance_arn
    #   <p> The Amazon Resource Name (ARN) of the IAM Identity Center instance you are either creating for—or connecting to—your Amazon Q Business application.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>A name for the Amazon Q Business application.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description for the Amazon Q Business application.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>An Amazon Web Services Identity and Access Management (IAM) role that gives Amazon Q Business permission to access Amazon CloudWatch logs and metrics.</p>
    #   @return [String]
    # @!attribute attachments_configuration
    #   <p>An option to allow end users to upload files directly during chat.</p>
    #   @return [Types::AttachmentsConfiguration]
    # @!attribute q_apps_configuration
    #   <p>An option to allow end users to create and use Amazon Q Apps in the web experience.</p>
    #   @return [Types::QAppsConfiguration]
    # @!attribute personalization_configuration
    #   <p>Configuration information about chat response personalization. For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/personalizing-chat-responses.html">Personalizing chat responses</a>.</p>
    #   @return [Types::PersonalizationConfiguration]
    # @!attribute auto_subscription_configuration
    #   <p>An option to enable updating the default subscription type assigned to an Amazon Q Business application using IAM identity federation for user management.</p>
    #   @return [Types::AutoSubscriptionConfiguration]
    class UpdateApplicationRequest < Struct.new(
      :application_id,
      :identity_center_instance_arn,
      :display_name,
      :description,
      :role_arn,
      :attachments_configuration,
      :q_apps_configuration,
      :personalization_configuration,
      :auto_subscription_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UpdateApplicationResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the application for which the chat controls are configured.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A token that you provide to identify the request to update a Amazon Q Business application chat configuration.</p>
    #   @return [String]
    # @!attribute response_scope
    #   <p>The response scope configured for your application. This determines whether your application uses its retrieval augmented generation (RAG) system to generate answers only from your enterprise data, or also uses the large language models (LLM) knowledge to respons to end user questions in chat.</p>
    #   @return [String]
    # @!attribute orchestration_configuration
    #   <p> The chat response orchestration settings for your application.</p>
    #   @return [Types::OrchestrationConfiguration]
    # @!attribute blocked_phrases_configuration_update
    #   <p>The phrases blocked from chat by your chat control configuration.</p>
    #   @return [Types::BlockedPhrasesConfigurationUpdate]
    # @!attribute topic_configurations_to_create_or_update
    #   <p>The configured topic specific chat controls you want to update.</p>
    #   @return [Array<Types::TopicConfiguration>]
    # @!attribute topic_configurations_to_delete
    #   <p>The configured topic specific chat controls you want to delete.</p>
    #   @return [Array<Types::TopicConfiguration>]
    # @!attribute creator_mode_configuration
    #   <p>The configuration details for <code>CREATOR_MODE</code>.</p>
    #   @return [Types::CreatorModeConfiguration]
    # @!attribute hallucination_reduction_configuration
    #   <p> The hallucination reduction settings for your application.</p>
    #   @return [Types::HallucinationReductionConfiguration]
    class UpdateChatControlsConfigurationRequest < Struct.new(
      :application_id,
      :client_token,
      :response_scope,
      :orchestration_configuration,
      :blocked_phrases_configuration_update,
      :topic_configurations_to_create_or_update,
      :topic_configurations_to_delete,
      :creator_mode_configuration,
      :hallucination_reduction_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UpdateChatControlsConfigurationResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier of the Amazon Q Business application containing the chat response configuration to update.</p>
    #   @return [String]
    # @!attribute chat_response_configuration_id
    #   <p>The unique identifier of the chat response configuration to update within the specified application.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The new human-readable name to assign to the chat response configuration, making it easier to identify among multiple configurations.</p>
    #   @return [String]
    # @!attribute response_configurations
    #   <p>The updated collection of response configuration settings that define how Amazon Q Business generates and formats responses to user queries.</p>
    #   @return [Hash<String, Types::ResponseConfiguration>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request. This helps prevent the same update from being processed multiple times if retries occur.</p>
    #   @return [String]
    class UpdateChatResponseConfigurationRequest < Struct.new(
      :application_id,
      :chat_response_configuration_id,
      :display_name,
      :response_configurations,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UpdateChatResponseConfigurationResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier of the Amazon Q Business application.</p>
    #   @return [String]
    # @!attribute data_accessor_id
    #   <p>The unique identifier of the data accessor to update.</p>
    #   @return [String]
    # @!attribute action_configurations
    #   <p>The updated list of action configurations specifying the allowed actions and any associated filters.</p>
    #   @return [Array<Types::ActionConfiguration>]
    # @!attribute authentication_detail
    #   <p>The updated authentication configuration details for the data accessor. This specifies how the ISV will authenticate when accessing data through this data accessor.</p>
    #   @return [Types::DataAccessorAuthenticationDetail]
    # @!attribute display_name
    #   <p>The updated friendly name for the data accessor.</p>
    #   @return [String]
    class UpdateDataAccessorRequest < Struct.new(
      :application_id,
      :data_accessor_id,
      :action_configurations,
      :authentication_detail,
      :display_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UpdateDataAccessorResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p> The identifier of the Amazon Q Business application the data source is attached to.</p>
    #   @return [String]
    # @!attribute index_id
    #   <p>The identifier of the index attached to the data source connector.</p>
    #   @return [String]
    # @!attribute data_source_id
    #   <p>The identifier of the data source connector.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>A name of the data source connector.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>Provides the configuration information for an Amazon Q Business data source.</p>
    #   @return [JSON]
    # @!attribute vpc_configuration
    #   <p>Provides configuration information needed to connect to an Amazon VPC (Virtual Private Cloud).</p>
    #   @return [Types::DataSourceVpcConfiguration]
    # @!attribute description
    #   <p>The description of the data source connector.</p>
    #   @return [String]
    # @!attribute sync_schedule
    #   <p>The chosen update frequency for your data source.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role with permission to access the data source and required resources.</p>
    #   @return [String]
    # @!attribute document_enrichment_configuration
    #   <p>Provides the configuration information for altering document metadata and content during the document ingestion process.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/business-use-dg/custom-document-enrichment.html">Custom document enrichment</a>.</p>
    #   @return [Types::DocumentEnrichmentConfiguration]
    # @!attribute media_extraction_configuration
    #   <p>The configuration for extracting information from media in documents for your data source.</p>
    #   @return [Types::MediaExtractionConfiguration]
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
      :media_extraction_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UpdateDataSourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the Amazon Q Business application connected to the index.</p>
    #   @return [String]
    # @!attribute index_id
    #   <p>The identifier of the Amazon Q Business index.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The name of the Amazon Q Business index.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the Amazon Q Business index.</p>
    #   @return [String]
    # @!attribute capacity_configuration
    #   <p>The storage capacity units you want to provision for your Amazon Q Business index. You can add and remove capacity to fit your usage needs.</p>
    #   @return [Types::IndexCapacityConfiguration]
    # @!attribute document_attribute_configurations
    #   <p>Configuration information for document metadata or fields. Document metadata are fields or attributes associated with your documents. For example, the company department name associated with each document. For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/business-use-dg/doc-attributes-types.html#doc-attributes">Understanding document attributes</a>.</p>
    #   @return [Array<Types::DocumentAttributeConfiguration>]
    class UpdateIndexRequest < Struct.new(
      :application_id,
      :index_id,
      :display_name,
      :description,
      :capacity_configuration,
      :document_attribute_configurations,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UpdateIndexResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the application the plugin is attached to.</p>
    #   @return [String]
    # @!attribute plugin_id
    #   <p>The identifier of the plugin.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The name of the plugin.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The status of the plugin. </p>
    #   @return [String]
    # @!attribute server_url
    #   <p>The source URL used for plugin configuration.</p>
    #   @return [String]
    # @!attribute custom_plugin_configuration
    #   <p>The configuration for a custom plugin.</p>
    #   @return [Types::CustomPluginConfiguration]
    # @!attribute auth_configuration
    #   <p>The authentication configuration the plugin is using.</p>
    #   @return [Types::PluginAuthConfiguration]
    class UpdatePluginRequest < Struct.new(
      :application_id,
      :plugin_id,
      :display_name,
      :state,
      :server_url,
      :custom_plugin_configuration,
      :auth_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UpdatePluginResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of your Amazon Q Business application.</p>
    #   @return [String]
    # @!attribute retriever_id
    #   <p>The identifier of your retriever.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>Provides information on how the retriever used for your Amazon Q Business application is configured.</p>
    #   @return [Types::RetrieverConfiguration]
    # @!attribute display_name
    #   <p>The name of your retriever.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role with permission to access the retriever and required resources. </p>
    #   @return [String]
    class UpdateRetrieverRequest < Struct.new(
      :application_id,
      :retriever_id,
      :configuration,
      :display_name,
      :role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UpdateRetrieverResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the Amazon Q Business application where the subscription update should take effect.</p>
    #   @return [String]
    # @!attribute subscription_id
    #   <p>The identifier of the Amazon Q Business subscription to be updated.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the Amazon Q Business subscription to be updated.</p>
    #   @return [String]
    class UpdateSubscriptionRequest < Struct.new(
      :application_id,
      :subscription_id,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute subscription_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Q Business subscription that was updated.</p>
    #   @return [String]
    # @!attribute current_subscription
    #   <p>The type of your current Amazon Q Business subscription.</p>
    #   @return [Types::SubscriptionDetails]
    # @!attribute next_subscription
    #   <p>The type of the Amazon Q Business subscription for the next month.</p>
    #   @return [Types::SubscriptionDetails]
    class UpdateSubscriptionResponse < Struct.new(
      :subscription_arn,
      :current_subscription,
      :next_subscription,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the application the user is attached to.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The email id attached to the user.</p>
    #   @return [String]
    # @!attribute user_aliases_to_update
    #   <p>The user aliases attached to the user id that are to be updated.</p>
    #   @return [Array<Types::UserAlias>]
    # @!attribute user_aliases_to_delete
    #   <p>The user aliases attached to the user id that are to be deleted.</p>
    #   @return [Array<Types::UserAlias>]
    class UpdateUserRequest < Struct.new(
      :application_id,
      :user_id,
      :user_aliases_to_update,
      :user_aliases_to_delete,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute user_aliases_added
    #   <p>The user aliases that have been to be added to a user id.</p>
    #   @return [Array<Types::UserAlias>]
    # @!attribute user_aliases_updated
    #   <p>The user aliases attached to a user id that have been updated.</p>
    #   @return [Array<Types::UserAlias>]
    # @!attribute user_aliases_deleted
    #   <p>The user aliases that have been deleted from a user id.</p>
    #   @return [Array<Types::UserAlias>]
    class UpdateUserResponse < Struct.new(
      :user_aliases_added,
      :user_aliases_updated,
      :user_aliases_deleted,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the Amazon Q Business application attached to the web experience.</p>
    #   @return [String]
    # @!attribute web_experience_id
    #   <p>The identifier of the Amazon Q Business web experience.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the role with permission to access the Amazon Q Business web experience and required resources.</p>
    #   @return [String]
    # @!attribute authentication_configuration
    #   <p>The authentication configuration of the Amazon Q Business web experience.</p>
    #   @deprecated
    #     Property associated with legacy SAML IdP flow. Deprecated in favor of using AWS IAM Identity Center for user management.
    #   @return [Types::WebExperienceAuthConfiguration]
    # @!attribute title
    #   <p>The title of the Amazon Q Business web experience.</p>
    #   @return [String]
    # @!attribute subtitle
    #   <p>The subtitle of the Amazon Q Business web experience.</p>
    #   @return [String]
    # @!attribute welcome_message
    #   <p>A customized welcome message for an end user in an Amazon Q Business web experience.</p>
    #   @return [String]
    # @!attribute sample_prompts_control_mode
    #   <p>Determines whether sample prompts are enabled in the web experience for an end user.</p>
    #   @return [String]
    # @!attribute identity_provider_configuration
    #   <p>Information about the identity provider (IdP) used to authenticate end users of an Amazon Q Business web experience.</p>
    #   @return [Types::IdentityProviderConfiguration]
    # @!attribute origins
    #   <p>Updates the website domain origins that are allowed to embed the Amazon Q Business web experience. The <i>domain origin</i> refers to the <i>base URL</i> for accessing a website including the protocol (<code>http/https</code>), the domain name, and the port number (if specified).</p> <note> <ul> <li> <p>Any values except <code>null</code> submitted as part of this update will replace all previous values.</p> </li> <li> <p>You must only submit a <i>base URL</i> and not a full path. For example, <code>https://docs.aws.amazon.com</code>.</p> </li> </ul> </note>
    #   @return [Array<String>]
    # @!attribute browser_extension_configuration
    #   <p>The browser extension configuration for an Amazon Q Business web experience.</p> <note> <p> For Amazon Q Business application using external OIDC-compliant identity providers (IdPs). The IdP administrator must add the browser extension sign-in redirect URLs to the IdP application. For more information, see <a href="https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/browser-extensions.html">Configure external OIDC identity provider for your browser extensions.</a>. </p> </note>
    #   @return [Types::BrowserExtensionConfiguration]
    # @!attribute customization_configuration
    #   <p>Updates the custom logo, favicon, font, and color used in the Amazon Q web experience. </p>
    #   @return [Types::CustomizationConfiguration]
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
      :customization_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UpdateWebExperienceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Aliases attached to a user id within an Amazon Q Business application.</p>
    # @!attribute index_id
    #   <p>The identifier of the index that the user aliases are associated with.</p>
    #   @return [String]
    # @!attribute data_source_id
    #   <p>The identifier of the data source that the user aliases are associated with.</p>
    #   @return [String]
    # @!attribute user_id
    #   <p>The identifier of the user id associated with the user aliases.</p>
    #   @return [String]
    class UserAlias < Struct.new(
      :index_id,
      :data_source_id,
      :user_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information about users and group names associated with a topic control rule.</p>
    # @!attribute user_ids
    #   <p>The user ids associated with a topic control rule.</p>
    #   @return [Array<String>]
    # @!attribute user_groups
    #   <p>The user group names associated with a topic control rule.</p>
    #   @return [Array<String>]
    class UsersAndGroups < Struct.new(
      :user_ids,
      :user_groups,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input doesn't meet the constraints set by the Amazon Q Business service. Provide the correct input and try again.</p>
    # @!attribute message
    #   <p>The message describing the <code>ValidationException</code>.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the <code>ValidationException</code>.</p>
    #   @return [String]
    # @!attribute fields
    #   <p>The input field(s) that failed validation.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      :message,
      :reason,
      :fields,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input failed to meet the constraints specified by Amazon Q Business in a specified field.</p>
    # @!attribute name
    #   <p>The field name where the invalid entry was detected.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message about the validation exception.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      :name,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ValidationExceptionReason
      CANNOT_PARSE = 'CANNOT_PARSE'
      FIELD_VALIDATION_FAILED = 'FIELD_VALIDATION_FAILED'
      UNKNOWN_OPERATION = 'UNKNOWN_OPERATION'
    end

    # <p>Configuration settings for video content extraction and processing.</p>
    # @!attribute video_extraction_status
    #   <p>The status of video extraction (ENABLED or DISABLED) for processing video content from files.</p>
    #   @return [String]
    class VideoExtractionConfiguration < Struct.new(
      :video_extraction_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module VideoExtractionStatus
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    module VideoExtractionType
      TRANSCRIPT = 'TRANSCRIPT'
      SUMMARY = 'SUMMARY'
    end

    # <p>Details about a video source, including its identifier, format, and time information.</p>
    # @!attribute media_id
    #   <p>Unique identifier for the video media file.</p>
    #   @return [String]
    # @!attribute media_mime_type
    #   <p>The MIME type of the video file (e.g., video/mp4, video/avi).</p>
    #   @return [String]
    # @!attribute start_time_milliseconds
    #   <p>The starting timestamp in milliseconds for the relevant video segment.</p>
    #   @return [Integer]
    # @!attribute end_time_milliseconds
    #   <p>The ending timestamp in milliseconds for the relevant video segment.</p>
    #   @return [Integer]
    # @!attribute video_extraction_type
    #   <p>The type of video extraction performed on the content.</p>
    #   @return [String]
    class VideoSourceDetails < Struct.new(
      :media_id,
      :media_mime_type,
      :start_time_milliseconds,
      :end_time_milliseconds,
      :video_extraction_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information for an Amazon Q Business web experience.</p>
    # @!attribute web_experience_id
    #   <p>The identifier of your Amazon Q Business web experience.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The Unix timestamp when the Amazon Q Business application was last updated.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The Unix timestamp when your Amazon Q Business web experience was updated.</p>
    #   @return [Time]
    # @!attribute default_endpoint
    #   <p>The endpoint URLs for your Amazon Q Business web experience. The URLs are unique and fully hosted by Amazon Web Services.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of your Amazon Q Business web experience.</p>
    #   @return [String]
    class WebExperience < Struct.new(
      :web_experience_id,
      :created_at,
      :updated_at,
      :default_endpoint,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides the authorization configuration information needed to deploy a Amazon Q Business web experience to end users.</p>
    # @!attribute saml_configuration
    #   <p>Provides the SAML 2.0 compliant identity provider (IdP) configuration information Amazon Q Business needs to deploy a Amazon Q Business web experience.</p>
    #   @return [Types::SamlConfiguration]
    class WebExperienceAuthConfiguration < Struct.new(
      :saml_configuration,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class SamlConfiguration < WebExperienceAuthConfiguration; end
      class Unknown < WebExperienceAuthConfiguration; end
    end

    module WebExperienceSamplePromptsControlMode
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    module WebExperienceStatus
      CREATING = 'CREATING'
      ACTIVE = 'ACTIVE'
      DELETING = 'DELETING'
      FAILED = 'FAILED'
      PENDING_AUTH_CONFIG = 'PENDING_AUTH_CONFIG'
    end

  end
end
