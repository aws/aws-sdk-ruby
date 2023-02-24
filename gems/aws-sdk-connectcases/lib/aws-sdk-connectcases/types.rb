# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ConnectCases
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Content specific to `BasicLayout` type. It configures fields in the
    # top panel and More Info tab of agent application.
    #
    # @!attribute [rw] more_info
    #   This represents sections in a tab of the page layout.
    #   @return [Types::LayoutSections]
    #
    # @!attribute [rw] top_panel
    #   This represents sections in a panel of the page layout.
    #   @return [Types::LayoutSections]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/BasicLayout AWS API Documentation
    #
    class BasicLayout < Struct.new(
      :more_info,
      :top_panel)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The unique identifier of the Cases domain.
    #   @return [String]
    #
    # @!attribute [rw] fields
    #   A list of unique field identifiers.
    #   @return [Array<Types::FieldIdentifier>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/BatchGetFieldRequest AWS API Documentation
    #
    class BatchGetFieldRequest < Struct.new(
      :domain_id,
      :fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   A list of field errors.
    #   @return [Array<Types::FieldError>]
    #
    # @!attribute [rw] fields
    #   A list of detailed field information.
    #   @return [Array<Types::GetFieldResponse>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/BatchGetFieldResponse AWS API Documentation
    #
    class BatchGetFieldResponse < Struct.new(
      :errors,
      :fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The unique identifier of the Cases domain.
    #   @return [String]
    #
    # @!attribute [rw] field_id
    #   The unique identifier of a field.
    #   @return [String]
    #
    # @!attribute [rw] options
    #   A list of `FieldOption` objects.
    #   @return [Array<Types::FieldOption>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/BatchPutFieldOptionsRequest AWS API Documentation
    #
    class BatchPutFieldOptionsRequest < Struct.new(
      :domain_id,
      :field_id,
      :options)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   A list of field errors.
    #   @return [Array<Types::FieldOptionError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/BatchPutFieldOptionsResponse AWS API Documentation
    #
    class BatchPutFieldOptionsResponse < Struct.new(
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of what case data is published through the case event stream.
    #
    # @!attribute [rw] fields
    #   List of field identifiers.
    #   @return [Array<Types::FieldIdentifier>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/CaseEventIncludedData AWS API Documentation
    #
    class CaseEventIncludedData < Struct.new(
      :fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter for cases. Only one value can be provided.
    #
    # @note CaseFilter is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] and_all
    #   Provides "and all" filtering.
    #   @return [Array<Types::CaseFilter>]
    #
    # @!attribute [rw] field
    #   A list of fields to filter on.
    #   @return [Types::FieldFilter]
    #
    # @!attribute [rw] not
    #   A filter for cases. Only one value can be provided.
    #   @return [Types::CaseFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/CaseFilter AWS API Documentation
    #
    class CaseFilter < Struct.new(
      :and_all,
      :field,
      :not,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AndAll < CaseFilter; end
      class Field < CaseFilter; end
      class Not < CaseFilter; end
      class Unknown < CaseFilter; end
    end

    # Case summary information.
    #
    # @!attribute [rw] case_id
    #   A unique identifier of the case.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   A unique identifier of a template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/CaseSummary AWS API Documentation
    #
    class CaseSummary < Struct.new(
      :case_id,
      :template_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the content of a `Comment` to be returned to agents.
    #
    # @!attribute [rw] body
    #   Text in the body of a `Comment` on a case.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   Type of the text in the box of a `Comment` on a case.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/CommentContent AWS API Documentation
    #
    class CommentContent < Struct.new(
      :body,
      :content_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter for related items of type `Comment`.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/CommentFilter AWS API Documentation
    #
    class CommentFilter < Aws::EmptyStructure; end

    # The requested operation would cause a conflict with the current state
    # of a service resource associated with the request. Resolve the
    # conflict before retrying this request. See the accompanying error
    # message for details.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents an Amazon Connect contact object.
    #
    # @!attribute [rw] contact_arn
    #   A unique identifier of a contact in Amazon Connect.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/Contact AWS API Documentation
    #
    class Contact < Struct.new(
      :contact_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a content of an Amazon Connect contact
    # object.
    #
    # @!attribute [rw] channel
    #   A list of channels to filter on for related items of type `Contact`.
    #   @return [String]
    #
    # @!attribute [rw] connected_to_system_time
    #   The difference between the `InitiationTimestamp` and the
    #   `DisconnectTimestamp` of the contact.
    #   @return [Time]
    #
    # @!attribute [rw] contact_arn
    #   A unique identifier of a contact in Amazon Connect.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/ContactContent AWS API Documentation
    #
    class ContactContent < Struct.new(
      :channel,
      :connected_to_system_time,
      :contact_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter for related items of type `Contact`.
    #
    # @!attribute [rw] channel
    #   A list of channels to filter on for related items of type `Contact`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] contact_arn
    #   A unique identifier of a contact in Amazon Connect.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/ContactFilter AWS API Documentation
    #
    class ContactFilter < Struct.new(
      :channel,
      :contact_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The unique identifier of the Cases domain.
    #   @return [String]
    #
    # @!attribute [rw] fields
    #   An array of objects with field ID (matching
    #   ListFields/DescribeField) and value union data.
    #   @return [Array<Types::FieldValue>]
    #
    # @!attribute [rw] template_id
    #   A unique identifier of a template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/CreateCaseRequest AWS API Documentation
    #
    class CreateCaseRequest < Struct.new(
      :client_token,
      :domain_id,
      :fields,
      :template_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] case_arn
    #   The Amazon Resource Name (ARN) of the case.
    #   @return [String]
    #
    # @!attribute [rw] case_id
    #   A unique identifier of the case.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/CreateCaseResponse AWS API Documentation
    #
    class CreateCaseResponse < Struct.new(
      :case_arn,
      :case_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name for your Cases domain. It must be unique for your Amazon
    #   Web Services account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/CreateDomainRequest AWS API Documentation
    #
    class CreateDomainRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_arn
    #   The Amazon Resource Name (ARN) for the Cases domain.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The unique identifier of the Cases domain.
    #   @return [String]
    #
    # @!attribute [rw] domain_status
    #   The status of the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/CreateDomainResponse AWS API Documentation
    #
    class CreateDomainResponse < Struct.new(
      :domain_arn,
      :domain_id,
      :domain_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   The description of the field.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The unique identifier of the Cases domain.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the field.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Defines the data type, some system constraints, and default display
    #   of the field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/CreateFieldRequest AWS API Documentation
    #
    class CreateFieldRequest < Struct.new(
      :description,
      :domain_id,
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] field_arn
    #   The Amazon Resource Name (ARN) of the field.
    #   @return [String]
    #
    # @!attribute [rw] field_id
    #   The unique identifier of a field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/CreateFieldResponse AWS API Documentation
    #
    class CreateFieldResponse < Struct.new(
      :field_arn,
      :field_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content
    #   Information about which fields will be present in the layout, and
    #   information about the order of the fields.
    #   @return [Types::LayoutContent]
    #
    # @!attribute [rw] domain_id
    #   The unique identifier of the Cases domain.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the layout. It must be unique for the Cases domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/CreateLayoutRequest AWS API Documentation
    #
    class CreateLayoutRequest < Struct.new(
      :content,
      :domain_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] layout_arn
    #   The Amazon Resource Name (ARN) of the newly created layout.
    #   @return [String]
    #
    # @!attribute [rw] layout_id
    #   The unique identifier of the layout.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/CreateLayoutResponse AWS API Documentation
    #
    class CreateLayoutResponse < Struct.new(
      :layout_arn,
      :layout_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] case_id
    #   A unique identifier of the case.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The content of a related item to be created.
    #   @return [Types::RelatedItemInputContent]
    #
    # @!attribute [rw] domain_id
    #   The unique identifier of the Cases domain.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of a related item.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/CreateRelatedItemRequest AWS API Documentation
    #
    class CreateRelatedItemRequest < Struct.new(
      :case_id,
      :content,
      :domain_id,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] related_item_arn
    #   The Amazon Resource Name (ARN) of the related item.
    #   @return [String]
    #
    # @!attribute [rw] related_item_id
    #   The unique identifier of the related item.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/CreateRelatedItemResponse AWS API Documentation
    #
    class CreateRelatedItemResponse < Struct.new(
      :related_item_arn,
      :related_item_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   A brief description of the template.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The unique identifier of the Cases domain.
    #   @return [String]
    #
    # @!attribute [rw] layout_configuration
    #   Configuration of layouts associated to the template.
    #   @return [Types::LayoutConfiguration]
    #
    # @!attribute [rw] name
    #   A name for the template. It must be unique per domain.
    #   @return [String]
    #
    # @!attribute [rw] required_fields
    #   A list of fields that must contain a value for a case to be
    #   successfully created with this template.
    #   @return [Array<Types::RequiredField>]
    #
    # @!attribute [rw] status
    #   The status of the template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/CreateTemplateRequest AWS API Documentation
    #
    class CreateTemplateRequest < Struct.new(
      :description,
      :domain_id,
      :layout_configuration,
      :name,
      :required_fields,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_arn
    #   The Amazon Resource Name (ARN) of the newly created template.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   A unique identifier of a template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/CreateTemplateResponse AWS API Documentation
    #
    class CreateTemplateResponse < Struct.new(
      :template_arn,
      :template_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The unique identifier of the Cases domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/DeleteDomainRequest AWS API Documentation
    #
    class DeleteDomainRequest < Struct.new(
      :domain_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/DeleteDomainResponse AWS API Documentation
    #
    class DeleteDomainResponse < Aws::EmptyStructure; end

    # Object for the summarized details of the domain.
    #
    # @!attribute [rw] domain_arn
    #   The Amazon Resource Name (ARN) of the domain.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The unique identifier of the domain.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/DomainSummary AWS API Documentation
    #
    class DomainSummary < Struct.new(
      :domain_arn,
      :domain_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration to enable EventBridge case event delivery and determine
    # what data is delivered.
    #
    # @!attribute [rw] enabled
    #   Indicates whether the to broadcast case event data to the customer.
    #   @return [Boolean]
    #
    # @!attribute [rw] included_data
    #   Details of what case and related item data is published through the
    #   case event stream.
    #   @return [Types::EventIncludedData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/EventBridgeConfiguration AWS API Documentation
    #
    class EventBridgeConfiguration < Struct.new(
      :enabled,
      :included_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of what case and related item data is published through the
    # case event stream.
    #
    # @!attribute [rw] case_data
    #   Details of what case data is published through the case event
    #   stream.
    #   @return [Types::CaseEventIncludedData]
    #
    # @!attribute [rw] related_item_data
    #   Details of what related item data is published through the case
    #   event stream.
    #   @return [Types::RelatedItemEventIncludedData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/EventIncludedData AWS API Documentation
    #
    class EventIncludedData < Struct.new(
      :case_data,
      :related_item_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object for errors on fields.
    #
    # @!attribute [rw] error_code
    #   The error code from getting a field.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The field identifier that caused the error.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The error message from getting a field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/FieldError AWS API Documentation
    #
    class FieldError < Struct.new(
      :error_code,
      :id,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter for fields. Only one value can be provided.
    #
    # @note FieldFilter is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] contains
    #   Object containing field identifier and value information.
    #   @return [Types::FieldValue]
    #
    # @!attribute [rw] equal_to
    #   Object containing field identifier and value information.
    #   @return [Types::FieldValue]
    #
    # @!attribute [rw] greater_than
    #   Object containing field identifier and value information.
    #   @return [Types::FieldValue]
    #
    # @!attribute [rw] greater_than_or_equal_to
    #   Object containing field identifier and value information.
    #   @return [Types::FieldValue]
    #
    # @!attribute [rw] less_than
    #   Object containing field identifier and value information.
    #   @return [Types::FieldValue]
    #
    # @!attribute [rw] less_than_or_equal_to
    #   Object containing field identifier and value information.
    #   @return [Types::FieldValue]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/FieldFilter AWS API Documentation
    #
    class FieldFilter < Struct.new(
      :contains,
      :equal_to,
      :greater_than,
      :greater_than_or_equal_to,
      :less_than,
      :less_than_or_equal_to,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Contains < FieldFilter; end
      class EqualTo < FieldFilter; end
      class GreaterThan < FieldFilter; end
      class GreaterThanOrEqualTo < FieldFilter; end
      class LessThan < FieldFilter; end
      class LessThanOrEqualTo < FieldFilter; end
      class Unknown < FieldFilter; end
    end

    # Object for a group of fields and associated properties.
    #
    # @!attribute [rw] fields
    #   Represents an ordered list containing field related information.
    #   @return [Array<Types::FieldItem>]
    #
    # @!attribute [rw] name
    #   Name of the field group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/FieldGroup AWS API Documentation
    #
    class FieldGroup < Struct.new(
      :fields,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object for unique identifier of a field.
    #
    # @!attribute [rw] id
    #   Unique identifier of a field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/FieldIdentifier AWS API Documentation
    #
    class FieldIdentifier < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object for field related information.
    #
    # @!attribute [rw] id
    #   Unique identifier of a field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/FieldItem AWS API Documentation
    #
    class FieldItem < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object for field Options information.
    #
    # @!attribute [rw] active
    #   Describes whether the `FieldOption` is active (displayed) or
    #   inactive.
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   `FieldOptionName` has max length 100 and disallows trailing spaces.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   `FieldOptionValue` has max length 100 and must be alphanumeric with
    #   hyphens and underscores.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/FieldOption AWS API Documentation
    #
    class FieldOption < Struct.new(
      :active,
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object for field Options errors.
    #
    # @!attribute [rw] error_code
    #   Error code from creating or updating field option.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Error message from creating or updating field option.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The field option value that caused the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/FieldOptionError AWS API Documentation
    #
    class FieldOptionError < Struct.new(
      :error_code,
      :message,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object for the summarized details of the field.
    #
    # @!attribute [rw] field_arn
    #   The Amazon Resource Name (ARN) of the field.
    #   @return [String]
    #
    # @!attribute [rw] field_id
    #   The unique identifier of a field.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the field.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of a field.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of a field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/FieldSummary AWS API Documentation
    #
    class FieldSummary < Struct.new(
      :field_arn,
      :field_id,
      :name,
      :namespace,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object for case field values.
    #
    # @!attribute [rw] id
    #   Unique identifier of a field.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Union of potential field value types.
    #   @return [Types::FieldValueUnion]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/FieldValue AWS API Documentation
    #
    class FieldValue < Struct.new(
      :id,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object to store union of Field values.
    #
    # @note FieldValueUnion is a union - when making an API calls you must set exactly one of the members.
    #
    # @note FieldValueUnion is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of FieldValueUnion corresponding to the set member.
    #
    # @!attribute [rw] boolean_value
    #   Can be either null, or have a Boolean value type. Only one value can
    #   be provided.
    #   @return [Boolean]
    #
    # @!attribute [rw] double_value
    #   Can be either null, or have a Double number value type. Only one
    #   value can be provided.
    #   @return [Float]
    #
    # @!attribute [rw] string_value
    #   String value type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/FieldValueUnion AWS API Documentation
    #
    class FieldValueUnion < Struct.new(
      :boolean_value,
      :double_value,
      :string_value,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class BooleanValue < FieldValueUnion; end
      class DoubleValue < FieldValueUnion; end
      class StringValue < FieldValueUnion; end
      class Unknown < FieldValueUnion; end
    end

    # @!attribute [rw] domain_id
    #   The unique identifier of the Cases domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/GetCaseEventConfigurationRequest AWS API Documentation
    #
    class GetCaseEventConfigurationRequest < Struct.new(
      :domain_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_bridge
    #   Configuration to enable EventBridge case event delivery and
    #   determine what data is delivered.
    #   @return [Types::EventBridgeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/GetCaseEventConfigurationResponse AWS API Documentation
    #
    class GetCaseEventConfigurationResponse < Struct.new(
      :event_bridge)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] case_id
    #   A unique identifier of the case.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The unique identifier of the Cases domain.
    #   @return [String]
    #
    # @!attribute [rw] fields
    #   A list of unique field identifiers.
    #   @return [Array<Types::FieldIdentifier>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/GetCaseRequest AWS API Documentation
    #
    class GetCaseRequest < Struct.new(
      :case_id,
      :domain_id,
      :fields,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fields
    #   A list of detailed field information.
    #   @return [Array<Types::FieldValue>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. This is null if there are no
    #   more results to return.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of of key-value pairs that represent tags on a resource. Tags
    #   are used to organize, track, or control access for this resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] template_id
    #   A unique identifier of a template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/GetCaseResponse AWS API Documentation
    #
    class GetCaseResponse < Struct.new(
      :fields,
      :next_token,
      :tags,
      :template_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The unique identifier of the Cases domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/GetDomainRequest AWS API Documentation
    #
    class GetDomainRequest < Struct.new(
      :domain_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_time
    #   The timestamp when the Cases domain was created.
    #   @return [Time]
    #
    # @!attribute [rw] domain_arn
    #   The Amazon Resource Name (ARN) for the Cases domain.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The unique identifier of the Cases domain.
    #   @return [String]
    #
    # @!attribute [rw] domain_status
    #   The status of the Cases domain.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the Cases domain.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of of key-value pairs that represent tags on a resource. Tags
    #   are used to organize, track, or control access for this resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/GetDomainResponse AWS API Documentation
    #
    class GetDomainResponse < Struct.new(
      :created_time,
      :domain_arn,
      :domain_id,
      :domain_status,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object to store detailed field information.
    #
    # @!attribute [rw] description
    #   Description of the field.
    #   @return [String]
    #
    # @!attribute [rw] field_arn
    #   The Amazon Resource Name (ARN) of the field.
    #   @return [String]
    #
    # @!attribute [rw] field_id
    #   Unique identifier of the field.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the field.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   Namespace of the field.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of of key-value pairs that represent tags on a resource. Tags
    #   are used to organize, track, or control access for this resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   Type of the field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/GetFieldResponse AWS API Documentation
    #
    class GetFieldResponse < Struct.new(
      :description,
      :field_arn,
      :field_id,
      :name,
      :namespace,
      :tags,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The unique identifier of the Cases domain.
    #   @return [String]
    #
    # @!attribute [rw] layout_id
    #   The unique identifier of the layout.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/GetLayoutRequest AWS API Documentation
    #
    class GetLayoutRequest < Struct.new(
      :domain_id,
      :layout_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] content
    #   Information about which fields will be present in the layout, the
    #   order of the fields, and read-only attribute of the field.
    #   @return [Types::LayoutContent]
    #
    # @!attribute [rw] layout_arn
    #   The Amazon Resource Name (ARN) of the newly created layout.
    #   @return [String]
    #
    # @!attribute [rw] layout_id
    #   The unique identifier of the layout.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the layout. It must be unique.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of of key-value pairs that represent tags on a resource. Tags
    #   are used to organize, track, or control access for this resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/GetLayoutResponse AWS API Documentation
    #
    class GetLayoutResponse < Struct.new(
      :content,
      :layout_arn,
      :layout_id,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The unique identifier of the Cases domain.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   A unique identifier of a template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/GetTemplateRequest AWS API Documentation
    #
    class GetTemplateRequest < Struct.new(
      :domain_id,
      :template_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] description
    #   A brief description of the template.
    #   @return [String]
    #
    # @!attribute [rw] layout_configuration
    #   Configuration of layouts associated to the template.
    #   @return [Types::LayoutConfiguration]
    #
    # @!attribute [rw] name
    #   The name of the template.
    #   @return [String]
    #
    # @!attribute [rw] required_fields
    #   A list of fields that must contain a value for a case to be
    #   successfully created with this template.
    #   @return [Array<Types::RequiredField>]
    #
    # @!attribute [rw] status
    #   The status of the template.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of of key-value pairs that represent tags on a resource. Tags
    #   are used to organize, track, or control access for this resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] template_arn
    #   The Amazon Resource Name (ARN) of the template.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   A unique identifier of a template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/GetTemplateResponse AWS API Documentation
    #
    class GetTemplateResponse < Struct.new(
      :description,
      :layout_configuration,
      :name,
      :required_fields,
      :status,
      :tags,
      :template_arn,
      :template_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # We couldn't process your request because of an issue with the server.
    # Try again later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   Advice to clients on when the call can be safely retried.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object to store configuration of layouts associated to the template.
    #
    # @!attribute [rw] default_layout
    #   Unique identifier of a layout.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/LayoutConfiguration AWS API Documentation
    #
    class LayoutConfiguration < Struct.new(
      :default_layout)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object to store union of different versions of layout content.
    #
    # @note LayoutContent is a union - when making an API calls you must set exactly one of the members.
    #
    # @note LayoutContent is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of LayoutContent corresponding to the set member.
    #
    # @!attribute [rw] basic
    #   Content specific to `BasicLayout` type. It configures fields in the
    #   top panel and More Info tab of Cases user interface.
    #   @return [Types::BasicLayout]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/LayoutContent AWS API Documentation
    #
    class LayoutContent < Struct.new(
      :basic,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Basic < LayoutContent; end
      class Unknown < LayoutContent; end
    end

    # Ordered list containing different kinds of sections that can be added.
    # A LayoutSections object can only contain one section.
    #
    # @!attribute [rw] sections
    #   Ordered list containing different kinds of sections that can be
    #   added.
    #   @return [Array<Types::Section>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/LayoutSections AWS API Documentation
    #
    class LayoutSections < Struct.new(
      :sections)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object for the summarized details of the layout.
    #
    # @!attribute [rw] layout_arn
    #   The Amazon Resource Name (ARN) of the layout.
    #   @return [String]
    #
    # @!attribute [rw] layout_id
    #   The unique identifier for of the layout.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the layout.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/LayoutSummary AWS API Documentation
    #
    class LayoutSummary < Struct.new(
      :layout_arn,
      :layout_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] contact_arn
    #   A unique identifier of a contact in Amazon Connect.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The unique identifier of the Cases domain.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/ListCasesForContactRequest AWS API Documentation
    #
    class ListCasesForContactRequest < Struct.new(
      :contact_arn,
      :domain_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cases
    #   A list of Case summary information.
    #   @return [Array<Types::CaseSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. This is null if there are no
    #   more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/ListCasesForContactResponse AWS API Documentation
    #
    class ListCasesForContactResponse < Struct.new(
      :cases,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/ListDomainsRequest AWS API Documentation
    #
    class ListDomainsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domains
    #   The Cases domain.
    #   @return [Array<Types::DomainSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. This is null if there are no
    #   more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/ListDomainsResponse AWS API Documentation
    #
    class ListDomainsResponse < Struct.new(
      :domains,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The unique identifier of the Cases domain.
    #   @return [String]
    #
    # @!attribute [rw] field_id
    #   The unique identifier of a field.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   A list of `FieldOption` values to filter on for `ListFieldOptions`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/ListFieldOptionsRequest AWS API Documentation
    #
    class ListFieldOptionsRequest < Struct.new(
      :domain_id,
      :field_id,
      :max_results,
      :next_token,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of results. This is null if there are no
    #   more results to return.
    #   @return [String]
    #
    # @!attribute [rw] options
    #   A list of `FieldOption` objects.
    #   @return [Array<Types::FieldOption>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/ListFieldOptionsResponse AWS API Documentation
    #
    class ListFieldOptionsResponse < Struct.new(
      :next_token,
      :options)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The unique identifier of the Cases domain.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/ListFieldsRequest AWS API Documentation
    #
    class ListFieldsRequest < Struct.new(
      :domain_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fields
    #   List of detailed field information.
    #   @return [Array<Types::FieldSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. This is null if there are no
    #   more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/ListFieldsResponse AWS API Documentation
    #
    class ListFieldsResponse < Struct.new(
      :fields,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The unique identifier of the Cases domain.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/ListLayoutsRequest AWS API Documentation
    #
    class ListLayoutsRequest < Struct.new(
      :domain_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] layouts
    #   The layouts for the domain.
    #   @return [Array<Types::LayoutSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. This is null if there are no
    #   more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/ListLayoutsResponse AWS API Documentation
    #
    class ListLayoutsResponse < Struct.new(
      :layouts,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A map of of key-value pairs that represent tags on a resource. Tags
    #   are used to organize, track, or control access for this resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The unique identifier of the Cases domain.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   A list of status values to filter on.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/ListTemplatesRequest AWS API Documentation
    #
    class ListTemplatesRequest < Struct.new(
      :domain_id,
      :max_results,
      :next_token,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of results. This is null if there are no
    #   more results to return.
    #   @return [String]
    #
    # @!attribute [rw] templates
    #   List of template summary objects.
    #   @return [Array<Types::TemplateSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/ListTemplatesResponse AWS API Documentation
    #
    class ListTemplatesResponse < Struct.new(
      :next_token,
      :templates)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The unique identifier of the Cases domain.
    #   @return [String]
    #
    # @!attribute [rw] event_bridge
    #   Configuration to enable EventBridge case event delivery and
    #   determine what data is delivered.
    #   @return [Types::EventBridgeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/PutCaseEventConfigurationRequest AWS API Documentation
    #
    class PutCaseEventConfigurationRequest < Struct.new(
      :domain_id,
      :event_bridge)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/PutCaseEventConfigurationResponse AWS API Documentation
    #
    class PutCaseEventConfigurationResponse < Aws::EmptyStructure; end

    # Represents the content of a particular type of related item.
    #
    # @note RelatedItemContent is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of RelatedItemContent corresponding to the set member.
    #
    # @!attribute [rw] comment
    #   Represents the content of a comment to be returned to agents.
    #   @return [Types::CommentContent]
    #
    # @!attribute [rw] contact
    #   Represents the content of a contact to be returned to agents.
    #   @return [Types::ContactContent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/RelatedItemContent AWS API Documentation
    #
    class RelatedItemContent < Struct.new(
      :comment,
      :contact,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Comment < RelatedItemContent; end
      class Contact < RelatedItemContent; end
      class Unknown < RelatedItemContent; end
    end

    # Details of what related item data is published through the case event
    # stream.
    #
    # @!attribute [rw] include_content
    #   Details of what related item data is published through the case
    #   event stream.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/RelatedItemEventIncludedData AWS API Documentation
    #
    class RelatedItemEventIncludedData < Struct.new(
      :include_content)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the content of a related item to be created.
    #
    # @note RelatedItemInputContent is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] comment
    #   Represents the content of a comment to be returned to agents.
    #   @return [Types::CommentContent]
    #
    # @!attribute [rw] contact
    #   Object representing a contact in Amazon Connect as an API request
    #   field.
    #   @return [Types::Contact]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/RelatedItemInputContent AWS API Documentation
    #
    class RelatedItemInputContent < Struct.new(
      :comment,
      :contact,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Comment < RelatedItemInputContent; end
      class Contact < RelatedItemInputContent; end
      class Unknown < RelatedItemInputContent; end
    end

    # The list of types of related items and their parameters to use for
    # filtering.
    #
    # @note RelatedItemTypeFilter is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] comment
    #   A filter for related items of type `Comment`.
    #   @return [Types::CommentFilter]
    #
    # @!attribute [rw] contact
    #   A filter for related items of type `Contact`.
    #   @return [Types::ContactFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/RelatedItemTypeFilter AWS API Documentation
    #
    class RelatedItemTypeFilter < Struct.new(
      :comment,
      :contact,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Comment < RelatedItemTypeFilter; end
      class Contact < RelatedItemTypeFilter; end
      class Unknown < RelatedItemTypeFilter; end
    end

    # List of fields that must have a value provided to create a case.
    #
    # @!attribute [rw] field_id
    #   Unique identifier of a field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/RequiredField AWS API Documentation
    #
    class RequiredField < Struct.new(
      :field_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # We couldn't find the requested resource. Check that your resources
    # exists and were created in the same Amazon Web Services Region as your
    # request, and try your request again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   Unique identifier of the resource affected.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Type of the resource affected.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_id
    #   The unique identifier of the Cases domain.
    #   @return [String]
    #
    # @!attribute [rw] fields
    #   The list of field identifiers to be returned as part of the
    #   response.
    #   @return [Array<Types::FieldIdentifier>]
    #
    # @!attribute [rw] filter
    #   A list of filter objects.
    #   @return [Types::CaseFilter]
    #
    # @!attribute [rw] max_results
    #   The maximum number of cases to return. The current maximum supported
    #   value is 25. This is also the default value when no other value is
    #   provided.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] search_term
    #   A word or phrase used to perform a quick search.
    #   @return [String]
    #
    # @!attribute [rw] sorts
    #   A list of sorts where each sort specifies a field and their sort
    #   order to be applied to the results.
    #   @return [Array<Types::Sort>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/SearchCasesRequest AWS API Documentation
    #
    class SearchCasesRequest < Struct.new(
      :domain_id,
      :fields,
      :filter,
      :max_results,
      :next_token,
      :search_term,
      :sorts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cases
    #   A list of case documents where each case contains the properties
    #   `CaseId` and `Fields` where each field is a complex union structure.
    #   @return [Array<Types::SearchCasesResponseItem>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. This is null if there are no
    #   more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/SearchCasesResponse AWS API Documentation
    #
    class SearchCasesResponse < Struct.new(
      :cases,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of items that represent cases.
    #
    # @!attribute [rw] case_id
    #   A unique identifier of the case.
    #   @return [String]
    #
    # @!attribute [rw] fields
    #   List of case field values.
    #   @return [Array<Types::FieldValue>]
    #
    # @!attribute [rw] tags
    #   A map of of key-value pairs that represent tags on a resource. Tags
    #   are used to organize, track, or control access for this resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] template_id
    #   A unique identifier of a template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/SearchCasesResponseItem AWS API Documentation
    #
    class SearchCasesResponseItem < Struct.new(
      :case_id,
      :fields,
      :tags,
      :template_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] case_id
    #   A unique identifier of the case.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The unique identifier of the Cases domain.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   The list of types of related items and their parameters to use for
    #   filtering.
    #   @return [Array<Types::RelatedItemTypeFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/SearchRelatedItemsRequest AWS API Documentation
    #
    class SearchRelatedItemsRequest < Struct.new(
      :case_id,
      :domain_id,
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of results. This is null if there are no
    #   more results to return.
    #   @return [String]
    #
    # @!attribute [rw] related_items
    #   A list of items related to a case.
    #   @return [Array<Types::SearchRelatedItemsResponseItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/SearchRelatedItemsResponse AWS API Documentation
    #
    class SearchRelatedItemsResponse < Struct.new(
      :next_token,
      :related_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # A list of items that represent RelatedItems.
    #
    # @!attribute [rw] association_time
    #   Time at which a related item was associated with a case.
    #   @return [Time]
    #
    # @!attribute [rw] content
    #   Represents the content of a particular type of related item.
    #   @return [Types::RelatedItemContent]
    #
    # @!attribute [rw] related_item_id
    #   Unique identifier of a related item.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of of key-value pairs that represent tags on a resource. Tags
    #   are used to organize, track, or control access for this resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] type
    #   Type of a related item.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/SearchRelatedItemsResponseItem AWS API Documentation
    #
    class SearchRelatedItemsResponseItem < Struct.new(
      :association_time,
      :content,
      :related_item_id,
      :tags,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # This represents a sections within a panel or tab of the page layout.
    #
    # @note Section is a union - when making an API calls you must set exactly one of the members.
    #
    # @note Section is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Section corresponding to the set member.
    #
    # @!attribute [rw] field_group
    #   Consists of a group of fields and associated properties.
    #   @return [Types::FieldGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/Section AWS API Documentation
    #
    class Section < Struct.new(
      :field_group,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class FieldGroup < Section; end
      class Unknown < Section; end
    end

    # The service quota has been exceeded. For a list of service quotas, see
    # [Amazon Connect Service Quotas][1] in the *Amazon Connect
    # Administrator Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structured set of sort terms.
    #
    # @!attribute [rw] field_id
    #   Unique identifier of a field.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   A structured set of sort terms
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/Sort AWS API Documentation
    #
    class Sort < Struct.new(
      :field_id,
      :sort_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN)
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map of of key-value pairs that represent tags on a resource. Tags
    #   are used to organize, track, or control access for this resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Template summary information.
    #
    # @!attribute [rw] name
    #   The template name.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the template.
    #   @return [String]
    #
    # @!attribute [rw] template_arn
    #   The Amazon Resource Name (ARN) of the template.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   The unique identifier for the template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/TemplateSummary AWS API Documentation
    #
    class TemplateSummary < Struct.new(
      :name,
      :status,
      :template_arn,
      :template_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The rate has been exceeded for this API. Please try again after a few
    # minutes.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN)
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   List of tag keys.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] case_id
    #   A unique identifier of the case.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The unique identifier of the Cases domain.
    #   @return [String]
    #
    # @!attribute [rw] fields
    #   An array of objects with `fieldId` (matching
    #   ListFields/DescribeField) and value union data, structured identical
    #   to `CreateCase`.
    #   @return [Array<Types::FieldValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/UpdateCaseRequest AWS API Documentation
    #
    class UpdateCaseRequest < Struct.new(
      :case_id,
      :domain_id,
      :fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/UpdateCaseResponse AWS API Documentation
    #
    class UpdateCaseResponse < Aws::EmptyStructure; end

    # @!attribute [rw] description
    #   The description of a field.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The unique identifier of the Cases domain.
    #   @return [String]
    #
    # @!attribute [rw] field_id
    #   The unique identifier of a field.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/UpdateFieldRequest AWS API Documentation
    #
    class UpdateFieldRequest < Struct.new(
      :description,
      :domain_id,
      :field_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/UpdateFieldResponse AWS API Documentation
    #
    class UpdateFieldResponse < Aws::EmptyStructure; end

    # @!attribute [rw] content
    #   Information about which fields will be present in the layout, the
    #   order of the fields, and a read-only attribute of the field.
    #   @return [Types::LayoutContent]
    #
    # @!attribute [rw] domain_id
    #   The unique identifier of the Cases domain.
    #   @return [String]
    #
    # @!attribute [rw] layout_id
    #   The unique identifier of the layout.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the layout. It must be unique per domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/UpdateLayoutRequest AWS API Documentation
    #
    class UpdateLayoutRequest < Struct.new(
      :content,
      :domain_id,
      :layout_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/UpdateLayoutResponse AWS API Documentation
    #
    class UpdateLayoutResponse < Aws::EmptyStructure; end

    # @!attribute [rw] description
    #   A brief description of the template.
    #   @return [String]
    #
    # @!attribute [rw] domain_id
    #   The unique identifier of the Cases domain.
    #   @return [String]
    #
    # @!attribute [rw] layout_configuration
    #   Configuration of layouts associated to the template.
    #   @return [Types::LayoutConfiguration]
    #
    # @!attribute [rw] name
    #   The name of the template. It must be unique per domain.
    #   @return [String]
    #
    # @!attribute [rw] required_fields
    #   A list of fields that must contain a value for a case to be
    #   successfully created with this template.
    #   @return [Array<Types::RequiredField>]
    #
    # @!attribute [rw] status
    #   The status of the template.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   A unique identifier for the template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/UpdateTemplateRequest AWS API Documentation
    #
    class UpdateTemplateRequest < Struct.new(
      :description,
      :domain_id,
      :layout_configuration,
      :name,
      :required_fields,
      :status,
      :template_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/UpdateTemplateResponse AWS API Documentation
    #
    class UpdateTemplateResponse < Aws::EmptyStructure; end

    # The request isn't valid. Check the syntax and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/connectcases-2022-10-03/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
