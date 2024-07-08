# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::QApps
  module Types

    # The client is not authorized to perform the requested operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The definition of the Q App, specifying the cards and flow.
    #
    # @!attribute [rw] app_definition_version
    #   The version of the app definition schema or specification.
    #   @return [String]
    #
    # @!attribute [rw] cards
    #   The cards that make up the Q App, such as text input, file upload,
    #   or query cards.
    #   @return [Array<Types::Card>]
    #
    # @!attribute [rw] can_edit
    #   A flag indicating whether the Q App's definition can be edited by
    #   the user.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/AppDefinition AWS API Documentation
    #
    class AppDefinition < Struct.new(
      :app_definition_version,
      :cards,
      :can_edit)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input for defining an Q App.
    #
    # @!attribute [rw] cards
    #   The cards that make up the Q App definition.
    #   @return [Array<Types::CardInput>]
    #
    # @!attribute [rw] initial_prompt
    #   The initial prompt displayed when the Q App is started.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/AppDefinitionInput AWS API Documentation
    #
    class AppDefinitionInput < Struct.new(
      :cards,
      :initial_prompt)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The unique identifier for the Amazon Q Business application
    #   environment instance.
    #   @return [String]
    #
    # @!attribute [rw] library_item_id
    #   The unique identifier of the library item to associate the review
    #   with.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/AssociateLibraryItemReviewInput AWS API Documentation
    #
    class AssociateLibraryItemReviewInput < Struct.new(
      :instance_id,
      :library_item_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The unique identifier of the Amazon Q Business application
    #   environment instance.
    #   @return [String]
    #
    # @!attribute [rw] app_id
    #   The ID of the Amazon Q App to associate with the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/AssociateQAppWithUserInput AWS API Documentation
    #
    class AssociateQAppWithUserInput < Struct.new(
      :instance_id,
      :app_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The filter criteria used on responses based on document attributes or
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
    #   Performs an *equals* operation on two document attributes or
    #   metadata fields. Supported for the following [document attribute
    #   value types][1]: `dateValue`, `longValue`, `stringListValue` and
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
    #   Performs a *greater than* operation on two document attributes or
    #   metadata fields. Supported for the following [document attribute
    #   value types][1]: `dateValue` and `longValue`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeValue.html
    #   @return [Types::DocumentAttribute]
    #
    # @!attribute [rw] greater_than_or_equals
    #   Performs a *greater than or equals* operation on two document
    #   attributes or metadata fields. Supported for the following [document
    #   attribute value types][1]: `dateValue` and `longValue`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeValue.html
    #   @return [Types::DocumentAttribute]
    #
    # @!attribute [rw] less_than
    #   Performs a *less than* operation on two document attributes or
    #   metadata fields. Supported for the following [document attribute
    #   value types][1]: `dateValue` and `longValue`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeValue.html
    #   @return [Types::DocumentAttribute]
    #
    # @!attribute [rw] less_than_or_equals
    #   Performs a *less than or equals* operation on two document
    #   attributes or metadata fields.Supported for the following [document
    #   attribute value type][1]: `dateValue` and `longValue`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/amazonq/latest/api-reference/API_DocumentAttributeValue.html
    #   @return [Types::DocumentAttribute]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/AttributeFilter AWS API Documentation
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

    # A card representing a component or step in an Amazon Q App's flow.
    #
    # @note Card is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Card corresponding to the set member.
    #
    # @!attribute [rw] text_input
    #   A container for the properties of the text input card.
    #   @return [Types::TextInputCard]
    #
    # @!attribute [rw] q_query
    #   A container for the properties of the query card.
    #   @return [Types::QQueryCard]
    #
    # @!attribute [rw] q_plugin
    #   A container for the properties of the plugin card.
    #   @return [Types::QPluginCard]
    #
    # @!attribute [rw] file_upload
    #   A container for the properties of the file upload card.
    #   @return [Types::FileUploadCard]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/Card AWS API Documentation
    #
    class Card < Struct.new(
      :text_input,
      :q_query,
      :q_plugin,
      :file_upload,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class TextInput < Card; end
      class QQuery < Card; end
      class QPlugin < Card; end
      class FileUpload < Card; end
      class Unknown < Card; end
    end

    # The properties defining an input card in an Amazon Q App.
    #
    # @note CardInput is a union - when making an API calls you must set exactly one of the members.
    #
    # @note CardInput is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of CardInput corresponding to the set member.
    #
    # @!attribute [rw] text_input
    #   A container for the properties of the text input card.
    #   @return [Types::TextInputCardInput]
    #
    # @!attribute [rw] q_query
    #   A container for the properties of the query input card.
    #   @return [Types::QQueryCardInput]
    #
    # @!attribute [rw] q_plugin
    #   A container for the properties of the plugin input card.
    #   @return [Types::QPluginCardInput]
    #
    # @!attribute [rw] file_upload
    #   A container for the properties of the file upload input card.
    #   @return [Types::FileUploadCardInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/CardInput AWS API Documentation
    #
    class CardInput < Struct.new(
      :text_input,
      :q_query,
      :q_plugin,
      :file_upload,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class TextInput < CardInput; end
      class QQuery < CardInput; end
      class QPlugin < CardInput; end
      class FileUpload < CardInput; end
      class Unknown < CardInput; end
    end

    # The current status and value of a card in an active Amazon Q App
    # session.
    #
    # @!attribute [rw] current_state
    #   The current state of the card.
    #   @return [String]
    #
    # @!attribute [rw] current_value
    #   The current value or result associated with the card.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/CardStatus AWS API Documentation
    #
    class CardStatus < Struct.new(
      :current_state,
      :current_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The value or result associated with a card in a Amazon Q App session.
    #
    # @!attribute [rw] card_id
    #   The unique identifier of the card.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value or result associated with the card.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/CardValue AWS API Documentation
    #
    class CardValue < Struct.new(
      :card_id,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A category used to classify and filter library items for Amazon Q
    # Apps.
    #
    # @!attribute [rw] id
    #   The unique identifier of the category.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title or name of the category.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/Category AWS API Documentation
    #
    class Category < Struct.new(
      :id,
      :title)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested operation could not be completed due to a conflict with
    # the current state of the resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The unique identifier of the resource
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested operation could not be completed because the content
    # exceeds the maximum allowed size.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The unique identifier of the resource
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/ContentTooLargeException AWS API Documentation
    #
    class ContentTooLargeException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A message in a conversation, used as input for generating an Amazon Q
    # App definition.
    #
    # @!attribute [rw] body
    #   The text content of the conversation message.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the conversation message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/ConversationMessage AWS API Documentation
    #
    class ConversationMessage < Struct.new(
      :body,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The unique identifier of the Amazon Q Business application
    #   environment instance.
    #   @return [String]
    #
    # @!attribute [rw] app_id
    #   The unique identifier of the Amazon Q App to publish to the library.
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   The version of the Amazon Q App to publish to the library.
    #   @return [Integer]
    #
    # @!attribute [rw] categories
    #   The categories to associate with the library item for easier
    #   discovery.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/CreateLibraryItemInput AWS API Documentation
    #
    class CreateLibraryItemInput < Struct.new(
      :instance_id,
      :app_id,
      :app_version,
      :categories)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] library_item_id
    #   The unique identifier of the new library item.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the new library item, such as "Published".
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the library item was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user who created the library item.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time the library item was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The user who last updated the library item.
    #   @return [String]
    #
    # @!attribute [rw] rating_count
    #   The number of ratings the library item has received from users.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/CreateLibraryItemOutput AWS API Documentation
    #
    class CreateLibraryItemOutput < Struct.new(
      :library_item_id,
      :status,
      :created_at,
      :created_by,
      :updated_at,
      :updated_by,
      :rating_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The unique identifier of the Amazon Q Business application
    #   environment instance.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the new Q App.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the new Q App.
    #   @return [String]
    #
    # @!attribute [rw] app_definition
    #   The definition of the new Q App, specifying the cards and flow.
    #   @return [Types::AppDefinitionInput]
    #
    # @!attribute [rw] tags
    #   Optional tags to associate with the new Q App.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/CreateQAppInput AWS API Documentation
    #
    class CreateQAppInput < Struct.new(
      :instance_id,
      :title,
      :description,
      :app_definition,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   The unique identifier of the new Q App.
    #   @return [String]
    #
    # @!attribute [rw] app_arn
    #   The Amazon Resource Name (ARN) of the new Q App.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the new Q App.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the new Q App.
    #   @return [String]
    #
    # @!attribute [rw] initial_prompt
    #   The initial prompt displayed when the Q App is started.
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   The version of the new Q App.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the new Q App, such as "Created".
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the Q App was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user who created the Q App.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time the Q App was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The user who last updated the Q App.
    #   @return [String]
    #
    # @!attribute [rw] required_capabilities
    #   The capabilities required to run the Q App, such as file upload or
    #   third-party integrations.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/CreateQAppOutput AWS API Documentation
    #
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
      :required_capabilities)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The unique identifier of the Amazon Q Business application
    #   environment instance.
    #   @return [String]
    #
    # @!attribute [rw] library_item_id
    #   The unique identifier of the library item to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/DeleteLibraryItemInput AWS API Documentation
    #
    class DeleteLibraryItemInput < Struct.new(
      :instance_id,
      :library_item_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The unique identifier of the Amazon Q Business application
    #   environment instance.
    #   @return [String]
    #
    # @!attribute [rw] app_id
    #   The unique identifier of the Q App to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/DeleteQAppInput AWS API Documentation
    #
    class DeleteQAppInput < Struct.new(
      :instance_id,
      :app_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The unique identifier of the Amazon Q Business application
    #   environment instance.
    #   @return [String]
    #
    # @!attribute [rw] library_item_id
    #   The unique identifier of the library item to remove the review from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/DisassociateLibraryItemReviewInput AWS API Documentation
    #
    class DisassociateLibraryItemReviewInput < Struct.new(
      :instance_id,
      :library_item_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The unique identifier of the Amazon Q Business application
    #   environment instance.
    #   @return [String]
    #
    # @!attribute [rw] app_id
    #   The unique identifier of the Q App to disassociate from the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/DisassociateQAppFromUserInput AWS API Documentation
    #
    class DisassociateQAppFromUserInput < Struct.new(
      :instance_id,
      :app_id)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/DocumentAttribute AWS API Documentation
    #
    class DocumentAttribute < Struct.new(
      :name,
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
    #   It's important for the time zone to be included in the *ISO 8601
    #   date-time* format. For example, 2012-03-25T12:30:10+01:00 is the ISO
    #   8601 date-time format for March 25th 2012 at 12:30PM (plus 10
    #   seconds) in Central European Time.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/DocumentAttributeValue AWS API Documentation
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

    # A card in an Amazon Q App that allows the user to upload a file.
    #
    # @!attribute [rw] id
    #   The unique identifier of the file upload card.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the file upload card.
    #   @return [String]
    #
    # @!attribute [rw] dependencies
    #   Any dependencies or requirements for the file upload card.
    #   @return [Array<String>]
    #
    # @!attribute [rw] type
    #   The type of the card.
    #   @return [String]
    #
    # @!attribute [rw] filename
    #   The name of the file being uploaded.
    #   @return [String]
    #
    # @!attribute [rw] file_id
    #   The unique identifier of the file associated with the card.
    #   @return [String]
    #
    # @!attribute [rw] allow_override
    #   A flag indicating if the user can override the default file for the
    #   upload card.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/FileUploadCard AWS API Documentation
    #
    class FileUploadCard < Struct.new(
      :id,
      :title,
      :dependencies,
      :type,
      :filename,
      :file_id,
      :allow_override)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a file upload card. It can optionally receive a `filename`
    # and `fileId` to set a default file. If not received, the user must
    # provide the file when the Q App runs.
    #
    # @!attribute [rw] title
    #   The title or label of the file upload card.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the file upload card.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the card.
    #   @return [String]
    #
    # @!attribute [rw] filename
    #   The default filename to use for the file upload card.
    #   @return [String]
    #
    # @!attribute [rw] file_id
    #   The identifier of a pre-uploaded file associated with the card.
    #   @return [String]
    #
    # @!attribute [rw] allow_override
    #   A flag indicating if the user can override the default file for the
    #   upload card.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/FileUploadCardInput AWS API Documentation
    #
    class FileUploadCardInput < Struct.new(
      :title,
      :id,
      :type,
      :filename,
      :file_id,
      :allow_override)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The unique identifier of the Amazon Q Business application
    #   environment instance.
    #   @return [String]
    #
    # @!attribute [rw] library_item_id
    #   The unique identifier of the library item to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] app_id
    #   The unique identifier of the Amazon Q App associated with the
    #   library item.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/GetLibraryItemInput AWS API Documentation
    #
    class GetLibraryItemInput < Struct.new(
      :instance_id,
      :library_item_id,
      :app_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] library_item_id
    #   The unique identifier of the library item.
    #   @return [String]
    #
    # @!attribute [rw] app_id
    #   The unique identifier of the Q App associated with the library item.
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   The version of the Q App associated with the library item.
    #   @return [Integer]
    #
    # @!attribute [rw] categories
    #   The categories associated with the library item for discovery.
    #   @return [Array<Types::Category>]
    #
    # @!attribute [rw] status
    #   The status of the library item, such as "Published".
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the library item was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user who created the library item.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time the library item was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The user who last updated the library item.
    #   @return [String]
    #
    # @!attribute [rw] rating_count
    #   The number of ratings the library item has received from users.
    #   @return [Integer]
    #
    # @!attribute [rw] is_rated_by_user
    #   Whether the current user has rated the library item.
    #   @return [Boolean]
    #
    # @!attribute [rw] user_count
    #   The number of users who have associated the Q App with their
    #   account.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/GetLibraryItemOutput AWS API Documentation
    #
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
      :user_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The unique identifier of the Amazon Q Business application
    #   environment instance.
    #   @return [String]
    #
    # @!attribute [rw] app_id
    #   The unique identifier of the Q App to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/GetQAppInput AWS API Documentation
    #
    class GetQAppInput < Struct.new(
      :instance_id,
      :app_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   The unique identifier of the Q App.
    #   @return [String]
    #
    # @!attribute [rw] app_arn
    #   The Amazon Resource Name (ARN) of the Q App.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the Q App.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the Q App.
    #   @return [String]
    #
    # @!attribute [rw] initial_prompt
    #   The initial prompt displayed when the Q App is started.
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   The version of the Q App.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the Q App.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the Q App was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user who created the Q App.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time the Q App was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The user who last updated the Q App.
    #   @return [String]
    #
    # @!attribute [rw] required_capabilities
    #   The capabilities required to run the Q App, such as file upload or
    #   third-party integrations.
    #   @return [Array<String>]
    #
    # @!attribute [rw] app_definition
    #   The full definition of the Q App, specifying the cards and flow.
    #   @return [Types::AppDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/GetQAppOutput AWS API Documentation
    #
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
      :app_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The unique identifier of the Amazon Q Business application
    #   environment instance.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The unique identifier of the Q App session to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/GetQAppSessionInput AWS API Documentation
    #
    class GetQAppSessionInput < Struct.new(
      :instance_id,
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   The unique identifier of the Q App session.
    #   @return [String]
    #
    # @!attribute [rw] session_arn
    #   The Amazon Resource Name (ARN) of the Q App session.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the Q App session.
    #   @return [String]
    #
    # @!attribute [rw] card_status
    #   The current status for each card in the Q App session.
    #   @return [Hash<String,Types::CardStatus>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/GetQAppSessionOutput AWS API Documentation
    #
    class GetQAppSessionOutput < Struct.new(
      :session_id,
      :session_arn,
      :status,
      :card_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The unique identifier of the Amazon Q Business application
    #   environment instance.
    #   @return [String]
    #
    # @!attribute [rw] card_id
    #   The unique identifier of the card the file is associated with, if
    #   applicable.
    #   @return [String]
    #
    # @!attribute [rw] app_id
    #   The unique identifier of the Q App the file is associated with.
    #   @return [String]
    #
    # @!attribute [rw] file_contents_base_64
    #   The base64-encoded contents of the file to upload.
    #   @return [String]
    #
    # @!attribute [rw] file_name
    #   The name of the file being uploaded.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   Whether the file is associated with an Q App definition or a
    #   specific Q App session.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The unique identifier of the Q App session the file is associated
    #   with, if applicable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/ImportDocumentInput AWS API Documentation
    #
    class ImportDocumentInput < Struct.new(
      :instance_id,
      :card_id,
      :app_id,
      :file_contents_base_64,
      :file_name,
      :scope,
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] file_id
    #   The unique identifier assigned to the uploaded file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/ImportDocumentOutput AWS API Documentation
    #
    class ImportDocumentOutput < Struct.new(
      :file_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal service error occurred while processing the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds to wait before retrying the operation
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # A library item is a snapshot of an Amazon Q App that can be published
    # so the users in their Amazon Q Apps library can discover it, clone it,
    # and run it.
    #
    # @!attribute [rw] library_item_id
    #   The unique identifier of the library item.
    #   @return [String]
    #
    # @!attribute [rw] app_id
    #   The unique identifier of the Q App associated with the library item.
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   The version of the Q App associated with the library item.
    #   @return [Integer]
    #
    # @!attribute [rw] categories
    #   The categories associated with the library item.
    #   @return [Array<Types::Category>]
    #
    # @!attribute [rw] status
    #   The status of the library item.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the library item was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user who created the library item.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time the library item was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The user who last updated the library item.
    #   @return [String]
    #
    # @!attribute [rw] rating_count
    #   The number of ratings the library item has received.
    #   @return [Integer]
    #
    # @!attribute [rw] is_rated_by_user
    #   Whether the current user has rated the library item.
    #   @return [Boolean]
    #
    # @!attribute [rw] user_count
    #   The number of users who have the associated Q App.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/LibraryItemMember AWS API Documentation
    #
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
      :user_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The unique identifier of the Amazon Q Business application
    #   environment instance.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of library items to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to request the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] category_id
    #   Optional category to filter the library items by.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/ListLibraryItemsInput AWS API Documentation
    #
    class ListLibraryItemsInput < Struct.new(
      :instance_id,
      :limit,
      :next_token,
      :category_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] library_items
    #   The list of library items meeting the request criteria.
    #   @return [Array<Types::LibraryItemMember>]
    #
    # @!attribute [rw] next_token
    #   The token to use to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/ListLibraryItemsOutput AWS API Documentation
    #
    class ListLibraryItemsOutput < Struct.new(
      :library_items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The unique identifier of the Amazon Q Business application
    #   environment instance.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The maximum number of Q Apps to return in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/ListQAppsInput AWS API Documentation
    #
    class ListQAppsInput < Struct.new(
      :instance_id,
      :limit,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] apps
    #   The list of Amazon Q Apps meeting the request criteria.
    #   @return [Array<Types::UserAppItem>]
    #
    # @!attribute [rw] next_token
    #   The token to use to request the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/ListQAppsOutput AWS API Documentation
    #
    class ListQAppsOutput < Struct.new(
      :apps,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource whose tags should be
    #   listed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tags that are assigned to the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The definition of an Amazon Q App generated based on input such as a
    # conversation or problem statement.
    #
    # @!attribute [rw] title
    #   The title of the generated Q App definition.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the generated Q App definition.
    #   @return [String]
    #
    # @!attribute [rw] app_definition
    #   The definition specifying the cards and flow of the generated Q App.
    #   @return [Types::AppDefinitionInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/PredictAppDefinition AWS API Documentation
    #
    class PredictAppDefinition < Struct.new(
      :title,
      :description,
      :app_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The unique identifier of the Amazon Q Business application
    #   environment instance.
    #   @return [String]
    #
    # @!attribute [rw] options
    #   The input to generate the Q App definition from, either a
    #   conversation or problem statement.
    #   @return [Types::PredictQAppInputOptions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/PredictQAppInput AWS API Documentation
    #
    class PredictQAppInput < Struct.new(
      :instance_id,
      :options)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input options for generating an Q App definition.
    #
    # @note PredictQAppInputOptions is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] conversation
    #   A conversation to use as input for generating the Q App definition.
    #   @return [Array<Types::ConversationMessage>]
    #
    # @!attribute [rw] problem_statement
    #   A problem statement to use as input for generating the Q App
    #   definition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/PredictQAppInputOptions AWS API Documentation
    #
    class PredictQAppInputOptions < Struct.new(
      :conversation,
      :problem_statement,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Conversation < PredictQAppInputOptions; end
      class ProblemStatement < PredictQAppInputOptions; end
      class Unknown < PredictQAppInputOptions; end
    end

    # @!attribute [rw] app
    #   The generated Q App definition.
    #   @return [Types::PredictAppDefinition]
    #
    # @!attribute [rw] problem_statement
    #   The problem statement extracted from the input conversation, if
    #   provided.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/PredictQAppOutput AWS API Documentation
    #
    class PredictQAppOutput < Struct.new(
      :app,
      :problem_statement)
      SENSITIVE = []
      include Aws::Structure
    end

    # A card in an Q App that integrates with a third-party plugin or
    # service.
    #
    # @!attribute [rw] id
    #   The unique identifier of the plugin card.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title or label of the plugin card.
    #   @return [String]
    #
    # @!attribute [rw] dependencies
    #   Any dependencies or requirements for the plugin card.
    #   @return [Array<String>]
    #
    # @!attribute [rw] type
    #   The type of the card.
    #   @return [String]
    #
    # @!attribute [rw] prompt
    #   The prompt or instructions displayed for the plugin card.
    #   @return [String]
    #
    # @!attribute [rw] plugin_type
    #   The type or category of the plugin used by the card.
    #   @return [String]
    #
    # @!attribute [rw] plugin_id
    #   The unique identifier of the plugin used by the card.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/QPluginCard AWS API Documentation
    #
    class QPluginCard < Struct.new(
      :id,
      :title,
      :dependencies,
      :type,
      :prompt,
      :plugin_type,
      :plugin_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input shape for defining a plugin card in an Amazon Q App.
    #
    # @!attribute [rw] title
    #   The title or label of the plugin card.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the plugin card.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the card.
    #   @return [String]
    #
    # @!attribute [rw] prompt
    #   The prompt or instructions displayed for the plugin card.
    #   @return [String]
    #
    # @!attribute [rw] plugin_id
    #   The unique identifier of the plugin used by the card.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/QPluginCardInput AWS API Documentation
    #
    class QPluginCardInput < Struct.new(
      :title,
      :id,
      :type,
      :prompt,
      :plugin_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A card in a Amazon Q App that generates a response based on the Amazon
    # Q Business service.
    #
    # @!attribute [rw] id
    #   The unique identifier of the query card.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title or label of the query card.
    #   @return [String]
    #
    # @!attribute [rw] dependencies
    #   Any dependencies or requirements for the query card.
    #   @return [Array<String>]
    #
    # @!attribute [rw] type
    #   The type of the card.
    #   @return [String]
    #
    # @!attribute [rw] prompt
    #   The prompt or instructions displayed for the query card.
    #   @return [String]
    #
    # @!attribute [rw] output_source
    #   The source or type of output generated by the query card.
    #   @return [String]
    #
    # @!attribute [rw] attribute_filter
    #   The Amazon Q Business filters applied in this query card when
    #   resolving data sources
    #   @return [Types::AttributeFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/QQueryCard AWS API Documentation
    #
    class QQueryCard < Struct.new(
      :id,
      :title,
      :dependencies,
      :type,
      :prompt,
      :output_source,
      :attribute_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input shape for defining a query card in an Amazon Q App.
    #
    # @!attribute [rw] title
    #   The title or label of the query card.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the query card.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the card.
    #   @return [String]
    #
    # @!attribute [rw] prompt
    #   The prompt or instructions displayed for the query card.
    #   @return [String]
    #
    # @!attribute [rw] output_source
    #   The source or type of output to generate for the query card.
    #   @return [String]
    #
    # @!attribute [rw] attribute_filter
    #   Turns on filtering of responses based on document attributes or
    #   metadata fields.
    #   @return [Types::AttributeFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/QQueryCardInput AWS API Documentation
    #
    class QQueryCardInput < Struct.new(
      :title,
      :id,
      :type,
      :prompt,
      :output_source,
      :attribute_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested resource could not be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The unique identifier of the resource
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested operation could not be completed because it would exceed
    # the service's quota or limit.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The unique identifier of the resource
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The code for the service where the quota was exceeded
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The code of the quota that was exceeded
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/ServiceQuotaExceededException AWS API Documentation
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

    # @!attribute [rw] instance_id
    #   The unique identifier of the Amazon Q Business application
    #   environment instance.
    #   @return [String]
    #
    # @!attribute [rw] app_id
    #   The unique identifier of the Q App to start a session for.
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   The version of the Q App to use for the session.
    #   @return [Integer]
    #
    # @!attribute [rw] initial_values
    #   Optional initial input values to provide for the Q App session.
    #   @return [Array<Types::CardValue>]
    #
    # @!attribute [rw] tags
    #   Optional tags to associate with the new Q App session.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/StartQAppSessionInput AWS API Documentation
    #
    class StartQAppSessionInput < Struct.new(
      :instance_id,
      :app_id,
      :app_version,
      :initial_values,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   The unique identifier of the new Q App session.
    #   @return [String]
    #
    # @!attribute [rw] session_arn
    #   The Amazon Resource Name (ARN) of the new Q App session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/StartQAppSessionOutput AWS API Documentation
    #
    class StartQAppSessionOutput < Struct.new(
      :session_id,
      :session_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The unique identifier of the Amazon Q Business application
    #   environment instance.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The unique identifier of the Q App session to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/StopQAppSessionInput AWS API Documentation
    #
    class StopQAppSessionInput < Struct.new(
      :instance_id,
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to associate with the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # A card in an Amazon Q App that allows the user to input text.
    #
    # @!attribute [rw] id
    #   The unique identifier of the text input card.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title or label of the text input card.
    #   @return [String]
    #
    # @!attribute [rw] dependencies
    #   Any dependencies or requirements for the text input card.
    #   @return [Array<String>]
    #
    # @!attribute [rw] type
    #   The type of the card.
    #   @return [String]
    #
    # @!attribute [rw] placeholder
    #   The placeholder text to display in the text input field.
    #   @return [String]
    #
    # @!attribute [rw] default_value
    #   The default value to pre-populate in the text input field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/TextInputCard AWS API Documentation
    #
    class TextInputCard < Struct.new(
      :id,
      :title,
      :dependencies,
      :type,
      :placeholder,
      :default_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input shape for defining a text input card in an Amazon Q App.
    #
    # @!attribute [rw] title
    #   The title or label of the text input card.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the text input card.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the card.
    #   @return [String]
    #
    # @!attribute [rw] placeholder
    #   The placeholder text to display in the text input field.
    #   @return [String]
    #
    # @!attribute [rw] default_value
    #   The default value to pre-populate in the text input field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/TextInputCardInput AWS API Documentation
    #
    class TextInputCardInput < Struct.new(
      :title,
      :id,
      :type,
      :placeholder,
      :default_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested operation could not be completed because too many
    # requests were sent at once. Wait a bit and try again later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The code for the service where the quota was exceeded
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The code of the quota that was exceeded
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds to wait before retrying the operation
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # The client is not authenticated or authorized to perform the requested
    # operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/UnauthorizedException AWS API Documentation
    #
    class UnauthorizedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to disassociate the
    #   tag from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the tags to disassociate from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] instance_id
    #   The unique identifier of the Amazon Q Business application
    #   environment instance.
    #   @return [String]
    #
    # @!attribute [rw] library_item_id
    #   The unique identifier of the library item to update.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The new status to set for the library item, such as "Published" or
    #   "Hidden".
    #   @return [String]
    #
    # @!attribute [rw] categories
    #   The new categories to associate with the library item.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/UpdateLibraryItemInput AWS API Documentation
    #
    class UpdateLibraryItemInput < Struct.new(
      :instance_id,
      :library_item_id,
      :status,
      :categories)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] library_item_id
    #   The unique identifier of the updated library item.
    #   @return [String]
    #
    # @!attribute [rw] app_id
    #   The unique identifier of the Q App associated with the library item.
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   The version of the Q App associated with the library item.
    #   @return [Integer]
    #
    # @!attribute [rw] categories
    #   The categories associated with the updated library item.
    #   @return [Array<Types::Category>]
    #
    # @!attribute [rw] status
    #   The new status of the updated library item.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the library item was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user who originally created the library item.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time the library item was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The user who last updated the library item.
    #   @return [String]
    #
    # @!attribute [rw] rating_count
    #   The number of ratings the library item has received.
    #   @return [Integer]
    #
    # @!attribute [rw] is_rated_by_user
    #   Whether the current user has rated the library item.
    #   @return [Boolean]
    #
    # @!attribute [rw] user_count
    #   The number of users who have the associated Q App.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/UpdateLibraryItemOutput AWS API Documentation
    #
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
      :user_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The unique identifier of the Amazon Q Business application
    #   environment instance.
    #   @return [String]
    #
    # @!attribute [rw] app_id
    #   The unique identifier of the Q App to update.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The new title for the Q App.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The new description for the Q App.
    #   @return [String]
    #
    # @!attribute [rw] app_definition
    #   The new definition specifying the cards and flow for the Q App.
    #   @return [Types::AppDefinitionInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/UpdateQAppInput AWS API Documentation
    #
    class UpdateQAppInput < Struct.new(
      :instance_id,
      :app_id,
      :title,
      :description,
      :app_definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_id
    #   The unique identifier of the updated Q App.
    #   @return [String]
    #
    # @!attribute [rw] app_arn
    #   The Amazon Resource Name (ARN) of the updated Q App.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The new title of the updated Q App.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The new description of the updated Q App.
    #   @return [String]
    #
    # @!attribute [rw] initial_prompt
    #   The initial prompt for the updated Q App.
    #   @return [String]
    #
    # @!attribute [rw] app_version
    #   The new version of the updated Q App.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the updated Q App.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the Q App was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The user who originally created the Q App.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time the Q App was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] updated_by
    #   The user who last updated the Q App.
    #   @return [String]
    #
    # @!attribute [rw] required_capabilities
    #   The capabilities required for the updated Q App.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/UpdateQAppOutput AWS API Documentation
    #
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
      :required_capabilities)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The unique identifier of the Amazon Q Business application
    #   environment instance.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The unique identifier of the Q App session to provide input for.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The input values to provide for the current state of the Q App
    #   session.
    #   @return [Array<Types::CardValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/UpdateQAppSessionInput AWS API Documentation
    #
    class UpdateQAppSessionInput < Struct.new(
      :instance_id,
      :session_id,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] session_id
    #   The unique identifier of the updated Q App session.
    #   @return [String]
    #
    # @!attribute [rw] session_arn
    #   The Amazon Resource Name (ARN) of the updated Q App session.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/UpdateQAppSessionOutput AWS API Documentation
    #
    class UpdateQAppSessionOutput < Struct.new(
      :session_id,
      :session_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Amazon Q App associated with a user, either owned by the user or
    # favorited.
    #
    # @!attribute [rw] app_id
    #   The unique identifier of the Q App.
    #   @return [String]
    #
    # @!attribute [rw] app_arn
    #   The Amazon Resource Name (ARN) of the Q App.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The title of the Q App.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the Q App.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time the user's association with the Q App was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] can_edit
    #   A flag indicating whether the user can edit the Q App.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   The status of the user's association with the Q App.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/UserAppItem AWS API Documentation
    #
    class UserAppItem < Struct.new(
      :app_id,
      :app_arn,
      :title,
      :description,
      :created_at,
      :can_edit,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input failed to satisfy the constraints specified by the service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/qapps-2023-11-27/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
