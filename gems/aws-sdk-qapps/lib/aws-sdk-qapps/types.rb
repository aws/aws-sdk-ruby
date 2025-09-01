# frozen_string_literal: true

# This is generated code!

module Aws::QApps
  # This module contains the types returned by client operations.
  module Types

    # <p>The client is not authorized to perform the requested operation.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module Action
      READ = 'read'
      WRITE = 'write'
    end

    # <p>The definition of the Q App, specifying the cards and flow.</p>
    # @!attribute app_definition_version
    #   <p>The version of the app definition schema or specification.</p>
    #   @return [String]
    # @!attribute cards
    #   <p>The cards that make up the Q App, such as text input, file upload, or query cards.</p>
    #   @return [Array<Types::Card>]
    # @!attribute can_edit
    #   <p>A flag indicating whether the Q App's definition can be edited by the user.</p>
    #   @return [Boolean]
    class AppDefinition < Struct.new(
      :app_definition_version,
      :cards,
      :can_edit,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input for defining an Q App.</p>
    # @!attribute cards
    #   <p>The cards that make up the Q App definition.</p>
    #   @return [Array<Types::CardInput>]
    # @!attribute initial_prompt
    #   <p>The initial prompt displayed when the Q App is started.</p>
    #   @return [String]
    class AppDefinitionInput < Struct.new(
      :cards,
      :initial_prompt,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AppRequiredCapability
      FILE_UPLOAD = 'FileUpload'
      CREATOR_MODE = 'CreatorMode'
      RETRIEVAL_MODE = 'RetrievalMode'
      PLUGIN_MODE = 'PluginMode'
    end

    module AppStatus
      PUBLISHED = 'PUBLISHED'
      DRAFT = 'DRAFT'
      DELETED = 'DELETED'
    end

    # @!attribute instance_id
    #   <p>The unique identifier for the Amazon Q Business application environment instance.</p>
    #   @return [String]
    # @!attribute library_item_id
    #   <p>The unique identifier of the library item to associate the review with.</p>
    #   @return [String]
    class AssociateLibraryItemReviewInput < Struct.new(
      :instance_id,
      :library_item_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    #   @return [String]
    # @!attribute app_id
    #   <p>The ID of the Amazon Q App to associate with the user.</p>
    #   @return [String]
    class AssociateQAppWithUserInput < Struct.new(
      :instance_id,
      :app_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The filter criteria used on responses based on document attributes or metadata
    #       fields.</p>
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
    #   <p>Performs an <i>equals</i> operation on two document attributes or metadata
    #         fields. Supported for the following <a href="https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeValue.html">document attribute value types</a>: <code>dateValue</code>, <code>longValue</code>,
    #           <code>stringListValue</code> and <code>stringValue</code>.</p>
    #   @return [Types::DocumentAttribute]
    # @!attribute contains_all
    #   <p>Returns <code>true</code> when a document contains all the specified document attributes
    #         or metadata fields. Supported for the following <a href="https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeValue.html">document attribute value types</a>: <code>stringListValue</code>.</p>
    #   @return [Types::DocumentAttribute]
    # @!attribute contains_any
    #   <p>Returns <code>true</code> when a document contains any of the specified document
    #         attributes or metadata fields. Supported for the following <a href="https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeValue.html">document attribute value types</a>: <code>stringListValue</code>.</p>
    #   @return [Types::DocumentAttribute]
    # @!attribute greater_than
    #   <p>Performs a <i>greater than</i> operation on two document attributes or
    #         metadata fields. Supported for the following <a href="https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeValue.html">document attribute value types</a>: <code>dateValue</code> and
    #         <code>longValue</code>.</p>
    #   @return [Types::DocumentAttribute]
    # @!attribute greater_than_or_equals
    #   <p>Performs a <i>greater than or equals</i> operation on two document
    #         attributes or metadata fields. Supported for the following <a href="https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeValue.html">document attribute value types</a>: <code>dateValue</code> and <code>longValue</code>.
    #       </p>
    #   @return [Types::DocumentAttribute]
    # @!attribute less_than
    #   <p>Performs a <i>less than</i> operation on two document attributes or metadata
    #         fields. Supported for the following <a href="https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeValue.html">document attribute value types</a>: <code>dateValue</code> and
    #         <code>longValue</code>.</p>
    #   @return [Types::DocumentAttribute]
    # @!attribute less_than_or_equals
    #   <p>Performs a <i>less than or equals</i> operation on two document attributes
    #         or metadata fields.Supported for the following <a href="https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeValue.html">document attribute value type</a>: <code>dateValue</code> and <code>longValue</code>.
    #       </p>
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

    # @!attribute instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    #   @return [String]
    # @!attribute categories
    #   <p>The list of category objects to be created</p>
    #   @return [Array<Types::BatchCreateCategoryInputCategory>]
    class BatchCreateCategoryInput < Struct.new(
      :instance_id,
      :categories,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The category object to be created.</p>
    # @!attribute id
    #   <p>The unique identifier to be associated with a category. If you don't include a value, the
    #         category is automatically assigned a unique identifier.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The name of the category.</p>
    #   @return [String]
    # @!attribute color
    #   <p>The color to be associated with a category. The color must be a hexadecimal value of
    #         either 3 or 6 digits.</p>
    #   @return [String]
    class BatchCreateCategoryInputCategory < Struct.new(
      :id,
      :title,
      :color,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    #   @return [String]
    # @!attribute categories
    #   <p>The list of IDs of the categories to be deleted.</p>
    #   @return [Array<String>]
    class BatchDeleteCategoryInput < Struct.new(
      :instance_id,
      :categories,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    #   @return [String]
    # @!attribute categories
    #   <p>The list of categories to be updated with their new values.</p>
    #   @return [Array<Types::CategoryInput>]
    class BatchUpdateCategoryInput < Struct.new(
      :instance_id,
      :categories,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A card representing a component or step in an Amazon Q App's flow.</p>
    # @!attribute text_input
    #   <p>A container for the properties of the text input card.</p>
    #   @return [Types::TextInputCard]
    # @!attribute q_query
    #   <p>A container for the properties of the query card.</p>
    #   @return [Types::QQueryCard]
    # @!attribute q_plugin
    #   <p>A container for the properties of the plugin card.</p>
    #   @return [Types::QPluginCard]
    # @!attribute file_upload
    #   <p>A container for the properties of the file upload card.</p>
    #   @return [Types::FileUploadCard]
    # @!attribute form_input
    #   <p>A container for the properties of the form input card.</p>
    #   @return [Types::FormInputCard]
    class Card < Struct.new(
      :text_input,
      :q_query,
      :q_plugin,
      :file_upload,
      :form_input,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class TextInput < Card; end
      class QQuery < Card; end
      class QPlugin < Card; end
      class FileUpload < Card; end
      class FormInput < Card; end
      class Unknown < Card; end
    end

    # <p>The properties defining an input card in an Amazon Q App.</p>
    # @!attribute text_input
    #   <p>A container for the properties of the text input card.</p>
    #   @return [Types::TextInputCardInput]
    # @!attribute q_query
    #   <p>A container for the properties of the query input card.</p>
    #   @return [Types::QQueryCardInput]
    # @!attribute q_plugin
    #   <p>A container for the properties of the plugin input card.</p>
    #   @return [Types::QPluginCardInput]
    # @!attribute file_upload
    #   <p>A container for the properties of the file upload input card.</p>
    #   @return [Types::FileUploadCardInput]
    # @!attribute form_input
    #   <p>A container for the properties of the form input card.</p>
    #   @return [Types::FormInputCardInput]
    class CardInput < Struct.new(
      :text_input,
      :q_query,
      :q_plugin,
      :file_upload,
      :form_input,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class TextInput < CardInput; end
      class QQuery < CardInput; end
      class QPlugin < CardInput; end
      class FileUpload < CardInput; end
      class FormInput < CardInput; end
      class Unknown < CardInput; end
    end

    module CardOutputSource
      APPROVED_SOURCES = 'approved-sources'
      LLM = 'llm'
    end

    # <p>The current status and value of a card in an active Amazon Q App session.</p>
    # @!attribute current_state
    #   <p>The current state of the card.</p>
    #   @return [String]
    # @!attribute current_value
    #   <p>The current value or result associated with the card.</p>
    #   @return [String]
    # @!attribute submissions
    #   <p>A list of previous submissions, if the card is a form card.</p>
    #   @return [Array<Types::Submission>]
    class CardStatus < Struct.new(
      :current_state,
      :current_value,
      :submissions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module CardType
      TEXT_INPUT = 'text-input'
      Q_QUERY = 'q-query'
      FILE_UPLOAD = 'file-upload'
      Q_PLUGIN = 'q-plugin'
      FORM_INPUT = 'form-input'
    end

    # <p>The value or result associated with a card in a Amazon Q App session.</p>
    # @!attribute card_id
    #   <p>The unique identifier of the card.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value or result associated with the card.</p>
    #   @return [String]
    # @!attribute submission_mutation
    #   <p>The structure that describes how the current form card value is mutated. Only applies for
    #         form cards when multiple responses are allowed.</p>
    #   @return [Types::SubmissionMutation]
    class CardValue < Struct.new(
      :card_id,
      :value,
      :submission_mutation,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A category used to classify and filter library items for Amazon Q Apps.</p>
    # @!attribute id
    #   <p>The unique identifier of the category.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title or name of the category.</p>
    #   @return [String]
    # @!attribute color
    #   <p>The color of the category</p>
    #   @return [String]
    # @!attribute app_count
    #   <p>The number of published Amazon Q Apps associated with a category</p>
    #   @return [Integer]
    class Category < Struct.new(
      :id,
      :title,
      :color,
      :app_count,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A label that web experience users associate with a library item. Web experience users use
    #       Categories to tag and filter library items.</p>
    # @!attribute id
    #   <p>The unique identifier of the category.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The name of the category.</p>
    #   @return [String]
    # @!attribute color
    #   <p>The color of the category, represented as a hexadecimal value of either 3 or 6
    #         digits.</p>
    #   @return [String]
    class CategoryInput < Struct.new(
      :id,
      :title,
      :color,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The requested operation could not be completed due to a conflict with the current state of
    #       the resource.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The unique identifier of the resource</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource</p>
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The requested operation could not be completed because the content exceeds the maximum
    #       allowed size.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The unique identifier of the resource</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource</p>
    #   @return [String]
    class ContentTooLargeException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A message in a conversation, used as input for generating an Amazon Q App definition.</p>
    # @!attribute body
    #   <p>The text content of the conversation message.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the conversation message.</p>
    #   @return [String]
    class ConversationMessage < Struct.new(
      :body,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    #   @return [String]
    # @!attribute app_id
    #   <p>The unique identifier of the Amazon Q App to publish to the library.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>The version of the Amazon Q App to publish to the library.</p>
    #   @return [Integer]
    # @!attribute categories
    #   <p>The categories to associate with the library item for easier discovery.</p>
    #   @return [Array<String>]
    class CreateLibraryItemInput < Struct.new(
      :instance_id,
      :app_id,
      :app_version,
      :categories,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute library_item_id
    #   <p>The unique identifier of the new library item.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the new library item, such as "Published".</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the library item was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user who created the library item.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time the library item was last updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user who last updated the library item.</p>
    #   @return [String]
    # @!attribute rating_count
    #   <p>The number of ratings the library item has received from users.</p>
    #   @return [Integer]
    # @!attribute is_verified
    #   <p>Indicates whether the library item has been verified.</p>
    #   @return [Boolean]
    class CreateLibraryItemOutput < Struct.new(
      :library_item_id,
      :status,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      :rating_count,
      :is_verified,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    #   @return [String]
    # @!attribute card_id
    #   <p>The unique identifier of the card the file is associated with.</p>
    #   @return [String]
    # @!attribute app_id
    #   <p>The unique identifier of the Q App the file is associated with.</p>
    #   @return [String]
    # @!attribute file_contents_sha256
    #   <p>The Base64-encoded SHA-256 digest of the contents of the file to be uploaded.</p>
    #   @return [String]
    # @!attribute file_name
    #   <p>The name of the file to be uploaded.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>Whether the file is associated with a Q App definition or a specific Q App
    #         session.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The unique identifier of the Q App session the file is associated with, if
    #         applicable.</p>
    #   @return [String]
    class CreatePresignedUrlInput < Struct.new(
      :instance_id,
      :card_id,
      :app_id,
      :file_contents_sha256,
      :file_name,
      :scope,
      :session_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute file_id
    #   <p>The unique identifier assigned to the file to be uploaded.</p>
    #   @return [String]
    # @!attribute presigned_url
    #   <p>The URL for a presigned S3 POST operation used to upload a file.</p>
    #   @return [String]
    # @!attribute presigned_url_fields
    #   <p>The form fields to include in the presigned S3 POST operation used to upload a
    #         file.</p>
    #   @return [Hash<String, String>]
    # @!attribute presigned_url_expiration
    #   <p>The date and time that the presigned URL will expire in ISO 8601 format.</p>
    #   @return [Time]
    class CreatePresignedUrlOutput < Struct.new(
      :file_id,
      :presigned_url,
      :presigned_url_fields,
      :presigned_url_expiration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the new Q App.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the new Q App.</p>
    #   @return [String]
    # @!attribute app_definition
    #   <p>The definition of the new Q App, specifying the cards and flow.</p>
    #   @return [Types::AppDefinitionInput]
    # @!attribute tags
    #   <p>Optional tags to associate with the new Q App.</p>
    #   @return [Hash<String, String>]
    class CreateQAppInput < Struct.new(
      :instance_id,
      :title,
      :description,
      :app_definition,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The unique identifier of the new Q App.</p>
    #   @return [String]
    # @!attribute app_arn
    #   <p>The Amazon Resource Name (ARN) of the new Q App.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the new Q App.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the new Q App.</p>
    #   @return [String]
    # @!attribute initial_prompt
    #   <p>The initial prompt displayed when the Q App is started.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>The version of the new Q App.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the new Q App, such as "Created".</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the Q App was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user who created the Q App.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time the Q App was last updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user who last updated the Q App.</p>
    #   @return [String]
    # @!attribute required_capabilities
    #   <p>The capabilities required to run the Q App, such as file upload or third-party
    #         integrations.</p>
    #   @return [Array<String>]
    class CreateQAppOutput < Struct.new(
      :app_id,
      :app_arn,
      :title,
      :description,
      :initial_prompt,
      :app_version,
      :status,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      :required_capabilities,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    #   @return [String]
    # @!attribute library_item_id
    #   <p>The unique identifier of the library item to delete.</p>
    #   @return [String]
    class DeleteLibraryItemInput < Struct.new(
      :instance_id,
      :library_item_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    #   @return [String]
    # @!attribute app_id
    #   <p>The unique identifier of the Q App to delete.</p>
    #   @return [String]
    class DeleteQAppInput < Struct.new(
      :instance_id,
      :app_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    #   @return [String]
    # @!attribute app_id
    #   <p>The unique identifier of the Amazon Q App for which to retrieve permissions.</p>
    #   @return [String]
    class DescribeQAppPermissionsInput < Struct.new(
      :instance_id,
      :app_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Q App for which permissions are
    #         returned.</p>
    #   @return [String]
    # @!attribute app_id
    #   <p>The unique identifier of the Amazon Q App for which permissions are returned.</p>
    #   @return [String]
    # @!attribute permissions
    #   <p>The list of permissions granted for the Amazon Q App.</p>
    #   @return [Array<Types::PermissionOutput>]
    class DescribeQAppPermissionsOutput < Struct.new(
      :resource_arn,
      :app_id,
      :permissions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    #   @return [String]
    # @!attribute library_item_id
    #   <p>The unique identifier of the library item to remove the review from.</p>
    #   @return [String]
    class DisassociateLibraryItemReviewInput < Struct.new(
      :instance_id,
      :library_item_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    #   @return [String]
    # @!attribute app_id
    #   <p>The unique identifier of the Q App to disassociate from the user.</p>
    #   @return [String]
    class DisassociateQAppFromUserInput < Struct.new(
      :instance_id,
      :app_id,
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

    # <p>The value of a document attribute. You can only provide one value for a document
    #       attribute.</p>
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
    #   <p>A date expressed as an ISO 8601 string.</p>
    #            <p>It's important for the time zone to be included in the <i>ISO 8601
    #           date-time</i> format. For example, 2012-03-25T12:30:10+01:00 is the ISO 8601
    #         date-time format for March 25th 2012 at 12:30PM (plus 10 seconds) in Central European Time.
    #       </p>
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

    module DocumentScope
      APPLICATION = 'APPLICATION'
      SESSION = 'SESSION'
    end

    module ExecutionStatus
      IN_PROGRESS = 'IN_PROGRESS'
      WAITING = 'WAITING'
      COMPLETED = 'COMPLETED'
      ERROR = 'ERROR'
    end

    # @!attribute instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The unique identifier of the Q App data collection session.</p>
    #   @return [String]
    class ExportQAppSessionDataInput < Struct.new(
      :instance_id,
      :session_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute csv_file_link
    #   <p>The link where the exported Q App session data can be downloaded from.</p>
    #   @return [String]
    # @!attribute expires_at
    #   <p>The date and time when the link for the exported Q App session data expires.</p>
    #   @return [Time]
    # @!attribute session_arn
    #   <p>The Amazon Resource Name (ARN) of the Q App data collection session.</p>
    #   @return [String]
    class ExportQAppSessionDataOutput < Struct.new(
      :csv_file_link,
      :expires_at,
      :session_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A card in an Amazon Q App that allows the user to upload a file.</p>
    # @!attribute id
    #   <p>The unique identifier of the file upload card.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the file upload card.</p>
    #   @return [String]
    # @!attribute dependencies
    #   <p>Any dependencies or requirements for the file upload card.</p>
    #   @return [Array<String>]
    # @!attribute type
    #   <p>The type of the card.</p>
    #   @return [String]
    # @!attribute filename
    #   <p>The name of the file being uploaded.</p>
    #   @return [String]
    # @!attribute file_id
    #   <p>The unique identifier of the file associated with the card.</p>
    #   @return [String]
    # @!attribute allow_override
    #   <p>A flag indicating if the user can override the default file for the upload card.</p>
    #   @return [Boolean]
    class FileUploadCard < Struct.new(
      :id,
      :title,
      :dependencies,
      :type,
      :filename,
      :file_id,
      :allow_override,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents a file upload card. It can optionally receive a <code>filename</code> and
    #         <code>fileId</code> to set a default file. If not received, the user must provide the file
    #       when the Q App runs.</p>
    # @!attribute title
    #   <p>The title or label of the file upload card.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the file upload card.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the card.</p>
    #   @return [String]
    # @!attribute filename
    #   <p>The default filename to use for the file upload card.</p>
    #   @return [String]
    # @!attribute file_id
    #   <p>The identifier of a pre-uploaded file associated with the card.</p>
    #   @return [String]
    # @!attribute allow_override
    #   <p>A flag indicating if the user can override the default file for the upload card.</p>
    #   @return [Boolean]
    class FileUploadCardInput < Struct.new(
      :title,
      :id,
      :type,
      :filename,
      :file_id,
      :allow_override,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:type] = 'file-upload' unless options.key?(:type)
        super
      end
    end

    # <p>A card in an Amazon Q App that allows the user to submit a response.</p>
    # @!attribute id
    #   <p>The unique identifier of the form input card.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the form input card.</p>
    #   @return [String]
    # @!attribute dependencies
    #   <p>Any dependencies or requirements for the form input card.</p>
    #   @return [Array<String>]
    # @!attribute type
    #   <p>The type of the card.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>The metadata that defines the form input card data.</p>
    #   @return [Types::FormInputCardMetadata]
    # @!attribute compute_mode
    #   <p>The compute mode of the form input card. This property determines whether individual
    #         participants of a data collection session can submit multiple response or one response. A
    #         compute mode of <code>append</code> shall allow participants to submit the same form multiple
    #         times with different values. A compute mode of <code>replace</code>code&gt; shall overwrite the
    #         current value for each participant.</p>
    #   @return [String]
    class FormInputCard < Struct.new(
      :id,
      :title,
      :dependencies,
      :type,
      :metadata,
      :compute_mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents a form input card for an Amazon Q App.</p>
    # @!attribute title
    #   <p>The title or label of the form input card.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the form input card.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the card.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>The metadata that defines the form input card data.</p>
    #   @return [Types::FormInputCardMetadata]
    # @!attribute compute_mode
    #   <p>The compute mode of the form input card. This property determines whether individual
    #         participants of a data collection session can submit multiple response or one response. A
    #         compute mode of <code>append</code> shall allow participants to submit the same form multiple
    #         times with different values. A compute mode of <code>replace</code>code&gt; shall overwrite the
    #         current value for each participant.</p>
    #   @return [String]
    class FormInputCardInput < Struct.new(
      :title,
      :id,
      :type,
      :metadata,
      :compute_mode,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:type] = 'form-input' unless options.key?(:type)
        super
      end
    end

    # <p>The metadata of the form input card.</p>
    # @!attribute schema
    #   <p>The JSON schema that defines the shape of the response data.</p>
    #   @return [JSON]
    class FormInputCardMetadata < Struct.new(
      :schema,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    #   @return [String]
    # @!attribute library_item_id
    #   <p>The unique identifier of the library item to retrieve.</p>
    #   @return [String]
    # @!attribute app_id
    #   <p>The unique identifier of the Amazon Q App associated with the library item.</p>
    #   @return [String]
    class GetLibraryItemInput < Struct.new(
      :instance_id,
      :library_item_id,
      :app_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute library_item_id
    #   <p>The unique identifier of the library item.</p>
    #   @return [String]
    # @!attribute app_id
    #   <p>The unique identifier of the Q App associated with the library item.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>The version of the Q App associated with the library item.</p>
    #   @return [Integer]
    # @!attribute categories
    #   <p>The categories associated with the library item for discovery.</p>
    #   @return [Array<Types::Category>]
    # @!attribute status
    #   <p>The status of the library item, such as "Published".</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the library item was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user who created the library item.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time the library item was last updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user who last updated the library item.</p>
    #   @return [String]
    # @!attribute rating_count
    #   <p>The number of ratings the library item has received from users.</p>
    #   @return [Integer]
    # @!attribute is_rated_by_user
    #   <p>Whether the current user has rated the library item.</p>
    #   @return [Boolean]
    # @!attribute user_count
    #   <p>The number of users who have associated the Q App with their account.</p>
    #   @return [Integer]
    # @!attribute is_verified
    #   <p>Indicates whether the library item has been verified.</p>
    #   @return [Boolean]
    class GetLibraryItemOutput < Struct.new(
      :library_item_id,
      :app_id,
      :app_version,
      :categories,
      :status,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      :rating_count,
      :is_rated_by_user,
      :user_count,
      :is_verified,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    #   @return [String]
    # @!attribute app_id
    #   <p>The unique identifier of the Q App to retrieve.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>The version of the Q App.</p>
    #   @return [Integer]
    class GetQAppInput < Struct.new(
      :instance_id,
      :app_id,
      :app_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The unique identifier of the Q App.</p>
    #   @return [String]
    # @!attribute app_arn
    #   <p>The Amazon Resource Name (ARN) of the Q App.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the Q App.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the Q App.</p>
    #   @return [String]
    # @!attribute initial_prompt
    #   <p>The initial prompt displayed when the Q App is started.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>The version of the Q App.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the Q App.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the Q App was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user who created the Q App.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time the Q App was last updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user who last updated the Q App.</p>
    #   @return [String]
    # @!attribute required_capabilities
    #   <p>The capabilities required to run the Q App, such as file upload or third-party
    #         integrations.</p>
    #   @return [Array<String>]
    # @!attribute app_definition
    #   <p>The full definition of the Q App, specifying the cards and flow.</p>
    #   @return [Types::AppDefinition]
    class GetQAppOutput < Struct.new(
      :app_id,
      :app_arn,
      :title,
      :description,
      :initial_prompt,
      :app_version,
      :status,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      :required_capabilities,
      :app_definition,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The unique identifier of the Q App session to retrieve.</p>
    #   @return [String]
    class GetQAppSessionInput < Struct.new(
      :instance_id,
      :session_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The unique identifier of the Q App session.</p>
    #   @return [String]
    class GetQAppSessionMetadataInput < Struct.new(
      :instance_id,
      :session_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute session_id
    #   <p>The unique identifier of the Q App session.</p>
    #   @return [String]
    # @!attribute session_arn
    #   <p>The Amazon Resource Name (ARN) of the Q App session.</p>
    #   @return [String]
    # @!attribute session_name
    #   <p>The name of the Q App session.</p>
    #   @return [String]
    # @!attribute sharing_configuration
    #   <p>The sharing configuration of the Q App data collection session.</p>
    #   @return [Types::SessionSharingConfiguration]
    # @!attribute session_owner
    #   <p>Indicates whether the current user is the owner of the Q App session.</p>
    #   @return [Boolean]
    class GetQAppSessionMetadataOutput < Struct.new(
      :session_id,
      :session_arn,
      :session_name,
      :sharing_configuration,
      :session_owner,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute session_id
    #   <p>The unique identifier of the Q App session.</p>
    #   @return [String]
    # @!attribute session_arn
    #   <p>The Amazon Resource Name (ARN) of the Q App session.</p>
    #   @return [String]
    # @!attribute session_name
    #   <p>The name of the Q App session.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>The version of the Q App used for the session.</p>
    #   @return [Integer]
    # @!attribute latest_published_app_version
    #   <p>The latest published version of the Q App used for the session.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The current status of the Q App session.</p>
    #   @return [String]
    # @!attribute card_status
    #   <p>The current status for each card in the Q App session.</p>
    #   @return [Hash<String, Types::CardStatus>]
    # @!attribute user_is_host
    #   <p>Indicates whether the current user is the owner of the Q App data collection
    #         session.</p>
    #   @return [Boolean]
    class GetQAppSessionOutput < Struct.new(
      :session_id,
      :session_arn,
      :session_name,
      :app_version,
      :latest_published_app_version,
      :status,
      :card_status,
      :user_is_host,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    #   @return [String]
    # @!attribute card_id
    #   <p>The unique identifier of the card the file is associated with.</p>
    #   @return [String]
    # @!attribute app_id
    #   <p>The unique identifier of the Q App the file is associated with.</p>
    #   @return [String]
    # @!attribute file_contents_base64
    #   <p>The base64-encoded contents of the file to upload.</p>
    #   @return [String]
    # @!attribute file_name
    #   <p>The name of the file being uploaded.</p>
    #   @return [String]
    # @!attribute scope
    #   <p>Whether the file is associated with a Q App definition or a specific Q App
    #         session.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The unique identifier of the Q App session the file is associated with, if
    #         applicable.</p>
    #   @return [String]
    class ImportDocumentInput < Struct.new(
      :instance_id,
      :card_id,
      :app_id,
      :file_contents_base64,
      :file_name,
      :scope,
      :session_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute file_id
    #   <p>The unique identifier assigned to the uploaded file.</p>
    #   @return [String]
    class ImportDocumentOutput < Struct.new(
      :file_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module InputCardComputeMode
      APPEND = 'append'
      REPLACE = 'replace'
    end

    # <p>An internal service error occurred while processing the request.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds to wait before retrying the operation</p>
    #   @return [Integer]
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A library item is a snapshot of an Amazon Q App that can be published so the users in their
    #       Amazon Q Apps library can discover it, clone it, and run it.</p>
    # @!attribute library_item_id
    #   <p>The unique identifier of the library item.</p>
    #   @return [String]
    # @!attribute app_id
    #   <p>The unique identifier of the Q App associated with the library item.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>The version of the Q App associated with the library item.</p>
    #   @return [Integer]
    # @!attribute categories
    #   <p>The categories associated with the library item.</p>
    #   @return [Array<Types::Category>]
    # @!attribute status
    #   <p>The status of the library item.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the library item was created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user who created the library item.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time the library item was last updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user who last updated the library item.</p>
    #   @return [String]
    # @!attribute rating_count
    #   <p>The number of ratings the library item has received.</p>
    #   @return [Integer]
    # @!attribute is_rated_by_user
    #   <p>Whether the current user has rated the library item.</p>
    #   @return [Boolean]
    # @!attribute user_count
    #   <p>The number of users who have the associated Q App.</p>
    #   @return [Integer]
    # @!attribute is_verified
    #   <p>Indicates whether the library item has been verified.</p>
    #   @return [Boolean]
    class LibraryItemMember < Struct.new(
      :library_item_id,
      :app_id,
      :app_version,
      :categories,
      :status,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      :rating_count,
      :is_rated_by_user,
      :user_count,
      :is_verified,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module LibraryItemStatus
      PUBLISHED = 'PUBLISHED'
      DISABLED = 'DISABLED'
    end

    # @!attribute instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    #   @return [String]
    class ListCategoriesInput < Struct.new(
      :instance_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute categories
    #   <p>The categories of a Amazon Q Business application environment instance.</p>
    #   @return [Array<Types::Category>]
    class ListCategoriesOutput < Struct.new(
      :categories,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of library items to return in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to request the next page of results.</p>
    #   @return [String]
    # @!attribute category_id
    #   <p>Optional category to filter the library items by.</p>
    #   @return [String]
    class ListLibraryItemsInput < Struct.new(
      :instance_id,
      :limit,
      :next_token,
      :category_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute library_items
    #   <p>The list of library items meeting the request criteria.</p>
    #   @return [Array<Types::LibraryItemMember>]
    # @!attribute next_token
    #   <p>The token to use to request the next page of results.</p>
    #   @return [String]
    class ListLibraryItemsOutput < Struct.new(
      :library_items,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The unique identifier of the Q App data collection session.</p>
    #   @return [String]
    class ListQAppSessionDataInput < Struct.new(
      :instance_id,
      :session_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute session_id
    #   <p>The unique identifier of the Q App data collection session.</p>
    #   @return [String]
    # @!attribute session_arn
    #   <p>The Amazon Resource Name (ARN) of the Q App data collection session.</p>
    #   @return [String]
    # @!attribute session_data
    #   <p>The collected responses of a Q App session.</p>
    #   @return [Array<Types::QAppSessionData>]
    # @!attribute next_token
    #   <p> The pagination token that indicates the next set of results to retrieve.</p>
    #   @return [String]
    class ListQAppSessionDataOutput < Struct.new(
      :session_id,
      :session_arn,
      :session_data,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    #   @return [String]
    # @!attribute limit
    #   <p>The maximum number of Q Apps to return in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token to request the next page of results.</p>
    #   @return [String]
    class ListQAppsInput < Struct.new(
      :instance_id,
      :limit,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute apps
    #   <p>The list of Amazon Q Apps meeting the request criteria.</p>
    #   @return [Array<Types::UserAppItem>]
    # @!attribute next_token
    #   <p>The token to use to request the next page of results.</p>
    #   @return [String]
    class ListQAppsOutput < Struct.new(
      :apps,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource whose tags should be listed.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The list of tags that are assigned to the resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The permission to grant or revoke for a Amazon Q App.</p>
    # @!attribute action
    #   <p>The action associated with the permission.</p>
    #   @return [String]
    # @!attribute principal
    #   <p>The principal user to which the permission applies.</p>
    #   @return [String]
    class PermissionInput < Struct.new(
      :action,
      :principal,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The permission granted to the Amazon Q App.</p>
    # @!attribute action
    #   <p>The action associated with the permission.</p>
    #   @return [String]
    # @!attribute principal
    #   <p>The principal user to which the permission applies.</p>
    #   @return [Types::PrincipalOutput]
    class PermissionOutput < Struct.new(
      :action,
      :principal,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module PluginType
      SERVICE_NOW = 'SERVICE_NOW'
      SALESFORCE = 'SALESFORCE'
      JIRA = 'JIRA'
      ZENDESK = 'ZENDESK'
      CUSTOM = 'CUSTOM'
      ASANA = 'ASANA'
      ATLASSIAN_CONFLUENCE = 'ATLASSIAN_CONFLUENCE'
      GOOGLE_CALENDAR = 'GOOGLE_CALENDAR'
      JIRA_CLOUD = 'JIRA_CLOUD'
      MICROSOFT_EXCHANGE = 'MICROSOFT_EXCHANGE'
      MICROSOFT_TEAMS = 'MICROSOFT_TEAMS'
      PAGERDUTY_ADVANCE = 'PAGERDUTY_ADVANCE'
      SALESFORCE_CRM = 'SALESFORCE_CRM'
      SERVICENOW_NOW_PLATFORM = 'SERVICENOW_NOW_PLATFORM'
      SMARTSHEET = 'SMARTSHEET'
      ZENDESK_SUITE = 'ZENDESK_SUITE'
    end

    # <p>The definition of an Amazon Q App generated based on input such as a conversation or problem
    #       statement.</p>
    # @!attribute title
    #   <p>The title of the generated Q App definition.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the generated Q App definition.</p>
    #   @return [String]
    # @!attribute app_definition
    #   <p>The definition specifying the cards and flow of the generated Q App.</p>
    #   @return [Types::AppDefinitionInput]
    class PredictAppDefinition < Struct.new(
      :title,
      :description,
      :app_definition,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    #   @return [String]
    # @!attribute options
    #   <p>The input to generate the Q App definition from, either a conversation or problem
    #         statement.</p>
    #   @return [Types::PredictQAppInputOptions]
    class PredictQAppInput < Struct.new(
      :instance_id,
      :options,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input options for generating an Q App definition.</p>
    # @!attribute conversation
    #   <p>A conversation to use as input for generating the Q App definition.</p>
    #   @return [Array<Types::ConversationMessage>]
    # @!attribute problem_statement
    #   <p>A problem statement to use as input for generating the Q App definition.</p>
    #   @return [String]
    class PredictQAppInputOptions < Struct.new(
      :conversation,
      :problem_statement,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Conversation < PredictQAppInputOptions; end
      class ProblemStatement < PredictQAppInputOptions; end
      class Unknown < PredictQAppInputOptions; end
    end

    # @!attribute app
    #   <p>The generated Q App definition.</p>
    #   @return [Types::PredictAppDefinition]
    # @!attribute problem_statement
    #   <p>The problem statement extracted from the input conversation, if provided.</p>
    #   @return [String]
    class PredictQAppOutput < Struct.new(
      :app,
      :problem_statement,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The principal for which the permission applies.</p>
    # @!attribute user_id
    #   <p>The unique identifier of the user.</p>
    #   @return [String]
    # @!attribute user_type
    #   <p>The type of the user.</p>
    #   @return [String]
    # @!attribute email
    #   <p>The email address associated with the user.</p>
    #   @return [String]
    class PrincipalOutput < Struct.new(
      :user_id,
      :user_type,
      :email,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The response collected for a Amazon Q App session. This container represents a single
    #       response to a Q App session.</p>
    # @!attribute card_id
    #   <p>The card Id associated with the response submitted for a Q App session.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The response submitted for a Q App session.</p>
    #   @return [JSON]
    # @!attribute user
    #   <p>The user who submitted the response for a Q App session.</p>
    #   @return [Types::User]
    # @!attribute submission_id
    #   <p>The unique identifier of the submission.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The date and time when the session data is submitted.</p>
    #   @return [Time]
    class QAppSessionData < Struct.new(
      :card_id,
      :value,
      :user,
      :submission_id,
      :timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A card in an Q App that integrates with a third-party plugin or service.</p>
    # @!attribute id
    #   <p>The unique identifier of the plugin card.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title or label of the plugin card.</p>
    #   @return [String]
    # @!attribute dependencies
    #   <p>Any dependencies or requirements for the plugin card.</p>
    #   @return [Array<String>]
    # @!attribute type
    #   <p>The type of the card.</p>
    #   @return [String]
    # @!attribute prompt
    #   <p>The prompt or instructions displayed for the plugin card.</p>
    #   @return [String]
    # @!attribute plugin_type
    #   <p>The type or category of the plugin used by the card.</p>
    #   @return [String]
    # @!attribute plugin_id
    #   <p>The unique identifier of the plugin used by the card.</p>
    #   @return [String]
    # @!attribute action_identifier
    #   <p>The action identifier of the action to be performed by the plugin card.</p>
    #   @return [String]
    class QPluginCard < Struct.new(
      :id,
      :title,
      :dependencies,
      :type,
      :prompt,
      :plugin_type,
      :plugin_id,
      :action_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input shape for defining a plugin card in an Amazon Q App.</p>
    # @!attribute title
    #   <p>The title or label of the plugin card.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the plugin card.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the card.</p>
    #   @return [String]
    # @!attribute prompt
    #   <p>The prompt or instructions displayed for the plugin card.</p>
    #   @return [String]
    # @!attribute plugin_id
    #   <p>The unique identifier of the plugin used by the card.</p>
    #   @return [String]
    # @!attribute action_identifier
    #   <p>The action identifier of the action to be performed by the plugin card.</p>
    #   @return [String]
    class QPluginCardInput < Struct.new(
      :title,
      :id,
      :type,
      :prompt,
      :plugin_id,
      :action_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:type] = 'q-plugin' unless options.key?(:type)
        super
      end
    end

    # <p>A card in a Amazon Q App that generates a response based on the Amazon Q Business service.</p>
    # @!attribute id
    #   <p>The unique identifier of the query card. </p>
    #   @return [String]
    # @!attribute title
    #   <p>The title or label of the query card.</p>
    #   @return [String]
    # @!attribute dependencies
    #   <p>Any dependencies or requirements for the query card.</p>
    #   @return [Array<String>]
    # @!attribute type
    #   <p>The type of the card.</p>
    #   @return [String]
    # @!attribute prompt
    #   <p>The prompt or instructions displayed for the query card.</p>
    #   @return [String]
    # @!attribute output_source
    #   <p>The source or type of output generated by the query card.</p>
    #   @return [String]
    # @!attribute attribute_filter
    #   <p>The Amazon Q Business filters applied in this query card when resolving data sources</p>
    #   @return [Types::AttributeFilter]
    # @!attribute memory_references
    #   <p>Any dependencies for the query card, where the dependencies are references to the
    #         collected responses.</p>
    #   @return [Array<String>]
    class QQueryCard < Struct.new(
      :id,
      :title,
      :dependencies,
      :type,
      :prompt,
      :output_source,
      :attribute_filter,
      :memory_references,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input shape for defining a query card in an Amazon Q App.</p>
    # @!attribute title
    #   <p>The title or label of the query card.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the query card.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the card.</p>
    #   @return [String]
    # @!attribute prompt
    #   <p>The prompt or instructions displayed for the query card.</p>
    #   @return [String]
    # @!attribute output_source
    #   <p>The source or type of output to generate for the query card.</p>
    #   @return [String]
    # @!attribute attribute_filter
    #   <p>Turns on filtering of responses based on document attributes or metadata fields.</p>
    #   @return [Types::AttributeFilter]
    class QQueryCardInput < Struct.new(
      :title,
      :id,
      :type,
      :prompt,
      :output_source,
      :attribute_filter,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:type] = 'q-query' unless options.key?(:type)
        options[:output_source] = 'approved-sources' unless options.key?(:output_source)
        super
      end
    end

    # <p>The requested resource could not be found.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The unique identifier of the resource</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module Sender
      USER = 'USER'
      SYSTEM = 'SYSTEM'
    end

    # <p>The requested operation could not be completed because it would exceed the service's quota
    #       or limit.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The unique identifier of the resource</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The code for the service where the quota was exceeded</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The code of the quota that was exceeded</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The sharing configuration of an Amazon Q App data collection session.</p>
    # @!attribute enabled
    #   <p>Indicates whether an Q App session is shareable with other users.</p>
    #   @return [Boolean]
    # @!attribute accept_responses
    #   <p>Indicates whether an Q App session can accept responses from users.</p>
    #   @return [Boolean]
    # @!attribute reveal_cards
    #   <p>Indicates whether collected responses for an Q App session are revealed for all
    #         users.</p>
    #   @return [Boolean]
    class SessionSharingConfiguration < Struct.new(
      :enabled,
      :accept_responses,
      :reveal_cards,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    #   @return [String]
    # @!attribute app_id
    #   <p>The unique identifier of the Q App to start a session for.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>The version of the Q App to use for the session.</p>
    #   @return [Integer]
    # @!attribute initial_values
    #   <p>Optional initial input values to provide for the Q App session.</p>
    #   @return [Array<Types::CardValue>]
    # @!attribute session_id
    #   <p>The unique identifier of the a Q App session.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Optional tags to associate with the new Q App session.</p>
    #   @return [Hash<String, String>]
    class StartQAppSessionInput < Struct.new(
      :instance_id,
      :app_id,
      :app_version,
      :initial_values,
      :session_id,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute session_id
    #   <p>The unique identifier of the new or retrieved Q App session.</p>
    #   @return [String]
    # @!attribute session_arn
    #   <p>The Amazon Resource Name (ARN) of the new Q App session.</p>
    #   @return [String]
    class StartQAppSessionOutput < Struct.new(
      :session_id,
      :session_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The unique identifier of the Q App session to stop.</p>
    #   @return [String]
    class StopQAppSessionInput < Struct.new(
      :instance_id,
      :session_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A record created when a user submits a form card.</p>
    # @!attribute value
    #   <p>The data submitted by the user.</p>
    #   @return [JSON]
    # @!attribute submission_id
    #   <p>The unique identifier of the submission.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The date and time when the card is submitted.</p>
    #   @return [Time]
    class Submission < Struct.new(
      :value,
      :submission_id,
      :timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Represents an action performed on a submission.</p>
    # @!attribute submission_id
    #   <p>The unique identifier of the submission.</p>
    #   @return [String]
    # @!attribute mutation_type
    #   <p>The operation that is performed on a submission.</p>
    #   @return [String]
    class SubmissionMutation < Struct.new(
      :submission_id,
      :mutation_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SubmissionMutationKind
      edit = 'edit'
      delete = 'delete'
      add = 'add'
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to tag.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to associate with the resource.</p>
    #   @return [Hash<String, String>]
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

    # <p>A card in an Amazon Q App that allows the user to input text.</p>
    # @!attribute id
    #   <p>The unique identifier of the text input card.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title or label of the text input card.</p>
    #   @return [String]
    # @!attribute dependencies
    #   <p>Any dependencies or requirements for the text input card.</p>
    #   @return [Array<String>]
    # @!attribute type
    #   <p>The type of the card.</p>
    #   @return [String]
    # @!attribute placeholder
    #   <p>The placeholder text to display in the text input field.</p>
    #   @return [String]
    # @!attribute default_value
    #   <p>The default value to pre-populate in the text input field.</p>
    #   @return [String]
    class TextInputCard < Struct.new(
      :id,
      :title,
      :dependencies,
      :type,
      :placeholder,
      :default_value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input shape for defining a text input card in an Amazon Q App.</p>
    # @!attribute title
    #   <p>The title or label of the text input card.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the text input card.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the card.</p>
    #   @return [String]
    # @!attribute placeholder
    #   <p>The placeholder text to display in the text input field.</p>
    #   @return [String]
    # @!attribute default_value
    #   <p>The default value to pre-populate in the text input field.</p>
    #   @return [String]
    class TextInputCardInput < Struct.new(
      :title,
      :id,
      :type,
      :placeholder,
      :default_value,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:type] = 'text-input' unless options.key?(:type)
        super
      end
    end

    # <p>The requested operation could not be completed because too many requests were sent at
    #       once. Wait a bit and try again later.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute service_code
    #   <p>The code for the service where the quota was exceeded</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The code of the quota that was exceeded</p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds to wait before retrying the operation</p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The client is not authenticated or authorized to perform the requested operation.</p>
    # @!attribute message
    #   @return [String]
    class UnauthorizedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to disassociate the tag from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The keys of the tags to disassociate from the resource.</p>
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

    # @!attribute instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    #   @return [String]
    # @!attribute library_item_id
    #   <p>The unique identifier of the library item to update.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The new status to set for the library item, such as "Published" or "Hidden".</p>
    #   @return [String]
    # @!attribute categories
    #   <p>The new categories to associate with the library item.</p>
    #   @return [Array<String>]
    class UpdateLibraryItemInput < Struct.new(
      :instance_id,
      :library_item_id,
      :status,
      :categories,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    #   @return [String]
    # @!attribute library_item_id
    #   <p>The unique identifier of the updated library item.</p>
    #   @return [String]
    # @!attribute is_verified
    #   <p>The verification status of the library item</p>
    #   @return [Boolean]
    class UpdateLibraryItemMetadataInput < Struct.new(
      :instance_id,
      :library_item_id,
      :is_verified,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute library_item_id
    #   <p>The unique identifier of the updated library item.</p>
    #   @return [String]
    # @!attribute app_id
    #   <p>The unique identifier of the Q App associated with the library item.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>The version of the Q App associated with the library item.</p>
    #   @return [Integer]
    # @!attribute categories
    #   <p>The categories associated with the updated library item.</p>
    #   @return [Array<Types::Category>]
    # @!attribute status
    #   <p>The new status of the updated library item.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the library item was originally created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user who originally created the library item.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time the library item was last updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user who last updated the library item.</p>
    #   @return [String]
    # @!attribute rating_count
    #   <p>The number of ratings the library item has received.</p>
    #   @return [Integer]
    # @!attribute is_rated_by_user
    #   <p>Whether the current user has rated the library item.</p>
    #   @return [Boolean]
    # @!attribute user_count
    #   <p>The number of users who have the associated Q App.</p>
    #   @return [Integer]
    # @!attribute is_verified
    #   <p>Indicates whether the library item has been verified.</p>
    #   @return [Boolean]
    class UpdateLibraryItemOutput < Struct.new(
      :library_item_id,
      :app_id,
      :app_version,
      :categories,
      :status,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      :rating_count,
      :is_rated_by_user,
      :user_count,
      :is_verified,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    #   @return [String]
    # @!attribute app_id
    #   <p>The unique identifier of the Q App to update.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The new title for the Q App.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The new description for the Q App.</p>
    #   @return [String]
    # @!attribute app_definition
    #   <p>The new definition specifying the cards and flow for the Q App.</p>
    #   @return [Types::AppDefinitionInput]
    class UpdateQAppInput < Struct.new(
      :instance_id,
      :app_id,
      :title,
      :description,
      :app_definition,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute app_id
    #   <p>The unique identifier of the updated Q App.</p>
    #   @return [String]
    # @!attribute app_arn
    #   <p>The Amazon Resource Name (ARN) of the updated Q App.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The new title of the updated Q App.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The new description of the updated Q App.</p>
    #   @return [String]
    # @!attribute initial_prompt
    #   <p>The initial prompt for the updated Q App.</p>
    #   @return [String]
    # @!attribute app_version
    #   <p>The new version of the updated Q App.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the updated Q App.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the Q App was originally created.</p>
    #   @return [Time]
    # @!attribute created_by
    #   <p>The user who originally created the Q App.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The date and time the Q App was last updated.</p>
    #   @return [Time]
    # @!attribute updated_by
    #   <p>The user who last updated the Q App.</p>
    #   @return [String]
    # @!attribute required_capabilities
    #   <p>The capabilities required for the updated Q App.</p>
    #   @return [Array<String>]
    class UpdateQAppOutput < Struct.new(
      :app_id,
      :app_arn,
      :title,
      :description,
      :initial_prompt,
      :app_version,
      :status,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      :required_capabilities,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    #   @return [String]
    # @!attribute app_id
    #   <p>The unique identifier of the Amazon Q App for which permissions are being updated.</p>
    #   @return [String]
    # @!attribute grant_permissions
    #   <p>The list of permissions to grant for the Amazon Q App.</p>
    #   @return [Array<Types::PermissionInput>]
    # @!attribute revoke_permissions
    #   <p>The list of permissions to revoke for the Amazon Q App.</p>
    #   @return [Array<Types::PermissionInput>]
    class UpdateQAppPermissionsInput < Struct.new(
      :instance_id,
      :app_id,
      :grant_permissions,
      :revoke_permissions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Q App for which permissions were
    #         updated.</p>
    #   @return [String]
    # @!attribute app_id
    #   <p>The unique identifier of the Amazon Q App for which permissions were updated.</p>
    #   @return [String]
    # @!attribute permissions
    #   <p>The updated list of permissions for the Amazon Q App.</p>
    #   @return [Array<Types::PermissionOutput>]
    class UpdateQAppPermissionsOutput < Struct.new(
      :resource_arn,
      :app_id,
      :permissions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The unique identifier of the Q App session to provide input for.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The input values to provide for the current state of the Q App session.</p>
    #   @return [Array<Types::CardValue>]
    class UpdateQAppSessionInput < Struct.new(
      :instance_id,
      :session_id,
      :values,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute instance_id
    #   <p>The unique identifier of the Amazon Q Business application environment instance.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The unique identifier of the Q App session to update configuration for.</p>
    #   @return [String]
    # @!attribute session_name
    #   <p>The new name for the Q App session.</p>
    #   @return [String]
    # @!attribute sharing_configuration
    #   <p>The new sharing configuration for the Q App data collection session.</p>
    #   @return [Types::SessionSharingConfiguration]
    class UpdateQAppSessionMetadataInput < Struct.new(
      :instance_id,
      :session_id,
      :session_name,
      :sharing_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute session_id
    #   <p>The unique identifier of the updated Q App session.</p>
    #   @return [String]
    # @!attribute session_arn
    #   <p>The Amazon Resource Name (ARN) of the updated Q App session.</p>
    #   @return [String]
    # @!attribute session_name
    #   <p>The new name of the updated Q App session.</p>
    #   @return [String]
    # @!attribute sharing_configuration
    #   <p>The new sharing configuration of the updated Q App data collection session.</p>
    #   @return [Types::SessionSharingConfiguration]
    class UpdateQAppSessionMetadataOutput < Struct.new(
      :session_id,
      :session_arn,
      :session_name,
      :sharing_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute session_id
    #   <p>The unique identifier of the updated Q App session.</p>
    #   @return [String]
    # @!attribute session_arn
    #   <p>The Amazon Resource Name (ARN) of the updated Q App session.</p>
    #   @return [String]
    class UpdateQAppSessionOutput < Struct.new(
      :session_id,
      :session_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A user of an Amazon Q App.</p>
    # @!attribute user_id
    #   <p>The unique identifier of a user.</p>
    #   @return [String]
    class User < Struct.new(
      :user_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An Amazon Q App associated with a user, either owned by the user or favorited.</p>
    # @!attribute app_id
    #   <p>The unique identifier of the Q App.</p>
    #   @return [String]
    # @!attribute app_arn
    #   <p>The Amazon Resource Name (ARN) of the Q App.</p>
    #   @return [String]
    # @!attribute title
    #   <p>The title of the Q App.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the Q App.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time the user's association with the Q App was created.</p>
    #   @return [Time]
    # @!attribute can_edit
    #   <p>A flag indicating whether the user can edit the Q App.</p>
    #   @return [Boolean]
    # @!attribute status
    #   <p>The status of the user's association with the Q App.</p>
    #   @return [String]
    # @!attribute is_verified
    #   <p>Indicates whether the Q App has been verified.</p>
    #   @return [Boolean]
    class UserAppItem < Struct.new(
      :app_id,
      :app_arn,
      :title,
      :description,
      :created_at,
      :can_edit,
      :status,
      :is_verified,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_verified] = false unless options.key?(:is_verified)
        super
      end
    end

    module UserType
      OWNER = 'owner'
      USER = 'user'
    end

    # <p>The input failed to satisfy the constraints specified by the service.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end
