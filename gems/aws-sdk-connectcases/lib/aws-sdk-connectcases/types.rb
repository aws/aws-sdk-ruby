# frozen_string_literal: true

# This is generated code!

module Aws::ConnectCases
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the content of a particular audit event.</p>
    # @!attribute event_id
    #   <p>Unique identifier of a case audit history event.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of audit history event.</p> <p>Valid Values: <code>Case.Created</code> | <code>Case.Updated</code> | <code>RelatedItem.Created</code> | <code>RelatedItem.Updated</code> | <code>RelatedItem.Deleted</code> </p>
    #   @return [String]
    # @!attribute related_item_type
    #   <p>The Type of the related item.</p>
    #   @return [String]
    # @!attribute performed_time
    #   <p>Time at which an Audit History event took place.</p>
    #   @return [Time]
    # @!attribute fields
    #   <p>A list of Case Audit History event fields.</p>
    #   @return [Array<Types::AuditEventField>]
    # @!attribute performed_by
    #   <p>Information of the user which performed the audit.</p>
    #   @return [Types::AuditEventPerformedBy]
    class AuditEvent < Struct.new(
      nil,
      :event_id,
      :type,
      :related_item_type,
      :performed_time,
      :fields,
      :performed_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Fields for audit event.</p>
    # @!attribute event_field_id
    #   <p>Unique identifier of field in an Audit History entry.</p>
    #   @return [String]
    # @!attribute old_value
    #   <p>Union of potential field value types.</p>
    #   @return [Types::AuditEventFieldValueUnion]
    # @!attribute new_value
    #   <p>Union of potential field value types.</p>
    #   @return [Types::AuditEventFieldValueUnion]
    class AuditEventField < Struct.new(
      nil,
      :event_field_id,
      :old_value,
      :new_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object to store union of Field values.</p>
    # @!attribute string_value
    #   <p>Can be either null, or have a String value type. Only one value can be provided.</p>
    #   @return [String]
    # @!attribute double_value
    #   <p>Can be either null, or have a Double value type. Only one value can be provided.</p>
    #   @return [Float]
    # @!attribute boolean_value
    #   <p>Can be either null, or have a Boolean value type. Only one value can be provided.</p>
    #   @return [Boolean]
    # @!attribute empty_value
    #   <p>An empty value. You cannot set <code>EmptyFieldValue</code> on a field that is required on a case template.</p> <p>This structure will never have any data members. It signifies an empty value on a case field.</p>
    #   @return [Types::EmptyFieldValue]
    # @!attribute user_arn_value
    #   <p>Can be either null, or have a String value type formatted as an ARN. Only one value can be provided.</p>
    #   @return [String]
    class AuditEventFieldValueUnion < Struct.new(
      :string_value,
      :double_value,
      :boolean_value,
      :empty_value,
      :user_arn_value,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class StringValue < AuditEventFieldValueUnion; end
      class DoubleValue < AuditEventFieldValueUnion; end
      class BooleanValue < AuditEventFieldValueUnion; end
      class EmptyValue < AuditEventFieldValueUnion; end
      class UserArnValue < AuditEventFieldValueUnion; end
      class Unknown < AuditEventFieldValueUnion; end
    end

    # <p>Information of the user which performed the audit.</p>
    # @!attribute user
    #   <p>Represents the entity that performed the action.</p>
    #   @return [Types::UserUnion]
    # @!attribute iam_principal_arn
    #   <p>Unique identifier of an IAM role.</p>
    #   @return [String]
    class AuditEventPerformedBy < Struct.new(
      nil,
      :user,
      :iam_principal_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Content specific to <code>BasicLayout</code> type. It configures fields in the top panel and More Info tab of agent application. </p>
    # @!attribute top_panel
    #   <p>This represents sections in a panel of the page layout.</p>
    #   @return [Types::LayoutSections]
    # @!attribute more_info
    #   <p>This represents sections in a tab of the page layout.</p>
    #   @return [Types::LayoutSections]
    class BasicLayout < Struct.new(
      nil,
      :top_panel,
      :more_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>Unique identifier of a Cases domain.</p>
    #   @return [String]
    # @!attribute case_rules
    #   <p>A list of case rule identifiers.</p>
    #   @return [Array<Types::CaseRuleIdentifier>]
    class BatchGetCaseRuleRequest < Struct.new(
      nil,
      :domain_id,
      :case_rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute case_rules
    #   <p>A list of detailed case rule information.</p>
    #   @return [Array<Types::GetCaseRuleResponse>]
    # @!attribute errors
    #   <p>A list of case rule errors.</p>
    #   @return [Array<Types::CaseRuleError>]
    # @!attribute unprocessed_case_rules
    #   <p>A list of unprocessed case rule identifiers.</p>
    #   @return [Array<String>]
    class BatchGetCaseRuleResponse < Struct.new(
      nil,
      :case_rules,
      :errors,
      :unprocessed_case_rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    #   @return [String]
    # @!attribute fields
    #   <p>A list of unique field identifiers. </p>
    #   @return [Array<Types::FieldIdentifier>]
    class BatchGetFieldInput < Struct.new(
      nil,
      :domain_id,
      :fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fields
    #   <p>A list of detailed field information. </p>
    #   @return [Array<Types::GetFieldResponse>]
    # @!attribute errors
    #   <p>A list of field errors. </p>
    #   @return [Array<Types::FieldError>]
    class BatchGetFieldOutput < Struct.new(
      nil,
      :fields,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    #   @return [String]
    # @!attribute field_id
    #   <p>The unique identifier of a field.</p>
    #   @return [String]
    # @!attribute options
    #   <p>A list of <code>FieldOption</code> objects.</p>
    #   @return [Array<Types::FieldOption>]
    class BatchPutFieldOptionsInput < Struct.new(
      nil,
      :domain_id,
      :field_id,
      :options,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute errors
    #   <p>A list of field errors. </p>
    #   @return [Array<Types::FieldOptionError>]
    class BatchPutFieldOptionsOutput < Struct.new(
      nil,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Boolean condition for a rule. In the Amazon Connect admin website, case rules are known as <i>case field conditions</i>. For more information about case field conditions, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/case-field-conditions.html">Add case field conditions to a case template</a>.</p>
    # @!attribute equal_to
    #   <p>Tests that operandOne is equal to operandTwo.</p>
    #   @return [Types::BooleanOperands]
    # @!attribute not_equal_to
    #   <p>Tests that operandOne is not equal to operandTwo.</p>
    #   @return [Types::BooleanOperands]
    # @!attribute and_all
    #   <p>Combines multiple conditions with AND operator. All conditions must be true for the compound condition to be true.</p>
    #   @return [Types::CompoundCondition]
    # @!attribute or_all
    #   <p>Combines multiple conditions with OR operator. At least one condition must be true for the compound condition to be true.</p>
    #   @return [Types::CompoundCondition]
    class BooleanCondition < Struct.new(
      :equal_to,
      :not_equal_to,
      :and_all,
      :or_all,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class EqualTo < BooleanCondition; end
      class NotEqualTo < BooleanCondition; end
      class AndAll < BooleanCondition; end
      class OrAll < BooleanCondition; end
      class Unknown < BooleanCondition; end
    end

    # <p>Boolean operands for a condition. In the Amazon Connect admin website, case rules are known as <i>case field conditions</i>. For more information about case field conditions, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/case-field-conditions.html">Add case field conditions to a case template</a>.</p>
    # @!attribute operand_one
    #   <p>Represents the left hand operand in the condition.</p>
    #   @return [Types::OperandOne]
    # @!attribute operand_two
    #   <p>Represents the right hand operand in the condition.</p>
    #   @return [Types::OperandTwo]
    # @!attribute result
    #   <p>The value of the outer rule if the condition evaluates to true.</p>
    #   @return [Boolean]
    class BooleanOperands < Struct.new(
      nil,
      :operand_one,
      :operand_two,
      :result,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details of what case data is published through the case event stream.</p>
    # @!attribute fields
    #   <p>List of field identifiers.</p>
    #   @return [Array<Types::FieldIdentifier>]
    class CaseEventIncludedData < Struct.new(
      nil,
      :fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter for cases. Only one value can be provided.</p>
    # @!attribute field
    #   <p>A list of fields to filter on.</p>
    #   @return [Types::FieldFilter]
    # @!attribute not
    #   <p>A filter for cases. Only one value can be provided.</p>
    #   @return [Types::CaseFilter]
    # @!attribute tag
    #   <p>A list of tags to filter on.</p>
    #   @return [Types::TagFilter]
    # @!attribute and_all
    #   <p>Provides "and all" filtering.</p>
    #   @return [Array<Types::CaseFilter>]
    # @!attribute or_all
    #   <p>Provides "or all" filtering.</p>
    #   @return [Array<Types::CaseFilter>]
    class CaseFilter < Struct.new(
      :field,
      :not,
      :tag,
      :and_all,
      :or_all,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Field < CaseFilter; end
      class Not < CaseFilter; end
      class Tag < CaseFilter; end
      class AndAll < CaseFilter; end
      class OrAll < CaseFilter; end
      class Unknown < CaseFilter; end
    end

    # <p>Represents what rule type should take place, under what conditions. In the Amazon Connect admin website, case rules are known as <i>case field conditions</i>. For more information about case field conditions, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/case-field-conditions.html">Add case field conditions to a case template</a>.</p>
    # @!attribute required
    #   <p>Required rule type, used to indicate whether a field is required.</p>
    #   @return [Types::RequiredCaseRule]
    # @!attribute field_options
    #   <p>Which options are available in a child field based on the selected value in a parent field.</p>
    #   @return [Types::FieldOptionsCaseRule]
    # @!attribute hidden
    #   <p>Whether a field is visible, based on values in other fields.</p>
    #   @return [Types::HiddenCaseRule]
    class CaseRuleDetails < Struct.new(
      :required,
      :field_options,
      :hidden,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Required < CaseRuleDetails; end
      class FieldOptions < CaseRuleDetails; end
      class Hidden < CaseRuleDetails; end
      class Unknown < CaseRuleDetails; end
    end

    # <p>Error for batch describe case rules API failure. In the Amazon Connect admin website, case rules are known as <i>case field conditions</i>. For more information about case field conditions, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/case-field-conditions.html">Add case field conditions to a case template</a>.</p>
    # @!attribute id
    #   <p>The case rule identifier that caused the error.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>Error code from getting a case rule.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Error message from getting a case rule.</p>
    #   @return [String]
    class CaseRuleError < Struct.new(
      nil,
      :id,
      :error_code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object containing case rule identifier information.</p>
    # @!attribute id
    #   <p>Unique identifier of a case rule.</p>
    #   @return [String]
    class CaseRuleIdentifier < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information of this case rule. In the Amazon Connect admin website, case rules are known as <i>case field conditions</i>. For more information about case field conditions, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/case-field-conditions.html">Add case field conditions to a case template</a>.</p>
    # @!attribute case_rule_id
    #   <p>Unique identifier of a case rule.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of the case rule.</p>
    #   @return [String]
    # @!attribute case_rule_arn
    #   <p>The Amazon Resource Name (ARN) of the case rule. </p>
    #   @return [String]
    # @!attribute rule_type
    #   <p>Possible types for a rule.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Description of a case rule.</p>
    #   @return [String]
    class CaseRuleSummary < Struct.new(
      nil,
      :case_rule_id,
      :name,
      :case_rule_arn,
      :rule_type,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Case summary information.</p>
    # @!attribute case_id
    #   <p>A unique identifier of the case.</p>
    #   @return [String]
    # @!attribute template_id
    #   <p>A unique identifier of a template.</p>
    #   @return [String]
    class CaseSummary < Struct.new(
      nil,
      :case_id,
      :template_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the content of a <code>Comment</code> to be returned to agents.</p>
    # @!attribute body
    #   <p>Text in the body of a <code>Comment</code> on a case.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>Type of the text in the box of a <code>Comment</code> on a case.</p>
    #   @return [String]
    class CommentContent < Struct.new(
      nil,
      :body,
      :content_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter for related items of type <code>Comment</code>.</p>
    class CommentFilter < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the updated content of a <code>Comment</code> related item.</p>
    # @!attribute body
    #   <p>Updated text in the body of a <code>Comment</code> on a case.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>Type of the text in the box of a <code>Comment</code> on a case.</p>
    #   @return [String]
    class CommentUpdateContent < Struct.new(
      nil,
      :body,
      :content_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A compound condition that combines multiple boolean conditions using logical operators. In the Amazon Connect admin website, case rules are known as <i>case field conditions</i>. For more information about case field conditions, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/case-field-conditions.html">Add case field conditions to a case template</a>.</p>
    # @!attribute conditions
    #   <p>The list of conditions to combine using the logical operator.</p> <note> <p>For API users: A case rule can have a maximum of 5 conditions, spread across a maximum of 2 levels of nesting.</p> </note>
    #   @return [Array<Types::BooleanCondition>]
    class CompoundCondition < Struct.new(
      nil,
      :conditions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested operation would cause a conflict with the current state of a service resource associated with the request. Resolve the conflict before retrying this request. See the accompanying error message for details.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the content of a <code>ConnectCase</code> type related item.</p>
    # @!attribute case_id
    #   <p>A unique identifier of the case.</p>
    #   @return [String]
    class ConnectCaseContent < Struct.new(
      nil,
      :case_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter for related items of type <code>ConnectCase</code>.</p>
    # @!attribute case_id
    #   <p>A unique identifier of the case.</p>
    #   @return [String]
    class ConnectCaseFilter < Struct.new(
      nil,
      :case_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the content of a <code>ConnectCase</code> related item.</p>
    # @!attribute case_id
    #   <p>A unique identifier of the case.</p>
    #   @return [String]
    class ConnectCaseInputContent < Struct.new(
      nil,
      :case_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that represents an Amazon Connect contact object. </p>
    # @!attribute contact_arn
    #   <p>A unique identifier of a contact in Amazon Connect.</p>
    #   @return [String]
    class Contact < Struct.new(
      nil,
      :contact_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that represents a content of an Amazon Connect contact object.</p>
    # @!attribute contact_arn
    #   <p>A unique identifier of a contact in Amazon Connect.</p>
    #   @return [String]
    # @!attribute channel
    #   <p>A list of channels to filter on for related items of type <code>Contact</code>.</p>
    #   @return [String]
    # @!attribute connected_to_system_time
    #   <p>The difference between the <code>InitiationTimestamp</code> and the <code>DisconnectTimestamp</code> of the contact.</p>
    #   @return [Time]
    class ContactContent < Struct.new(
      nil,
      :contact_arn,
      :channel,
      :connected_to_system_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter for related items of type <code>Contact</code>.</p>
    # @!attribute channel
    #   <p>A list of channels to filter on for related items of type <code>Contact</code>.</p>
    #   @return [Array<String>]
    # @!attribute contact_arn
    #   <p>A unique identifier of a contact in Amazon Connect.</p>
    #   @return [String]
    class ContactFilter < Struct.new(
      nil,
      :channel,
      :contact_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    #   @return [String]
    # @!attribute template_id
    #   <p>A unique identifier of a template.</p>
    #   @return [String]
    # @!attribute fields
    #   <p>An array of objects with field ID (matching ListFields/DescribeField) and value union data.</p>
    #   @return [Array<Types::FieldValue>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If not provided, the Amazon Web Services SDK populates this field. For more information about idempotency, see <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    #   @return [String]
    # @!attribute performed_by
    #   <p>Represents the entity that performed the action.</p>
    #   @return [Types::UserUnion]
    # @!attribute tags
    #   <p>A map of of key-value pairs that represent tags on a resource. Tags are used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class CreateCaseInput < Struct.new(
      nil,
      :domain_id,
      :template_id,
      :fields,
      :client_token,
      :performed_by,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute case_id
    #   <p>A unique identifier of the case.</p>
    #   @return [String]
    # @!attribute case_arn
    #   <p>The Amazon Resource Name (ARN) of the case.</p>
    #   @return [String]
    class CreateCaseOutput < Struct.new(
      nil,
      :case_id,
      :case_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>Unique identifier of a Cases domain.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of the case rule.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of a case rule.</p>
    #   @return [String]
    # @!attribute rule
    #   <p>Represents what rule type should take place, under what conditions.</p>
    #   @return [Types::CaseRuleDetails]
    class CreateCaseRuleRequest < Struct.new(
      nil,
      :domain_id,
      :name,
      :description,
      :rule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute case_rule_id
    #   <p>Unique identifier of a case rule.</p>
    #   @return [String]
    # @!attribute case_rule_arn
    #   <p>The Amazon Resource Name (ARN) of a case rule.</p>
    #   @return [String]
    class CreateCaseRuleResponse < Struct.new(
      nil,
      :case_rule_id,
      :case_rule_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name for your Cases domain. It must be unique for your Amazon Web Services account.</p>
    #   @return [String]
    class CreateDomainInput < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    #   @return [String]
    # @!attribute domain_arn
    #   <p>The Amazon Resource Name (ARN) for the Cases domain.</p>
    #   @return [String]
    # @!attribute domain_status
    #   <p>The status of the domain.</p>
    #   @return [String]
    class CreateDomainOutput < Struct.new(
      nil,
      :domain_id,
      :domain_arn,
      :domain_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the field.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Defines the data type, some system constraints, and default display of the field.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the field.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>Union of field attributes.</p>
    #   @return [Types::FieldAttributes]
    class CreateFieldInput < Struct.new(
      nil,
      :domain_id,
      :name,
      :type,
      :description,
      :attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute field_id
    #   <p>The unique identifier of a field.</p>
    #   @return [String]
    # @!attribute field_arn
    #   <p>The Amazon Resource Name (ARN) of the field.</p>
    #   @return [String]
    class CreateFieldOutput < Struct.new(
      nil,
      :field_id,
      :field_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the layout. It must be unique for the Cases domain.</p>
    #   @return [String]
    # @!attribute content
    #   <p>Information about which fields will be present in the layout, and information about the order of the fields.</p>
    #   @return [Types::LayoutContent]
    class CreateLayoutInput < Struct.new(
      nil,
      :domain_id,
      :name,
      :content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute layout_id
    #   <p>The unique identifier of the layout.</p>
    #   @return [String]
    # @!attribute layout_arn
    #   <p>The Amazon Resource Name (ARN) of the newly created layout.</p>
    #   @return [String]
    class CreateLayoutOutput < Struct.new(
      nil,
      :layout_id,
      :layout_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    #   @return [String]
    # @!attribute case_id
    #   <p>A unique identifier of the case.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of a related item.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content of a related item to be created.</p>
    #   @return [Types::RelatedItemInputContent]
    # @!attribute performed_by
    #   <p>Represents the creator of the related item.</p>
    #   @return [Types::UserUnion]
    class CreateRelatedItemInput < Struct.new(
      nil,
      :domain_id,
      :case_id,
      :type,
      :content,
      :performed_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute related_item_id
    #   <p>The unique identifier of the related item.</p>
    #   @return [String]
    # @!attribute related_item_arn
    #   <p>The Amazon Resource Name (ARN) of the related item.</p>
    #   @return [String]
    class CreateRelatedItemOutput < Struct.new(
      nil,
      :related_item_id,
      :related_item_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    #   @return [String]
    # @!attribute name
    #   <p>A name for the template. It must be unique per domain.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A brief description of the template.</p>
    #   @return [String]
    # @!attribute layout_configuration
    #   <p>Configuration of layouts associated to the template.</p>
    #   @return [Types::LayoutConfiguration]
    # @!attribute required_fields
    #   <p>A list of fields that must contain a value for a case to be successfully created with this template.</p>
    #   @return [Array<Types::RequiredField>]
    # @!attribute status
    #   <p>The status of the template.</p>
    #   @return [String]
    # @!attribute rules
    #   <p>A list of case rules (also known as <a href="https://docs.aws.amazon.com/connect/latest/adminguide/case-field-conditions.html">case field conditions</a>) on a template. </p>
    #   @return [Array<Types::TemplateRule>]
    # @!attribute tag_propagation_configurations
    #   <p>Defines tag propagation configuration for resources created within a domain. Tags specified here will be automatically applied to resources being created for the specified resource type.</p>
    #   @return [Array<Types::TagPropagationConfiguration>]
    class CreateTemplateInput < Struct.new(
      nil,
      :domain_id,
      :name,
      :description,
      :layout_configuration,
      :required_fields,
      :status,
      :rules,
      :tag_propagation_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_id
    #   <p>A unique identifier of a template.</p>
    #   @return [String]
    # @!attribute template_arn
    #   <p>The Amazon Resource Name (ARN) of the newly created template.</p>
    #   @return [String]
    class CreateTemplateOutput < Struct.new(
      nil,
      :template_id,
      :template_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the content of a <code>Custom</code> type related item.</p>
    # @!attribute fields
    #   <p>List of field values for the <code>Custom</code> related item.</p>
    #   @return [Array<Types::FieldValue>]
    class CustomContent < Struct.new(
      nil,
      :fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter for fields in <code>Custom</code> type related items. Only one value can be provided.</p>
    # @!attribute field
    #   <p>A filter for fields. Only one value can be provided.</p>
    #   @return [Types::FieldFilter]
    # @!attribute not
    #   <p>Excludes items matching the filter.</p>
    #   @return [Types::CustomFieldsFilter]
    # @!attribute and_all
    #   <p>Provides "and all" filtering.</p>
    #   @return [Array<Types::CustomFieldsFilter>]
    # @!attribute or_all
    #   <p>Provides "or all" filtering.</p>
    #   @return [Array<Types::CustomFieldsFilter>]
    class CustomFieldsFilter < Struct.new(
      :field,
      :not,
      :and_all,
      :or_all,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Field < CustomFieldsFilter; end
      class Not < CustomFieldsFilter; end
      class AndAll < CustomFieldsFilter; end
      class OrAll < CustomFieldsFilter; end
      class Unknown < CustomFieldsFilter; end
    end

    # <p>A filter for related items of type <code>Custom</code>.</p>
    # @!attribute fields
    #   <p>Filter conditions for custom fields.</p>
    #   @return [Types::CustomFieldsFilter]
    class CustomFilter < Struct.new(
      nil,
      :fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the content of a <code>Custom</code> related item.</p>
    # @!attribute fields
    #   <p>List of field values for the <code>Custom</code> related item.</p>
    #   @return [Array<Types::FieldValue>]
    class CustomInputContent < Struct.new(
      nil,
      :fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the updated content of a <code>Custom</code> related item.</p>
    # @!attribute fields
    #   <p>List of updated field values for the <code>Custom</code> related item. All existing and new fields, and their associated values should be included. Fields not included as part of this request will be removed.</p>
    #   @return [Array<Types::FieldValue>]
    class CustomUpdateContent < Struct.new(
      nil,
      :fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>A unique identifier of the Cases domain.</p>
    #   @return [String]
    # @!attribute case_id
    #   <p>A unique identifier of the case.</p>
    #   @return [String]
    class DeleteCaseRequest < Struct.new(
      nil,
      :domain_id,
      :case_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteCaseResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>Unique identifier of a Cases domain.</p>
    #   @return [String]
    # @!attribute case_rule_id
    #   <p>Unique identifier of a case rule.</p>
    #   @return [String]
    class DeleteCaseRuleRequest < Struct.new(
      nil,
      :domain_id,
      :case_rule_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteCaseRuleResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    #   @return [String]
    class DeleteDomainInput < Struct.new(
      nil,
      :domain_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteDomainOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The unique identifier of the Cases domain.</p>
    #   @return [String]
    # @!attribute field_id
    #   <p>Unique identifier of the field.</p>
    #   @return [String]
    class DeleteFieldRequest < Struct.new(
      nil,
      :domain_id,
      :field_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteFieldResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The unique identifier of the Cases domain.</p>
    #   @return [String]
    # @!attribute layout_id
    #   <p>The unique identifier of the layout.</p>
    #   @return [String]
    class DeleteLayoutRequest < Struct.new(
      nil,
      :domain_id,
      :layout_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteLayoutResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>A unique identifier of the Cases domain.</p>
    #   @return [String]
    # @!attribute case_id
    #   <p>A unique identifier of the case.</p>
    #   @return [String]
    # @!attribute related_item_id
    #   <p>A unique identifier of a related item.</p>
    #   @return [String]
    class DeleteRelatedItemRequest < Struct.new(
      nil,
      :domain_id,
      :case_id,
      :related_item_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteRelatedItemResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The unique identifier of the Cases domain.</p>
    #   @return [String]
    # @!attribute template_id
    #   <p>A unique identifier of a template.</p>
    #   @return [String]
    class DeleteTemplateRequest < Struct.new(
      nil,
      :domain_id,
      :template_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteTemplateResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object for the summarized details of the domain.</p>
    # @!attribute domain_id
    #   <p>The unique identifier of the domain.</p>
    #   @return [String]
    # @!attribute domain_arn
    #   <p>The Amazon Resource Name (ARN) of the domain.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the domain.</p>
    #   @return [String]
    class DomainSummary < Struct.new(
      nil,
      :domain_id,
      :domain_arn,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An empty value. You cannot set <code>EmptyFieldValue</code> on a field that is required on a case template.</p> <p>This structure will never have any data members. It signifies an empty value on a case field.</p>
    class EmptyFieldValue < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an empty operand value. In the Amazon Connect admin website, case rules are known as <i>case field conditions</i>. For more information about case field conditions, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/case-field-conditions.html">Add case field conditions to a case template</a>.</p>
    class EmptyOperandValue < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration to enable EventBridge case event delivery and determine what data is delivered.</p>
    # @!attribute enabled
    #   <p>Indicates whether the to broadcast case event data to the customer.</p>
    #   @return [Boolean]
    # @!attribute included_data
    #   <p>Details of what case and related item data is published through the case event stream.</p>
    #   @return [Types::EventIncludedData]
    class EventBridgeConfiguration < Struct.new(
      nil,
      :enabled,
      :included_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details of what case and related item data is published through the case event stream.</p>
    # @!attribute case_data
    #   <p>Details of what case data is published through the case event stream.</p>
    #   @return [Types::CaseEventIncludedData]
    # @!attribute related_item_data
    #   <p>Details of what related item data is published through the case event stream.</p>
    #   @return [Types::RelatedItemEventIncludedData]
    class EventIncludedData < Struct.new(
      nil,
      :case_data,
      :related_item_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Union of field attributes.</p>
    # @!attribute text
    #   <p>Field attributes for Text field type.</p>
    #   @return [Types::TextAttributes]
    class FieldAttributes < Struct.new(
      :text,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Text < FieldAttributes; end
      class Unknown < FieldAttributes; end
    end

    # <p>Object for errors on fields.</p>
    # @!attribute id
    #   <p>The field identifier that caused the error.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>The error code from getting a field.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message from getting a field.</p>
    #   @return [String]
    class FieldError < Struct.new(
      nil,
      :id,
      :error_code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter for fields. Only one value can be provided.</p>
    # @!attribute equal_to
    #   <p>Object containing field identifier and value information.</p>
    #   @return [Types::FieldValue]
    # @!attribute contains
    #   <p>Object containing field identifier and value information.</p>
    #   @return [Types::FieldValue]
    # @!attribute greater_than
    #   <p>Object containing field identifier and value information.</p>
    #   @return [Types::FieldValue]
    # @!attribute greater_than_or_equal_to
    #   <p>Object containing field identifier and value information.</p>
    #   @return [Types::FieldValue]
    # @!attribute less_than
    #   <p>Object containing field identifier and value information.</p>
    #   @return [Types::FieldValue]
    # @!attribute less_than_or_equal_to
    #   <p>Object containing field identifier and value information. </p>
    #   @return [Types::FieldValue]
    class FieldFilter < Struct.new(
      :equal_to,
      :contains,
      :greater_than,
      :greater_than_or_equal_to,
      :less_than,
      :less_than_or_equal_to,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class EqualTo < FieldFilter; end
      class Contains < FieldFilter; end
      class GreaterThan < FieldFilter; end
      class GreaterThanOrEqualTo < FieldFilter; end
      class LessThan < FieldFilter; end
      class LessThanOrEqualTo < FieldFilter; end
      class Unknown < FieldFilter; end
    end

    # <p>Object for a group of fields and associated properties.</p>
    # @!attribute name
    #   <p>Name of the field group.</p>
    #   @return [String]
    # @!attribute fields
    #   <p>Represents an ordered list containing field related information.</p>
    #   @return [Array<Types::FieldItem>]
    class FieldGroup < Struct.new(
      nil,
      :name,
      :fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object for unique identifier of a field.</p>
    # @!attribute id
    #   <p>Unique identifier of a field.</p>
    #   @return [String]
    class FieldIdentifier < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object for field related information.</p>
    # @!attribute id
    #   <p>Unique identifier of a field.</p>
    #   @return [String]
    class FieldItem < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object for field Options information.</p>
    # @!attribute name
    #   <p> <code>FieldOptionName</code> has max length 100 and disallows trailing spaces.</p>
    #   @return [String]
    # @!attribute value
    #   <p> <code>FieldOptionValue</code> has max length 100 and must be alphanumeric with hyphens and underscores.</p>
    #   @return [String]
    # @!attribute active
    #   <p>Describes whether the <code>FieldOption</code> is active (displayed) or inactive.</p>
    #   @return [Boolean]
    class FieldOption < Struct.new(
      nil,
      :name,
      :value,
      :active,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object for field Options errors.</p>
    # @!attribute message
    #   <p>Error message from creating or updating field option.</p>
    #   @return [String]
    # @!attribute error_code
    #   <p>Error code from creating or updating field option.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The field option value that caused the error.</p>
    #   @return [String]
    class FieldOptionError < Struct.new(
      nil,
      :message,
      :error_code,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Rules that control which options are available in a child field based on the selected value in a parent field.</p>
    # @!attribute parent_field_id
    #   <p>The identifier of the parent field that controls options.</p>
    #   @return [String]
    # @!attribute child_field_id
    #   <p>The identifier of the child field whose options are controlled.</p>
    #   @return [String]
    # @!attribute parent_child_field_options_mappings
    #   <p>A mapping between a parent field option value and child field option values.</p>
    #   @return [Array<Types::ParentChildFieldOptionsMapping>]
    class FieldOptionsCaseRule < Struct.new(
      nil,
      :parent_field_id,
      :child_field_id,
      :parent_child_field_options_mappings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object for the summarized details of the field.</p>
    # @!attribute field_id
    #   <p>The unique identifier of a field.</p>
    #   @return [String]
    # @!attribute field_arn
    #   <p>The Amazon Resource Name (ARN) of the field.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of the field.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of a field.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of a field.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>Union of field attributes.</p>
    #   @return [Types::FieldAttributes]
    class FieldSummary < Struct.new(
      nil,
      :field_id,
      :field_arn,
      :name,
      :type,
      :namespace,
      :attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object for case field values.</p>
    # @!attribute id
    #   <p>Unique identifier of a field.</p>
    #   @return [String]
    # @!attribute value
    #   <p>Union of potential field value types.</p>
    #   @return [Types::FieldValueUnion]
    class FieldValue < Struct.new(
      nil,
      :id,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object to store union of Field values.</p> <note> <p>The <code>Summary</code> system field accepts up to 3000 characters, while all other fields accept up to 4100 characters. If you use multi-byte characters, the effective character limit may be lower.</p> </note>
    # @!attribute string_value
    #   <p>String value type.</p>
    #   @return [String]
    # @!attribute double_value
    #   <p>Can be either null, or have a Double number value type. Only one value can be provided.</p>
    #   @return [Float]
    # @!attribute boolean_value
    #   <p>Can be either null, or have a Boolean value type. Only one value can be provided.</p>
    #   @return [Boolean]
    # @!attribute empty_value
    #   <p>An empty value.</p>
    #   @return [Types::EmptyFieldValue]
    # @!attribute user_arn_value
    #   <p>Represents the user that performed the audit.</p>
    #   @return [String]
    class FieldValueUnion < Struct.new(
      :string_value,
      :double_value,
      :boolean_value,
      :empty_value,
      :user_arn_value,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class StringValue < FieldValueUnion; end
      class DoubleValue < FieldValueUnion; end
      class BooleanValue < FieldValueUnion; end
      class EmptyValue < FieldValueUnion; end
      class UserArnValue < FieldValueUnion; end
      class Unknown < FieldValueUnion; end
    end

    # <p>An object that represents a content of an Amazon Connect file object.</p>
    # @!attribute file_arn
    #   <p>The Amazon Resource Name (ARN) of a File in Amazon Connect.</p>
    #   @return [String]
    class FileContent < Struct.new(
      nil,
      :file_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter for related items of type <code>File</code>.</p>
    # @!attribute file_arn
    #   <p>The Amazon Resource Name (ARN) of the file.</p>
    #   @return [String]
    class FileFilter < Struct.new(
      nil,
      :file_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute case_id
    #   <p>A unique identifier of the case.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The unique identifier of the Cases domain.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of audit events to return. When no value is provided, 25 is the default.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    class GetCaseAuditEventsRequest < Struct.new(
      nil,
      :case_id,
      :domain_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. This is null if there are no more results to return.</p>
    #   @return [String]
    # @!attribute audit_events
    #   <p>A list of case audits where each represents a particular edit of the case.</p>
    #   @return [Array<Types::AuditEvent>]
    class GetCaseAuditEventsResponse < Struct.new(
      nil,
      :next_token,
      :audit_events,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    #   @return [String]
    class GetCaseEventConfigurationInput < Struct.new(
      nil,
      :domain_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_bridge
    #   <p>Configuration to enable EventBridge case event delivery and determine what data is delivered.</p>
    #   @return [Types::EventBridgeConfiguration]
    class GetCaseEventConfigurationOutput < Struct.new(
      nil,
      :event_bridge,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute case_id
    #   <p>A unique identifier of the case.</p>
    #   @return [String]
    # @!attribute domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    #   @return [String]
    # @!attribute fields
    #   <p>A list of unique field identifiers. </p>
    #   @return [Array<Types::FieldIdentifier>]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    class GetCaseInput < Struct.new(
      nil,
      :case_id,
      :domain_id,
      :fields,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fields
    #   <p>A list of detailed field information. </p>
    #   @return [Array<Types::FieldValue>]
    # @!attribute template_id
    #   <p>A unique identifier of a template.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. This is null if there are no more results to return.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of of key-value pairs that represent tags on a resource. Tags are used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class GetCaseOutput < Struct.new(
      nil,
      :fields,
      :template_id,
      :next_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Detailed case rule information. In the Amazon Connect admin website, case rules are known as <i>case field conditions</i>. For more information about case field conditions, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/case-field-conditions.html">Add case field conditions to a case template</a>.</p>
    # @!attribute case_rule_id
    #   <p>Unique identifier of a case rule.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of the case rule.</p>
    #   @return [String]
    # @!attribute case_rule_arn
    #   <p>The Amazon Resource Name (ARN) of the case rule.</p>
    #   @return [String]
    # @!attribute rule
    #   <p>Represents what rule type should take place, under what conditions.</p>
    #   @return [Types::CaseRuleDetails]
    # @!attribute description
    #   <p>Description of a case rule.</p>
    #   @return [String]
    # @!attribute deleted
    #   <p>Indicates whether the resource has been deleted.</p>
    #   @return [Boolean]
    # @!attribute created_time
    #   <p>Timestamp when the resource was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>Timestamp when the resource was created or last modified.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>A map of of key-value pairs that represent tags on a resource. Tags are used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class GetCaseRuleResponse < Struct.new(
      nil,
      :case_rule_id,
      :name,
      :case_rule_arn,
      :rule,
      :description,
      :deleted,
      :created_time,
      :last_modified_time,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:deleted] = false unless options.key?(:deleted)
        super
      end
    end

    # @!attribute domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    #   @return [String]
    class GetDomainInput < Struct.new(
      nil,
      :domain_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    #   @return [String]
    # @!attribute domain_arn
    #   <p>The Amazon Resource Name (ARN) for the Cases domain.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the Cases domain.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The timestamp when the Cases domain was created.</p>
    #   @return [Time]
    # @!attribute domain_status
    #   <p>The status of the Cases domain.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of of key-value pairs that represent tags on a resource. Tags are used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class GetDomainOutput < Struct.new(
      nil,
      :domain_id,
      :domain_arn,
      :name,
      :created_time,
      :domain_status,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object to store detailed field information.</p>
    # @!attribute field_id
    #   <p>Unique identifier of the field.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of the field.</p>
    #   @return [String]
    # @!attribute field_arn
    #   <p>The Amazon Resource Name (ARN) of the field.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Description of the field.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Type of the field.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>Namespace of the field.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of of key-value pairs that represent tags on a resource. Tags are used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute deleted
    #   <p>Denotes whether or not the resource has been deleted.</p>
    #   @return [Boolean]
    # @!attribute created_time
    #   <p>Timestamp at which the resource was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>Timestamp at which the resource was created or last modified.</p>
    #   @return [Time]
    # @!attribute attributes
    #   <p>Union of field attributes.</p>
    #   @return [Types::FieldAttributes]
    class GetFieldResponse < Struct.new(
      nil,
      :field_id,
      :name,
      :field_arn,
      :description,
      :type,
      :namespace,
      :tags,
      :deleted,
      :created_time,
      :last_modified_time,
      :attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:deleted] = false unless options.key?(:deleted)
        super
      end
    end

    # @!attribute domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    #   @return [String]
    # @!attribute layout_id
    #   <p>The unique identifier of the layout.</p>
    #   @return [String]
    class GetLayoutInput < Struct.new(
      nil,
      :domain_id,
      :layout_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute layout_id
    #   <p>The unique identifier of the layout.</p>
    #   @return [String]
    # @!attribute layout_arn
    #   <p>The Amazon Resource Name (ARN) of the newly created layout.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the layout. It must be unique.</p>
    #   @return [String]
    # @!attribute content
    #   <p>Information about which fields will be present in the layout, the order of the fields, and read-only attribute of the field. </p>
    #   @return [Types::LayoutContent]
    # @!attribute tags
    #   <p>A map of of key-value pairs that represent tags on a resource. Tags are used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute deleted
    #   <p>Denotes whether or not the resource has been deleted.</p>
    #   @return [Boolean]
    # @!attribute created_time
    #   <p>Timestamp at which the resource was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>Timestamp at which the resource was created or last modified.</p>
    #   @return [Time]
    class GetLayoutOutput < Struct.new(
      nil,
      :layout_id,
      :layout_arn,
      :name,
      :content,
      :tags,
      :deleted,
      :created_time,
      :last_modified_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:deleted] = false unless options.key?(:deleted)
        super
      end
    end

    # @!attribute domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    #   @return [String]
    # @!attribute template_id
    #   <p>A unique identifier of a template.</p>
    #   @return [String]
    class GetTemplateInput < Struct.new(
      nil,
      :domain_id,
      :template_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_id
    #   <p>A unique identifier of a template.</p>
    #   @return [String]
    # @!attribute template_arn
    #   <p>The Amazon Resource Name (ARN) of the template.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the template.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A brief description of the template.</p>
    #   @return [String]
    # @!attribute layout_configuration
    #   <p>Configuration of layouts associated to the template.</p>
    #   @return [Types::LayoutConfiguration]
    # @!attribute required_fields
    #   <p>A list of fields that must contain a value for a case to be successfully created with this template.</p>
    #   @return [Array<Types::RequiredField>]
    # @!attribute tags
    #   <p>A map of of key-value pairs that represent tags on a resource. Tags are used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute status
    #   <p>The status of the template.</p>
    #   @return [String]
    # @!attribute deleted
    #   <p>Denotes whether or not the resource has been deleted.</p>
    #   @return [Boolean]
    # @!attribute created_time
    #   <p>Timestamp at which the resource was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>Timestamp at which the resource was created or last modified.</p>
    #   @return [Time]
    # @!attribute rules
    #   <p>A list of case rules (also known as <a href="https://docs.aws.amazon.com/connect/latest/adminguide/case-field-conditions.html">case field conditions</a>) on a template. </p>
    #   @return [Array<Types::TemplateRule>]
    # @!attribute tag_propagation_configurations
    #   <p>Defines tag propagation configuration for resources created within a domain. Tags specified here will be automatically applied to resources being created for the specified resource type.</p>
    #   @return [Array<Types::TagPropagationConfiguration>]
    class GetTemplateOutput < Struct.new(
      nil,
      :template_id,
      :template_arn,
      :name,
      :description,
      :layout_configuration,
      :required_fields,
      :tags,
      :status,
      :deleted,
      :created_time,
      :last_modified_time,
      :rules,
      :tag_propagation_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:deleted] = false unless options.key?(:deleted)
        super
      end
    end

    # <p>A rule that controls field visibility based on conditions. Fields can be shown or hidden dynamically based on values in other fields.</p>
    # @!attribute default_value
    #   <p>Whether the field is hidden when no conditions match.</p>
    #   @return [Boolean]
    # @!attribute conditions
    #   <p>A list of conditions that determine field visibility.</p>
    #   @return [Array<Types::BooleanCondition>]
    class HiddenCaseRule < Struct.new(
      nil,
      :default_value,
      :conditions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>We couldn't process your request because of an issue with the server. Try again later.</p>
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

    # <p>Object to store configuration of layouts associated to the template.</p>
    # @!attribute default_layout
    #   <p> Unique identifier of a layout. </p>
    #   @return [String]
    class LayoutConfiguration < Struct.new(
      nil,
      :default_layout,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object to store union of different versions of layout content.</p>
    # @!attribute basic
    #   <p>Content specific to <code>BasicLayout</code> type. It configures fields in the top panel and More Info tab of Cases user interface.</p>
    #   @return [Types::BasicLayout]
    class LayoutContent < Struct.new(
      :basic,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Basic < LayoutContent; end
      class Unknown < LayoutContent; end
    end

    # <p>Ordered list containing different kinds of sections that can be added. A LayoutSections object can only contain one section.</p>
    # @!attribute sections
    #   <p>Ordered list containing different kinds of sections that can be added.</p>
    #   @return [Array<Types::Section>]
    class LayoutSections < Struct.new(
      nil,
      :sections,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object for the summarized details of the layout.</p>
    # @!attribute layout_id
    #   <p>The unique identifier for of the layout.</p>
    #   @return [String]
    # @!attribute layout_arn
    #   <p>The Amazon Resource Name (ARN) of the layout.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the layout.</p>
    #   @return [String]
    class LayoutSummary < Struct.new(
      nil,
      :layout_id,
      :layout_arn,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>Unique identifier of a Cases domain.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    class ListCaseRulesRequest < Struct.new(
      nil,
      :domain_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute case_rules
    #   <p>A list of field summary objects.</p>
    #   @return [Array<Types::CaseRuleSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results. This is null if there are no more results to return.</p>
    #   @return [String]
    class ListCaseRulesResponse < Struct.new(
      nil,
      :case_rules,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    #   @return [String]
    # @!attribute contact_arn
    #   <p>A unique identifier of a contact in Amazon Connect.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    class ListCasesForContactInput < Struct.new(
      nil,
      :domain_id,
      :contact_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cases
    #   <p>A list of Case summary information.</p>
    #   @return [Array<Types::CaseSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results. This is null if there are no more results to return.</p>
    #   @return [String]
    class ListCasesForContactOutput < Struct.new(
      nil,
      :cases,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    class ListDomainsInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domains
    #   <p>The Cases domain.</p>
    #   @return [Array<Types::DomainSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results. This is null if there are no more results to return.</p>
    #   @return [String]
    class ListDomainsOutput < Struct.new(
      nil,
      :domains,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    #   @return [String]
    # @!attribute field_id
    #   <p>The unique identifier of a field.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute values
    #   <p>A list of <code>FieldOption</code> values to filter on for <code>ListFieldOptions</code>.</p>
    #   @return [Array<String>]
    class ListFieldOptionsInput < Struct.new(
      nil,
      :domain_id,
      :field_id,
      :max_results,
      :next_token,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute options
    #   <p>A list of <code>FieldOption</code> objects.</p>
    #   @return [Array<Types::FieldOption>]
    # @!attribute next_token
    #   <p>The token for the next set of results. This is null if there are no more results to return.</p>
    #   @return [String]
    class ListFieldOptionsOutput < Struct.new(
      nil,
      :options,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    class ListFieldsInput < Struct.new(
      nil,
      :domain_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute fields
    #   <p>List of detailed field information.</p>
    #   @return [Array<Types::FieldSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results. This is null if there are no more results to return.</p>
    #   @return [String]
    class ListFieldsOutput < Struct.new(
      nil,
      :fields,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    class ListLayoutsInput < Struct.new(
      nil,
      :domain_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute layouts
    #   <p>The layouts for the domain.</p>
    #   @return [Array<Types::LayoutSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results. This is null if there are no more results to return.</p>
    #   @return [String]
    class ListLayoutsOutput < Struct.new(
      nil,
      :layouts,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN)</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A map of of key-value pairs that represent tags on a resource. Tags are used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute status
    #   <p>A list of status values to filter on.</p>
    #   @return [Array<String>]
    class ListTemplatesInput < Struct.new(
      nil,
      :domain_id,
      :max_results,
      :next_token,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute templates
    #   <p>List of template summary objects.</p>
    #   @return [Array<Types::TemplateSummary>]
    # @!attribute next_token
    #   <p>The token for the next set of results. This is null if there are no more results to return.</p>
    #   @return [String]
    class ListTemplatesOutput < Struct.new(
      nil,
      :templates,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the left hand operand in the condition. In the Amazon Connect admin website, case rules are known as <i>case field conditions</i>. For more information about case field conditions, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/case-field-conditions.html">Add case field conditions to a case template</a>.</p>
    # @!attribute field_id
    #   <p>The field ID that this operand should take the value of.</p>
    #   @return [String]
    class OperandOne < Struct.new(
      :field_id,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class FieldId < OperandOne; end
      class Unknown < OperandOne; end
    end

    # <p>Represents the right hand operand in the condition. In the Amazon Connect admin website, case rules are known as <i>case field conditions</i>. For more information about case field conditions, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/case-field-conditions.html">Add case field conditions to a case template</a>.</p>
    # @!attribute string_value
    #   <p>String value type.</p>
    #   @return [String]
    # @!attribute boolean_value
    #   <p>Boolean value type.</p>
    #   @return [Boolean]
    # @!attribute double_value
    #   <p>Double value type.</p>
    #   @return [Float]
    # @!attribute empty_value
    #   <p>Empty value type.</p>
    #   @return [Types::EmptyOperandValue]
    class OperandTwo < Struct.new(
      :string_value,
      :boolean_value,
      :double_value,
      :empty_value,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class StringValue < OperandTwo; end
      class BooleanValue < OperandTwo; end
      class DoubleValue < OperandTwo; end
      class EmptyValue < OperandTwo; end
      class Unknown < OperandTwo; end
    end

    # <p>A mapping between a parent field option value and child field option values.</p>
    # @!attribute parent_field_option_value
    #   <p>The value in the parent field.</p>
    #   @return [String]
    # @!attribute child_field_option_values
    #   <p>A list of allowed values in the child field.</p>
    #   @return [Array<String>]
    class ParentChildFieldOptionsMapping < Struct.new(
      nil,
      :parent_field_option_value,
      :child_field_option_values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    #   @return [String]
    # @!attribute event_bridge
    #   <p>Configuration to enable EventBridge case event delivery and determine what data is delivered.</p>
    #   @return [Types::EventBridgeConfiguration]
    class PutCaseEventConfigurationInput < Struct.new(
      nil,
      :domain_id,
      :event_bridge,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class PutCaseEventConfigurationOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the content of a particular type of related item.</p>
    # @!attribute contact
    #   <p>Represents the content of a contact to be returned to agents.</p>
    #   @return [Types::ContactContent]
    # @!attribute comment
    #   <p>Represents the content of a comment to be returned to agents.</p>
    #   @return [Types::CommentContent]
    # @!attribute file
    #   <p>Represents the content of a File to be returned to agents.</p>
    #   @return [Types::FileContent]
    # @!attribute sla
    #   <p>Represents the content of an SLA to be returned to agents.</p>
    #   @return [Types::SlaContent]
    # @!attribute connect_case
    #   <p>Represents the Amazon Connect case to be created as a related item.</p>
    #   @return [Types::ConnectCaseContent]
    # @!attribute custom
    #   <p>Represents the content of a <code>Custom</code> type related item.</p>
    #   @return [Types::CustomContent]
    class RelatedItemContent < Struct.new(
      :contact,
      :comment,
      :file,
      :sla,
      :connect_case,
      :custom,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Contact < RelatedItemContent; end
      class Comment < RelatedItemContent; end
      class File < RelatedItemContent; end
      class Sla < RelatedItemContent; end
      class ConnectCase < RelatedItemContent; end
      class Custom < RelatedItemContent; end
      class Unknown < RelatedItemContent; end
    end

    # <p>Details of what related item data is published through the case event stream.</p>
    # @!attribute include_content
    #   <p>Details of what related item data is published through the case event stream.</p>
    #   @return [Boolean]
    class RelatedItemEventIncludedData < Struct.new(
      nil,
      :include_content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the content of a related item to be created.</p>
    # @!attribute contact
    #   <p>Object representing a contact in Amazon Connect as an API request field.</p>
    #   @return [Types::Contact]
    # @!attribute comment
    #   <p>Represents the content of a comment to be returned to agents.</p>
    #   @return [Types::CommentContent]
    # @!attribute file
    #   <p>A file of related items.</p>
    #   @return [Types::FileContent]
    # @!attribute sla
    #   <p>Represents the content of an SLA to be created.</p>
    #   @return [Types::SlaInputContent]
    # @!attribute connect_case
    #   <p>Represents the Amazon Connect case to be created as a related item.</p>
    #   @return [Types::ConnectCaseInputContent]
    # @!attribute custom
    #   <p>Represents the content of a <code>Custom</code> type related item.</p>
    #   @return [Types::CustomInputContent]
    class RelatedItemInputContent < Struct.new(
      :contact,
      :comment,
      :file,
      :sla,
      :connect_case,
      :custom,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Contact < RelatedItemInputContent; end
      class Comment < RelatedItemInputContent; end
      class File < RelatedItemInputContent; end
      class Sla < RelatedItemInputContent; end
      class ConnectCase < RelatedItemInputContent; end
      class Custom < RelatedItemInputContent; end
      class Unknown < RelatedItemInputContent; end
    end

    # <p>The list of types of related items and their parameters to use for filtering.</p>
    # @!attribute contact
    #   <p>A filter for related items of type <code>Contact</code>.</p>
    #   @return [Types::ContactFilter]
    # @!attribute comment
    #   <p>A filter for related items of type <code>Comment</code>.</p>
    #   @return [Types::CommentFilter]
    # @!attribute file
    #   <p>A filter for related items of this type of <code>File</code>.</p>
    #   @return [Types::FileFilter]
    # @!attribute sla
    #   <p> Filter for related items of type <code>SLA</code>.</p>
    #   @return [Types::SlaFilter]
    # @!attribute connect_case
    #   <p>Represents the Amazon Connect case to be created as a related item.</p>
    #   @return [Types::ConnectCaseFilter]
    # @!attribute custom
    #   <p>Represents the content of a <code>Custom</code> type related item.</p>
    #   @return [Types::CustomFilter]
    class RelatedItemTypeFilter < Struct.new(
      :contact,
      :comment,
      :file,
      :sla,
      :connect_case,
      :custom,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Contact < RelatedItemTypeFilter; end
      class Comment < RelatedItemTypeFilter; end
      class File < RelatedItemTypeFilter; end
      class Sla < RelatedItemTypeFilter; end
      class ConnectCase < RelatedItemTypeFilter; end
      class Custom < RelatedItemTypeFilter; end
      class Unknown < RelatedItemTypeFilter; end
    end

    # <p>Represents the content of a related item to be updated. This is a union type that can contain either comment content or custom content.</p>
    # @!attribute comment
    #   <p>Represents the updated content of a <code>Comment</code> related item.</p>
    #   @return [Types::CommentUpdateContent]
    # @!attribute custom
    #   <p>Represents the updated content of a <code>Custom</code> related item.</p>
    #   @return [Types::CustomUpdateContent]
    class RelatedItemUpdateContent < Struct.new(
      :comment,
      :custom,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Comment < RelatedItemUpdateContent; end
      class Custom < RelatedItemUpdateContent; end
      class Unknown < RelatedItemUpdateContent; end
    end

    # <p>Required rule type, used to indicate whether a field is required. In the Amazon Connect admin website, case rules are known as <i>case field conditions</i>. For more information about case field conditions, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/case-field-conditions.html">Add case field conditions to a case template</a>.</p>
    # @!attribute default_value
    #   <p>The value of the rule (that is, whether the field is required) should none of the conditions evaluate to true.</p>
    #   @return [Boolean]
    # @!attribute conditions
    #   <p>List of conditions for the required rule; the first condition to evaluate to true dictates the value of the rule.</p>
    #   @return [Array<Types::BooleanCondition>]
    class RequiredCaseRule < Struct.new(
      nil,
      :default_value,
      :conditions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>List of fields that must have a value provided to create a case.</p>
    # @!attribute field_id
    #   <p>Unique identifier of a field.</p>
    #   @return [String]
    class RequiredField < Struct.new(
      nil,
      :field_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>We couldn't find the requested resource. Check that your resources exists and were created in the same Amazon Web Services Region as your request, and try your request again.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>Unique identifier of the resource affected.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>Type of the resource affected.</p>
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

    # @!attribute domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>The list of types of related items and their parameters to use for filtering. The filters work as an OR condition: caller gets back related items that match any of the specified filter types.</p>
    #   @return [Array<Types::RelatedItemTypeFilter>]
    # @!attribute sorts
    #   <p>A structured set of sort terms to specify the order in which related items should be returned. Supports sorting by association time or case ID. The sorts work in the order specified: first sort term takes precedence over subsequent terms.</p>
    #   @return [Array<Types::SearchAllRelatedItemsSort>]
    class SearchAllRelatedItemsRequest < Struct.new(
      nil,
      :domain_id,
      :max_results,
      :next_token,
      :filters,
      :sorts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. This is null if there are no more results to return.</p>
    #   @return [String]
    # @!attribute related_items
    #   <p>A list of items related to a case.</p>
    #   @return [Array<Types::SearchAllRelatedItemsResponseItem>]
    class SearchAllRelatedItemsResponse < Struct.new(
      nil,
      :next_token,
      :related_items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A list of items that represent RelatedItems. This data type is similar to <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_SearchRelatedItemsResponseItem.html">SearchRelatedItemsResponseItem</a> except Search<b>All</b>RelatedItemsResponseItem has a caseId field.</p>
    # @!attribute related_item_id
    #   <p>Unique identifier of a related item.</p>
    #   @return [String]
    # @!attribute case_id
    #   <p>A unique identifier of the case.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Type of a related item.</p>
    #   @return [String]
    # @!attribute association_time
    #   <p>Time at which a related item was associated with a case.</p>
    #   @return [Time]
    # @!attribute content
    #   <p>Represents the content of a particular type of related item.</p>
    #   @return [Types::RelatedItemContent]
    # @!attribute performed_by
    #   <p>Represents the entity that performed the action.</p>
    #   @return [Types::UserUnion]
    # @!attribute tags
    #   <p>A map of of key-value pairs that represent tags on a resource. Tags are used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class SearchAllRelatedItemsResponseItem < Struct.new(
      nil,
      :related_item_id,
      :case_id,
      :type,
      :association_time,
      :content,
      :performed_by,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The order in which all returned related items should be sorted.</p>
    # @!attribute sort_property
    #   <p>Whether related items should be sorted in ascending or descending order. </p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>Whether related items should be sorted by association time or case ID. </p>
    #   @return [String]
    class SearchAllRelatedItemsSort < Struct.new(
      nil,
      :sort_property,
      :sort_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of cases to return. When no value is provided, 25 is the default.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute search_term
    #   <p>A word or phrase used to perform a quick search.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>A list of filter objects.</p>
    #   @return [Types::CaseFilter]
    # @!attribute sorts
    #   <p>A list of sorts where each sort specifies a field and their sort order to be applied to the results. </p>
    #   @return [Array<Types::Sort>]
    # @!attribute fields
    #   <p>The list of field identifiers to be returned as part of the response.</p>
    #   @return [Array<Types::FieldIdentifier>]
    class SearchCasesInput < Struct.new(
      nil,
      :domain_id,
      :max_results,
      :next_token,
      :search_term,
      :filter,
      :sorts,
      :fields,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. This is null if there are no more results to return.</p>
    #   @return [String]
    # @!attribute cases
    #   <p>A list of case documents where each case contains the properties <code>CaseId</code> and <code>Fields</code> where each field is a complex union structure. </p>
    #   @return [Array<Types::SearchCasesResponseItem>]
    # @!attribute total_count
    #   <p>The total number of cases that matched the search criteria.</p>
    #   @return [Integer]
    class SearchCasesOutput < Struct.new(
      nil,
      :next_token,
      :cases,
      :total_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:total_count] = 0 unless options.key?(:total_count)
        super
      end
    end

    # <p>A list of items that represent cases.</p>
    # @!attribute case_id
    #   <p>A unique identifier of the case.</p>
    #   @return [String]
    # @!attribute template_id
    #   <p>A unique identifier of a template.</p>
    #   @return [String]
    # @!attribute fields
    #   <p>List of case field values.</p>
    #   @return [Array<Types::FieldValue>]
    # @!attribute tags
    #   <p>A map of of key-value pairs that represent tags on a resource. Tags are used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class SearchCasesResponseItem < Struct.new(
      nil,
      :case_id,
      :template_id,
      :fields,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    #   @return [String]
    # @!attribute case_id
    #   <p>A unique identifier of the case.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>The list of types of related items and their parameters to use for filtering.</p>
    #   @return [Array<Types::RelatedItemTypeFilter>]
    class SearchRelatedItemsInput < Struct.new(
      nil,
      :domain_id,
      :case_id,
      :max_results,
      :next_token,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. This is null if there are no more results to return.</p>
    #   @return [String]
    # @!attribute related_items
    #   <p>A list of items related to a case. </p>
    #   @return [Array<Types::SearchRelatedItemsResponseItem>]
    class SearchRelatedItemsOutput < Struct.new(
      nil,
      :next_token,
      :related_items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A list of items that represent RelatedItems.</p>
    # @!attribute related_item_id
    #   <p>Unique identifier of a related item.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Type of a related item.</p>
    #   @return [String]
    # @!attribute association_time
    #   <p>Time at which a related item was associated with a case.</p>
    #   @return [Time]
    # @!attribute content
    #   <p>Represents the content of a particular type of related item.</p>
    #   @return [Types::RelatedItemContent]
    # @!attribute tags
    #   <p>A map of of key-value pairs that represent tags on a resource. Tags are used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute performed_by
    #   <p>Represents the creator of the related item.</p>
    #   @return [Types::UserUnion]
    class SearchRelatedItemsResponseItem < Struct.new(
      nil,
      :related_item_id,
      :type,
      :association_time,
      :content,
      :tags,
      :performed_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This represents a sections within a panel or tab of the page layout.</p>
    # @!attribute field_group
    #   <p>Consists of a group of fields and associated properties.</p>
    #   @return [Types::FieldGroup]
    class Section < Struct.new(
      :field_group,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class FieldGroup < Section; end
      class Unknown < Section; end
    end

    # <p>The service quota has been exceeded. For a list of service quotas, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html">Amazon Connect Service Quotas</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an SLA configuration.</p>
    # @!attribute name
    #   <p>Name of an SLA.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Type of SLA.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Status of an SLA.</p>
    #   @return [String]
    # @!attribute field_id
    #   <p>Unique identifier of a field.</p>
    #   @return [String]
    # @!attribute target_field_values
    #   <p>Represents a list of target field values for the fieldId specified in SlaConfiguration.</p>
    #   @return [Array<Types::FieldValueUnion>]
    # @!attribute target_time
    #   <p>Target time by which an SLA should be completed.</p>
    #   @return [Time]
    # @!attribute completion_time
    #   <p>Time at which an SLA was completed.</p>
    #   @return [Time]
    class SlaConfiguration < Struct.new(
      nil,
      :name,
      :type,
      :status,
      :field_id,
      :target_field_values,
      :target_time,
      :completion_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the content of an SLA to be returned to agents.</p>
    # @!attribute sla_configuration
    #   <p>Represents an SLA configuration.</p>
    #   @return [Types::SlaConfiguration]
    class SlaContent < Struct.new(
      nil,
      :sla_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter for related items of type <code>SLA</code>.</p>
    # @!attribute name
    #   <p>Name of an SLA.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Status of an SLA.</p>
    #   @return [String]
    class SlaFilter < Struct.new(
      nil,
      :name,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the input configuration of an SLA being created.</p>
    # @!attribute name
    #   <p>Name of an SLA.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Type of SLA.</p>
    #   @return [String]
    # @!attribute field_id
    #   <p>Unique identifier of a field.</p>
    #   @return [String]
    # @!attribute target_field_values
    #   <p>Represents a list of target field values for the fieldId specified in SlaInputConfiguration. The SLA is considered met if any one of these target field values matches the actual field value.</p>
    #   @return [Array<Types::FieldValueUnion>]
    # @!attribute target_sla_minutes
    #   <p>Target duration in minutes within which an SLA should be completed.</p>
    #   @return [Integer]
    class SlaInputConfiguration < Struct.new(
      nil,
      :name,
      :type,
      :field_id,
      :target_field_values,
      :target_sla_minutes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the content of an SLA.</p>
    # @!attribute sla_input_configuration
    #   <p>Represents an input SLA configuration.</p>
    #   @return [Types::SlaInputConfiguration]
    class SlaInputContent < Struct.new(
      :sla_input_configuration,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class SlaInputConfiguration < SlaInputContent; end
      class Unknown < SlaInputContent; end
    end

    # <p>A structured set of sort terms.</p>
    # @!attribute field_id
    #   <p>Unique identifier of a field.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>A structured set of sort terms</p>
    #   @return [String]
    class Sort < Struct.new(
      nil,
      :field_id,
      :sort_order,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter for tags. Only one value can be provided.</p>
    # @!attribute equal_to
    #   <p>Object containing tag key and value information.</p>
    #   @return [Types::TagValue]
    class TagFilter < Struct.new(
      :equal_to,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class EqualTo < TagFilter; end
      class Unknown < TagFilter; end
    end

    # <p>Defines tag propagation configuration for resources created within a domain. Tags specified here will be automatically applied to resources being created for the specified resource type.</p>
    # @!attribute resource_type
    #   <p>Supported resource types for tag propagation. Determines which resources will receive automatically propagated tags.</p>
    #   @return [String]
    # @!attribute tag_map
    #   <p>The tags that will be applied to the created resource.</p>
    #   @return [Hash<String, String>]
    class TagPropagationConfiguration < Struct.new(
      nil,
      :resource_type,
      :tag_map,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN)</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of of key-value pairs that represent tags on a resource. Tags are used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      nil,
      :arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object for case tag filter values.</p>
    # @!attribute key
    #   <p>The tag key in the tag filter value.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The tag value in the tag filter value.</p>
    #   @return [String]
    class TagValue < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An association representing a case rule acting upon a field. In the Amazon Connect admin website, case rules are known as <i>case field conditions</i>. For more information about case field conditions, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/case-field-conditions.html">Add case field conditions to a case template</a>.</p>
    # @!attribute case_rule_id
    #   <p>Unique identifier of a case rule.</p>
    #   @return [String]
    # @!attribute field_id
    #   <p>Unique identifier of a field.</p>
    #   @return [String]
    class TemplateRule < Struct.new(
      nil,
      :case_rule_id,
      :field_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:field_id] = 'NULL' unless options.key?(:field_id)
        super
      end
    end

    # <p>Template summary information.</p>
    # @!attribute template_id
    #   <p>The unique identifier for the template.</p>
    #   @return [String]
    # @!attribute template_arn
    #   <p>The Amazon Resource Name (ARN) of the template.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The template name.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the template.</p>
    #   @return [String]
    # @!attribute tag_propagation_configurations
    #   <p>Defines tag propagation configuration for resources created within a domain. Tags specified here will be automatically applied to resources being created for the specified resource type.</p>
    #   @return [Array<Types::TagPropagationConfiguration>]
    class TemplateSummary < Struct.new(
      nil,
      :template_id,
      :template_arn,
      :name,
      :status,
      :tag_propagation_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Field attributes for Text field type.</p>
    # @!attribute is_multiline
    #   <p>Attribute that defines rendering component and validation.</p>
    #   @return [Boolean]
    class TextAttributes < Struct.new(
      nil,
      :is_multiline,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The rate has been exceeded for this API. Please try again after a few minutes.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN)</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>List of tag keys.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      nil,
      :arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    #   @return [String]
    # @!attribute case_id
    #   <p>A unique identifier of the case.</p>
    #   @return [String]
    # @!attribute fields
    #   <p>An array of objects with <code>fieldId</code> (matching ListFields/DescribeField) and value union data, structured identical to <code>CreateCase</code>.</p>
    #   @return [Array<Types::FieldValue>]
    # @!attribute performed_by
    #   <p>Represents the entity that performed the action.</p>
    #   @return [Types::UserUnion]
    class UpdateCaseInput < Struct.new(
      nil,
      :domain_id,
      :case_id,
      :fields,
      :performed_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateCaseOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>Unique identifier of a Cases domain.</p>
    #   @return [String]
    # @!attribute case_rule_id
    #   <p>Unique identifier of a case rule.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of the case rule.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Description of a case rule.</p>
    #   @return [String]
    # @!attribute rule
    #   <p>Represents what rule type should take place, under what conditions.</p>
    #   @return [Types::CaseRuleDetails]
    class UpdateCaseRuleRequest < Struct.new(
      nil,
      :domain_id,
      :case_rule_id,
      :name,
      :description,
      :rule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateCaseRuleResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    #   @return [String]
    # @!attribute field_id
    #   <p>The unique identifier of a field.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the field.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of a field.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>Union of field attributes.</p>
    #   @return [Types::FieldAttributes]
    class UpdateFieldInput < Struct.new(
      nil,
      :domain_id,
      :field_id,
      :name,
      :description,
      :attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateFieldOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    #   @return [String]
    # @!attribute layout_id
    #   <p>The unique identifier of the layout.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the layout. It must be unique per domain.</p>
    #   @return [String]
    # @!attribute content
    #   <p>Information about which fields will be present in the layout, the order of the fields.</p>
    #   @return [Types::LayoutContent]
    class UpdateLayoutInput < Struct.new(
      nil,
      :domain_id,
      :layout_id,
      :name,
      :content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateLayoutOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    #   @return [String]
    # @!attribute case_id
    #   <p>A unique identifier of the case.</p>
    #   @return [String]
    # @!attribute related_item_id
    #   <p>Unique identifier of a related item.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content of a related item to be updated.</p>
    #   @return [Types::RelatedItemUpdateContent]
    # @!attribute performed_by
    #   <p>Represents the user who performed the update of the related item.</p>
    #   @return [Types::UserUnion]
    class UpdateRelatedItemRequest < Struct.new(
      nil,
      :domain_id,
      :case_id,
      :related_item_id,
      :content,
      :performed_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute related_item_id
    #   <p>The unique identifier of the updated related item.</p>
    #   @return [String]
    # @!attribute related_item_arn
    #   <p>The Amazon Resource Name (ARN) of the updated related item.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Type of the updated related item.</p>
    #   @return [String]
    # @!attribute content
    #   <p>Represents the content of the updated related item.</p>
    #   @return [Types::RelatedItemContent]
    # @!attribute association_time
    #   <p>Time at which the related item was associated with the case.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>A map of of key-value pairs that represent tags on a resource. Tags are used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute last_updated_user
    #   <p>Represents the last user that updated the related item.</p>
    #   @return [Types::UserUnion]
    # @!attribute created_by
    #   <p>Represents the creator of the related item.</p>
    #   @return [Types::UserUnion]
    class UpdateRelatedItemResponse < Struct.new(
      nil,
      :related_item_id,
      :related_item_arn,
      :type,
      :content,
      :association_time,
      :tags,
      :last_updated_user,
      :created_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_id
    #   <p>The unique identifier of the Cases domain. </p>
    #   @return [String]
    # @!attribute template_id
    #   <p>A unique identifier for the template.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the template. It must be unique per domain.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A brief description of the template.</p>
    #   @return [String]
    # @!attribute layout_configuration
    #   <p>Configuration of layouts associated to the template.</p>
    #   @return [Types::LayoutConfiguration]
    # @!attribute required_fields
    #   <p>A list of fields that must contain a value for a case to be successfully created with this template.</p>
    #   @return [Array<Types::RequiredField>]
    # @!attribute status
    #   <p>The status of the template.</p>
    #   @return [String]
    # @!attribute rules
    #   <p>A list of case rules (also known as <a href="https://docs.aws.amazon.com/connect/latest/adminguide/case-field-conditions.html">case field conditions</a>) on a template.</p>
    #   @return [Array<Types::TemplateRule>]
    # @!attribute tag_propagation_configurations
    #   <p>Defines tag propagation configuration for resources created within a domain. Tags specified here will be automatically applied to resources being created for the specified resource type.</p>
    #   @return [Array<Types::TagPropagationConfiguration>]
    class UpdateTemplateInput < Struct.new(
      nil,
      :domain_id,
      :template_id,
      :name,
      :description,
      :layout_configuration,
      :required_fields,
      :status,
      :rules,
      :tag_propagation_configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateTemplateOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the entity that performed the action.</p>
    # @!attribute user_arn
    #   <p>Represents the Amazon Connect ARN of the user.</p>
    #   @return [String]
    # @!attribute custom_entity
    #   <p>Any provided entity.</p>
    #   @return [String]
    class UserUnion < Struct.new(
      :user_arn,
      :custom_entity,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class UserArn < UserUnion; end
      class CustomEntity < UserUnion; end
      class Unknown < UserUnion; end
    end

    # <p>The request isn't valid. Check the syntax and try again.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
