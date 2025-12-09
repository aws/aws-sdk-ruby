# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CustomerProfiles
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_id
    #   The unique identifier of a customer profile.
    #   @return [String]
    #
    # @!attribute [rw] key_name
    #   A searchable identifier of a customer profile. The predefined keys
    #   you can use include: \_account, \_profileId, \_assetId, \_caseId,
    #   \_orderId, \_fullName, \_phone, \_email, \_ctrContactId,
    #   \_marketoLeadId, \_salesforceAccountId, \_salesforceContactId,
    #   \_salesforceAssetId, \_zendeskUserId, \_zendeskExternalId,
    #   \_zendeskTicketId, \_serviceNowSystemId, \_serviceNowIncidentId,
    #   \_segmentUserId, \_shopifyCustomerId, \_shopifyOrderId.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   A list of key values.
    #   @return [Array<String>]
    #
    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/AddProfileKeyRequest AWS API Documentation
    #
    class AddProfileKeyRequest < Struct.new(
      :profile_id,
      :key_name,
      :values,
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_name
    #   A searchable identifier of a customer profile.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   A list of key values.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/AddProfileKeyResponse AWS API Documentation
    #
    class AddProfileKeyResponse < Struct.new(
      :key_name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # A data type pair that consists of a `KeyName` and `Values` list that
    # is used in conjunction with the [KeyName][1] and [Values][2]
    # parameters to search for profiles using the [SearchProfiles][3] API.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_SearchProfiles.html#customerprofiles-SearchProfiles-request-KeyName
    # [2]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_SearchProfiles.html#customerprofiles-SearchProfiles-request-Values
    # [3]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_SearchProfiles.html
    #
    # @!attribute [rw] key_name
    #   A searchable identifier of a customer profile.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   A list of key values.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/AdditionalSearchKey AWS API Documentation
    #
    class AdditionalSearchKey < Struct.new(
      :key_name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # A generic address associated with the customer that is not mailing,
    # shipping, or billing.
    #
    # @!attribute [rw] address_1
    #   The first line of a customer address.
    #   @return [String]
    #
    # @!attribute [rw] address_2
    #   The second line of a customer address.
    #   @return [String]
    #
    # @!attribute [rw] address_3
    #   The third line of a customer address.
    #   @return [String]
    #
    # @!attribute [rw] address_4
    #   The fourth line of a customer address.
    #   @return [String]
    #
    # @!attribute [rw] city
    #   The city in which a customer lives.
    #   @return [String]
    #
    # @!attribute [rw] county
    #   The county in which a customer lives.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state in which a customer lives.
    #   @return [String]
    #
    # @!attribute [rw] province
    #   The province in which a customer lives.
    #   @return [String]
    #
    # @!attribute [rw] country
    #   The country in which a customer lives.
    #   @return [String]
    #
    # @!attribute [rw] postal_code
    #   The postal code of a customer address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/Address AWS API Documentation
    #
    class Address < Struct.new(
      :address_1,
      :address_2,
      :address_3,
      :address_4,
      :city,
      :county,
      :state,
      :province,
      :country,
      :postal_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that segments on Customer Profile's address object.
    #
    # @!attribute [rw] city
    #   The city belonging to the address.
    #   @return [Types::ProfileDimension]
    #
    # @!attribute [rw] country
    #   The country belonging to the address.
    #   @return [Types::ProfileDimension]
    #
    # @!attribute [rw] county
    #   The county belonging to the address.
    #   @return [Types::ProfileDimension]
    #
    # @!attribute [rw] postal_code
    #   The postal code belonging to the address.
    #   @return [Types::ProfileDimension]
    #
    # @!attribute [rw] province
    #   The province belonging to the address.
    #   @return [Types::ProfileDimension]
    #
    # @!attribute [rw] state
    #   The state belonging to the address.
    #   @return [Types::ProfileDimension]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/AddressDimension AWS API Documentation
    #
    class AddressDimension < Struct.new(
      :city,
      :country,
      :county,
      :postal_code,
      :province,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details for workflow of type `APPFLOW_INTEGRATION`.
    #
    # @!attribute [rw] flow_definition
    #   The configurations that control how Customer Profiles retrieves data
    #   from the source, Amazon AppFlow. Customer Profiles uses this
    #   information to create an AppFlow flow on behalf of customers.
    #   @return [Types::FlowDefinition]
    #
    # @!attribute [rw] batches
    #   Batches in workflow of type `APPFLOW_INTEGRATION`.
    #   @return [Array<Types::Batch>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/AppflowIntegration AWS API Documentation
    #
    class AppflowIntegration < Struct.new(
      :flow_definition,
      :batches)
      SENSITIVE = [:flow_definition]
      include Aws::Structure
    end

    # Structure holding all `APPFLOW_INTEGRATION` specific workflow
    # attributes.
    #
    # @!attribute [rw] source_connector_type
    #   Specifies the source connector type, such as Salesforce, ServiceNow,
    #   and Marketo. Indicates source of ingestion.
    #   @return [String]
    #
    # @!attribute [rw] connector_profile_name
    #   The name of the AppFlow connector profile used for ingestion.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. Customer Profiles
    #   assumes this role to create resources on your behalf as part of
    #   workflow execution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/AppflowIntegrationWorkflowAttributes AWS API Documentation
    #
    class AppflowIntegrationWorkflowAttributes < Struct.new(
      :source_connector_type,
      :connector_profile_name,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Workflow specific execution metrics for `APPFLOW_INTEGRATION`
    # workflow.
    #
    # @!attribute [rw] records_processed
    #   Number of records processed in `APPFLOW_INTEGRATION` workflow.
    #   @return [Integer]
    #
    # @!attribute [rw] steps_completed
    #   Total steps completed in `APPFLOW_INTEGRATION` workflow.
    #   @return [Integer]
    #
    # @!attribute [rw] total_steps
    #   Total steps in `APPFLOW_INTEGRATION` workflow.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/AppflowIntegrationWorkflowMetrics AWS API Documentation
    #
    class AppflowIntegrationWorkflowMetrics < Struct.new(
      :records_processed,
      :steps_completed,
      :total_steps)
      SENSITIVE = []
      include Aws::Structure
    end

    # Workflow step details for `APPFLOW_INTEGRATION` workflow.
    #
    # @!attribute [rw] flow_name
    #   Name of the flow created during execution of workflow step.
    #   `APPFLOW_INTEGRATION` workflow type creates an appflow flow during
    #   workflow step execution on the customers behalf.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Workflow step status for `APPFLOW_INTEGRATION` workflow.
    #   @return [String]
    #
    # @!attribute [rw] execution_message
    #   Message indicating execution of workflow step for
    #   `APPFLOW_INTEGRATION` workflow.
    #   @return [String]
    #
    # @!attribute [rw] records_processed
    #   Total number of records processed during execution of workflow step
    #   for `APPFLOW_INTEGRATION` workflow.
    #   @return [Integer]
    #
    # @!attribute [rw] batch_records_start_time
    #   Start datetime of records pulled in batch during execution of
    #   workflow step for `APPFLOW_INTEGRATION` workflow.
    #   @return [String]
    #
    # @!attribute [rw] batch_records_end_time
    #   End datetime of records pulled in batch during execution of workflow
    #   step for `APPFLOW_INTEGRATION` workflow.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Creation timestamp of workflow step for `APPFLOW_INTEGRATION`
    #   workflow.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   Last updated timestamp for workflow step for `APPFLOW_INTEGRATION`
    #   workflow.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/AppflowIntegrationWorkflowStep AWS API Documentation
    #
    class AppflowIntegrationWorkflowStep < Struct.new(
      :flow_name,
      :status,
      :execution_message,
      :records_processed,
      :batch_records_start_time,
      :batch_records_end_time,
      :created_at,
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Mathematical expression and a list of attribute items specified in
    # that expression.
    #
    # @!attribute [rw] attributes
    #   A list of attribute items specified in the mathematical expression.
    #   @return [Array<Types::AttributeItem>]
    #
    # @!attribute [rw] expression
    #   Mathematical expression that is performed on attribute items
    #   provided in the attribute list. Each element in the expression
    #   should follow the structure of
    #   \\"\{ObjectTypeName.AttributeName}\\".
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/AttributeDetails AWS API Documentation
    #
    class AttributeDetails < Struct.new(
      :attributes,
      :expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that segments on various Customer Profile's fields.
    #
    # @!attribute [rw] dimension_type
    #   The action to segment with.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values to apply the DimensionType on.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/AttributeDimension AWS API Documentation
    #
    class AttributeDimension < Struct.new(
      :dimension_type,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a single attribute item specified in the mathematical
    # expression.
    #
    # @!attribute [rw] name
    #   The name of an attribute defined in a profile object type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/AttributeItem AWS API Documentation
    #
    class AttributeItem < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information about the `AttributeTypesSelector `where the
    # rule-based identity resolution uses to match profiles. You can choose
    # how profiles are compared across attribute types and which attribute
    # to use for matching from each type. There are three attribute types
    # you can configure:
    #
    # * Email type
    #
    #   * You can choose from `Email`, `BusinessEmail`, and `PersonalEmail`
    #
    #   ^
    # * Phone number type
    #
    #   * You can choose from `Phone`, `HomePhone`, and `MobilePhone`
    #
    #   ^
    # * Address type
    #
    #   * You can choose from `Address`, `BusinessAddress`,
    #     `MaillingAddress`, and `ShippingAddress`
    #
    #   ^
    #
    # You can either choose `ONE_TO_ONE` or `MANY_TO_MANY` as the
    # `AttributeMatchingModel`. When choosing `MANY_TO_MANY`, the system can
    # match attribute across the sub-types of an attribute type. For
    # example, if the value of the `Email` field of Profile A and the value
    # of `BusinessEmail` field of Profile B matches, the two profiles are
    # matched on the Email type. When choosing `ONE_TO_ONE` the system can
    # only match if the sub-types are exact matches. For example, only when
    # the value of the `Email` field of Profile A and the value of the
    # `Email` field of Profile B matches, the two profiles are matched on
    # the Email type.
    #
    # @!attribute [rw] attribute_matching_model
    #   Configures the `AttributeMatchingModel`, you can either choose
    #   `ONE_TO_ONE` or `MANY_TO_MANY`.
    #   @return [String]
    #
    # @!attribute [rw] address
    #   The `Address` type. You can choose from `Address`,
    #   `BusinessAddress`, `MaillingAddress`, and `ShippingAddress`.
    #
    #   You only can use the Address type in the `MatchingRule`. For
    #   example, if you want to match profile based on
    #   `BusinessAddress.City` or `MaillingAddress.City`, you need to choose
    #   the `BusinessAddress` and the `MaillingAddress` to represent the
    #   Address type and specify the `Address.City` on the matching rule.
    #   @return [Array<String>]
    #
    # @!attribute [rw] phone_number
    #   The `PhoneNumber` type. You can choose from `PhoneNumber`,
    #   `HomePhoneNumber`, and `MobilePhoneNumber`.
    #
    #   You only can use the `PhoneNumber` type in the `MatchingRule`. For
    #   example, if you want to match a profile based on `Phone` or
    #   `HomePhone`, you need to choose the `Phone` and the `HomePhone` to
    #   represent the `PhoneNumber` type and only specify the `PhoneNumber`
    #   on the matching rule.
    #   @return [Array<String>]
    #
    # @!attribute [rw] email_address
    #   The `Email` type. You can choose from `EmailAddress`,
    #   `BusinessEmailAddress` and `PersonalEmailAddress`.
    #
    #   You only can use the `EmailAddress` type in the `MatchingRule`. For
    #   example, if you want to match profile based on
    #   `PersonalEmailAddress` or `BusinessEmailAddress`, you need to choose
    #   the `PersonalEmailAddress` and the `BusinessEmailAddress` to
    #   represent the `EmailAddress` type and only specify the
    #   `EmailAddress` on the matching rule.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/AttributeTypesSelector AWS API Documentation
    #
    class AttributeTypesSelector < Struct.new(
      :attribute_matching_model,
      :address,
      :phone_number,
      :email_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # List containing the values for the given attribute.
    #
    # @!attribute [rw] value
    #   An individual value belonging to the given attribute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/AttributeValueItem AWS API Documentation
    #
    class AttributeValueItem < Struct.new(
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration settings for how to perform the auto-merging of
    # profiles.
    #
    # @!attribute [rw] enabled
    #   The flag that enables the auto-merging of duplicate profiles.
    #   @return [Boolean]
    #
    # @!attribute [rw] consolidation
    #   A list of matching attributes that represent matching criteria. If
    #   two profiles meet at least one of the requirements in the matching
    #   attributes list, they will be merged.
    #   @return [Types::Consolidation]
    #
    # @!attribute [rw] conflict_resolution
    #   How the auto-merging process should resolve conflicts between
    #   different profiles. For example, if Profile A and Profile B have the
    #   same `FirstName` and `LastName` (and that is the matching criteria),
    #   which `EmailAddress` should be used?
    #   @return [Types::ConflictResolution]
    #
    # @!attribute [rw] min_allowed_confidence_score_for_merging
    #   A number between 0 and 1 that represents the minimum confidence
    #   score required for profiles within a matching group to be merged
    #   during the auto-merge process. A higher score means higher
    #   similarity required to merge profiles.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/AutoMerging AWS API Documentation
    #
    class AutoMerging < Struct.new(
      :enabled,
      :consolidation,
      :conflict_resolution,
      :min_allowed_confidence_score_for_merging)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input you provided is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Batch defines the boundaries for ingestion for each step in
    # `APPFLOW_INTEGRATION` workflow. `APPFLOW_INTEGRATION` workflow splits
    # ingestion based on these boundaries.
    #
    # @!attribute [rw] start_time
    #   Start time of batch to split ingestion.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   End time of batch to split ingestion.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/Batch AWS API Documentation
    #
    class Batch < Struct.new(
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Error object describing why a specific profile and calculated
    # attribute failed.
    #
    # @!attribute [rw] code
    #   Status code for why a specific profile and calculated attribute
    #   failed.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Message describing why a specific profile and calculated attribute
    #   failed.
    #   @return [String]
    #
    # @!attribute [rw] profile_id
    #   The profile id that failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/BatchGetCalculatedAttributeForProfileError AWS API Documentation
    #
    class BatchGetCalculatedAttributeForProfileError < Struct.new(
      :code,
      :message,
      :profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] calculated_attribute_name
    #   The unique name of the calculated attribute.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] profile_ids
    #   List of unique identifiers for customer profiles to retrieve.
    #   @return [Array<String>]
    #
    # @!attribute [rw] condition_overrides
    #   Overrides the condition block within the original calculated
    #   attribute definition.
    #   @return [Types::ConditionOverrides]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/BatchGetCalculatedAttributeForProfileRequest AWS API Documentation
    #
    class BatchGetCalculatedAttributeForProfileRequest < Struct.new(
      :calculated_attribute_name,
      :domain_name,
      :profile_ids,
      :condition_overrides)
      SENSITIVE = [:condition_overrides]
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   List of errors for calculated attribute values that could not be
    #   retrieved.
    #   @return [Array<Types::BatchGetCalculatedAttributeForProfileError>]
    #
    # @!attribute [rw] calculated_attribute_values
    #   List of calculated attribute values retrieved.
    #   @return [Array<Types::CalculatedAttributeValue>]
    #
    # @!attribute [rw] condition_overrides
    #   Overrides the condition block within the original calculated
    #   attribute definition.
    #   @return [Types::ConditionOverrides]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/BatchGetCalculatedAttributeForProfileResponse AWS API Documentation
    #
    class BatchGetCalculatedAttributeForProfileResponse < Struct.new(
      :errors,
      :calculated_attribute_values,
      :condition_overrides)
      SENSITIVE = [:condition_overrides]
      include Aws::Structure
    end

    # Error object describing why a specific profile failed.
    #
    # @!attribute [rw] code
    #   Status code for why a specific profile failed.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Message describing why a specific profile failed.
    #   @return [String]
    #
    # @!attribute [rw] profile_id
    #   The profile id that failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/BatchGetProfileError AWS API Documentation
    #
    class BatchGetProfileError < Struct.new(
      :code,
      :message,
      :profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] profile_ids
    #   List of unique identifiers for customer profiles to retrieve.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/BatchGetProfileRequest AWS API Documentation
    #
    class BatchGetProfileRequest < Struct.new(
      :domain_name,
      :profile_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   For information about the errors that are common to all actions, see
    #   [Common Errors][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/APIReference/CommonErrors.html
    #   @return [Array<Types::BatchGetProfileError>]
    #
    # @!attribute [rw] profiles
    #   Array of Profile Objects.
    #   @return [Array<Types::Profile>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/BatchGetProfileResponse AWS API Documentation
    #
    class BatchGetProfileResponse < Struct.new(
      :errors,
      :profiles)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that segments on Customer Profile's Calculated Attributes.
    #
    # @!attribute [rw] dimension_type
    #   The action to segment with.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values to apply the DimensionType with.
    #   @return [Array<String>]
    #
    # @!attribute [rw] condition_overrides
    #   Applies the given condition over the initial Calculated Attribute's
    #   definition.
    #   @return [Types::ConditionOverrides]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CalculatedAttributeDimension AWS API Documentation
    #
    class CalculatedAttributeDimension < Struct.new(
      :dimension_type,
      :values,
      :condition_overrides)
      SENSITIVE = [:condition_overrides]
      include Aws::Structure
    end

    # The object containing the values of a single calculated attribute
    # value.
    #
    # @!attribute [rw] calculated_attribute_name
    #   The unique name of the calculated attribute.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the calculated attribute.
    #   @return [String]
    #
    # @!attribute [rw] is_data_partial
    #   Indicates whether the calculated attribute's value is based on
    #   partial data. If the data is partial, it is set to true.
    #   @return [String]
    #
    # @!attribute [rw] profile_id
    #   The profile id belonging to this calculated attribute value.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the calculated attribute.
    #   @return [String]
    #
    # @!attribute [rw] last_object_timestamp
    #   The timestamp of the newest object included in the calculated
    #   attribute calculation.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CalculatedAttributeValue AWS API Documentation
    #
    class CalculatedAttributeValue < Struct.new(
      :calculated_attribute_name,
      :display_name,
      :is_data_partial,
      :profile_id,
      :value,
      :last_object_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an item in the catalog with its complete set of attributes
    # and metadata.
    #
    # @!attribute [rw] id
    #   The unique identifier for the catalog item.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The display name of the catalog item.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The product code or SKU of the catalog item.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type classification of the catalog item.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   The category to which the catalog item belongs.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A detailed description of the catalog item.
    #   @return [String]
    #
    # @!attribute [rw] additional_information
    #   Supplementary information about the catalog item beyond the basic
    #   description.
    #   @return [String]
    #
    # @!attribute [rw] image_link
    #   The URL link to the item's image.
    #   @return [String]
    #
    # @!attribute [rw] link
    #   The URL link to the item's detailed page or external resource.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the catalog item was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The timestamp when the catalog item was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] price
    #   The price of the catalog item.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   Additional attributes or properties associated with the catalog item
    #   stored as key-value pairs.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CatalogItem AWS API Documentation
    #
    class CatalogItem < Struct.new(
      :id,
      :name,
      :code,
      :type,
      :category,
      :description,
      :additional_information,
      :image_link,
      :link,
      :created_at,
      :updated_at,
      :price,
      :attributes)
      SENSITIVE = [:id, :name, :code, :type, :category, :description, :additional_information, :image_link, :link, :price, :attributes]
      include Aws::Structure
    end

    # An object to override the original condition block of a calculated
    # attribute.
    #
    # @!attribute [rw] range
    #   The relative time period over which data is included in the
    #   aggregation for this override.
    #   @return [Types::RangeOverride]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ConditionOverrides AWS API Documentation
    #
    class ConditionOverrides < Struct.new(
      :range)
      SENSITIVE = []
      include Aws::Structure
    end

    # The conditions including range, object count, and threshold for the
    # calculated attribute.
    #
    # @!attribute [rw] range
    #   The relative time period over which data is included in the
    #   aggregation.
    #   @return [Types::Range]
    #
    # @!attribute [rw] object_count
    #   The number of profile objects used for the calculated attribute.
    #   @return [Integer]
    #
    # @!attribute [rw] threshold
    #   The threshold for the calculated attribute.
    #   @return [Types::Threshold]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/Conditions AWS API Documentation
    #
    class Conditions < Struct.new(
      :range,
      :object_count,
      :threshold)
      SENSITIVE = []
      include Aws::Structure
    end

    # How the auto-merging process should resolve conflicts between
    # different profiles.
    #
    # @!attribute [rw] conflict_resolving_model
    #   How the auto-merging process should resolve conflicts between
    #   different profiles.
    #
    #   * `RECENCY`: Uses the data that was most recently updated.
    #
    #   * `SOURCE`: Uses the data from a specific source. For example, if a
    #     company has been aquired or two departments have merged, data from
    #     the specified source is used. If two duplicate profiles are from
    #     the same source, then `RECENCY` is used again.
    #   @return [String]
    #
    # @!attribute [rw] source_name
    #   The `ObjectType` name that is used to resolve profile merging
    #   conflicts when choosing `SOURCE` as the `ConflictResolvingModel`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ConflictResolution AWS API Documentation
    #
    class ConflictResolution < Struct.new(
      :conflict_resolving_model,
      :source_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation to be performed on the provided source fields.
    #
    # @!attribute [rw] marketo
    #   The operation to be performed on the provided Marketo source fields.
    #   @return [String]
    #
    # @!attribute [rw] s3
    #   The operation to be performed on the provided Amazon S3 source
    #   fields.
    #   @return [String]
    #
    # @!attribute [rw] salesforce
    #   The operation to be performed on the provided Salesforce source
    #   fields.
    #   @return [String]
    #
    # @!attribute [rw] service_now
    #   The operation to be performed on the provided ServiceNow source
    #   fields.
    #   @return [String]
    #
    # @!attribute [rw] zendesk
    #   The operation to be performed on the provided Zendesk source fields.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ConnectorOperator AWS API Documentation
    #
    class ConnectorOperator < Struct.new(
      :marketo,
      :s3,
      :salesforce,
      :service_now,
      :zendesk)
      SENSITIVE = []
      include Aws::Structure
    end

    # The matching criteria to be used during the auto-merging process.
    #
    # @!attribute [rw] matching_attributes_list
    #   A list of matching criteria.
    #   @return [Array<Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/Consolidation AWS API Documentation
    #
    class Consolidation < Struct.new(
      :matching_attributes_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that defines users contact preference.
    #
    # @!attribute [rw] key_name
    #   A searchable, unique identifier of a customer profile.
    #   @return [String]
    #
    # @!attribute [rw] key_value
    #   The key value used to look up profile based off the keyName.
    #   @return [String]
    #
    # @!attribute [rw] profile_id
    #   The unique identifier of a customer profile.
    #   @return [String]
    #
    # @!attribute [rw] contact_type
    #   The contact type used for engagement. For example: HomePhoneNumber,
    #   PersonalEmailAddress.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ContactPreference AWS API Documentation
    #
    class ContactPreference < Struct.new(
      :key_name,
      :key_value,
      :profile_id,
      :contact_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] calculated_attribute_name
    #   The unique name of the calculated attribute.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the calculated attribute.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the calculated attribute.
    #   @return [String]
    #
    # @!attribute [rw] attribute_details
    #   Mathematical expression and a list of attribute items specified in
    #   that expression.
    #   @return [Types::AttributeDetails]
    #
    # @!attribute [rw] conditions
    #   The conditions including range, object count, and threshold for the
    #   calculated attribute.
    #   @return [Types::Conditions]
    #
    # @!attribute [rw] filter
    #   Defines how to filter incoming objects to include part of the
    #   Calculated Attribute.
    #   @return [Types::Filter]
    #
    # @!attribute [rw] statistic
    #   The aggregation operation to perform for the calculated attribute.
    #   @return [String]
    #
    # @!attribute [rw] use_historical_data
    #   Whether historical data ingested before the Calculated Attribute was
    #   created should be included in calculations.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CreateCalculatedAttributeDefinitionRequest AWS API Documentation
    #
    class CreateCalculatedAttributeDefinitionRequest < Struct.new(
      :domain_name,
      :calculated_attribute_name,
      :display_name,
      :description,
      :attribute_details,
      :conditions,
      :filter,
      :statistic,
      :use_historical_data,
      :tags)
      SENSITIVE = [:description, :attribute_details, :conditions, :statistic]
      include Aws::Structure
    end

    # @!attribute [rw] calculated_attribute_name
    #   The unique name of the calculated attribute.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the calculated attribute.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the calculated attribute.
    #   @return [String]
    #
    # @!attribute [rw] attribute_details
    #   Mathematical expression and a list of attribute items specified in
    #   that expression.
    #   @return [Types::AttributeDetails]
    #
    # @!attribute [rw] conditions
    #   The conditions including range, object count, and threshold for the
    #   calculated attribute.
    #   @return [Types::Conditions]
    #
    # @!attribute [rw] filter
    #   The filter that was used as part of the request.
    #   @return [Types::Filter]
    #
    # @!attribute [rw] statistic
    #   The aggregation operation to perform for the calculated attribute.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the calculated attribute definition was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the calculated attribute definition was most
    #   recently edited.
    #   @return [Time]
    #
    # @!attribute [rw] use_historical_data
    #   Whether historical data ingested before the Calculated Attribute was
    #   created should be included in calculations.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   Status of the Calculated Attribute creation (whether all historical
    #   data has been indexed.)
    #   @return [String]
    #
    # @!attribute [rw] readiness
    #   Information indicating if the Calculated Attribute is ready for use
    #   by confirming all historical data has been processed and reflected.
    #   @return [Types::Readiness]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CreateCalculatedAttributeDefinitionResponse AWS API Documentation
    #
    class CreateCalculatedAttributeDefinitionResponse < Struct.new(
      :calculated_attribute_name,
      :display_name,
      :description,
      :attribute_details,
      :conditions,
      :filter,
      :statistic,
      :created_at,
      :last_updated_at,
      :use_historical_data,
      :status,
      :readiness,
      :tags)
      SENSITIVE = [:description, :attribute_details, :conditions, :statistic]
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] layout_definition_name
    #   The unique name of the layout.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the layout
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the layout
    #   @return [String]
    #
    # @!attribute [rw] is_default
    #   If set to true for a layout, this layout will be used by default to
    #   view data. If set to false, then the layout will not be used by
    #   default, but it can be used to view data by explicitly selecting it
    #   in the console.
    #   @return [Boolean]
    #
    # @!attribute [rw] layout_type
    #   The type of layout that can be used to view data under a Customer
    #   Profiles domain.
    #   @return [String]
    #
    # @!attribute [rw] layout
    #   A customizable layout that can be used to view data under a Customer
    #   Profiles domain.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CreateDomainLayoutRequest AWS API Documentation
    #
    class CreateDomainLayoutRequest < Struct.new(
      :domain_name,
      :layout_definition_name,
      :description,
      :display_name,
      :is_default,
      :layout_type,
      :layout,
      :tags)
      SENSITIVE = [:description, :layout]
      include Aws::Structure
    end

    # @!attribute [rw] layout_definition_name
    #   The unique name of the layout.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the layout
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the layout
    #   @return [String]
    #
    # @!attribute [rw] is_default
    #   If set to true for a layout, this layout will be used by default to
    #   view data. If set to false, then the layout will not be used by
    #   default, but it can be used to view data by explicitly selecting it
    #   in the console.
    #   @return [Boolean]
    #
    # @!attribute [rw] layout_type
    #   The type of layout that can be used to view data under customer
    #   profiles domain.
    #   @return [String]
    #
    # @!attribute [rw] layout
    #   A customizable layout that can be used to view data under Customer
    #   Profiles domain.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version used to create layout.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the layout was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the layout was most recently updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CreateDomainLayoutResponse AWS API Documentation
    #
    class CreateDomainLayoutResponse < Struct.new(
      :layout_definition_name,
      :description,
      :display_name,
      :is_default,
      :layout_type,
      :layout,
      :version,
      :tags,
      :created_at,
      :last_updated_at)
      SENSITIVE = [:description, :layout]
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] default_expiration_days
    #   The default number of days until the data within the domain expires.
    #   @return [Integer]
    #
    # @!attribute [rw] default_encryption_key
    #   The default encryption key, which is an AWS managed key, is used
    #   when no specific type of encryption key is specified. It is used to
    #   encrypt all data before it is placed in permanent or semi-permanent
    #   storage.
    #   @return [String]
    #
    # @!attribute [rw] dead_letter_queue_url
    #   The URL of the SQS dead letter queue, which is used for reporting
    #   errors associated with ingesting data from third party applications.
    #   You must set up a policy on the DeadLetterQueue for the SendMessage
    #   operation to enable Amazon Connect Customer Profiles to send
    #   messages to the DeadLetterQueue.
    #   @return [String]
    #
    # @!attribute [rw] matching
    #   The process of matching duplicate profiles. If `Matching` = `true`,
    #   Amazon Connect Customer Profiles starts a weekly batch process
    #   called Identity Resolution Job. If you do not specify a date and
    #   time for Identity Resolution Job to run, by default it runs every
    #   Saturday at 12AM UTC to detect duplicate profiles in your domains.
    #
    #   After the Identity Resolution Job completes, use the [GetMatches][1]
    #   API to return and review the results. Or, if you have configured
    #   `ExportingConfig` in the `MatchingRequest`, you can download the
    #   results from S3.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html
    #   @return [Types::MatchingRequest]
    #
    # @!attribute [rw] rule_based_matching
    #   The process of matching duplicate profiles using the Rule-Based
    #   matching. If `RuleBasedMatching` = true, Amazon Connect Customer
    #   Profiles will start to match and merge your profiles according to
    #   your configuration in the `RuleBasedMatchingRequest`. You can use
    #   the `ListRuleBasedMatches` and `GetSimilarProfiles` API to return
    #   and review the results. Also, if you have configured
    #   `ExportingConfig` in the `RuleBasedMatchingRequest`, you can
    #   download the results from S3.
    #   @return [Types::RuleBasedMatchingRequest]
    #
    # @!attribute [rw] data_store
    #   Set to true to enabled data store for this domain.
    #   @return [Types::DataStoreRequest]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CreateDomainRequest AWS API Documentation
    #
    class CreateDomainRequest < Struct.new(
      :domain_name,
      :default_expiration_days,
      :default_encryption_key,
      :dead_letter_queue_url,
      :matching,
      :rule_based_matching,
      :data_store,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] default_expiration_days
    #   The default number of days until the data within the domain expires.
    #   @return [Integer]
    #
    # @!attribute [rw] default_encryption_key
    #   The default encryption key, which is an AWS managed key, is used
    #   when no specific type of encryption key is specified. It is used to
    #   encrypt all data before it is placed in permanent or semi-permanent
    #   storage.
    #   @return [String]
    #
    # @!attribute [rw] dead_letter_queue_url
    #   The URL of the SQS dead letter queue, which is used for reporting
    #   errors associated with ingesting data from third party applications.
    #   @return [String]
    #
    # @!attribute [rw] matching
    #   The process of matching duplicate profiles. If `Matching` = `true`,
    #   Amazon Connect Customer Profiles starts a weekly batch process
    #   called Identity Resolution Job. If you do not specify a date and
    #   time for Identity Resolution Job to run, by default it runs every
    #   Saturday at 12AM UTC to detect duplicate profiles in your domains.
    #
    #   After the Identity Resolution Job completes, use the [GetMatches][1]
    #   API to return and review the results. Or, if you have configured
    #   `ExportingConfig` in the `MatchingRequest`, you can download the
    #   results from S3.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html
    #   @return [Types::MatchingResponse]
    #
    # @!attribute [rw] rule_based_matching
    #   The process of matching duplicate profiles using the Rule-Based
    #   matching. If `RuleBasedMatching` = true, Amazon Connect Customer
    #   Profiles will start to match and merge your profiles according to
    #   your configuration in the `RuleBasedMatchingRequest`. You can use
    #   the `ListRuleBasedMatches` and `GetSimilarProfiles` API to return
    #   and review the results. Also, if you have configured
    #   `ExportingConfig` in the `RuleBasedMatchingRequest`, you can
    #   download the results from S3.
    #   @return [Types::RuleBasedMatchingResponse]
    #
    # @!attribute [rw] data_store
    #   The data store.
    #   @return [Types::DataStoreResponse]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the domain was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the domain was most recently edited.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CreateDomainResponse AWS API Documentation
    #
    class CreateDomainResponse < Struct.new(
      :domain_name,
      :default_expiration_days,
      :default_encryption_key,
      :dead_letter_queue_url,
      :matching,
      :rule_based_matching,
      :data_store,
      :created_at,
      :last_updated_at,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] uri
    #   The StreamARN of the destination to deliver profile events to. For
    #   example, arn:aws:kinesis:region:account-id:stream/stream-name
    #   @return [String]
    #
    # @!attribute [rw] event_stream_name
    #   The name of the event stream.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CreateEventStreamRequest AWS API Documentation
    #
    class CreateEventStreamRequest < Struct.new(
      :domain_name,
      :uri,
      :event_stream_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_stream_arn
    #   A unique identifier for the event stream.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CreateEventStreamResponse AWS API Documentation
    #
    class CreateEventStreamResponse < Struct.new(
      :event_stream_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] event_trigger_name
    #   The unique name of the event trigger.
    #   @return [String]
    #
    # @!attribute [rw] object_type_name
    #   The unique name of the object type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the event trigger.
    #   @return [String]
    #
    # @!attribute [rw] event_trigger_conditions
    #   A list of conditions that determine when an event should trigger the
    #   destination.
    #   @return [Array<Types::EventTriggerCondition>]
    #
    # @!attribute [rw] segment_filter
    #   The destination is triggered only for profiles that meet the
    #   criteria of a segment definition.
    #   @return [String]
    #
    # @!attribute [rw] event_trigger_limits
    #   Defines limits controlling whether an event triggers the
    #   destination, based on ingestion latency and the number of
    #   invocations per profile over specific time periods.
    #   @return [Types::EventTriggerLimits]
    #
    # @!attribute [rw] tags
    #   An array of key-value pairs to apply to this resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CreateEventTriggerRequest AWS API Documentation
    #
    class CreateEventTriggerRequest < Struct.new(
      :domain_name,
      :event_trigger_name,
      :object_type_name,
      :description,
      :event_trigger_conditions,
      :segment_filter,
      :event_trigger_limits,
      :tags)
      SENSITIVE = [:description, :event_trigger_conditions]
      include Aws::Structure
    end

    # @!attribute [rw] event_trigger_name
    #   The unique name of the event trigger.
    #   @return [String]
    #
    # @!attribute [rw] object_type_name
    #   The unique name of the object type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the event trigger.
    #   @return [String]
    #
    # @!attribute [rw] event_trigger_conditions
    #   A list of conditions that determine when an event should trigger the
    #   destination.
    #   @return [Array<Types::EventTriggerCondition>]
    #
    # @!attribute [rw] segment_filter
    #   The destination is triggered only for profiles that meet the
    #   criteria of a segment definition.
    #   @return [String]
    #
    # @!attribute [rw] event_trigger_limits
    #   Defines limits controlling whether an event triggers the
    #   destination, based on ingestion latency and the number of
    #   invocations per profile over specific time periods.
    #   @return [Types::EventTriggerLimits]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the event trigger was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the event trigger was most recently updated.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   An array of key-value pairs to apply to this resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CreateEventTriggerResponse AWS API Documentation
    #
    class CreateEventTriggerResponse < Struct.new(
      :event_trigger_name,
      :object_type_name,
      :description,
      :event_trigger_conditions,
      :segment_filter,
      :event_trigger_limits,
      :created_at,
      :last_updated_at,
      :tags)
      SENSITIVE = [:description, :event_trigger_conditions]
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] workflow_type
    #   The type of workflow. The only supported value is
    #   APPFLOW\_INTEGRATION.
    #   @return [String]
    #
    # @!attribute [rw] integration_config
    #   Configuration data for integration workflow.
    #   @return [Types::IntegrationConfig]
    #
    # @!attribute [rw] object_type_name
    #   The name of the profile object type.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. Customer Profiles
    #   assumes this role to create resources on your behalf as part of
    #   workflow execution.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CreateIntegrationWorkflowRequest AWS API Documentation
    #
    class CreateIntegrationWorkflowRequest < Struct.new(
      :domain_name,
      :workflow_type,
      :integration_config,
      :object_type_name,
      :role_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_id
    #   Unique identifier for the workflow.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message indicating create request was received.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CreateIntegrationWorkflowResponse AWS API Documentation
    #
    class CreateIntegrationWorkflowResponse < Struct.new(
      :workflow_id,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] account_number
    #   An account number that you have assigned to the customer.
    #   @return [String]
    #
    # @!attribute [rw] additional_information
    #   Any additional information relevant to the customer’s profile.
    #   @return [String]
    #
    # @!attribute [rw] party_type
    #   The type of profile used to describe the customer.
    #   @return [String]
    #
    # @!attribute [rw] business_name
    #   The name of the customer’s business.
    #   @return [String]
    #
    # @!attribute [rw] first_name
    #   The customer’s first name.
    #   @return [String]
    #
    # @!attribute [rw] middle_name
    #   The customer’s middle name.
    #   @return [String]
    #
    # @!attribute [rw] last_name
    #   The customer’s last name.
    #   @return [String]
    #
    # @!attribute [rw] birth_date
    #   The customer’s birth date.
    #   @return [String]
    #
    # @!attribute [rw] gender
    #   The gender with which the customer identifies.
    #   @return [String]
    #
    # @!attribute [rw] phone_number
    #   The customer’s phone number, which has not been specified as a
    #   mobile, home, or business number.
    #   @return [String]
    #
    # @!attribute [rw] mobile_phone_number
    #   The customer’s mobile phone number.
    #   @return [String]
    #
    # @!attribute [rw] home_phone_number
    #   The customer’s home phone number.
    #   @return [String]
    #
    # @!attribute [rw] business_phone_number
    #   The customer’s business phone number.
    #   @return [String]
    #
    # @!attribute [rw] email_address
    #   The customer’s email address, which has not been specified as a
    #   personal or business address.
    #   @return [String]
    #
    # @!attribute [rw] personal_email_address
    #   The customer’s personal email address.
    #   @return [String]
    #
    # @!attribute [rw] business_email_address
    #   The customer’s business email address.
    #   @return [String]
    #
    # @!attribute [rw] address
    #   A generic address associated with the customer that is not mailing,
    #   shipping, or billing.
    #   @return [Types::Address]
    #
    # @!attribute [rw] shipping_address
    #   The customer’s shipping address.
    #   @return [Types::Address]
    #
    # @!attribute [rw] mailing_address
    #   The customer’s mailing address.
    #   @return [Types::Address]
    #
    # @!attribute [rw] billing_address
    #   The customer’s billing address.
    #   @return [Types::Address]
    #
    # @!attribute [rw] attributes
    #   A key value pair of attributes of a customer profile.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] party_type_string
    #   An alternative to `PartyType` which accepts any string as input.
    #   @return [String]
    #
    # @!attribute [rw] gender_string
    #   An alternative to `Gender` which accepts any string as input.
    #   @return [String]
    #
    # @!attribute [rw] profile_type
    #   The type of the profile.
    #   @return [String]
    #
    # @!attribute [rw] engagement_preferences
    #   Object that defines the preferred methods of engagement, per
    #   channel.
    #   @return [Types::EngagementPreferences]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CreateProfileRequest AWS API Documentation
    #
    class CreateProfileRequest < Struct.new(
      :domain_name,
      :account_number,
      :additional_information,
      :party_type,
      :business_name,
      :first_name,
      :middle_name,
      :last_name,
      :birth_date,
      :gender,
      :phone_number,
      :mobile_phone_number,
      :home_phone_number,
      :business_phone_number,
      :email_address,
      :personal_email_address,
      :business_email_address,
      :address,
      :shipping_address,
      :mailing_address,
      :billing_address,
      :attributes,
      :party_type_string,
      :gender_string,
      :profile_type,
      :engagement_preferences)
      SENSITIVE = [:account_number, :additional_information, :party_type, :business_name, :first_name, :middle_name, :last_name, :birth_date, :gender, :phone_number, :mobile_phone_number, :home_phone_number, :business_phone_number, :email_address, :personal_email_address, :business_email_address, :address, :shipping_address, :mailing_address, :billing_address, :attributes, :party_type_string, :gender_string, :profile_type, :engagement_preferences]
      include Aws::Structure
    end

    # @!attribute [rw] profile_id
    #   The unique identifier of a customer profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CreateProfileResponse AWS API Documentation
    #
    class CreateProfileResponse < Struct.new(
      :profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] recommender_name
    #   The name of the recommender.
    #   @return [String]
    #
    # @!attribute [rw] recommender_recipe_name
    #   The name of the recommeder recipe.
    #   @return [String]
    #
    # @!attribute [rw] recommender_config
    #   The recommender configuration.
    #   @return [Types::RecommenderConfig]
    #
    # @!attribute [rw] description
    #   The description of the domain object type.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CreateRecommenderRequest AWS API Documentation
    #
    class CreateRecommenderRequest < Struct.new(
      :domain_name,
      :recommender_name,
      :recommender_recipe_name,
      :recommender_config,
      :description,
      :tags)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] recommender_arn
    #   The ARN of the recommender
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CreateRecommenderResponse AWS API Documentation
    #
    class CreateRecommenderResponse < Struct.new(
      :recommender_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] segment_definition_name
    #   The unique name of the segment definition.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the segment definition.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the segment definition.
    #   @return [String]
    #
    # @!attribute [rw] segment_groups
    #   Specifies the base segments and dimensions for a segment definition
    #   along with their respective relationship.
    #   @return [Types::SegmentGroup]
    #
    # @!attribute [rw] segment_sql_query
    #   The segment SQL query.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CreateSegmentDefinitionRequest AWS API Documentation
    #
    class CreateSegmentDefinitionRequest < Struct.new(
      :domain_name,
      :segment_definition_name,
      :display_name,
      :description,
      :segment_groups,
      :segment_sql_query,
      :tags)
      SENSITIVE = [:description, :segment_groups, :segment_sql_query]
      include Aws::Structure
    end

    # @!attribute [rw] segment_definition_name
    #   The name of the segment definition.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the segment definition.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the segment definition.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the segment definition was created.
    #   @return [Time]
    #
    # @!attribute [rw] segment_definition_arn
    #   The arn of the segment definition.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CreateSegmentDefinitionResponse AWS API Documentation
    #
    class CreateSegmentDefinitionResponse < Struct.new(
      :segment_definition_name,
      :display_name,
      :description,
      :created_at,
      :segment_definition_arn,
      :tags)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] segment_query
    #   The segment query for calculating a segment estimate.
    #   @return [Types::SegmentGroupStructure]
    #
    # @!attribute [rw] segment_sql_query
    #   The segment SQL query.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CreateSegmentEstimateRequest AWS API Documentation
    #
    class CreateSegmentEstimateRequest < Struct.new(
      :domain_name,
      :segment_query,
      :segment_sql_query)
      SENSITIVE = [:segment_sql_query]
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] estimate_id
    #   A unique identifier for the resource. The value can be passed to
    #   `GetSegmentEstimate` to retrieve the result of segment estimate
    #   status.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   The status code for the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CreateSegmentEstimateResponse AWS API Documentation
    #
    class CreateSegmentEstimateResponse < Struct.new(
      :domain_name,
      :estimate_id,
      :status_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] segment_definition_name
    #   The name of the segment definition used in this snapshot request.
    #   @return [String]
    #
    # @!attribute [rw] data_format
    #   The format in which the segment will be exported.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key
    #   The Amazon Resource Name (ARN) of the KMS key used to encrypt the
    #   exported segment.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that allows Customer
    #   Profiles service principal to assume the role for conducting KMS and
    #   S3 operations.
    #   @return [String]
    #
    # @!attribute [rw] destination_uri
    #   The destination to which the segment will be exported. This field
    #   must be provided if the request is not submitted from the Amazon
    #   Connect Admin Website.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CreateSegmentSnapshotRequest AWS API Documentation
    #
    class CreateSegmentSnapshotRequest < Struct.new(
      :domain_name,
      :segment_definition_name,
      :data_format,
      :encryption_key,
      :role_arn,
      :destination_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] snapshot_id
    #   The unique identifier of the segment snapshot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CreateSegmentSnapshotResponse AWS API Documentation
    #
    class CreateSegmentSnapshotResponse < Struct.new(
      :snapshot_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain. Domain should be exists for the
    #   upload job to be created.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The unique name of the upload job. Could be a file name to identify
    #   the upload job.
    #   @return [String]
    #
    # @!attribute [rw] fields
    #   The mapping between CSV Columns and Profile Object attributes. A map
    #   of the name and ObjectType field.
    #   @return [Hash<String,Types::ObjectTypeField>]
    #
    # @!attribute [rw] unique_key
    #   The unique key columns for de-duping the profiles used to map data
    #   to the profile.
    #   @return [String]
    #
    # @!attribute [rw] data_expiry
    #   The expiry duration for the profiles ingested with the job. If not
    #   provided, the system default of 2 weeks is used.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CreateUploadJobRequest AWS API Documentation
    #
    class CreateUploadJobRequest < Struct.new(
      :domain_name,
      :display_name,
      :fields,
      :unique_key,
      :data_expiry)
      SENSITIVE = [:fields]
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The unique identifier for the created upload job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/CreateUploadJobResponse AWS API Documentation
    #
    class CreateUploadJobResponse < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data store request.
    #
    # @!attribute [rw] enabled
    #   Enabled: Set to true to enabled data store for this domain.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DataStoreRequest AWS API Documentation
    #
    class DataStoreRequest < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data store response.
    #
    # @!attribute [rw] enabled
    #   True if data store is enabled for this domain
    #   @return [Boolean]
    #
    # @!attribute [rw] readiness
    #   Information indicating if the Calculated Attribute is ready for use
    #   by confirming all historical data has been processed and reflected.
    #   @return [Types::Readiness]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DataStoreResponse AWS API Documentation
    #
    class DataStoreResponse < Struct.new(
      :enabled,
      :readiness)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that segments on various Customer Profile's date fields.
    #
    # @!attribute [rw] dimension_type
    #   The action to segment with.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values to apply the DimensionType on.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DateDimension AWS API Documentation
    #
    class DateDimension < Struct.new(
      :dimension_type,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] calculated_attribute_name
    #   The unique name of the calculated attribute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteCalculatedAttributeDefinitionRequest AWS API Documentation
    #
    class DeleteCalculatedAttributeDefinitionRequest < Struct.new(
      :domain_name,
      :calculated_attribute_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteCalculatedAttributeDefinitionResponse AWS API Documentation
    #
    class DeleteCalculatedAttributeDefinitionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] layout_definition_name
    #   The unique name of the layout.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteDomainLayoutRequest AWS API Documentation
    #
    class DeleteDomainLayoutRequest < Struct.new(
      :domain_name,
      :layout_definition_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   A message that indicates the delete request is done.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteDomainLayoutResponse AWS API Documentation
    #
    class DeleteDomainLayoutResponse < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] object_type_name
    #   The unique name of the domain object type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteDomainObjectTypeRequest AWS API Documentation
    #
    class DeleteDomainObjectTypeRequest < Struct.new(
      :domain_name,
      :object_type_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteDomainObjectTypeResponse AWS API Documentation
    #
    class DeleteDomainObjectTypeResponse < Aws::EmptyStructure; end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteDomainRequest AWS API Documentation
    #
    class DeleteDomainRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   A message that indicates the delete request is done.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteDomainResponse AWS API Documentation
    #
    class DeleteDomainResponse < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] event_stream_name
    #   The name of the event stream
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteEventStreamRequest AWS API Documentation
    #
    class DeleteEventStreamRequest < Struct.new(
      :domain_name,
      :event_stream_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteEventStreamResponse AWS API Documentation
    #
    class DeleteEventStreamResponse < Aws::EmptyStructure; end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] event_trigger_name
    #   The unique name of the event trigger.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteEventTriggerRequest AWS API Documentation
    #
    class DeleteEventTriggerRequest < Struct.new(
      :domain_name,
      :event_trigger_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   A message that indicates the delete request is done.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteEventTriggerResponse AWS API Documentation
    #
    class DeleteEventTriggerResponse < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] uri
    #   The URI of the S3 bucket or any other type of data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteIntegrationRequest AWS API Documentation
    #
    class DeleteIntegrationRequest < Struct.new(
      :domain_name,
      :uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   A message that indicates the delete request is done.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteIntegrationResponse AWS API Documentation
    #
    class DeleteIntegrationResponse < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_id
    #   The unique identifier of a customer profile.
    #   @return [String]
    #
    # @!attribute [rw] key_name
    #   A searchable identifier of a customer profile.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   A list of key values.
    #   @return [Array<String>]
    #
    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteProfileKeyRequest AWS API Documentation
    #
    class DeleteProfileKeyRequest < Struct.new(
      :profile_id,
      :key_name,
      :values,
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   A message that indicates the delete request is done.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteProfileKeyResponse AWS API Documentation
    #
    class DeleteProfileKeyResponse < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_id
    #   The unique identifier of a customer profile.
    #   @return [String]
    #
    # @!attribute [rw] profile_object_unique_key
    #   The unique identifier of the profile object generated by the
    #   service.
    #   @return [String]
    #
    # @!attribute [rw] object_type_name
    #   The name of the profile object type.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteProfileObjectRequest AWS API Documentation
    #
    class DeleteProfileObjectRequest < Struct.new(
      :profile_id,
      :profile_object_unique_key,
      :object_type_name,
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   A message that indicates the delete request is done.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteProfileObjectResponse AWS API Documentation
    #
    class DeleteProfileObjectResponse < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] object_type_name
    #   The name of the profile object type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteProfileObjectTypeRequest AWS API Documentation
    #
    class DeleteProfileObjectTypeRequest < Struct.new(
      :domain_name,
      :object_type_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   A message that indicates the delete request is done.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteProfileObjectTypeResponse AWS API Documentation
    #
    class DeleteProfileObjectTypeResponse < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_id
    #   The unique identifier of a customer profile.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteProfileRequest AWS API Documentation
    #
    class DeleteProfileRequest < Struct.new(
      :profile_id,
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   A message that indicates the delete request is done.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteProfileResponse AWS API Documentation
    #
    class DeleteProfileResponse < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] recommender_name
    #   The recommender name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteRecommenderRequest AWS API Documentation
    #
    class DeleteRecommenderRequest < Struct.new(
      :domain_name,
      :recommender_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteRecommenderResponse AWS API Documentation
    #
    class DeleteRecommenderResponse < Aws::EmptyStructure; end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] segment_definition_name
    #   The unique name of the segment definition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteSegmentDefinitionRequest AWS API Documentation
    #
    class DeleteSegmentDefinitionRequest < Struct.new(
      :domain_name,
      :segment_definition_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   A message that indicates the delete request is done.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteSegmentDefinitionResponse AWS API Documentation
    #
    class DeleteSegmentDefinitionResponse < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] workflow_id
    #   Unique identifier for the workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteWorkflowRequest AWS API Documentation
    #
    class DeleteWorkflowRequest < Struct.new(
      :domain_name,
      :workflow_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DeleteWorkflowResponse AWS API Documentation
    #
    class DeleteWorkflowResponse < Aws::EmptyStructure; end

    # Summary information about the Kinesis data stream
    #
    # @!attribute [rw] uri
    #   The StreamARN of the destination to deliver profile events to. For
    #   example, arn:aws:kinesis:region:account-id:stream/stream-name.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of enabling the Kinesis stream as a destination for
    #   export.
    #   @return [String]
    #
    # @!attribute [rw] unhealthy_since
    #   The timestamp when the status last changed to `UNHEALHY`.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DestinationSummary AWS API Documentation
    #
    class DestinationSummary < Struct.new(
      :uri,
      :status,
      :unhealthy_since)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] objects
    #   A string that is serialized from a JSON object.
    #   @return [Array<String>]
    #
    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DetectProfileObjectTypeRequest AWS API Documentation
    #
    class DetectProfileObjectTypeRequest < Struct.new(
      :objects,
      :domain_name)
      SENSITIVE = [:objects]
      include Aws::Structure
    end

    # @!attribute [rw] detected_profile_object_types
    #   Detected `ProfileObjectType` mappings from given objects. A maximum
    #   of one mapping is supported.
    #   @return [Array<Types::DetectedProfileObjectType>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DetectProfileObjectTypeResponse AWS API Documentation
    #
    class DetectProfileObjectTypeResponse < Struct.new(
      :detected_profile_object_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains `ProfileObjectType` mapping information from the model.
    #
    # @!attribute [rw] source_last_updated_timestamp_format
    #   The format of `sourceLastUpdatedTimestamp` that was detected in
    #   fields.
    #   @return [String]
    #
    # @!attribute [rw] fields
    #   A map of the name and the `ObjectType` field.
    #   @return [Hash<String,Types::ObjectTypeField>]
    #
    # @!attribute [rw] keys
    #   A list of unique keys that can be used to map data to a profile.
    #   @return [Hash<String,Array<Types::ObjectTypeKey>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DetectedProfileObjectType AWS API Documentation
    #
    class DetectedProfileObjectType < Struct.new(
      :source_last_updated_timestamp_format,
      :fields,
      :keys)
      SENSITIVE = [:fields, :keys]
      include Aws::Structure
    end

    # Object that holds what profile and calculated attributes to segment
    # on.
    #
    # @note Dimension is a union - when making an API calls you must set exactly one of the members.
    #
    # @note Dimension is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Dimension corresponding to the set member.
    #
    # @!attribute [rw] profile_attributes
    #   Object that holds the profile attributes to segment on.
    #   @return [Types::ProfileAttributes]
    #
    # @!attribute [rw] calculated_attributes
    #   Object that holds the calculated attributes to segment on.
    #   @return [Hash<String,Types::CalculatedAttributeDimension>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/Dimension AWS API Documentation
    #
    class Dimension < Struct.new(
      :profile_attributes,
      :calculated_attributes,
      :unknown)
      SENSITIVE = [:profile_attributes]
      include Aws::Structure
      include Aws::Structure::Union

      class ProfileAttributes < Dimension; end
      class CalculatedAttributes < Dimension; end
      class Unknown < Dimension; end
    end

    # The standard domain object type.
    #
    # @!attribute [rw] source
    #   The expression that defines how to extract the field value from the
    #   source object.&gt;
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The expression that defines where the field value should be placed
    #   in the standard domain object.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The content type of the field.
    #   @return [String]
    #
    # @!attribute [rw] feature_type
    #   The semantic meaning of the field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DomainObjectTypeField AWS API Documentation
    #
    class DomainObjectTypeField < Struct.new(
      :source,
      :target,
      :content_type,
      :feature_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an item in the list of domain object types, containing
    # basic information about a specific object type within a domain.
    #
    # @!attribute [rw] object_type_name
    #   The name that identifies the object type within the domain.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description explaining the purpose and characteristics of this
    #   object type.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the domain object type was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the domain object type was most recently
    #   edited.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DomainObjectTypesListItem AWS API Documentation
    #
    class DomainObjectTypesListItem < Struct.new(
      :object_type_name,
      :description,
      :created_at,
      :last_updated_at,
      :tags)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # Usage-specific statistics about the domain.
    #
    # @!attribute [rw] profile_count
    #   The total number of profiles currently in the domain.
    #   @return [Integer]
    #
    # @!attribute [rw] metering_profile_count
    #   The number of profiles that you are currently paying for in the
    #   domain. If you have more than 100 objects associated with a single
    #   profile, that profile counts as two profiles. If you have more than
    #   200 objects, that profile counts as three, and so on.
    #   @return [Integer]
    #
    # @!attribute [rw] object_count
    #   The total number of objects in domain.
    #   @return [Integer]
    #
    # @!attribute [rw] total_size
    #   The total size, in bytes, of all objects in the domain.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/DomainStats AWS API Documentation
    #
    class DomainStats < Struct.new(
      :profile_count,
      :metering_profile_count,
      :object_count,
      :total_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that defines users preferred methods of engagement.
    #
    # @!attribute [rw] phone
    #   A list of phone-related contact preferences
    #   @return [Array<Types::ContactPreference>]
    #
    # @!attribute [rw] email
    #   A list of email-related contact preferences
    #   @return [Array<Types::ContactPreference>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/EngagementPreferences AWS API Documentation
    #
    class EngagementPreferences < Struct.new(
      :phone,
      :email)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration parameters for events in the personalization system.
    #
    # @!attribute [rw] event_type
    #   The type of event being tracked (e.g., 'click', 'purchase',
    #   'view').
    #   @return [String]
    #
    # @!attribute [rw] event_value_threshold
    #   The minimum value threshold that an event must meet to be considered
    #   valid.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/EventParameters AWS API Documentation
    #
    class EventParameters < Struct.new(
      :event_type,
      :event_value_threshold)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the destination being used for the EventStream.
    #
    # @!attribute [rw] uri
    #   The StreamARN of the destination to deliver profile events to. For
    #   example, arn:aws:kinesis:region:account-id:stream/stream-name.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of enabling the Kinesis stream as a destination for
    #   export.
    #   @return [String]
    #
    # @!attribute [rw] unhealthy_since
    #   The timestamp when the status last changed to `UNHEALHY`.
    #   @return [Time]
    #
    # @!attribute [rw] message
    #   The human-readable string that corresponds to the error or success
    #   while enabling the streaming destination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/EventStreamDestinationDetails AWS API Documentation
    #
    class EventStreamDestinationDetails < Struct.new(
      :uri,
      :status,
      :unhealthy_since,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An instance of EventStream in a list of EventStreams.
    #
    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] event_stream_name
    #   The name of the event stream.
    #   @return [String]
    #
    # @!attribute [rw] event_stream_arn
    #   A unique identifier for the event stream.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The operational state of destination stream for export.
    #   @return [String]
    #
    # @!attribute [rw] stopped_since
    #   The timestamp when the `State` changed to `STOPPED`.
    #   @return [Time]
    #
    # @!attribute [rw] destination_summary
    #   Summary information about the Kinesis data stream.
    #   @return [Types::DestinationSummary]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/EventStreamSummary AWS API Documentation
    #
    class EventStreamSummary < Struct.new(
      :domain_name,
      :event_stream_name,
      :event_stream_arn,
      :state,
      :stopped_since,
      :destination_summary,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the circumstances under which the event should trigger the
    # destination.
    #
    # @!attribute [rw] event_trigger_dimensions
    #   A list of dimensions to be evaluated for the event.
    #   @return [Array<Types::EventTriggerDimension>]
    #
    # @!attribute [rw] logical_operator
    #   The operator used to combine multiple dimensions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/EventTriggerCondition AWS API Documentation
    #
    class EventTriggerCondition < Struct.new(
      :event_trigger_dimensions,
      :logical_operator)
      SENSITIVE = []
      include Aws::Structure
    end

    # A specific event dimension to be assessed.
    #
    # @!attribute [rw] object_attributes
    #   A list of object attributes to be evaluated.
    #   @return [Array<Types::ObjectAttribute>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/EventTriggerDimension AWS API Documentation
    #
    class EventTriggerDimension < Struct.new(
      :object_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines limits controlling whether an event triggers the destination,
    # based on ingestion latency and the number of invocations per profile
    # over specific time periods.
    #
    # @!attribute [rw] event_expiration
    #   In milliseconds. Specifies that an event will only trigger the
    #   destination if it is processed within a certain latency period.
    #   @return [Integer]
    #
    # @!attribute [rw] periods
    #   A list of time periods during which the limits apply.
    #   @return [Array<Types::Period>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/EventTriggerLimits AWS API Documentation
    #
    class EventTriggerLimits < Struct.new(
      :event_expiration,
      :periods)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of the event trigger.
    #
    # @!attribute [rw] object_type_name
    #   The unique name of the object type.
    #   @return [String]
    #
    # @!attribute [rw] event_trigger_name
    #   The unique name of the event trigger.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the event trigger.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the event trigger was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the event trigger was most recently updated.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   An array of key-value pairs to apply to this resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/EventTriggerSummaryItem AWS API Documentation
    #
    class EventTriggerSummaryItem < Struct.new(
      :object_type_name,
      :event_trigger_name,
      :description,
      :created_at,
      :last_updated_at,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration settings that define how events are processed and
    # tracked.
    #
    # @!attribute [rw] event_parameters_list
    #   A list of event parameters configurations that specify how different
    #   event types should be handled.
    #   @return [Array<Types::EventParameters>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/EventsConfig AWS API Documentation
    #
    class EventsConfig < Struct.new(
      :event_parameters_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information about the S3 bucket where Identity
    # Resolution Jobs writes result files.
    #
    # <note markdown="1"> You need to give Customer Profiles service principal write permission
    # to your S3 bucket. Otherwise, you'll get an exception in the API
    # response. For an example policy, see [Amazon Connect Customer Profiles
    # cross-service confused deputy prevention][1].
    #
    #  </note>
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/connect/latest/adminguide/cross-service-confused-deputy-prevention.html#customer-profiles-cross-service
    #
    # @!attribute [rw] s3_exporting
    #   The S3 location where Identity Resolution Jobs write result files.
    #   @return [Types::S3ExportingConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ExportingConfig AWS API Documentation
    #
    class ExportingConfig < Struct.new(
      :s3_exporting)
      SENSITIVE = []
      include Aws::Structure
    end

    # The S3 location where Identity Resolution Jobs write result files.
    #
    # @!attribute [rw] s3_exporting
    #   Information about the S3 location where Identity Resolution Jobs
    #   write result files.
    #   @return [Types::S3ExportingLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ExportingLocation AWS API Documentation
    #
    class ExportingLocation < Struct.new(
      :s3_exporting)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that segments on various Customer profile's fields that are
    # larger than normal.
    #
    # @!attribute [rw] dimension_type
    #   The action to segment with.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values to apply the DimensionType on.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ExtraLengthValueProfileDimension AWS API Documentation
    #
    class ExtraLengthValueProfileDimension < Struct.new(
      :dimension_type,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # A duplicate customer profile that is to be merged into a main profile.
    #
    # @!attribute [rw] account_number
    #   A unique identifier for the account number field to be merged.
    #   @return [String]
    #
    # @!attribute [rw] additional_information
    #   A unique identifier for the additional information field to be
    #   merged.
    #   @return [String]
    #
    # @!attribute [rw] party_type
    #   A unique identifier for the party type field to be merged.
    #   @return [String]
    #
    # @!attribute [rw] business_name
    #   A unique identifier for the business name field to be merged.
    #   @return [String]
    #
    # @!attribute [rw] first_name
    #   A unique identifier for the first name field to be merged.
    #   @return [String]
    #
    # @!attribute [rw] middle_name
    #   A unique identifier for the middle name field to be merged.
    #   @return [String]
    #
    # @!attribute [rw] last_name
    #   A unique identifier for the last name field to be merged.
    #   @return [String]
    #
    # @!attribute [rw] birth_date
    #   A unique identifier for the birthdate field to be merged.
    #   @return [String]
    #
    # @!attribute [rw] gender
    #   A unique identifier for the gender field to be merged.
    #   @return [String]
    #
    # @!attribute [rw] phone_number
    #   A unique identifier for the phone number field to be merged.
    #   @return [String]
    #
    # @!attribute [rw] mobile_phone_number
    #   A unique identifier for the mobile phone number field to be merged.
    #   @return [String]
    #
    # @!attribute [rw] home_phone_number
    #   A unique identifier for the home phone number field to be merged.
    #   @return [String]
    #
    # @!attribute [rw] business_phone_number
    #   A unique identifier for the business phone number field to be
    #   merged.
    #   @return [String]
    #
    # @!attribute [rw] email_address
    #   A unique identifier for the email address field to be merged.
    #   @return [String]
    #
    # @!attribute [rw] personal_email_address
    #   A unique identifier for the personal email address field to be
    #   merged.
    #   @return [String]
    #
    # @!attribute [rw] business_email_address
    #   A unique identifier for the party type field to be merged.
    #   @return [String]
    #
    # @!attribute [rw] address
    #   A unique identifier for the party type field to be merged.
    #   @return [String]
    #
    # @!attribute [rw] shipping_address
    #   A unique identifier for the shipping address field to be merged.
    #   @return [String]
    #
    # @!attribute [rw] mailing_address
    #   A unique identifier for the mailing address field to be merged.
    #   @return [String]
    #
    # @!attribute [rw] billing_address
    #   A unique identifier for the billing type field to be merged.
    #   @return [String]
    #
    # @!attribute [rw] attributes
    #   A unique identifier for the attributes field to be merged.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] profile_type
    #   A unique identifier for the profile type field to be merged.
    #   @return [String]
    #
    # @!attribute [rw] engagement_preferences
    #   A unique identifier for the engagement preferences field to be
    #   merged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/FieldSourceProfileIds AWS API Documentation
    #
    class FieldSourceProfileIds < Struct.new(
      :account_number,
      :additional_information,
      :party_type,
      :business_name,
      :first_name,
      :middle_name,
      :last_name,
      :birth_date,
      :gender,
      :phone_number,
      :mobile_phone_number,
      :home_phone_number,
      :business_phone_number,
      :email_address,
      :personal_email_address,
      :business_email_address,
      :address,
      :shipping_address,
      :mailing_address,
      :billing_address,
      :attributes,
      :profile_type,
      :engagement_preferences)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines how to filter the objects coming in for calculated attributes.
    #
    # @!attribute [rw] include
    #   Define whether to include or exclude objects for Calculated
    #   Attributed calculation that fit the filter groups criteria.
    #   @return [String]
    #
    # @!attribute [rw] groups
    #   Holds the list of Filter groups within the Filter definition.
    #   @return [Array<Types::FilterGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :include,
      :groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that defines how to filter the incoming objects for the
    # calculated attribute.
    #
    # @!attribute [rw] dimension_type
    #   The action to filter with.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values to apply the DimensionType on.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/FilterAttributeDimension AWS API Documentation
    #
    class FilterAttributeDimension < Struct.new(
      :dimension_type,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the map of attribute names to attribute dimensions.
    #
    # @!attribute [rw] attributes
    #   Is the attribute within the FilterDimension map
    #   @return [Hash<String,Types::FilterAttributeDimension>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/FilterDimension AWS API Documentation
    #
    class FilterDimension < Struct.new(
      :attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that holds the dimensions to filter on.
    #
    # @!attribute [rw] type
    #   The type of logical relationship between the dimensions of the
    #   Filter group.
    #   @return [String]
    #
    # @!attribute [rw] dimensions
    #   Object that holds the attributes to filter on.
    #   @return [Array<Types::FilterDimension>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/FilterGroup AWS API Documentation
    #
    class FilterGroup < Struct.new(
      :type,
      :dimensions)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configurations that control how Customer Profiles retrieves data
    # from the source, Amazon AppFlow. Customer Profiles uses this
    # information to create an AppFlow flow on behalf of customers.
    #
    # @!attribute [rw] description
    #   A description of the flow you want to create.
    #   @return [String]
    #
    # @!attribute [rw] flow_name
    #   The specified name of the flow. Use underscores (\_) or hyphens (-)
    #   only. Spaces are not allowed.
    #   @return [String]
    #
    # @!attribute [rw] kms_arn
    #   The Amazon Resource Name of the AWS Key Management Service (KMS) key
    #   you provide for encryption.
    #   @return [String]
    #
    # @!attribute [rw] source_flow_config
    #   The configuration that controls how Customer Profiles retrieves data
    #   from the source.
    #   @return [Types::SourceFlowConfig]
    #
    # @!attribute [rw] tasks
    #   A list of tasks that Customer Profiles performs while transferring
    #   the data in the flow run.
    #   @return [Array<Types::Task>]
    #
    # @!attribute [rw] trigger_config
    #   The trigger settings that determine how and when the flow runs.
    #   @return [Types::TriggerConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/FlowDefinition AWS API Documentation
    #
    class FlowDefinition < Struct.new(
      :description,
      :flow_name,
      :kms_arn,
      :source_flow_config,
      :tasks,
      :trigger_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # A data type pair that consists of a `KeyName` and `Values` list that
    # were used to find a profile returned in response to a
    # [SearchProfiles][1] request.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_SearchProfiles.html
    #
    # @!attribute [rw] key_name
    #   A searchable identifier of a customer profile.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   A list of key values.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/FoundByKeyValue AWS API Documentation
    #
    class FoundByKeyValue < Struct.new(
      :key_name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] consolidation
    #   A list of matching attributes that represent matching criteria.
    #   @return [Types::Consolidation]
    #
    # @!attribute [rw] conflict_resolution
    #   How the auto-merging process should resolve conflicts between
    #   different profiles.
    #   @return [Types::ConflictResolution]
    #
    # @!attribute [rw] min_allowed_confidence_score_for_merging
    #   Minimum confidence score required for profiles within a matching
    #   group to be merged during the auto-merge process.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetAutoMergingPreviewRequest AWS API Documentation
    #
    class GetAutoMergingPreviewRequest < Struct.new(
      :domain_name,
      :consolidation,
      :conflict_resolution,
      :min_allowed_confidence_score_for_merging)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] number_of_matches_in_sample
    #   The number of match groups in the domain that have been reviewed in
    #   this preview dry run.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_profiles_in_sample
    #   The number of profiles found in this preview dry run.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_profiles_will_be_merged
    #   The number of profiles that would be merged if this wasn't a
    #   preview dry run.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetAutoMergingPreviewResponse AWS API Documentation
    #
    class GetAutoMergingPreviewResponse < Struct.new(
      :domain_name,
      :number_of_matches_in_sample,
      :number_of_profiles_in_sample,
      :number_of_profiles_will_be_merged)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] calculated_attribute_name
    #   The unique name of the calculated attribute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetCalculatedAttributeDefinitionRequest AWS API Documentation
    #
    class GetCalculatedAttributeDefinitionRequest < Struct.new(
      :domain_name,
      :calculated_attribute_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] calculated_attribute_name
    #   The unique name of the calculated attribute.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the calculated attribute.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the calculated attribute.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the calculated attribute definition was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the calculated attribute definition was most
    #   recently edited.
    #   @return [Time]
    #
    # @!attribute [rw] statistic
    #   The aggregation operation to perform for the calculated attribute.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   The filter assigned to this calculated attribute definition.
    #   @return [Types::Filter]
    #
    # @!attribute [rw] conditions
    #   The conditions including range, object count, and threshold for the
    #   calculated attribute.
    #   @return [Types::Conditions]
    #
    # @!attribute [rw] attribute_details
    #   Mathematical expression and a list of attribute items specified in
    #   that expression.
    #   @return [Types::AttributeDetails]
    #
    # @!attribute [rw] use_historical_data
    #   Whether historical data ingested before the Calculated Attribute was
    #   created should be included in calculations.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   Status of the Calculated Attribute creation (whether all historical
    #   data has been indexed).
    #   @return [String]
    #
    # @!attribute [rw] readiness
    #   Information indicating if the Calculated Attribute is ready for use
    #   by confirming all historical data has been processed and reflected.
    #   @return [Types::Readiness]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetCalculatedAttributeDefinitionResponse AWS API Documentation
    #
    class GetCalculatedAttributeDefinitionResponse < Struct.new(
      :calculated_attribute_name,
      :display_name,
      :description,
      :created_at,
      :last_updated_at,
      :statistic,
      :filter,
      :conditions,
      :attribute_details,
      :use_historical_data,
      :status,
      :readiness,
      :tags)
      SENSITIVE = [:description, :statistic, :conditions, :attribute_details]
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] profile_id
    #   The unique identifier of a customer profile.
    #   @return [String]
    #
    # @!attribute [rw] calculated_attribute_name
    #   The unique name of the calculated attribute.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetCalculatedAttributeForProfileRequest AWS API Documentation
    #
    class GetCalculatedAttributeForProfileRequest < Struct.new(
      :domain_name,
      :profile_id,
      :calculated_attribute_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] calculated_attribute_name
    #   The unique name of the calculated attribute.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the calculated attribute.
    #   @return [String]
    #
    # @!attribute [rw] is_data_partial
    #   Indicates whether the calculated attribute’s value is based on
    #   partial data. If data is partial, it is set to true.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the calculated attribute.
    #   @return [String]
    #
    # @!attribute [rw] last_object_timestamp
    #   The timestamp of the newest object included in the calculated
    #   attribute calculation.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetCalculatedAttributeForProfileResponse AWS API Documentation
    #
    class GetCalculatedAttributeForProfileResponse < Struct.new(
      :calculated_attribute_name,
      :display_name,
      :is_data_partial,
      :value,
      :last_object_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] layout_definition_name
    #   The unique name of the layout.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetDomainLayoutRequest AWS API Documentation
    #
    class GetDomainLayoutRequest < Struct.new(
      :domain_name,
      :layout_definition_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] layout_definition_name
    #   The unique name of the layout.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the layout
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the layout
    #   @return [String]
    #
    # @!attribute [rw] is_default
    #   If set to true for a layout, this layout will be used by default to
    #   view data. If set to false, then the layout will not be used by
    #   default, but it can be used to view data by explicitly selecting it
    #   in the console.
    #   @return [Boolean]
    #
    # @!attribute [rw] layout_type
    #   The type of layout that can be used to view data under a Customer
    #   Profiles domain.
    #   @return [String]
    #
    # @!attribute [rw] layout
    #   A customizable layout that can be used to view data under a Customer
    #   Profiles domain.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version used to create layout.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the layout was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the layout was most recently updated.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetDomainLayoutResponse AWS API Documentation
    #
    class GetDomainLayoutResponse < Struct.new(
      :layout_definition_name,
      :description,
      :display_name,
      :is_default,
      :layout_type,
      :layout,
      :version,
      :created_at,
      :last_updated_at,
      :tags)
      SENSITIVE = [:description, :layout]
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] object_type_name
    #   The unique name of the domain object type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetDomainObjectTypeRequest AWS API Documentation
    #
    class GetDomainObjectTypeRequest < Struct.new(
      :domain_name,
      :object_type_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] object_type_name
    #   The unique name of the domain object type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the domain object type.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key
    #   The customer provided KMS key used to encrypt this type of domain
    #   object.
    #   @return [String]
    #
    # @!attribute [rw] fields
    #   A map of field names to their corresponding domain object type field
    #   definitions.
    #   @return [Hash<String,Types::DomainObjectTypeField>]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the domain object type was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the domain object type was most recently
    #   edited.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetDomainObjectTypeResponse AWS API Documentation
    #
    class GetDomainObjectTypeResponse < Struct.new(
      :object_type_name,
      :description,
      :encryption_key,
      :fields,
      :created_at,
      :last_updated_at,
      :tags)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetDomainRequest AWS API Documentation
    #
    class GetDomainRequest < Struct.new(
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] default_expiration_days
    #   The default number of days until the data within the domain expires.
    #   @return [Integer]
    #
    # @!attribute [rw] default_encryption_key
    #   The default encryption key, which is an AWS managed key, is used
    #   when no specific type of encryption key is specified. It is used to
    #   encrypt all data before it is placed in permanent or semi-permanent
    #   storage.
    #   @return [String]
    #
    # @!attribute [rw] dead_letter_queue_url
    #   The URL of the SQS dead letter queue, which is used for reporting
    #   errors associated with ingesting data from third party applications.
    #   @return [String]
    #
    # @!attribute [rw] stats
    #   Usage-specific statistics about the domain.
    #   @return [Types::DomainStats]
    #
    # @!attribute [rw] matching
    #   The process of matching duplicate profiles. If `Matching` = `true`,
    #   Amazon Connect Customer Profiles starts a weekly batch process
    #   called Identity Resolution Job. If you do not specify a date and
    #   time for Identity Resolution Job to run, by default it runs every
    #   Saturday at 12AM UTC to detect duplicate profiles in your domains.
    #
    #   After the Identity Resolution Job completes, use the [GetMatches][1]
    #   API to return and review the results. Or, if you have configured
    #   `ExportingConfig` in the `MatchingRequest`, you can download the
    #   results from S3.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html
    #   @return [Types::MatchingResponse]
    #
    # @!attribute [rw] rule_based_matching
    #   The process of matching duplicate profiles using the Rule-Based
    #   matching. If `RuleBasedMatching` = true, Amazon Connect Customer
    #   Profiles will start to match and merge your profiles according to
    #   your configuration in the `RuleBasedMatchingRequest`. You can use
    #   the `ListRuleBasedMatches` and `GetSimilarProfiles` API to return
    #   and review the results. Also, if you have configured
    #   `ExportingConfig` in the `RuleBasedMatchingRequest`, you can
    #   download the results from S3.
    #   @return [Types::RuleBasedMatchingResponse]
    #
    # @!attribute [rw] data_store
    #   True if data store is enabled for this domain.
    #   @return [Types::DataStoreResponse]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the domain was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the domain was most recently edited.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetDomainResponse AWS API Documentation
    #
    class GetDomainResponse < Struct.new(
      :domain_name,
      :default_expiration_days,
      :default_encryption_key,
      :dead_letter_queue_url,
      :stats,
      :matching,
      :rule_based_matching,
      :data_store,
      :created_at,
      :last_updated_at,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] event_stream_name
    #   The name of the event stream provided during create operations.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetEventStreamRequest AWS API Documentation
    #
    class GetEventStreamRequest < Struct.new(
      :domain_name,
      :event_stream_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] event_stream_arn
    #   A unique identifier for the event stream.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the export was created.
    #   @return [Time]
    #
    # @!attribute [rw] state
    #   The operational state of destination stream for export.
    #   @return [String]
    #
    # @!attribute [rw] stopped_since
    #   The timestamp when the `State` changed to `STOPPED`.
    #   @return [Time]
    #
    # @!attribute [rw] destination_details
    #   Details regarding the Kinesis stream.
    #   @return [Types::EventStreamDestinationDetails]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetEventStreamResponse AWS API Documentation
    #
    class GetEventStreamResponse < Struct.new(
      :domain_name,
      :event_stream_arn,
      :created_at,
      :state,
      :stopped_since,
      :destination_details,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] event_trigger_name
    #   The unique name of the event trigger.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetEventTriggerRequest AWS API Documentation
    #
    class GetEventTriggerRequest < Struct.new(
      :domain_name,
      :event_trigger_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_trigger_name
    #   The unique name of the event trigger.
    #   @return [String]
    #
    # @!attribute [rw] object_type_name
    #   The unique name of the object type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the event trigger.
    #   @return [String]
    #
    # @!attribute [rw] event_trigger_conditions
    #   A list of conditions that determine when an event should trigger the
    #   destination.
    #   @return [Array<Types::EventTriggerCondition>]
    #
    # @!attribute [rw] segment_filter
    #   The destination is triggered only for profiles that meet the
    #   criteria of a segment definition.
    #   @return [String]
    #
    # @!attribute [rw] event_trigger_limits
    #   Defines limits controlling whether an event triggers the
    #   destination, based on ingestion latency and the number of
    #   invocations per profile over specific time periods.
    #   @return [Types::EventTriggerLimits]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the event trigger was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the event trigger was most recently updated.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   An array of key-value pairs to apply to this resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetEventTriggerResponse AWS API Documentation
    #
    class GetEventTriggerResponse < Struct.new(
      :event_trigger_name,
      :object_type_name,
      :description,
      :event_trigger_conditions,
      :segment_filter,
      :event_trigger_limits,
      :created_at,
      :last_updated_at,
      :tags)
      SENSITIVE = [:description, :event_trigger_conditions]
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The unique identifier of the Identity Resolution Job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetIdentityResolutionJobRequest AWS API Documentation
    #
    class GetIdentityResolutionJobRequest < Struct.new(
      :domain_name,
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The unique identifier of the Identity Resolution Job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Identity Resolution Job.
    #
    #   * `PENDING`: The Identity Resolution Job is scheduled but has not
    #     started yet. If you turn off the Identity Resolution feature in
    #     your domain, jobs in the `PENDING` state are deleted.
    #
    #   * `PREPROCESSING`: The Identity Resolution Job is loading your data.
    #
    #   * `FIND_MATCHING`: The Identity Resolution Job is using the machine
    #     learning model to identify profiles that belong to the same
    #     matching group.
    #
    #   * `MERGING`: The Identity Resolution Job is merging duplicate
    #     profiles.
    #
    #   * `COMPLETED`: The Identity Resolution Job completed successfully.
    #
    #   * `PARTIAL_SUCCESS`: There's a system error and not all of the data
    #     is merged. The Identity Resolution Job writes a message indicating
    #     the source of the problem.
    #
    #   * `FAILED`: The Identity Resolution Job did not merge any data. It
    #     writes a message indicating the source of the problem.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The error messages that are generated when the Identity Resolution
    #   Job runs.
    #   @return [String]
    #
    # @!attribute [rw] job_start_time
    #   The timestamp of when the Identity Resolution Job was started or
    #   will be started.
    #   @return [Time]
    #
    # @!attribute [rw] job_end_time
    #   The timestamp of when the Identity Resolution Job was completed.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the Identity Resolution Job was most recently
    #   edited.
    #   @return [Time]
    #
    # @!attribute [rw] job_expiration_time
    #   The timestamp of when the Identity Resolution Job will expire.
    #   @return [Time]
    #
    # @!attribute [rw] auto_merging
    #   Configuration settings for how to perform the auto-merging of
    #   profiles.
    #   @return [Types::AutoMerging]
    #
    # @!attribute [rw] exporting_location
    #   The S3 location where the Identity Resolution Job writes result
    #   files.
    #   @return [Types::ExportingLocation]
    #
    # @!attribute [rw] job_stats
    #   Statistics about the Identity Resolution Job.
    #   @return [Types::JobStats]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetIdentityResolutionJobResponse AWS API Documentation
    #
    class GetIdentityResolutionJobResponse < Struct.new(
      :domain_name,
      :job_id,
      :status,
      :message,
      :job_start_time,
      :job_end_time,
      :last_updated_at,
      :job_expiration_time,
      :auto_merging,
      :exporting_location,
      :job_stats)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] uri
    #   The URI of the S3 bucket or any other type of data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetIntegrationRequest AWS API Documentation
    #
    class GetIntegrationRequest < Struct.new(
      :domain_name,
      :uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] uri
    #   The URI of the S3 bucket or any other type of data source.
    #   @return [String]
    #
    # @!attribute [rw] object_type_name
    #   The name of the profile object type.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the domain was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the domain was most recently edited.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] object_type_names
    #   A map in which each key is an event type from an external
    #   application such as Segment or Shopify, and each value is an
    #   `ObjectTypeName` (template) used to ingest the event. It supports
    #   the following event types: `SegmentIdentify`,
    #   `ShopifyCreateCustomers`, `ShopifyUpdateCustomers`,
    #   `ShopifyCreateDraftOrders`, `ShopifyUpdateDraftOrders`,
    #   `ShopifyCreateOrders`, and `ShopifyUpdatedOrders`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] workflow_id
    #   Unique identifier for the workflow.
    #   @return [String]
    #
    # @!attribute [rw] is_unstructured
    #   Boolean that shows if the Flow that's associated with the
    #   Integration is created in Amazon Appflow, or with ObjectTypeName
    #   equals \_unstructured via API/CLI in flowDefinition.
    #   @return [Boolean]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. The Integration uses
    #   this role to make Customer Profiles requests on your behalf.
    #   @return [String]
    #
    # @!attribute [rw] event_trigger_names
    #   A list of unique names for active event triggers associated with the
    #   integration. This list would be empty if no Event Trigger is
    #   associated with the integration.
    #   @return [Array<String>]
    #
    # @!attribute [rw] scope
    #   Specifies whether the integration applies to profile level data
    #   (associated with profiles) or domain level data (not associated with
    #   any specific profile). The default value is PROFILE.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetIntegrationResponse AWS API Documentation
    #
    class GetIntegrationResponse < Struct.new(
      :domain_name,
      :uri,
      :object_type_name,
      :created_at,
      :last_updated_at,
      :tags,
      :object_type_names,
      :workflow_id,
      :is_unstructured,
      :role_arn,
      :event_trigger_names,
      :scope)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetMatchesRequest AWS API Documentation
    #
    class GetMatchesRequest < Struct.new(
      :next_token,
      :max_results,
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @!attribute [rw] match_generation_date
    #   The timestamp this version of Match Result generated.
    #   @return [Time]
    #
    # @!attribute [rw] potential_matches
    #   The number of potential matches found.
    #   @return [Integer]
    #
    # @!attribute [rw] matches
    #   The list of matched profiles for this instance.
    #   @return [Array<Types::MatchItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetMatchesResponse AWS API Documentation
    #
    class GetMatchesResponse < Struct.new(
      :next_token,
      :match_generation_date,
      :potential_matches,
      :matches)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains percentile statistics for object type attributes.
    #
    # @!attribute [rw] p5
    #   The 5th percentile value of the attribute.
    #   @return [Float]
    #
    # @!attribute [rw] p25
    #   The 25th percentile value of the attribute.
    #   @return [Float]
    #
    # @!attribute [rw] p50
    #   The 50th percentile (median) value of the attribute.
    #   @return [Float]
    #
    # @!attribute [rw] p75
    #   The 75th percentile value of the attribute.
    #   @return [Float]
    #
    # @!attribute [rw] p95
    #   The 95th percentile value of the attribute.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetObjectTypeAttributeStatisticsPercentiles AWS API Documentation
    #
    class GetObjectTypeAttributeStatisticsPercentiles < Struct.new(
      :p5,
      :p25,
      :p50,
      :p75,
      :p95)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] object_type_name
    #   The unique name of the domain object type.
    #   @return [String]
    #
    # @!attribute [rw] attribute_name
    #   The attribute name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetObjectTypeAttributeStatisticsRequest AWS API Documentation
    #
    class GetObjectTypeAttributeStatisticsRequest < Struct.new(
      :domain_name,
      :object_type_name,
      :attribute_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] statistics
    #   The statistics.
    #   @return [Types::GetObjectTypeAttributeStatisticsStats]
    #
    # @!attribute [rw] calculated_at
    #   Time when this statistics was calculated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetObjectTypeAttributeStatisticsResponse AWS API Documentation
    #
    class GetObjectTypeAttributeStatisticsResponse < Struct.new(
      :statistics,
      :calculated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Statistical measurements for object type attributes including basic
    # statistics and percentiles.
    #
    # @!attribute [rw] maximum
    #   The maximum value found in the attribute dataset.
    #   @return [Float]
    #
    # @!attribute [rw] minimum
    #   The minimum value found in the attribute dataset.
    #   @return [Float]
    #
    # @!attribute [rw] average
    #   The arithmetic mean of the attribute values.
    #   @return [Float]
    #
    # @!attribute [rw] standard_deviation
    #   The standard deviation of the attribute values, measuring their
    #   spread around the mean.
    #   @return [Float]
    #
    # @!attribute [rw] percentiles
    #   Percentile distribution statistics for the attribute values.
    #   @return [Types::GetObjectTypeAttributeStatisticsPercentiles]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetObjectTypeAttributeStatisticsStats AWS API Documentation
    #
    class GetObjectTypeAttributeStatisticsStats < Struct.new(
      :maximum,
      :minimum,
      :average,
      :standard_deviation,
      :percentiles)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain for which to return a profile history
    #   record.
    #   @return [String]
    #
    # @!attribute [rw] profile_id
    #   The unique identifier of the profile for which to return a history
    #   record.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier of the profile history record to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetProfileHistoryRecordRequest AWS API Documentation
    #
    class GetProfileHistoryRecordRequest < Struct.new(
      :domain_name,
      :profile_id,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The unique identifier of the profile history record.
    #   @return [String]
    #
    # @!attribute [rw] object_type_name
    #   The name of the profile object type.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the profile history record was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the profile history record was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] action_type
    #   The action type of the profile history record.
    #   @return [String]
    #
    # @!attribute [rw] profile_object_unique_key
    #   The unique identifier of the profile object generated by the
    #   service.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   A string containing the customer profile, profile object, or profile
    #   key content.
    #   @return [String]
    #
    # @!attribute [rw] performed_by
    #   The Amazon Resource Name (ARN) of the person or service principal
    #   who performed the action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetProfileHistoryRecordResponse AWS API Documentation
    #
    class GetProfileHistoryRecordResponse < Struct.new(
      :id,
      :object_type_name,
      :created_at,
      :last_updated_at,
      :action_type,
      :profile_object_unique_key,
      :content,
      :performed_by)
      SENSITIVE = [:content]
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] object_type_name
    #   The name of the profile object type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetProfileObjectTypeRequest AWS API Documentation
    #
    class GetProfileObjectTypeRequest < Struct.new(
      :domain_name,
      :object_type_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] object_type_name
    #   The name of the profile object type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the profile object type.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   A unique identifier for the object template.
    #   @return [String]
    #
    # @!attribute [rw] expiration_days
    #   The number of days until the data in the object expires.
    #   @return [Integer]
    #
    # @!attribute [rw] encryption_key
    #   The customer-provided key to encrypt the profile object that will be
    #   created in this profile object type.
    #   @return [String]
    #
    # @!attribute [rw] allow_profile_creation
    #   Indicates whether a profile should be created when data is received
    #   if one doesn’t exist for an object of this type. The default is
    #   `FALSE`. If the AllowProfileCreation flag is set to `FALSE`, then
    #   the service tries to fetch a standard profile and associate this
    #   object with the profile. If it is set to `TRUE`, and if no match is
    #   found, then the service creates a new standard profile.
    #   @return [Boolean]
    #
    # @!attribute [rw] source_last_updated_timestamp_format
    #   The format of your `sourceLastUpdatedTimestamp` that was previously
    #   set up.
    #   @return [String]
    #
    # @!attribute [rw] max_available_profile_object_count
    #   The amount of provisioned profile object max count available.
    #   @return [Integer]
    #
    # @!attribute [rw] max_profile_object_count
    #   The amount of profile object max count assigned to the object type.
    #   @return [Integer]
    #
    # @!attribute [rw] fields
    #   A map of the name and ObjectType field.
    #   @return [Hash<String,Types::ObjectTypeField>]
    #
    # @!attribute [rw] keys
    #   A list of unique keys that can be used to map data to the profile.
    #   @return [Hash<String,Array<Types::ObjectTypeKey>>]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the domain was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the domain was most recently edited.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetProfileObjectTypeResponse AWS API Documentation
    #
    class GetProfileObjectTypeResponse < Struct.new(
      :object_type_name,
      :description,
      :template_id,
      :expiration_days,
      :encryption_key,
      :allow_profile_creation,
      :source_last_updated_timestamp_format,
      :max_available_profile_object_count,
      :max_profile_object_count,
      :fields,
      :keys,
      :created_at,
      :last_updated_at,
      :tags)
      SENSITIVE = [:description, :fields, :keys]
      include Aws::Structure
    end

    # @!attribute [rw] template_id
    #   A unique identifier for the object template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetProfileObjectTypeTemplateRequest AWS API Documentation
    #
    class GetProfileObjectTypeTemplateRequest < Struct.new(
      :template_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_id
    #   A unique identifier for the object template.
    #   @return [String]
    #
    # @!attribute [rw] source_name
    #   The name of the source of the object template.
    #   @return [String]
    #
    # @!attribute [rw] source_object
    #   The source of the object template.
    #   @return [String]
    #
    # @!attribute [rw] allow_profile_creation
    #   Indicates whether a profile should be created when data is received
    #   if one doesn’t exist for an object of this type. The default is
    #   `FALSE`. If the AllowProfileCreation flag is set to `FALSE`, then
    #   the service tries to fetch a standard profile and associate this
    #   object with the profile. If it is set to `TRUE`, and if no match is
    #   found, then the service creates a new standard profile.
    #   @return [Boolean]
    #
    # @!attribute [rw] source_last_updated_timestamp_format
    #   The format of your `sourceLastUpdatedTimestamp` that was previously
    #   set up.
    #   @return [String]
    #
    # @!attribute [rw] fields
    #   A map of the name and ObjectType field.
    #   @return [Hash<String,Types::ObjectTypeField>]
    #
    # @!attribute [rw] keys
    #   A list of unique keys that can be used to map data to the profile.
    #   @return [Hash<String,Array<Types::ObjectTypeKey>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetProfileObjectTypeTemplateResponse AWS API Documentation
    #
    class GetProfileObjectTypeTemplateResponse < Struct.new(
      :template_id,
      :source_name,
      :source_object,
      :allow_profile_creation,
      :source_last_updated_timestamp_format,
      :fields,
      :keys)
      SENSITIVE = [:fields, :keys]
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] profile_id
    #   The unique identifier of the profile for which to retrieve
    #   recommendations.
    #   @return [String]
    #
    # @!attribute [rw] recommender_name
    #   The unique name of the recommender.
    #   @return [String]
    #
    # @!attribute [rw] context
    #   The contextual metadata used to provide dynamic runtime information
    #   to tailor recommendations.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of recommendations to return. The default value
    #   is 10.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetProfileRecommendationsRequest AWS API Documentation
    #
    class GetProfileRecommendationsRequest < Struct.new(
      :domain_name,
      :profile_id,
      :recommender_name,
      :context,
      :max_results)
      SENSITIVE = [:context]
      include Aws::Structure
    end

    # @!attribute [rw] recommendations
    #   List of recommendations generated by the recommender.
    #   @return [Array<Types::Recommendation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetProfileRecommendationsResponse AWS API Documentation
    #
    class GetProfileRecommendationsResponse < Struct.new(
      :recommendations)
      SENSITIVE = [:recommendations]
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] recommender_name
    #   The name of the recommender.
    #   @return [String]
    #
    # @!attribute [rw] training_metrics_count
    #   The number of training metrics to retrieve for the recommender.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetRecommenderRequest AWS API Documentation
    #
    class GetRecommenderRequest < Struct.new(
      :domain_name,
      :recommender_name,
      :training_metrics_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recommender_name
    #   The name of the recommender.
    #   @return [String]
    #
    # @!attribute [rw] recommender_recipe_name
    #   The name of the recipe used by the recommender to generate
    #   recommendations.
    #   @return [String]
    #
    # @!attribute [rw] recommender_config
    #   The configuration settings for the recommender, including parameters
    #   and settings that define its behavior.
    #   @return [Types::RecommenderConfig]
    #
    # @!attribute [rw] description
    #   A detailed description of the recommender providing information
    #   about its purpose and functionality.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the recommender, indicating whether it is
    #   active, creating, updating, or in another state.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the recommender was edited.
    #   @return [Time]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the recommender was created.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   If the recommender fails, provides the reason for the failure.
    #   @return [String]
    #
    # @!attribute [rw] latest_recommender_update
    #   Information about the most recent update performed on the
    #   recommender, including status and timestamp.
    #   @return [Types::RecommenderUpdate]
    #
    # @!attribute [rw] training_metrics
    #   A set of metrics that provide information about the recommender's
    #   training performance and accuracy.
    #   @return [Array<Types::TrainingMetrics>]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetRecommenderResponse AWS API Documentation
    #
    class GetRecommenderResponse < Struct.new(
      :recommender_name,
      :recommender_recipe_name,
      :recommender_config,
      :description,
      :status,
      :last_updated_at,
      :created_at,
      :failure_reason,
      :latest_recommender_update,
      :training_metrics,
      :tags)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] segment_definition_name
    #   The unique name of the segment definition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetSegmentDefinitionRequest AWS API Documentation
    #
    class GetSegmentDefinitionRequest < Struct.new(
      :domain_name,
      :segment_definition_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] segment_definition_name
    #   The name of the segment definition.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the segment definition.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the segment definition.
    #   @return [String]
    #
    # @!attribute [rw] segment_groups
    #   The segment criteria associated with this definition.
    #   @return [Types::SegmentGroup]
    #
    # @!attribute [rw] segment_definition_arn
    #   The arn of the segment definition.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the segment definition was created.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] segment_sql_query
    #   The segment SQL query.
    #   @return [String]
    #
    # @!attribute [rw] segment_type
    #   The segment type.
    #
    #   Classic : Segments created using traditional SegmentGroup structure
    #
    #   Enhanced : Segments created using SQL queries
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetSegmentDefinitionResponse AWS API Documentation
    #
    class GetSegmentDefinitionResponse < Struct.new(
      :segment_definition_name,
      :display_name,
      :description,
      :segment_groups,
      :segment_definition_arn,
      :created_at,
      :tags,
      :segment_sql_query,
      :segment_type)
      SENSITIVE = [:description, :segment_groups, :segment_sql_query]
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] estimate_id
    #   The query Id passed by a previous `CreateSegmentEstimate` operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetSegmentEstimateRequest AWS API Documentation
    #
    class GetSegmentEstimateRequest < Struct.new(
      :domain_name,
      :estimate_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] estimate_id
    #   The `QueryId` which is the same as the value passed in `QueryId`.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the query.
    #   @return [String]
    #
    # @!attribute [rw] estimate
    #   The estimated number of profiles contained in the segment.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The error message if there is any error.
    #   @return [String]
    #
    # @!attribute [rw] status_code
    #   The status code of the segment estimate.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetSegmentEstimateResponse AWS API Documentation
    #
    class GetSegmentEstimateResponse < Struct.new(
      :domain_name,
      :estimate_id,
      :status,
      :estimate,
      :message,
      :status_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] segment_definition_name
    #   The Id of the wanted segment. Needs to be a valid, and existing
    #   segment Id.
    #   @return [String]
    #
    # @!attribute [rw] profile_ids
    #   The list of profile IDs to query for.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetSegmentMembershipRequest AWS API Documentation
    #
    class GetSegmentMembershipRequest < Struct.new(
      :domain_name,
      :segment_definition_name,
      :profile_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] segment_definition_name
    #   The unique name of the segment definition.
    #   @return [String]
    #
    # @!attribute [rw] profiles
    #   An array of maps where each contains a response per profile
    #   requested.
    #   @return [Array<Types::ProfileQueryResult>]
    #
    # @!attribute [rw] failures
    #   An array of maps where each contains a response per profile failed
    #   for the request.
    #   @return [Array<Types::ProfileQueryFailures>]
    #
    # @!attribute [rw] last_computed_at
    #   The timestamp indicating when the segment membership was last
    #   computed or updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetSegmentMembershipResponse AWS API Documentation
    #
    class GetSegmentMembershipResponse < Struct.new(
      :segment_definition_name,
      :profiles,
      :failures,
      :last_computed_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique identifier of the domain.
    #   @return [String]
    #
    # @!attribute [rw] segment_definition_name
    #   The unique name of the segment definition.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_id
    #   The unique identifier of the segment snapshot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetSegmentSnapshotRequest AWS API Documentation
    #
    class GetSegmentSnapshotRequest < Struct.new(
      :domain_name,
      :segment_definition_name,
      :snapshot_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] snapshot_id
    #   The unique identifier of the segment snapshot.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the asynchronous job for exporting the segment
    #   snapshot.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message of the asynchronous job for exporting the segment
    #   snapshot.
    #   @return [String]
    #
    # @!attribute [rw] data_format
    #   The format in which the segment will be exported.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key
    #   The Amazon Resource Name (ARN) of the KMS key used to encrypt the
    #   exported segment.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that allows Customer
    #   Profiles service principal to assume the role for conducting KMS and
    #   S3 operations.
    #   @return [String]
    #
    # @!attribute [rw] destination_uri
    #   The destination to which the segment will be exported. This field
    #   must be provided if the request is not submitted from the Amazon
    #   Connect Admin Website.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetSegmentSnapshotResponse AWS API Documentation
    #
    class GetSegmentSnapshotResponse < Struct.new(
      :snapshot_id,
      :status,
      :status_message,
      :data_format,
      :encryption_key,
      :role_arn,
      :destination_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token from the previous `GetSimilarProfiles` API
    #   call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects returned per page.
    #   @return [Integer]
    #
    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] match_type
    #   Specify the type of matching to get similar profiles for.
    #   @return [String]
    #
    # @!attribute [rw] search_key
    #   The string indicating the search key to be used.
    #   @return [String]
    #
    # @!attribute [rw] search_value
    #   The string based on `SearchKey` to be searched for similar profiles.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetSimilarProfilesRequest AWS API Documentation
    #
    class GetSimilarProfilesRequest < Struct.new(
      :next_token,
      :max_results,
      :domain_name,
      :match_type,
      :search_key,
      :search_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_ids
    #   Set of `profileId`s that belong to the same matching group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] match_id
    #   The string `matchId` that the similar profiles belong to.
    #   @return [String]
    #
    # @!attribute [rw] match_type
    #   Specify the type of matching to get similar profiles for.
    #   @return [String]
    #
    # @!attribute [rw] rule_level
    #   The integer rule level that the profiles matched on.
    #   @return [Integer]
    #
    # @!attribute [rw] confidence_score
    #   It only has value when the `MatchType` is `ML_BASED_MATCHING`.A
    #   number between 0 and 1, where a higher score means higher
    #   similarity. Examining match confidence scores lets you distinguish
    #   between groups of similar records in which the system is highly
    #   confident (which you may decide to merge), groups of similar records
    #   about which the system is uncertain (which you may decide to have
    #   reviewed by a human), and groups of similar records that the system
    #   deems to be unlikely (which you may decide to reject). Given
    #   confidence scores vary as per the data input, it should not be used
    #   as an absolute measure of matching quality.
    #   @return [Float]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous `GetSimilarProfiles` API
    #   call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetSimilarProfilesResponse AWS API Documentation
    #
    class GetSimilarProfilesResponse < Struct.new(
      :profile_ids,
      :match_id,
      :match_type,
      :rule_level,
      :confidence_score,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain containing the upload job.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The unique identifier of the upload job to retrieve the upload path
    #   for. This is generated from the CreateUploadJob API.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetUploadJobPathRequest AWS API Documentation
    #
    class GetUploadJobPathRequest < Struct.new(
      :domain_name,
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] url
    #   The pre-signed S3 URL for uploading the CSV file associated with the
    #   upload job.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The plaintext data key used to encrypt the upload file.
    #
    #   To persist to the pre-signed url, use the client token and MD5
    #   client token as header. The required headers are as follows:
    #
    #   * x-amz-server-side-encryption-customer-key: Client Token
    #
    #   * x-amz-server-side-encryption-customer-key-MD5: MD5 Client Token
    #
    #   * x-amz-server-side-encryption-customer-algorithm: AES256
    #   @return [String]
    #
    # @!attribute [rw] valid_until
    #   The expiry timestamp for the pre-signed URL, after which the URL
    #   will no longer be valid.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetUploadJobPathResponse AWS API Documentation
    #
    class GetUploadJobPathResponse < Struct.new(
      :url,
      :client_token,
      :valid_until)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain containing the upload job.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The unique identifier of the upload job to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetUploadJobRequest AWS API Documentation
    #
    class GetUploadJobRequest < Struct.new(
      :domain_name,
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The unique identifier of the upload job.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The unique name of the upload job. Could be a file name to identify
    #   the upload job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status describing the status for the upload job. The following
    #   are Valid Values:
    #
    #   * **CREATED**: The upload job has been created, but has not started
    #     processing yet.
    #
    #   * **IN\_PROGRESS**: The upload job is currently in progress,
    #     ingesting and processing the profile data.
    #
    #   * **PARTIALLY\_SUCCEEDED**: The upload job has successfully
    #     completed the ingestion and processing of all profile data.
    #
    #   * **SUCCEEDED**: The upload job has successfully completed the
    #     ingestion and processing of all profile data.
    #
    #   * **FAILED**: The upload job has failed to complete.
    #
    #   * **STOPPED**: The upload job has been manually stopped or
    #     terminated before completion.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the current status of the upload job. Possible
    #   reasons:
    #
    #   * **VALIDATION\_FAILURE**: The upload job has encountered an error
    #     or issue and was unable to complete the profile data ingestion.
    #
    #   * **INTERNAL\_FAILURE**: Failure caused from service side
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the upload job was created.
    #   @return [Time]
    #
    # @!attribute [rw] completed_at
    #   The timestamp when the upload job was completed.
    #   @return [Time]
    #
    # @!attribute [rw] fields
    #   The mapping between CSV Columns and Profile Object attributes for
    #   the upload job.
    #   @return [Hash<String,Types::ObjectTypeField>]
    #
    # @!attribute [rw] unique_key
    #   The unique key columns used for de-duping the keys in the upload
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] results_summary
    #   The summary of results for the upload job, including the number of
    #   updated, created, and failed records.
    #   @return [Types::ResultsSummary]
    #
    # @!attribute [rw] data_expiry
    #   The expiry duration for the profiles ingested with the upload job.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetUploadJobResponse AWS API Documentation
    #
    class GetUploadJobResponse < Struct.new(
      :job_id,
      :display_name,
      :status,
      :status_reason,
      :created_at,
      :completed_at,
      :fields,
      :unique_key,
      :results_summary,
      :data_expiry)
      SENSITIVE = [:fields]
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] workflow_id
    #   Unique identifier for the workflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetWorkflowRequest AWS API Documentation
    #
    class GetWorkflowRequest < Struct.new(
      :domain_name,
      :workflow_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_id
    #   Unique identifier for the workflow.
    #   @return [String]
    #
    # @!attribute [rw] workflow_type
    #   The type of workflow. The only supported value is
    #   APPFLOW\_INTEGRATION.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of workflow execution.
    #   @return [String]
    #
    # @!attribute [rw] error_description
    #   Workflow error messages during execution (if any).
    #   @return [String]
    #
    # @!attribute [rw] start_date
    #   The timestamp that represents when workflow execution started.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp that represents when workflow execution last updated.
    #   @return [Time]
    #
    # @!attribute [rw] attributes
    #   Attributes provided for workflow execution.
    #   @return [Types::WorkflowAttributes]
    #
    # @!attribute [rw] metrics
    #   Workflow specific execution metrics.
    #   @return [Types::WorkflowMetrics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetWorkflowResponse AWS API Documentation
    #
    class GetWorkflowResponse < Struct.new(
      :workflow_id,
      :workflow_type,
      :status,
      :error_description,
      :start_date,
      :last_updated_at,
      :attributes,
      :metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] workflow_id
    #   Unique identifier for the workflow.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetWorkflowStepsRequest AWS API Documentation
    #
    class GetWorkflowStepsRequest < Struct.new(
      :domain_name,
      :workflow_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] workflow_id
    #   Unique identifier for the workflow.
    #   @return [String]
    #
    # @!attribute [rw] workflow_type
    #   The type of workflow. The only supported value is
    #   APPFLOW\_INTEGRATION.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   List containing workflow step details.
    #   @return [Array<Types::WorkflowStepItem>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetWorkflowStepsResponse AWS API Documentation
    #
    class GetWorkflowStepsResponse < Struct.new(
      :workflow_id,
      :workflow_type,
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains dimensions that determine what to segment on.
    #
    # @!attribute [rw] dimensions
    #   Defines the attributes to segment on.
    #   @return [Array<Types::Dimension>]
    #
    # @!attribute [rw] source_segments
    #   Defines the starting source of data.
    #   @return [Array<Types::SourceSegment>]
    #
    # @!attribute [rw] source_type
    #   Defines how to interact with the source data.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Defines how to interact with the profiles found in the current
    #   filtering.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/Group AWS API Documentation
    #
    class Group < Struct.new(
      :dimensions,
      :source_segments,
      :source_type,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the Identity Resolution Job.
    #
    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The unique identifier of the Identity Resolution Job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Identity Resolution Job.
    #
    #   * `PENDING`: The Identity Resolution Job is scheduled but has not
    #     started yet. If you turn off the Identity Resolution feature in
    #     your domain, jobs in the `PENDING` state are deleted.
    #
    #   * `PREPROCESSING`: The Identity Resolution Job is loading your data.
    #
    #   * `FIND_MATCHING`: The Identity Resolution Job is using the machine
    #     learning model to identify profiles that belong to the same
    #     matching group.
    #
    #   * `MERGING`: The Identity Resolution Job is merging duplicate
    #     profiles.
    #
    #   * `COMPLETED`: The Identity Resolution Job completed successfully.
    #
    #   * `PARTIAL_SUCCESS`: There's a system error and not all of the data
    #     is merged. The Identity Resolution Job writes a message indicating
    #     the source of the problem.
    #
    #   * `FAILED`: The Identity Resolution Job did not merge any data. It
    #     writes a message indicating the source of the problem.
    #   @return [String]
    #
    # @!attribute [rw] job_start_time
    #   The timestamp of when the job was started or will be started.
    #   @return [Time]
    #
    # @!attribute [rw] job_end_time
    #   The timestamp of when the job was completed.
    #   @return [Time]
    #
    # @!attribute [rw] job_stats
    #   Statistics about an Identity Resolution Job.
    #   @return [Types::JobStats]
    #
    # @!attribute [rw] exporting_location
    #   The S3 location where the Identity Resolution Job writes result
    #   files.
    #   @return [Types::ExportingLocation]
    #
    # @!attribute [rw] message
    #   The error messages that are generated when the Identity Resolution
    #   Job runs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/IdentityResolutionJob AWS API Documentation
    #
    class IdentityResolutionJob < Struct.new(
      :domain_name,
      :job_id,
      :status,
      :job_start_time,
      :job_end_time,
      :job_stats,
      :exporting_location,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the configuration used when importing incremental records
    # from the source.
    #
    # @!attribute [rw] datetime_type_field_name
    #   A field that specifies the date time or timestamp field as the
    #   criteria to use when importing incremental records from the source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/IncrementalPullConfig AWS API Documentation
    #
    class IncrementalPullConfig < Struct.new(
      :datetime_type_field_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration data for integration workflow.
    #
    # @!attribute [rw] appflow_integration
    #   Configuration data for `APPFLOW_INTEGRATION` workflow type.
    #   @return [Types::AppflowIntegration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/IntegrationConfig AWS API Documentation
    #
    class IntegrationConfig < Struct.new(
      :appflow_integration)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal service error occurred.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The day and time when do you want to start the Identity Resolution Job
    # every week.
    #
    # @!attribute [rw] day_of_the_week
    #   The day when the Identity Resolution Job should run every week.
    #   @return [String]
    #
    # @!attribute [rw] time
    #   The time when the Identity Resolution Job should run every week.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/JobSchedule AWS API Documentation
    #
    class JobSchedule < Struct.new(
      :day_of_the_week,
      :time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Statistics about the Identity Resolution Job.
    #
    # @!attribute [rw] number_of_profiles_reviewed
    #   The number of profiles reviewed.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_matches_found
    #   The number of matches found.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_merges_done
    #   The number of merges completed.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/JobStats AWS API Documentation
    #
    class JobStats < Struct.new(
      :number_of_profiles_reviewed,
      :number_of_matches_found,
      :number_of_merges_done)
      SENSITIVE = []
      include Aws::Structure
    end

    # The layout object that contains LayoutDefinitionName, Description,
    # DisplayName, IsDefault, LayoutType, Tags, CreatedAt, LastUpdatedAt
    #
    # @!attribute [rw] layout_definition_name
    #   The unique name of the layout.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the layout
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the layout
    #   @return [String]
    #
    # @!attribute [rw] is_default
    #   If set to true for a layout, this layout will be used by default to
    #   view data. If set to false, then layout will not be used by default
    #   but it can be used to view data by explicit selection on UI.
    #   @return [Boolean]
    #
    # @!attribute [rw] layout_type
    #   The type of layout that can be used to view data under customer
    #   profiles domain.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the layout was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the layout was most recently updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/LayoutItem AWS API Documentation
    #
    class LayoutItem < Struct.new(
      :layout_definition_name,
      :description,
      :display_name,
      :is_default,
      :layout_type,
      :tags,
      :created_at,
      :last_updated_at)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] uri
    #   The URI of the S3 bucket or any other type of data source.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous ListAccountIntegrations API
    #   call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects returned per page.
    #   @return [Integer]
    #
    # @!attribute [rw] include_hidden
    #   Boolean to indicate if hidden integration should be returned.
    #   Defaults to `False`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListAccountIntegrationsRequest AWS API Documentation
    #
    class ListAccountIntegrationsRequest < Struct.new(
      :uri,
      :next_token,
      :max_results,
      :include_hidden)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of ListAccountIntegration instances.
    #   @return [Array<Types::ListIntegrationItem>]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous ListAccountIntegrations API
    #   call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListAccountIntegrationsResponse AWS API Documentation
    #
    class ListAccountIntegrationsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a single calculated attribute definition.
    #
    # @!attribute [rw] calculated_attribute_name
    #   The unique name of the calculated attribute.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the calculated attribute.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The threshold for the calculated attribute.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The threshold for the calculated attribute.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the calculated attribute definition was most
    #   recently edited.
    #   @return [Time]
    #
    # @!attribute [rw] use_historical_data
    #   Whether historical data ingested before the Calculated Attribute was
    #   created should be included in calculations.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   Status of the Calculated Attribute creation (whether all historical
    #   data has been indexed.)
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListCalculatedAttributeDefinitionItem AWS API Documentation
    #
    class ListCalculatedAttributeDefinitionItem < Struct.new(
      :calculated_attribute_name,
      :display_name,
      :description,
      :created_at,
      :last_updated_at,
      :use_historical_data,
      :status,
      :tags)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous call to
    #   ListCalculatedAttributeDefinitions.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of calculated attribute definitions returned per
    #   page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListCalculatedAttributeDefinitionsRequest AWS API Documentation
    #
    class ListCalculatedAttributeDefinitionsRequest < Struct.new(
      :domain_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of calculated attribute definitions.
    #   @return [Array<Types::ListCalculatedAttributeDefinitionItem>]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous call to
    #   ListCalculatedAttributeDefinitions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListCalculatedAttributeDefinitionsResponse AWS API Documentation
    #
    class ListCalculatedAttributeDefinitionsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = [:items]
      include Aws::Structure
    end

    # The details of a single calculated attribute for a profile.
    #
    # @!attribute [rw] calculated_attribute_name
    #   The unique name of the calculated attribute.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the calculated attribute.
    #   @return [String]
    #
    # @!attribute [rw] is_data_partial
    #   Indicates whether the calculated attribute’s value is based on
    #   partial data. If data is partial, it is set to true.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the calculated attribute.
    #   @return [String]
    #
    # @!attribute [rw] last_object_timestamp
    #   The timestamp of the newest object included in the calculated
    #   attribute calculation.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListCalculatedAttributeForProfileItem AWS API Documentation
    #
    class ListCalculatedAttributeForProfileItem < Struct.new(
      :calculated_attribute_name,
      :display_name,
      :is_data_partial,
      :value,
      :last_object_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token from the previous call to
    #   ListCalculatedAttributesForProfile.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of calculated attributes returned per page.
    #   @return [Integer]
    #
    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] profile_id
    #   The unique identifier of a customer profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListCalculatedAttributesForProfileRequest AWS API Documentation
    #
    class ListCalculatedAttributesForProfileRequest < Struct.new(
      :next_token,
      :max_results,
      :domain_name,
      :profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of calculated attributes.
    #   @return [Array<Types::ListCalculatedAttributeForProfileItem>]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous call to
    #   ListCalculatedAttributesForProfile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListCalculatedAttributesForProfileResponse AWS API Documentation
    #
    class ListCalculatedAttributesForProfileResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object in a list that represents a domain.
    #
    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the domain was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the domain was most recently edited.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListDomainItem AWS API Documentation
    #
    class ListDomainItem < Struct.new(
      :domain_name,
      :created_at,
      :last_updated_at,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects returned per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListDomainLayoutsRequest AWS API Documentation
    #
    class ListDomainLayoutsRequest < Struct.new(
      :domain_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   Contains summary information about an EventStream.
    #   @return [Array<Types::LayoutItem>]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListDomainLayoutsResponse AWS API Documentation
    #
    class ListDomainLayoutsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of domain object types returned per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous call to
    #   ListDomainObjectTypes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListDomainObjectTypesRequest AWS API Documentation
    #
    class ListDomainObjectTypesRequest < Struct.new(
      :domain_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of domain object types.
    #   @return [Array<Types::DomainObjectTypesListItem>]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous call to
    #   ListDomainObjectTypes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListDomainObjectTypesResponse AWS API Documentation
    #
    class ListDomainObjectTypesResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = [:items]
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token from the previous ListDomain API call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects returned per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListDomainsRequest AWS API Documentation
    #
    class ListDomainsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of ListDomains instances.
    #   @return [Array<Types::ListDomainItem>]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous ListDomains API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListDomainsResponse AWS API Documentation
    #
    class ListDomainsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects returned per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListEventStreamsRequest AWS API Documentation
    #
    class ListEventStreamsRequest < Struct.new(
      :domain_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   Contains summary information about an EventStream.
    #   @return [Array<Types::EventStreamSummary>]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListEventStreamsResponse AWS API Documentation
    #
    class ListEventStreamsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use with ListEventTriggers.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListEventTriggersRequest AWS API Documentation
    #
    class ListEventTriggersRequest < Struct.new(
      :domain_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of Event Triggers.
    #   @return [Array<Types::EventTriggerSummaryItem>]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous call to ListEventTriggers.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListEventTriggersResponse AWS API Documentation
    #
    class ListEventTriggersResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = [:items]
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListIdentityResolutionJobsRequest AWS API Documentation
    #
    class ListIdentityResolutionJobsRequest < Struct.new(
      :domain_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identity_resolution_jobs_list
    #   A list of Identity Resolution Jobs.
    #   @return [Array<Types::IdentityResolutionJob>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListIdentityResolutionJobsResponse AWS API Documentation
    #
    class ListIdentityResolutionJobsResponse < Struct.new(
      :identity_resolution_jobs_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # An integration in list of integrations.
    #
    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] uri
    #   The URI of the S3 bucket or any other type of data source.
    #   @return [String]
    #
    # @!attribute [rw] object_type_name
    #   The name of the profile object type.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the domain was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the integration was most recently edited.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] object_type_names
    #   A map in which each key is an event type from an external
    #   application such as Segment or Shopify, and each value is an
    #   `ObjectTypeName` (template) used to ingest the event. It supports
    #   the following event types: `SegmentIdentify`,
    #   `ShopifyCreateCustomers`, `ShopifyUpdateCustomers`,
    #   `ShopifyCreateDraftOrders`, `ShopifyUpdateDraftOrders`,
    #   `ShopifyCreateOrders`, and `ShopifyUpdatedOrders`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] workflow_id
    #   Unique identifier for the workflow.
    #   @return [String]
    #
    # @!attribute [rw] is_unstructured
    #   Boolean that shows if the Flow that's associated with the
    #   Integration is created in Amazon Appflow, or with ObjectTypeName
    #   equals \_unstructured via API/CLI in flowDefinition.
    #   @return [Boolean]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. The Integration uses
    #   this role to make Customer Profiles requests on your behalf.
    #   @return [String]
    #
    # @!attribute [rw] event_trigger_names
    #   A list of unique names for active event triggers associated with the
    #   integration.
    #   @return [Array<String>]
    #
    # @!attribute [rw] scope
    #   The scope or boundary of the integration item's applicability.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListIntegrationItem AWS API Documentation
    #
    class ListIntegrationItem < Struct.new(
      :domain_name,
      :uri,
      :object_type_name,
      :created_at,
      :last_updated_at,
      :tags,
      :object_type_names,
      :workflow_id,
      :is_unstructured,
      :role_arn,
      :event_trigger_names,
      :scope)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous ListIntegrations API call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects returned per page.
    #   @return [Integer]
    #
    # @!attribute [rw] include_hidden
    #   Boolean to indicate if hidden integration should be returned.
    #   Defaults to `False`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListIntegrationsRequest AWS API Documentation
    #
    class ListIntegrationsRequest < Struct.new(
      :domain_name,
      :next_token,
      :max_results,
      :include_hidden)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of ListIntegrations instances.
    #   @return [Array<Types::ListIntegrationItem>]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous ListIntegrations API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListIntegrationsResponse AWS API Documentation
    #
    class ListIntegrationsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Item that contains the attribute and when it was last updated.
    #
    # @!attribute [rw] attribute_name
    #   Name of the attribute.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   When the attribute was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListObjectTypeAttributeItem AWS API Documentation
    #
    class ListObjectTypeAttributeItem < Struct.new(
      :attribute_name,
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents an item in the list of object type attribute values with
    # its associated metadata.
    #
    # @!attribute [rw] value
    #   The actual value of the object type attribute.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the object type attribute value was most
    #   recently updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListObjectTypeAttributeValuesItem AWS API Documentation
    #
    class ListObjectTypeAttributeValuesItem < Struct.new(
      :value,
      :last_updated_at)
      SENSITIVE = [:value]
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token from the previous call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects returned per page. Valid Range:
    #   Minimum value of 1. Maximum value of 100. If not provided default as
    #   100.
    #   @return [Integer]
    #
    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] object_type_name
    #   The unique name of the domain object type.
    #   @return [String]
    #
    # @!attribute [rw] attribute_name
    #   The attribute name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListObjectTypeAttributeValuesRequest AWS API Documentation
    #
    class ListObjectTypeAttributeValuesRequest < Struct.new(
      :next_token,
      :max_results,
      :domain_name,
      :object_type_name,
      :attribute_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   A list of unique attribute values sorted on the basis of
    #   LastUpdatedAt.
    #   @return [Array<Types::ListObjectTypeAttributeValuesItem>]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous call to call
    #   ListObjectTypeAttributeValues.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListObjectTypeAttributeValuesResponse AWS API Documentation
    #
    class ListObjectTypeAttributeValuesResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token from the previous call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects returned per page.
    #   @return [Integer]
    #
    # @!attribute [rw] domain_name
    #   The unique identifier of the domain.
    #   @return [String]
    #
    # @!attribute [rw] object_type_name
    #   The name of the profile object type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListObjectTypeAttributesRequest AWS API Documentation
    #
    class ListObjectTypeAttributesRequest < Struct.new(
      :next_token,
      :max_results,
      :domain_name,
      :object_type_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The items returned as part of the response.
    #   @return [Array<Types::ListObjectTypeAttributeItem>]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListObjectTypeAttributesResponse AWS API Documentation
    #
    class ListObjectTypeAttributesResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain for which to return profile history
    #   records.
    #   @return [String]
    #
    # @!attribute [rw] profile_id
    #   The identifier of the profile to be taken.
    #   @return [String]
    #
    # @!attribute [rw] object_type_name
    #   Applies a filter to include profile history records only with the
    #   specified `ObjectTypeName` value in the response.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] action_type
    #   Applies a filter to include profile history records only with the
    #   specified `ActionType` value in the response.
    #   @return [String]
    #
    # @!attribute [rw] performed_by
    #   Applies a filter to include profile history records only with the
    #   specified `PerformedBy` value in the response. The `PerformedBy`
    #   value can be the Amazon Resource Name (ARN) of the person or service
    #   principal who performed the action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListProfileHistoryRecordsRequest AWS API Documentation
    #
    class ListProfileHistoryRecordsRequest < Struct.new(
      :domain_name,
      :profile_id,
      :object_type_name,
      :next_token,
      :max_results,
      :action_type,
      :performed_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] profile_history_records
    #   The list of profile history records.
    #   @return [Array<Types::ProfileHistoryRecord>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListProfileHistoryRecordsResponse AWS API Documentation
    #
    class ListProfileHistoryRecordsResponse < Struct.new(
      :profile_history_records,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # A ProfileObjectType instance.
    #
    # @!attribute [rw] object_type_name
    #   The name of the profile object type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the profile object type.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the domain was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the profile object type was most recently
    #   edited.
    #   @return [Time]
    #
    # @!attribute [rw] max_profile_object_count
    #   The amount of profile object max count assigned to the object type.
    #   @return [Integer]
    #
    # @!attribute [rw] max_available_profile_object_count
    #   The amount of provisioned profile object max count available.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListProfileObjectTypeItem AWS API Documentation
    #
    class ListProfileObjectTypeItem < Struct.new(
      :object_type_name,
      :description,
      :created_at,
      :last_updated_at,
      :max_profile_object_count,
      :max_available_profile_object_count,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A ProfileObjectTypeTemplate in a list of ProfileObjectTypeTemplates.
    #
    # @!attribute [rw] template_id
    #   A unique identifier for the object template.
    #   @return [String]
    #
    # @!attribute [rw] source_name
    #   The name of the source of the object template.
    #   @return [String]
    #
    # @!attribute [rw] source_object
    #   The source of the object template.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListProfileObjectTypeTemplateItem AWS API Documentation
    #
    class ListProfileObjectTypeTemplateItem < Struct.new(
      :template_id,
      :source_name,
      :source_object)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token from the previous ListObjectTypeTemplates API
    #   call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects returned per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListProfileObjectTypeTemplatesRequest AWS API Documentation
    #
    class ListProfileObjectTypeTemplatesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of ListProfileObjectType template instances.
    #   @return [Array<Types::ListProfileObjectTypeTemplateItem>]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous ListObjectTypeTemplates API
    #   call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListProfileObjectTypeTemplatesResponse AWS API Documentation
    #
    class ListProfileObjectTypeTemplatesResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects returned per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListProfileObjectTypesRequest AWS API Documentation
    #
    class ListProfileObjectTypesRequest < Struct.new(
      :domain_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of ListProfileObjectTypes instances.
    #   @return [Array<Types::ListProfileObjectTypeItem>]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListProfileObjectTypesResponse AWS API Documentation
    #
    class ListProfileObjectTypesResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = [:items]
      include Aws::Structure
    end

    # A ProfileObject in a list of ProfileObjects.
    #
    # @!attribute [rw] object_type_name
    #   Specifies the kind of object being added to a profile, such as
    #   "Salesforce-Account."
    #   @return [String]
    #
    # @!attribute [rw] profile_object_unique_key
    #   The unique identifier of the ProfileObject generated by the service.
    #   @return [String]
    #
    # @!attribute [rw] object
    #   A JSON representation of a ProfileObject that belongs to a profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListProfileObjectsItem AWS API Documentation
    #
    class ListProfileObjectsItem < Struct.new(
      :object_type_name,
      :profile_object_unique_key,
      :object)
      SENSITIVE = [:object]
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token from the previous call to ListProfileObjects.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects returned per page.
    #   @return [Integer]
    #
    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] object_type_name
    #   The name of the profile object type.
    #   @return [String]
    #
    # @!attribute [rw] profile_id
    #   The unique identifier of a customer profile.
    #   @return [String]
    #
    # @!attribute [rw] object_filter
    #   Applies a filter to the response to include profile objects with the
    #   specified index values.
    #   @return [Types::ObjectFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListProfileObjectsRequest AWS API Documentation
    #
    class ListProfileObjectsRequest < Struct.new(
      :next_token,
      :max_results,
      :domain_name,
      :object_type_name,
      :profile_id,
      :object_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of ListProfileObject instances.
    #   @return [Array<Types::ListProfileObjectsItem>]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous call to ListProfileObjects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListProfileObjectsResponse AWS API Documentation
    #
    class ListProfileObjectsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of recommender recipes to return in the response.
    #   The default value is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token received from a previous ListRecommenderRecipes call to
    #   retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListRecommenderRecipesRequest AWS API Documentation
    #
    class ListRecommenderRecipesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results. Null if there are no
    #   more results to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] recommender_recipes
    #   A list of available recommender recipes and their properties.
    #   @return [Array<Types::RecommenderRecipe>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListRecommenderRecipesResponse AWS API Documentation
    #
    class ListRecommenderRecipesResponse < Struct.new(
      :next_token,
      :recommender_recipes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of recommenders to return in the response. The
    #   default value is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token received from a previous ListRecommenders call to retrieve
    #   the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListRecommendersRequest AWS API Documentation
    #
    class ListRecommendersRequest < Struct.new(
      :domain_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token to retrieve the next page of results. Null if there are no
    #   more results to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] recommenders
    #   A list of recommenders and their properties in the specified domain.
    #   @return [Array<Types::RecommenderSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListRecommendersResponse AWS API Documentation
    #
    class ListRecommendersResponse < Struct.new(
      :next_token,
      :recommenders)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token from the previous `ListRuleBasedMatches` API
    #   call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of `MatchIds` returned per page.
    #   @return [Integer]
    #
    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListRuleBasedMatchesRequest AWS API Documentation
    #
    class ListRuleBasedMatchesRequest < Struct.new(
      :next_token,
      :max_results,
      :domain_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] match_ids
    #   The list of `MatchIds` for the given domain.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous `ListRuleBasedMatches` API
    #   call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListRuleBasedMatchesResponse AWS API Documentation
    #
    class ListRuleBasedMatchesResponse < Struct.new(
      :match_ids,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique identifier of the domain.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects returned per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListSegmentDefinitionsRequest AWS API Documentation
    #
    class ListSegmentDefinitionsRequest < Struct.new(
      :domain_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token from the previous call.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   List of segment definitions.
    #   @return [Array<Types::SegmentDefinitionItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListSegmentDefinitionsResponse AWS API Documentation
    #
    class ListSegmentDefinitionsResponse < Struct.new(
      :next_token,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource for which you want to view tags.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain to list upload jobs for.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of upload jobs to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous call to retrieve the next
    #   page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListUploadJobsRequest AWS API Documentation
    #
    class ListUploadJobsRequest < Struct.new(
      :domain_name,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token to use to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The list of upload jobs for the specified domain.
    #   @return [Array<Types::UploadJobItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListUploadJobsResponse AWS API Documentation
    #
    class ListUploadJobsResponse < Struct.new(
      :next_token,
      :items)
      SENSITIVE = []
      include Aws::Structure
    end

    # A workflow in list of workflows.
    #
    # @!attribute [rw] workflow_type
    #   The type of workflow. The only supported value is
    #   APPFLOW\_INTEGRATION.
    #   @return [String]
    #
    # @!attribute [rw] workflow_id
    #   Unique identifier for the workflow.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of workflow execution.
    #   @return [String]
    #
    # @!attribute [rw] status_description
    #   Description for workflow execution status.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Creation timestamp for workflow.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   Last updated timestamp for workflow.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListWorkflowsItem AWS API Documentation
    #
    class ListWorkflowsItem < Struct.new(
      :workflow_type,
      :workflow_id,
      :status,
      :status_description,
      :created_at,
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] workflow_type
    #   The type of workflow. The only supported value is
    #   APPFLOW\_INTEGRATION.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of workflow execution.
    #   @return [String]
    #
    # @!attribute [rw] query_start_date
    #   Retrieve workflows started after timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] query_end_date
    #   Retrieve workflows ended after timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListWorkflowsRequest AWS API Documentation
    #
    class ListWorkflowsRequest < Struct.new(
      :domain_name,
      :workflow_type,
      :status,
      :query_start_date,
      :query_end_date,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   List containing workflow details.
    #   @return [Array<Types::ListWorkflowsItem>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListWorkflowsResponse AWS API Documentation
    #
    class ListWorkflowsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties that are applied when Marketo is being used as a
    # source.
    #
    # @!attribute [rw] object
    #   The object specified in the Marketo flow source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/MarketoSourceProperties AWS API Documentation
    #
    class MarketoSourceProperties < Struct.new(
      :object)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Match group object.
    #
    # @!attribute [rw] match_id
    #   The unique identifiers for this group of profiles that match.
    #   @return [String]
    #
    # @!attribute [rw] profile_ids
    #   A list of identifiers for profiles that match.
    #   @return [Array<String>]
    #
    # @!attribute [rw] confidence_score
    #   A number between 0 and 1, where a higher score means higher
    #   similarity. Examining match confidence scores lets you distinguish
    #   between groups of similar records in which the system is highly
    #   confident (which you may decide to merge), groups of similar records
    #   about which the system is uncertain (which you may decide to have
    #   reviewed by a human), and groups of similar records that the system
    #   deems to be unlikely (which you may decide to reject). Given
    #   confidence scores vary as per the data input, it should not be used
    #   an absolute measure of matching quality.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/MatchItem AWS API Documentation
    #
    class MatchItem < Struct.new(
      :match_id,
      :profile_ids,
      :confidence_score)
      SENSITIVE = []
      include Aws::Structure
    end

    # The flag that enables the matching process of duplicate profiles.
    #
    # @!attribute [rw] enabled
    #   The flag that enables the matching process of duplicate profiles.
    #   @return [Boolean]
    #
    # @!attribute [rw] job_schedule
    #   The day and time when do you want to start the Identity Resolution
    #   Job every week.
    #   @return [Types::JobSchedule]
    #
    # @!attribute [rw] auto_merging
    #   Configuration information about the auto-merging process.
    #   @return [Types::AutoMerging]
    #
    # @!attribute [rw] exporting_config
    #   Configuration information for exporting Identity Resolution results,
    #   for example, to an S3 bucket.
    #   @return [Types::ExportingConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/MatchingRequest AWS API Documentation
    #
    class MatchingRequest < Struct.new(
      :enabled,
      :job_schedule,
      :auto_merging,
      :exporting_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The flag that enables the matching process of duplicate profiles.
    #
    # @!attribute [rw] enabled
    #   The flag that enables the matching process of duplicate profiles.
    #   @return [Boolean]
    #
    # @!attribute [rw] job_schedule
    #   The day and time when do you want to start the Identity Resolution
    #   Job every week.
    #   @return [Types::JobSchedule]
    #
    # @!attribute [rw] auto_merging
    #   Configuration information about the auto-merging process.
    #   @return [Types::AutoMerging]
    #
    # @!attribute [rw] exporting_config
    #   Configuration information for exporting Identity Resolution results,
    #   for example, to an S3 bucket.
    #   @return [Types::ExportingConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/MatchingResponse AWS API Documentation
    #
    class MatchingResponse < Struct.new(
      :enabled,
      :job_schedule,
      :auto_merging,
      :exporting_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies how does the rule-based matching process should match
    # profiles. You can choose from the following attributes to build the
    # matching Rule:
    #
    # * AccountNumber
    #
    # * Address.Address
    #
    # * Address.City
    #
    # * Address.Country
    #
    # * Address.County
    #
    # * Address.PostalCode
    #
    # * Address.State
    #
    # * Address.Province
    #
    # * BirthDate
    #
    # * BusinessName
    #
    # * EmailAddress
    #
    # * FirstName
    #
    # * Gender
    #
    # * LastName
    #
    # * MiddleName
    #
    # * PhoneNumber
    #
    # * Any customized profile attributes that start with the `Attributes`
    #
    # @!attribute [rw] rule
    #   A single rule level of the `MatchRules`. Configures how the
    #   rule-based matching process should match profiles.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/MatchingRule AWS API Documentation
    #
    class MatchingRule < Struct.new(
      :rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] main_profile_id
    #   The identifier of the profile to be taken.
    #   @return [String]
    #
    # @!attribute [rw] profile_ids_to_be_merged
    #   The identifier of the profile to be merged into MainProfileId.
    #   @return [Array<String>]
    #
    # @!attribute [rw] field_source_profile_ids
    #   The identifiers of the fields in the profile that has the
    #   information you want to apply to the merge. For example, say you
    #   want to merge EmailAddress from Profile1 into MainProfile. This
    #   would be the identifier of the EmailAddress field in Profile1.
    #   @return [Types::FieldSourceProfileIds]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/MergeProfilesRequest AWS API Documentation
    #
    class MergeProfilesRequest < Struct.new(
      :domain_name,
      :main_profile_id,
      :profile_ids_to_be_merged,
      :field_source_profile_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] message
    #   A message that indicates the merge request is complete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/MergeProfilesResponse AWS API Documentation
    #
    class MergeProfilesResponse < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The criteria that a specific object attribute must meet to trigger the
    # destination.
    #
    # @!attribute [rw] source
    #   An attribute contained within a source object.
    #   @return [String]
    #
    # @!attribute [rw] field_name
    #   A field defined within an object type.
    #   @return [String]
    #
    # @!attribute [rw] comparison_operator
    #   The operator used to compare an attribute against a list of values.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   A list of attribute values used for comparison.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ObjectAttribute AWS API Documentation
    #
    class ObjectAttribute < Struct.new(
      :source,
      :field_name,
      :comparison_operator,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The filter applied to `ListProfileObjects` response to include profile
    # objects with the specified index values.
    #
    # @!attribute [rw] key_name
    #   A searchable identifier of a profile object. The predefined keys you
    #   can use to search for `_asset` include: `_assetId`, `_assetName`,
    #   and `_serialNumber`. The predefined keys you can use to search for
    #   `_case` include: `_caseId`. The predefined keys you can use to
    #   search for `_order` include: `_orderId`.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   A list of key values.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ObjectFilter AWS API Documentation
    #
    class ObjectFilter < Struct.new(
      :key_name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a field in a ProfileObjectType.
    #
    # @!attribute [rw] source
    #   A field of a ProfileObject. For example: \_source.FirstName, where
    #   “\_source” is a ProfileObjectType of a Zendesk user and “FirstName”
    #   is a field in that ObjectType.
    #   @return [String]
    #
    # @!attribute [rw] target
    #   The location of the data in the standard ProfileObject model. For
    #   example: \_profile.Address.PostalCode.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The content type of the field. Used for determining equality when
    #   searching.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ObjectTypeField AWS API Documentation
    #
    class ObjectTypeField < Struct.new(
      :source,
      :target,
      :content_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that defines the Key element of a ProfileObject. A Key is a
    # special element that can be used to search for a customer profile.
    #
    # @!attribute [rw] standard_identifiers
    #   The types of keys that a ProfileObject can have. Each ProfileObject
    #   can have only 1 UNIQUE key but multiple PROFILE keys. PROFILE,
    #   ASSET, CASE, or ORDER means that this key can be used to tie an
    #   object to a PROFILE, ASSET, CASE, or ORDER respectively. UNIQUE
    #   means that it can be used to uniquely identify an object. If a key a
    #   is marked as SECONDARY, it will be used to search for profiles after
    #   all other PROFILE keys have been searched. A LOOKUP\_ONLY key is
    #   only used to match a profile but is not persisted to be used for
    #   searching of the profile. A NEW\_ONLY key is only used if the
    #   profile does not already exist before the object is ingested,
    #   otherwise it is only used for matching objects to profiles.
    #   @return [Array<String>]
    #
    # @!attribute [rw] field_names
    #   The reference for the key name of the fields map.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ObjectTypeKey AWS API Documentation
    #
    class ObjectTypeKey < Struct.new(
      :standard_identifiers,
      :field_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a limit and the time period during which it is enforced.
    #
    # @!attribute [rw] unit
    #   The unit of time.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The amount of time of the specified unit.
    #   @return [Integer]
    #
    # @!attribute [rw] max_invocations_per_profile
    #   The maximum allowed number of destination invocations per profile.
    #   @return [Integer]
    #
    # @!attribute [rw] unlimited
    #   If set to true, there is no limit on the number of destination
    #   invocations per profile. The default is false.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/Period AWS API Documentation
    #
    class Period < Struct.new(
      :unit,
      :value,
      :max_invocations_per_profile,
      :unlimited)
      SENSITIVE = []
      include Aws::Structure
    end

    # The standard profile of a customer.
    #
    # @!attribute [rw] profile_id
    #   The unique identifier of a customer profile.
    #   @return [String]
    #
    # @!attribute [rw] account_number
    #   An account number that you have assigned to the customer.
    #   @return [String]
    #
    # @!attribute [rw] additional_information
    #   Any additional information relevant to the customer’s profile.
    #   @return [String]
    #
    # @!attribute [rw] party_type
    #   The type of profile used to describe the customer.
    #   @return [String]
    #
    # @!attribute [rw] business_name
    #   The name of the customer’s business.
    #   @return [String]
    #
    # @!attribute [rw] first_name
    #   The customer’s first name.
    #   @return [String]
    #
    # @!attribute [rw] middle_name
    #   The customer’s middle name.
    #   @return [String]
    #
    # @!attribute [rw] last_name
    #   The customer’s last name.
    #   @return [String]
    #
    # @!attribute [rw] birth_date
    #   The customer’s birth date.
    #   @return [String]
    #
    # @!attribute [rw] gender
    #   The gender with which the customer identifies.
    #   @return [String]
    #
    # @!attribute [rw] phone_number
    #   The customer's phone number, which has not been specified as a
    #   mobile, home, or business number.
    #   @return [String]
    #
    # @!attribute [rw] mobile_phone_number
    #   The customer’s mobile phone number.
    #   @return [String]
    #
    # @!attribute [rw] home_phone_number
    #   The customer’s home phone number.
    #   @return [String]
    #
    # @!attribute [rw] business_phone_number
    #   The customer’s home phone number.
    #   @return [String]
    #
    # @!attribute [rw] email_address
    #   The customer’s email address, which has not been specified as a
    #   personal or business address.
    #   @return [String]
    #
    # @!attribute [rw] personal_email_address
    #   The customer’s personal email address.
    #   @return [String]
    #
    # @!attribute [rw] business_email_address
    #   The customer’s business email address.
    #   @return [String]
    #
    # @!attribute [rw] address
    #   A generic address associated with the customer that is not mailing,
    #   shipping, or billing.
    #   @return [Types::Address]
    #
    # @!attribute [rw] shipping_address
    #   The customer’s shipping address.
    #   @return [Types::Address]
    #
    # @!attribute [rw] mailing_address
    #   The customer’s mailing address.
    #   @return [Types::Address]
    #
    # @!attribute [rw] billing_address
    #   The customer’s billing address.
    #   @return [Types::Address]
    #
    # @!attribute [rw] attributes
    #   A key value pair of attributes of a customer profile.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] found_by_items
    #   A list of items used to find a profile returned in a
    #   [SearchProfiles][1] response. An item is a key-value(s) pair that
    #   matches an attribute in the profile.
    #
    #   If the optional `AdditionalSearchKeys` parameter was included in the
    #   [SearchProfiles][1] request, the `FoundByItems` list should be
    #   interpreted based on the `LogicalOperator` used in the request:
    #
    #   * `AND` - The profile included in the response matched all of the
    #     search keys specified in the request. The `FoundByItems` will
    #     include all of the key-value(s) pairs that were specified in the
    #     request (as this is a requirement of `AND` search logic).
    #
    #   * `OR` - The profile included in the response matched at least one
    #     of the search keys specified in the request. The `FoundByItems`
    #     will include each of the key-value(s) pairs that the profile was
    #     found by.
    #
    #   The `OR` relationship is the default behavior if the
    #   `LogicalOperator` parameter is not included in the
    #   [SearchProfiles][1] request.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_SearchProfiles.html
    #   @return [Array<Types::FoundByKeyValue>]
    #
    # @!attribute [rw] party_type_string
    #   An alternative to PartyType which accepts any string as input.
    #   @return [String]
    #
    # @!attribute [rw] gender_string
    #   An alternative to Gender which accepts any string as input.
    #   @return [String]
    #
    # @!attribute [rw] profile_type
    #   The type of the profile.
    #   @return [String]
    #
    # @!attribute [rw] engagement_preferences
    #   The customer or account’s engagement preferences.
    #   @return [Types::EngagementPreferences]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/Profile AWS API Documentation
    #
    class Profile < Struct.new(
      :profile_id,
      :account_number,
      :additional_information,
      :party_type,
      :business_name,
      :first_name,
      :middle_name,
      :last_name,
      :birth_date,
      :gender,
      :phone_number,
      :mobile_phone_number,
      :home_phone_number,
      :business_phone_number,
      :email_address,
      :personal_email_address,
      :business_email_address,
      :address,
      :shipping_address,
      :mailing_address,
      :billing_address,
      :attributes,
      :found_by_items,
      :party_type_string,
      :gender_string,
      :profile_type,
      :engagement_preferences)
      SENSITIVE = [:account_number, :additional_information, :party_type, :business_name, :first_name, :middle_name, :last_name, :birth_date, :gender, :phone_number, :mobile_phone_number, :home_phone_number, :business_phone_number, :email_address, :personal_email_address, :business_email_address, :address, :shipping_address, :mailing_address, :billing_address, :attributes, :party_type_string, :gender_string, :profile_type, :engagement_preferences]
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique identifier of the domain.
    #   @return [String]
    #
    # @!attribute [rw] attribute_name
    #   The attribute name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ProfileAttributeValuesRequest AWS API Documentation
    #
    class ProfileAttributeValuesRequest < Struct.new(
      :domain_name,
      :attribute_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] attribute_name
    #   The attribute name.
    #   @return [String]
    #
    # @!attribute [rw] items
    #   The items returned as part of the response.
    #   @return [Array<Types::AttributeValueItem>]
    #
    # @!attribute [rw] status_code
    #   The status code for the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ProfileAttributeValuesResponse AWS API Documentation
    #
    class ProfileAttributeValuesResponse < Struct.new(
      :domain_name,
      :attribute_name,
      :items,
      :status_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The object used to segment on attributes within the customer profile.
    #
    # @!attribute [rw] account_number
    #   A field to describe values to segment on within account number.
    #   @return [Types::ProfileDimension]
    #
    # @!attribute [rw] additional_information
    #   A field to describe values to segment on within additional
    #   information.
    #   @return [Types::ExtraLengthValueProfileDimension]
    #
    # @!attribute [rw] first_name
    #   A field to describe values to segment on within first name.
    #   @return [Types::ProfileDimension]
    #
    # @!attribute [rw] last_name
    #   A field to describe values to segment on within last name.
    #   @return [Types::ProfileDimension]
    #
    # @!attribute [rw] middle_name
    #   A field to describe values to segment on within middle name.
    #   @return [Types::ProfileDimension]
    #
    # @!attribute [rw] gender_string
    #   A field to describe values to segment on within genderString.
    #   @return [Types::ProfileDimension]
    #
    # @!attribute [rw] party_type_string
    #   A field to describe values to segment on within partyTypeString.
    #   @return [Types::ProfileDimension]
    #
    # @!attribute [rw] birth_date
    #   A field to describe values to segment on within birthDate.
    #   @return [Types::DateDimension]
    #
    # @!attribute [rw] phone_number
    #   A field to describe values to segment on within phone number.
    #   @return [Types::ProfileDimension]
    #
    # @!attribute [rw] business_name
    #   A field to describe values to segment on within business name.
    #   @return [Types::ProfileDimension]
    #
    # @!attribute [rw] business_phone_number
    #   A field to describe values to segment on within business phone
    #   number.
    #   @return [Types::ProfileDimension]
    #
    # @!attribute [rw] home_phone_number
    #   A field to describe values to segment on within home phone number.
    #   @return [Types::ProfileDimension]
    #
    # @!attribute [rw] mobile_phone_number
    #   A field to describe values to segment on within mobile phone number.
    #   @return [Types::ProfileDimension]
    #
    # @!attribute [rw] email_address
    #   A field to describe values to segment on within email address.
    #   @return [Types::ProfileDimension]
    #
    # @!attribute [rw] personal_email_address
    #   A field to describe values to segment on within personal email
    #   address.
    #   @return [Types::ProfileDimension]
    #
    # @!attribute [rw] business_email_address
    #   A field to describe values to segment on within business email
    #   address.
    #   @return [Types::ProfileDimension]
    #
    # @!attribute [rw] address
    #   A field to describe values to segment on within address.
    #   @return [Types::AddressDimension]
    #
    # @!attribute [rw] shipping_address
    #   A field to describe values to segment on within shipping address.
    #   @return [Types::AddressDimension]
    #
    # @!attribute [rw] mailing_address
    #   A field to describe values to segment on within mailing address.
    #   @return [Types::AddressDimension]
    #
    # @!attribute [rw] billing_address
    #   A field to describe values to segment on within billing address.
    #   @return [Types::AddressDimension]
    #
    # @!attribute [rw] attributes
    #   A field to describe values to segment on within attributes.
    #   @return [Hash<String,Types::AttributeDimension>]
    #
    # @!attribute [rw] profile_type
    #   A field to describe values to segment on within profile type.
    #   @return [Types::ProfileTypeDimension]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ProfileAttributes AWS API Documentation
    #
    class ProfileAttributes < Struct.new(
      :account_number,
      :additional_information,
      :first_name,
      :last_name,
      :middle_name,
      :gender_string,
      :party_type_string,
      :birth_date,
      :phone_number,
      :business_name,
      :business_phone_number,
      :home_phone_number,
      :mobile_phone_number,
      :email_address,
      :personal_email_address,
      :business_email_address,
      :address,
      :shipping_address,
      :mailing_address,
      :billing_address,
      :attributes,
      :profile_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object to hold the dimensions of a profile's fields to segment on.
    #
    # @!attribute [rw] dimension_type
    #   The action to segment on.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values to apply the DimensionType on.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ProfileDimension AWS API Documentation
    #
    class ProfileDimension < Struct.new(
      :dimension_type,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains profile history record metadata.
    #
    # @!attribute [rw] id
    #   The unique identifier of the profile history record.
    #   @return [String]
    #
    # @!attribute [rw] object_type_name
    #   The name of the profile object type.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the profile history record was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the profile history record was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] action_type
    #   The action type of the profile history record.
    #   @return [String]
    #
    # @!attribute [rw] profile_object_unique_key
    #   The unique identifier of the profile object generated by the
    #   service.
    #   @return [String]
    #
    # @!attribute [rw] performed_by
    #   The Amazon Resource Name (ARN) of the person or service principal
    #   who performed the action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ProfileHistoryRecord AWS API Documentation
    #
    class ProfileHistoryRecord < Struct.new(
      :id,
      :object_type_name,
      :created_at,
      :last_updated_at,
      :action_type,
      :profile_object_unique_key,
      :performed_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that holds failures for membership.
    #
    # @!attribute [rw] profile_id
    #   The profile id the failure belongs to.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message describing the failure.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status describing the failure.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ProfileQueryFailures AWS API Documentation
    #
    class ProfileQueryFailures < Struct.new(
      :profile_id,
      :message,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that holds the results for membership.
    #
    # @!attribute [rw] profile_id
    #   The profile id the result belongs to.
    #   @return [String]
    #
    # @!attribute [rw] query_result
    #   Describes whether the profile was absent or present in the segment.
    #   @return [String]
    #
    # @!attribute [rw] profile
    #   The standard profile of a customer.
    #   @return [Types::Profile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ProfileQueryResult AWS API Documentation
    #
    class ProfileQueryResult < Struct.new(
      :profile_id,
      :query_result,
      :profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object to hold the dimension of a profile type field to segment on.
    #
    # @!attribute [rw] dimension_type
    #   The action to segment on.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values to apply the DimensionType on.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ProfileTypeDimension AWS API Documentation
    #
    class ProfileTypeDimension < Struct.new(
      :dimension_type,
      :values)
      SENSITIVE = [:values]
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] object_type_name
    #   The unique name of the domain object type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the domain object type.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key
    #   The customer provided KMS key used to encrypt this type of domain
    #   object.
    #   @return [String]
    #
    # @!attribute [rw] fields
    #   A map of field names to their corresponding domain object type field
    #   definitions.
    #   @return [Hash<String,Types::DomainObjectTypeField>]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/PutDomainObjectTypeRequest AWS API Documentation
    #
    class PutDomainObjectTypeRequest < Struct.new(
      :domain_name,
      :object_type_name,
      :description,
      :encryption_key,
      :fields,
      :tags)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] object_type_name
    #   The unique name of the domain object type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the domain object type.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key
    #   The customer provided KMS key used to encrypt this type of domain
    #   object.
    #   @return [String]
    #
    # @!attribute [rw] fields
    #   A map of field names to their corresponding domain object type field
    #   definitions.
    #   @return [Hash<String,Types::DomainObjectTypeField>]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the domain object type was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the domain object type was most recently
    #   edited.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/PutDomainObjectTypeResponse AWS API Documentation
    #
    class PutDomainObjectTypeResponse < Struct.new(
      :object_type_name,
      :description,
      :encryption_key,
      :fields,
      :created_at,
      :last_updated_at,
      :tags)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] uri
    #   The URI of the S3 bucket or any other type of data source.
    #   @return [String]
    #
    # @!attribute [rw] object_type_name
    #   The name of the profile object type.
    #   @return [String]
    #
    # @!attribute [rw] object_type_names
    #   A map in which each key is an event type from an external
    #   application such as Segment or Shopify, and each value is an
    #   `ObjectTypeName` (template) used to ingest the event. It supports
    #   the following event types: `SegmentIdentify`,
    #   `ShopifyCreateCustomers`, `ShopifyUpdateCustomers`,
    #   `ShopifyCreateDraftOrders`, `ShopifyUpdateDraftOrders`,
    #   `ShopifyCreateOrders`, and `ShopifyUpdatedOrders`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] flow_definition
    #   The configuration that controls how Customer Profiles retrieves data
    #   from the source.
    #   @return [Types::FlowDefinition]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. The Integration uses
    #   this role to make Customer Profiles requests on your behalf.
    #   @return [String]
    #
    # @!attribute [rw] event_trigger_names
    #   A list of unique names for active event triggers associated with the
    #   integration.
    #   @return [Array<String>]
    #
    # @!attribute [rw] scope
    #   Specifies whether the integration applies to profile level data
    #   (associated with profiles) or domain level data (not associated with
    #   any specific profile). The default value is PROFILE.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/PutIntegrationRequest AWS API Documentation
    #
    class PutIntegrationRequest < Struct.new(
      :domain_name,
      :uri,
      :object_type_name,
      :object_type_names,
      :tags,
      :flow_definition,
      :role_arn,
      :event_trigger_names,
      :scope)
      SENSITIVE = [:flow_definition]
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] uri
    #   The URI of the S3 bucket or any other type of data source.
    #   @return [String]
    #
    # @!attribute [rw] object_type_name
    #   The name of the profile object type.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the domain was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the domain was most recently edited.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] object_type_names
    #   A map in which each key is an event type from an external
    #   application such as Segment or Shopify, and each value is an
    #   `ObjectTypeName` (template) used to ingest the event. It supports
    #   the following event types: `SegmentIdentify`,
    #   `ShopifyCreateCustomers`, `ShopifyUpdateCustomers`,
    #   `ShopifyCreateDraftOrders`, `ShopifyUpdateDraftOrders`,
    #   `ShopifyCreateOrders`, and `ShopifyUpdatedOrders`.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] workflow_id
    #   Unique identifier for the workflow.
    #   @return [String]
    #
    # @!attribute [rw] is_unstructured
    #   Boolean that shows if the Flow that's associated with the
    #   Integration is created in Amazon Appflow, or with ObjectTypeName
    #   equals \_unstructured via API/CLI in flowDefinition.
    #   @return [Boolean]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role. The Integration uses
    #   this role to make Customer Profiles requests on your behalf.
    #   @return [String]
    #
    # @!attribute [rw] event_trigger_names
    #   A list of unique names for active event triggers associated with the
    #   integration. This list would be empty if no Event Trigger is
    #   associated with the integration.
    #   @return [Array<String>]
    #
    # @!attribute [rw] scope
    #   Specifies whether the integration applies to profile level data
    #   (associated with profiles) or domain level data (not associated with
    #   any specific profile). The default value is PROFILE.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/PutIntegrationResponse AWS API Documentation
    #
    class PutIntegrationResponse < Struct.new(
      :domain_name,
      :uri,
      :object_type_name,
      :created_at,
      :last_updated_at,
      :tags,
      :object_type_names,
      :workflow_id,
      :is_unstructured,
      :role_arn,
      :event_trigger_names,
      :scope)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] object_type_name
    #   The name of the profile object type.
    #   @return [String]
    #
    # @!attribute [rw] object
    #   A string that is serialized from a JSON object.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/PutProfileObjectRequest AWS API Documentation
    #
    class PutProfileObjectRequest < Struct.new(
      :object_type_name,
      :object,
      :domain_name)
      SENSITIVE = [:object]
      include Aws::Structure
    end

    # @!attribute [rw] profile_object_unique_key
    #   The unique identifier of the profile object generated by the
    #   service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/PutProfileObjectResponse AWS API Documentation
    #
    class PutProfileObjectResponse < Struct.new(
      :profile_object_unique_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] object_type_name
    #   The name of the profile object type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the profile object type.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   A unique identifier for the object template. For some attributes in
    #   the request, the service will use the default value from the object
    #   template when TemplateId is present. If these attributes are present
    #   in the request, the service may return a `BadRequestException`.
    #   These attributes include: AllowProfileCreation,
    #   SourceLastUpdatedTimestampFormat, Fields, and Keys. For example, if
    #   AllowProfileCreation is set to true when TemplateId is set, the
    #   service may return a `BadRequestException`.
    #   @return [String]
    #
    # @!attribute [rw] expiration_days
    #   The number of days until the data in the object expires.
    #   @return [Integer]
    #
    # @!attribute [rw] encryption_key
    #   The customer-provided key to encrypt the profile object that will be
    #   created in this profile object type.
    #   @return [String]
    #
    # @!attribute [rw] allow_profile_creation
    #   Indicates whether a profile should be created when data is received
    #   if one doesn’t exist for an object of this type. The default is
    #   `FALSE`. If the AllowProfileCreation flag is set to `FALSE`, then
    #   the service tries to fetch a standard profile and associate this
    #   object with the profile. If it is set to `TRUE`, and if no match is
    #   found, then the service creates a new standard profile.
    #   @return [Boolean]
    #
    # @!attribute [rw] source_last_updated_timestamp_format
    #   The format of your `sourceLastUpdatedTimestamp` that was previously
    #   set up.
    #   @return [String]
    #
    # @!attribute [rw] max_profile_object_count
    #   The amount of profile object max count assigned to the object type
    #   @return [Integer]
    #
    # @!attribute [rw] fields
    #   A map of the name and ObjectType field.
    #   @return [Hash<String,Types::ObjectTypeField>]
    #
    # @!attribute [rw] keys
    #   A list of unique keys that can be used to map data to the profile.
    #   @return [Hash<String,Array<Types::ObjectTypeKey>>]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/PutProfileObjectTypeRequest AWS API Documentation
    #
    class PutProfileObjectTypeRequest < Struct.new(
      :domain_name,
      :object_type_name,
      :description,
      :template_id,
      :expiration_days,
      :encryption_key,
      :allow_profile_creation,
      :source_last_updated_timestamp_format,
      :max_profile_object_count,
      :fields,
      :keys,
      :tags)
      SENSITIVE = [:description, :fields, :keys]
      include Aws::Structure
    end

    # @!attribute [rw] object_type_name
    #   The name of the profile object type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the profile object type.
    #   @return [String]
    #
    # @!attribute [rw] template_id
    #   A unique identifier for the object template.
    #   @return [String]
    #
    # @!attribute [rw] expiration_days
    #   The number of days until the data in the object expires.
    #   @return [Integer]
    #
    # @!attribute [rw] encryption_key
    #   The customer-provided key to encrypt the profile object that will be
    #   created in this profile object type.
    #   @return [String]
    #
    # @!attribute [rw] allow_profile_creation
    #   Indicates whether a profile should be created when data is received
    #   if one doesn’t exist for an object of this type. The default is
    #   `FALSE`. If the AllowProfileCreation flag is set to `FALSE`, then
    #   the service tries to fetch a standard profile and associate this
    #   object with the profile. If it is set to `TRUE`, and if no match is
    #   found, then the service creates a new standard profile.
    #   @return [Boolean]
    #
    # @!attribute [rw] source_last_updated_timestamp_format
    #   The format of your `sourceLastUpdatedTimestamp` that was previously
    #   set up in fields that were parsed using [SimpleDateFormat][1]. If
    #   you have `sourceLastUpdatedTimestamp` in your field, you must set up
    #   `sourceLastUpdatedTimestampFormat`.
    #
    #
    #
    #   [1]: https://docs.oracle.com/javase/10/docs/api/java/text/SimpleDateFormat.html
    #   @return [String]
    #
    # @!attribute [rw] max_profile_object_count
    #   The amount of profile object max count assigned to the object type.
    #   @return [Integer]
    #
    # @!attribute [rw] max_available_profile_object_count
    #   The amount of provisioned profile object max count available.
    #   @return [Integer]
    #
    # @!attribute [rw] fields
    #   A map of the name and ObjectType field.
    #   @return [Hash<String,Types::ObjectTypeField>]
    #
    # @!attribute [rw] keys
    #   A list of unique keys that can be used to map data to the profile.
    #   @return [Hash<String,Array<Types::ObjectTypeKey>>]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the domain was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the domain was most recently edited.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/PutProfileObjectTypeResponse AWS API Documentation
    #
    class PutProfileObjectTypeResponse < Struct.new(
      :object_type_name,
      :description,
      :template_id,
      :expiration_days,
      :encryption_key,
      :allow_profile_creation,
      :source_last_updated_timestamp_format,
      :max_profile_object_count,
      :max_available_profile_object_count,
      :fields,
      :keys,
      :created_at,
      :last_updated_at,
      :tags)
      SENSITIVE = [:description, :fields, :keys]
      include Aws::Structure
    end

    # The relative time period over which data is included in the
    # aggregation.
    #
    # @!attribute [rw] value
    #   The amount of time of the specified unit.
    #   @return [Integer]
    #
    # @!attribute [rw] unit
    #   The unit of time.
    #   @return [String]
    #
    # @!attribute [rw] value_range
    #   A structure letting customers specify a relative time window over
    #   which over which data is included in the Calculated Attribute. Use
    #   positive numbers to indicate that the endpoint is in the past, and
    #   negative numbers to indicate it is in the future. ValueRange
    #   overrides Value.
    #   @return [Types::ValueRange]
    #
    # @!attribute [rw] timestamp_source
    #   An expression specifying the field in your JSON object from which
    #   the date should be parsed. The expression should follow the
    #   structure of \\"\{ObjectTypeName.&lt;Location of timestamp field in
    #   JSON pointer format&gt;}\\". E.g. if your object type is MyType and
    #   source JSON is \{"generatedAt": \{"timestamp":
    #   "1737587945945"}}, then TimestampSource should be
    #   "\{MyType.generatedAt.timestamp}".
    #   @return [String]
    #
    # @!attribute [rw] timestamp_format
    #   The format the timestamp field in your JSON object is specified.
    #   This value should be one of EPOCHMILLI (for Unix epoch timestamps
    #   with second/millisecond level precision) or ISO\_8601 (following
    #   ISO\_8601 format with second/millisecond level precision, with an
    #   optional offset of Z or in the format HH:MM or HHMM.). E.g. if your
    #   object type is MyType and source JSON is \{"generatedAt":
    #   \{"timestamp": "2001-07-04T12:08:56.235-0700"}}, then
    #   TimestampFormat should be "ISO\_8601".
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/Range AWS API Documentation
    #
    class Range < Struct.new(
      :value,
      :unit,
      :value_range,
      :timestamp_source,
      :timestamp_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # Overrides the original range on a calculated attribute definition.
    #
    # @!attribute [rw] start
    #   The start time of when to include objects.
    #   @return [Integer]
    #
    # @!attribute [rw] end
    #   The end time of when to include objects.
    #   @return [Integer]
    #
    # @!attribute [rw] unit
    #   The unit for start and end.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/RangeOverride AWS API Documentation
    #
    class RangeOverride < Struct.new(
      :start,
      :end,
      :unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information indicating if the Calculated Attribute is ready for use by
    # confirming all historical data has been processed and reflected.
    #
    # @!attribute [rw] progress_percentage
    #   Approximately how far the Calculated Attribute creation is from
    #   completion.
    #   @return [Integer]
    #
    # @!attribute [rw] message
    #   Any customer messaging.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/Readiness AWS API Documentation
    #
    class Readiness < Struct.new(
      :progress_percentage,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a single recommendation generated by the recommender
    # system.
    #
    # @!attribute [rw] catalog_item
    #   The catalog item being recommended, including its complete details
    #   and attributes.
    #   @return [Types::CatalogItem]
    #
    # @!attribute [rw] score
    #   Recommendation Score between 0 and 1.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/Recommendation AWS API Documentation
    #
    class Recommendation < Struct.new(
      :catalog_item,
      :score)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration settings that define the behavior and parameters of a
    # recommender.
    #
    # @!attribute [rw] events_config
    #   Configuration settings for how the recommender processes and uses
    #   events.
    #   @return [Types::EventsConfig]
    #
    # @!attribute [rw] training_frequency
    #   How often the recommender should retrain its model with new data.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/RecommenderConfig AWS API Documentation
    #
    class RecommenderConfig < Struct.new(
      :events_config,
      :training_frequency)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the algorithm and approach used to generate recommendations.
    #
    # @!attribute [rw] name
    #   The name of the recommender recipe.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the recommender recipe's purpose and
    #   functionality.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/RecommenderRecipe AWS API Documentation
    #
    class RecommenderRecipe < Struct.new(
      :name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of a recommender's configuration and current
    # state.
    #
    # @!attribute [rw] recommender_name
    #   The name of the recommender.
    #   @return [String]
    #
    # @!attribute [rw] recipe_name
    #   The name of the recipe used by this recommender.
    #   @return [String]
    #
    # @!attribute [rw] recommender_config
    #   The configuration settings applied to this recommender.
    #   @return [Types::RecommenderConfig]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the recommender was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A description of the recommender's purpose and characteristics.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current operational status of the recommender.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the recommender was edited.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] failure_reason
    #   If the recommender is in a failed state, provides the reason for the
    #   failure.
    #   @return [String]
    #
    # @!attribute [rw] latest_recommender_update
    #   Information about the most recent update performed on the
    #   recommender, including its status and timing.
    #   @return [Types::RecommenderUpdate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/RecommenderSummary AWS API Documentation
    #
    class RecommenderSummary < Struct.new(
      :recommender_name,
      :recipe_name,
      :recommender_config,
      :created_at,
      :description,
      :status,
      :last_updated_at,
      :tags,
      :failure_reason,
      :latest_recommender_update)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # Contains information about an update operation performed on a
    # recommender.
    #
    # @!attribute [rw] recommender_config
    #   The updated configuration settings applied to the recommender during
    #   this update.
    #   @return [Types::RecommenderConfig]
    #
    # @!attribute [rw] status
    #   The current status of the recommender update operation.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when this recommender update was initiated.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the recommender was edited.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   If the update operation failed, provides the reason for the failure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/RecommenderUpdate AWS API Documentation
    #
    class RecommenderUpdate < Struct.new(
      :recommender_config,
      :status,
      :created_at,
      :last_updated_at,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested resource does not exist, or access was denied.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of results for an upload job, including the number of
    # updated, created, and failed records.
    #
    # @!attribute [rw] updated_records
    #   The number of records that were updated during the upload job.
    #   @return [Integer]
    #
    # @!attribute [rw] created_records
    #   The number of records that were newly created during the upload job.
    #   @return [Integer]
    #
    # @!attribute [rw] failed_records
    #   The number of records that failed to be processed during the upload
    #   job.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ResultsSummary AWS API Documentation
    #
    class ResultsSummary < Struct.new(
      :updated_records,
      :created_records,
      :failed_records)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to enable the rule-based matching.
    #
    # @!attribute [rw] enabled
    #   The flag that enables the rule-based matching process of duplicate
    #   profiles.
    #   @return [Boolean]
    #
    # @!attribute [rw] matching_rules
    #   Configures how the rule-based matching process should match
    #   profiles. You can have up to 15 `MatchingRule` in the
    #   `MatchingRules`.
    #   @return [Array<Types::MatchingRule>]
    #
    # @!attribute [rw] max_allowed_rule_level_for_merging
    #   [MatchingRule][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_MatchingRule.html
    #   @return [Integer]
    #
    # @!attribute [rw] max_allowed_rule_level_for_matching
    #   Indicates the maximum allowed rule level.
    #   @return [Integer]
    #
    # @!attribute [rw] attribute_types_selector
    #   Configures information about the `AttributeTypesSelector` where the
    #   rule-based identity resolution uses to match profiles.
    #   @return [Types::AttributeTypesSelector]
    #
    # @!attribute [rw] conflict_resolution
    #   How the auto-merging process should resolve conflicts between
    #   different profiles.
    #   @return [Types::ConflictResolution]
    #
    # @!attribute [rw] exporting_config
    #   Configuration information about the S3 bucket where Identity
    #   Resolution Jobs writes result files.
    #
    #   <note markdown="1"> You need to give Customer Profiles service principal write
    #   permission to your S3 bucket. Otherwise, you'll get an exception in
    #   the API response. For an example policy, see [Amazon Connect
    #   Customer Profiles cross-service confused deputy prevention][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/cross-service-confused-deputy-prevention.html#customer-profiles-cross-service
    #   @return [Types::ExportingConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/RuleBasedMatchingRequest AWS API Documentation
    #
    class RuleBasedMatchingRequest < Struct.new(
      :enabled,
      :matching_rules,
      :max_allowed_rule_level_for_merging,
      :max_allowed_rule_level_for_matching,
      :attribute_types_selector,
      :conflict_resolution,
      :exporting_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response of the Rule-based matching request.
    #
    # @!attribute [rw] enabled
    #   The flag that enables the rule-based matching process of duplicate
    #   profiles.
    #   @return [Boolean]
    #
    # @!attribute [rw] matching_rules
    #   Configures how the rule-based matching process should match
    #   profiles. You can have up to 15 `MatchingRule` in the
    #   `MatchingRules`.
    #   @return [Array<Types::MatchingRule>]
    #
    # @!attribute [rw] status
    #   PENDING
    #
    #   * The first status after configuration a rule-based matching rule.
    #     If it is an existing domain, the rule-based Identity Resolution
    #     waits one hour before creating the matching rule. If it is a new
    #     domain, the system will skip the `PENDING` stage.
    #
    #   ^
    #
    #   IN\_PROGRESS
    #
    #   * The system is creating the rule-based matching rule. Under this
    #     status, the system is evaluating the existing data and you can no
    #     longer change the Rule-based matching configuration.
    #
    #   ^
    #
    #   ACTIVE
    #
    #   * The rule is ready to use. You can change the rule a day after the
    #     status is in `ACTIVE`.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] max_allowed_rule_level_for_merging
    #   [MatchingRule][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_MatchingRule.html
    #   @return [Integer]
    #
    # @!attribute [rw] max_allowed_rule_level_for_matching
    #   Indicates the maximum allowed rule level.
    #   @return [Integer]
    #
    # @!attribute [rw] attribute_types_selector
    #   Configures information about the `AttributeTypesSelector` where the
    #   rule-based identity resolution uses to match profiles.
    #   @return [Types::AttributeTypesSelector]
    #
    # @!attribute [rw] conflict_resolution
    #   How the auto-merging process should resolve conflicts between
    #   different profiles.
    #   @return [Types::ConflictResolution]
    #
    # @!attribute [rw] exporting_config
    #   Configuration information about the S3 bucket where Identity
    #   Resolution Jobs writes result files.
    #
    #   <note markdown="1"> You need to give Customer Profiles service principal write
    #   permission to your S3 bucket. Otherwise, you'll get an exception in
    #   the API response. For an example policy, see [Amazon Connect
    #   Customer Profiles cross-service confused deputy prevention][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/connect/latest/adminguide/cross-service-confused-deputy-prevention.html#customer-profiles-cross-service
    #   @return [Types::ExportingConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/RuleBasedMatchingResponse AWS API Documentation
    #
    class RuleBasedMatchingResponse < Struct.new(
      :enabled,
      :matching_rules,
      :status,
      :max_allowed_rule_level_for_merging,
      :max_allowed_rule_level_for_matching,
      :attribute_types_selector,
      :conflict_resolution,
      :exporting_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information about the S3 bucket where Identity
    # Resolution Jobs write result files.
    #
    # @!attribute [rw] s3_bucket_name
    #   The name of the S3 bucket where Identity Resolution Jobs write
    #   result files.
    #   @return [String]
    #
    # @!attribute [rw] s3_key_name
    #   The S3 key name of the location where Identity Resolution Jobs write
    #   result files.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/S3ExportingConfig AWS API Documentation
    #
    class S3ExportingConfig < Struct.new(
      :s3_bucket_name,
      :s3_key_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The S3 location where Identity Resolution Jobs write result files.
    #
    # @!attribute [rw] s3_bucket_name
    #   The name of the S3 bucket name where Identity Resolution Jobs write
    #   result files.
    #   @return [String]
    #
    # @!attribute [rw] s3_key_name
    #   The S3 key name of the location where Identity Resolution Jobs write
    #   result files.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/S3ExportingLocation AWS API Documentation
    #
    class S3ExportingLocation < Struct.new(
      :s3_bucket_name,
      :s3_key_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties that are applied when Amazon S3 is being used as the
    # flow source.
    #
    # @!attribute [rw] bucket_name
    #   The Amazon S3 bucket name where the source files are stored.
    #   @return [String]
    #
    # @!attribute [rw] bucket_prefix
    #   The object key for the Amazon S3 bucket in which the source files
    #   are stored.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/S3SourceProperties AWS API Documentation
    #
    class S3SourceProperties < Struct.new(
      :bucket_name,
      :bucket_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties that are applied when Salesforce is being used as a
    # source.
    #
    # @!attribute [rw] object
    #   The object specified in the Salesforce flow source.
    #   @return [String]
    #
    # @!attribute [rw] enable_dynamic_field_update
    #   The flag that enables dynamic fetching of new (recently added)
    #   fields in the Salesforce objects while running a flow.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_deleted_records
    #   Indicates whether Amazon AppFlow includes deleted files in the flow
    #   run.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/SalesforceSourceProperties AWS API Documentation
    #
    class SalesforceSourceProperties < Struct.new(
      :object,
      :enable_dynamic_field_update,
      :include_deleted_records)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the configuration details of a scheduled-trigger flow that
    # you define. Currently, these settings only apply to the
    # scheduled-trigger type.
    #
    # @!attribute [rw] schedule_expression
    #   The scheduling expression that determines the rate at which the
    #   schedule will run, for example rate (5 minutes).
    #   @return [String]
    #
    # @!attribute [rw] data_pull_mode
    #   Specifies whether a scheduled flow has an incremental data transfer
    #   or a complete data transfer for each flow run.
    #   @return [String]
    #
    # @!attribute [rw] schedule_start_time
    #   Specifies the scheduled start time for a scheduled-trigger flow.
    #   @return [Time]
    #
    # @!attribute [rw] schedule_end_time
    #   Specifies the scheduled end time for a scheduled-trigger flow.
    #   @return [Time]
    #
    # @!attribute [rw] timezone
    #   Specifies the time zone used when referring to the date and time of
    #   a scheduled-triggered flow, such as America/New\_York.
    #   @return [String]
    #
    # @!attribute [rw] schedule_offset
    #   Specifies the optional offset that is added to the time interval for
    #   a schedule-triggered flow.
    #   @return [Integer]
    #
    # @!attribute [rw] first_execution_from
    #   Specifies the date range for the records to import from the
    #   connector in the first flow run.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ScheduledTriggerProperties AWS API Documentation
    #
    class ScheduledTriggerProperties < Struct.new(
      :schedule_expression,
      :data_pull_mode,
      :schedule_start_time,
      :schedule_end_time,
      :timezone,
      :schedule_offset,
      :first_execution_from)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token from the previous SearchProfiles API call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects returned per page.
    #
    #   The default is 20 if this parameter is not included in the request.
    #   @return [Integer]
    #
    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] key_name
    #   A searchable identifier of a customer profile. The predefined keys
    #   you can use to search include: \_account, \_profileId, \_assetId,
    #   \_caseId, \_orderId, \_fullName, \_phone, \_email, \_ctrContactId,
    #   \_marketoLeadId, \_salesforceAccountId, \_salesforceContactId,
    #   \_salesforceAssetId, \_zendeskUserId, \_zendeskExternalId,
    #   \_zendeskTicketId, \_serviceNowSystemId, \_serviceNowIncidentId,
    #   \_segmentUserId, \_shopifyCustomerId, \_shopifyOrderId.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   A list of key values.
    #   @return [Array<String>]
    #
    # @!attribute [rw] additional_search_keys
    #   A list of `AdditionalSearchKey` objects that are each searchable
    #   identifiers of a profile. Each `AdditionalSearchKey` object contains
    #   a `KeyName` and a list of `Values` associated with that specific key
    #   (i.e., a key-value(s) pair). These additional search keys will be
    #   used in conjunction with the `LogicalOperator` and the required
    #   `KeyName` and `Values` parameters to search for profiles that
    #   satisfy the search criteria.
    #   @return [Array<Types::AdditionalSearchKey>]
    #
    # @!attribute [rw] logical_operator
    #   Relationship between all specified search keys that will be used to
    #   search for profiles. This includes the required `KeyName` and
    #   `Values` parameters as well as any key-value(s) pairs specified in
    #   the `AdditionalSearchKeys` list.
    #
    #   This parameter influences which profiles will be returned in the
    #   response in the following manner:
    #
    #   * `AND` - The response only includes profiles that match all of the
    #     search keys.
    #
    #   * `OR` - The response includes profiles that match at least one of
    #     the search keys.
    #
    #   The `OR` relationship is the default behavior if this parameter is
    #   not included in the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/SearchProfilesRequest AWS API Documentation
    #
    class SearchProfilesRequest < Struct.new(
      :next_token,
      :max_results,
      :domain_name,
      :key_name,
      :values,
      :additional_search_keys,
      :logical_operator)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of Profiles matching the search criteria.
    #   @return [Array<Types::Profile>]
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous SearchProfiles API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/SearchProfilesResponse AWS API Documentation
    #
    class SearchProfilesResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object holding the segment definition fields.
    #
    # @!attribute [rw] segment_definition_name
    #   Name of the segment definition.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   Display name of the segment definition.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the segment definition.
    #   @return [String]
    #
    # @!attribute [rw] segment_definition_arn
    #   The arn of the segment definition.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   When the segment definition was created.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags belonging to the segment definition.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] segment_type
    #   The segment type.
    #
    #   Classic : Segments created using traditional SegmentGroup structure
    #
    #   Enhanced : Segments created using SQL queries
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/SegmentDefinitionItem AWS API Documentation
    #
    class SegmentDefinitionItem < Struct.new(
      :segment_definition_name,
      :display_name,
      :description,
      :segment_definition_arn,
      :created_at,
      :tags,
      :segment_type)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # Contains all groups of the segment definition.
    #
    # @!attribute [rw] groups
    #   Holds the list of groups within the segment definition.
    #   @return [Array<Types::Group>]
    #
    # @!attribute [rw] include
    #   Defines whether to include or exclude the profiles that fit the
    #   segment criteria.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/SegmentGroup AWS API Documentation
    #
    class SegmentGroup < Struct.new(
      :groups,
      :include)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains all groups of the segment definition.
    #
    # @!attribute [rw] groups
    #   Holds the list of groups within the segment definition.
    #   @return [Array<Types::Group>]
    #
    # @!attribute [rw] include
    #   Define whether to include or exclude the profiles that fit the
    #   segment criteria.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/SegmentGroupStructure AWS API Documentation
    #
    class SegmentGroupStructure < Struct.new(
      :groups,
      :include)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties that are applied when ServiceNow is being used as a
    # source.
    #
    # @!attribute [rw] object
    #   The object specified in the ServiceNow flow source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ServiceNowSourceProperties AWS API Documentation
    #
    class ServiceNowSourceProperties < Struct.new(
      :object)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the information that is required to query a particular
    # Amazon AppFlow connector. Customer Profiles supports Salesforce,
    # Zendesk, Marketo, ServiceNow and Amazon S3.
    #
    # @!attribute [rw] marketo
    #   The properties that are applied when Marketo is being used as a
    #   source.
    #   @return [Types::MarketoSourceProperties]
    #
    # @!attribute [rw] s3
    #   The properties that are applied when Amazon S3 is being used as the
    #   flow source.
    #   @return [Types::S3SourceProperties]
    #
    # @!attribute [rw] salesforce
    #   The properties that are applied when Salesforce is being used as a
    #   source.
    #   @return [Types::SalesforceSourceProperties]
    #
    # @!attribute [rw] service_now
    #   The properties that are applied when ServiceNow is being used as a
    #   source.
    #   @return [Types::ServiceNowSourceProperties]
    #
    # @!attribute [rw] zendesk
    #   The properties that are applied when using Zendesk as a flow source.
    #   @return [Types::ZendeskSourceProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/SourceConnectorProperties AWS API Documentation
    #
    class SourceConnectorProperties < Struct.new(
      :marketo,
      :s3,
      :salesforce,
      :service_now,
      :zendesk)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the configuration of the source connector
    # used in the flow.
    #
    # @!attribute [rw] connector_profile_name
    #   The name of the AppFlow connector profile. This name must be unique
    #   for each connector profile in the AWS account.
    #   @return [String]
    #
    # @!attribute [rw] connector_type
    #   The type of connector, such as Salesforce, Marketo, and so on.
    #   @return [String]
    #
    # @!attribute [rw] incremental_pull_config
    #   Defines the configuration for a scheduled incremental data pull. If
    #   a valid configuration is provided, the fields specified in the
    #   configuration are used when querying for the incremental data pull.
    #   @return [Types::IncrementalPullConfig]
    #
    # @!attribute [rw] source_connector_properties
    #   Specifies the information that is required to query a particular
    #   source connector.
    #   @return [Types::SourceConnectorProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/SourceFlowConfig AWS API Documentation
    #
    class SourceFlowConfig < Struct.new(
      :connector_profile_name,
      :connector_type,
      :incremental_pull_config,
      :source_connector_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source segments to build off of.
    #
    # @!attribute [rw] segment_definition_name
    #   The unique name of the segment definition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/SourceSegment AWS API Documentation
    #
    class SourceSegment < Struct.new(
      :segment_definition_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] recommender_name
    #   The name of the recommender to start.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/StartRecommenderRequest AWS API Documentation
    #
    class StartRecommenderRequest < Struct.new(
      :domain_name,
      :recommender_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/StartRecommenderResponse AWS API Documentation
    #
    class StartRecommenderResponse < Aws::EmptyStructure; end

    # @!attribute [rw] domain_name
    #   The unique name of the domain containing the upload job to start.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The unique identifier of the upload job to start.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/StartUploadJobRequest AWS API Documentation
    #
    class StartUploadJobRequest < Struct.new(
      :domain_name,
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/StartUploadJobResponse AWS API Documentation
    #
    class StartUploadJobResponse < Aws::EmptyStructure; end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] recommender_name
    #   The name of the recommender to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/StopRecommenderRequest AWS API Documentation
    #
    class StopRecommenderRequest < Struct.new(
      :domain_name,
      :recommender_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/StopRecommenderResponse AWS API Documentation
    #
    class StopRecommenderResponse < Aws::EmptyStructure; end

    # @!attribute [rw] domain_name
    #   The unique name of the domain containing the upload job to stop.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The unique identifier of the upload job to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/StopUploadJobRequest AWS API Documentation
    #
    class StopUploadJobRequest < Struct.new(
      :domain_name,
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/StopUploadJobResponse AWS API Documentation
    #
    class StopUploadJobResponse < Aws::EmptyStructure; end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource that you're adding tags to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # A class for modeling different type of tasks. Task implementation
    # varies based on the TaskType.
    #
    # @!attribute [rw] connector_operator
    #   The operation to be performed on the provided source fields.
    #   @return [Types::ConnectorOperator]
    #
    # @!attribute [rw] destination_field
    #   A field in a destination connector, or a field value against which
    #   Amazon AppFlow validates a source field.
    #   @return [String]
    #
    # @!attribute [rw] source_fields
    #   The source fields to which a particular task is applied.
    #   @return [Array<String>]
    #
    # @!attribute [rw] task_properties
    #   A map used to store task-related information. The service looks for
    #   particular information based on the TaskType.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] task_type
    #   Specifies the particular task implementation that Amazon AppFlow
    #   performs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/Task AWS API Documentation
    #
    class Task < Struct.new(
      :connector_operator,
      :destination_field,
      :source_fields,
      :task_properties,
      :task_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The threshold for the calculated attribute.
    #
    # @!attribute [rw] value
    #   The value of the threshold.
    #   @return [String]
    #
    # @!attribute [rw] operator
    #   The operator of the threshold.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/Threshold AWS API Documentation
    #
    class Threshold < Struct.new(
      :value,
      :operator)
      SENSITIVE = []
      include Aws::Structure
    end

    # You exceeded the maximum number of requests.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains metrics and performance indicators from the training of a
    # recommender model.
    #
    # @!attribute [rw] time
    #   The timestamp when these training metrics were recorded.
    #   @return [Time]
    #
    # @!attribute [rw] metrics
    #   A collection of performance metrics and statistics from the training
    #   process.
    #   @return [Hash<String,Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/TrainingMetrics AWS API Documentation
    #
    class TrainingMetrics < Struct.new(
      :time,
      :metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # The trigger settings that determine how and when Amazon AppFlow runs
    # the specified flow.
    #
    # @!attribute [rw] trigger_type
    #   Specifies the type of flow trigger. It can be OnDemand, Scheduled,
    #   or Event.
    #   @return [String]
    #
    # @!attribute [rw] trigger_properties
    #   Specifies the configuration details of a schedule-triggered flow
    #   that you define. Currently, these settings only apply to the
    #   Scheduled trigger type.
    #   @return [Types::TriggerProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/TriggerConfig AWS API Documentation
    #
    class TriggerConfig < Struct.new(
      :trigger_type,
      :trigger_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the configuration details that control the trigger for a
    # flow. Currently, these settings only apply to the Scheduled trigger
    # type.
    #
    # @!attribute [rw] scheduled
    #   Specifies the configuration details of a schedule-triggered flow
    #   that you define.
    #   @return [Types::ScheduledTriggerProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/TriggerProperties AWS API Documentation
    #
    class TriggerProperties < Struct.new(
      :scheduled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource from which you are removing tags.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The list of tag keys to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # Updates associated with the address properties of a customer profile.
    #
    # @!attribute [rw] address_1
    #   The first line of a customer address.
    #   @return [String]
    #
    # @!attribute [rw] address_2
    #   The second line of a customer address.
    #   @return [String]
    #
    # @!attribute [rw] address_3
    #   The third line of a customer address.
    #   @return [String]
    #
    # @!attribute [rw] address_4
    #   The fourth line of a customer address.
    #   @return [String]
    #
    # @!attribute [rw] city
    #   The city in which a customer lives.
    #   @return [String]
    #
    # @!attribute [rw] county
    #   The county in which a customer lives.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state in which a customer lives.
    #   @return [String]
    #
    # @!attribute [rw] province
    #   The province in which a customer lives.
    #   @return [String]
    #
    # @!attribute [rw] country
    #   The country in which a customer lives.
    #   @return [String]
    #
    # @!attribute [rw] postal_code
    #   The postal code of a customer address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/UpdateAddress AWS API Documentation
    #
    class UpdateAddress < Struct.new(
      :address_1,
      :address_2,
      :address_3,
      :address_4,
      :city,
      :county,
      :state,
      :province,
      :country,
      :postal_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] calculated_attribute_name
    #   The unique name of the calculated attribute.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the calculated attribute.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the calculated attribute.
    #   @return [String]
    #
    # @!attribute [rw] conditions
    #   The conditions including range, object count, and threshold for the
    #   calculated attribute.
    #   @return [Types::Conditions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/UpdateCalculatedAttributeDefinitionRequest AWS API Documentation
    #
    class UpdateCalculatedAttributeDefinitionRequest < Struct.new(
      :domain_name,
      :calculated_attribute_name,
      :display_name,
      :description,
      :conditions)
      SENSITIVE = [:description, :conditions]
      include Aws::Structure
    end

    # @!attribute [rw] calculated_attribute_name
    #   The unique name of the calculated attribute.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the calculated attribute.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the calculated attribute.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the calculated attribute definition was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the calculated attribute definition was most
    #   recently edited.
    #   @return [Time]
    #
    # @!attribute [rw] statistic
    #   The aggregation operation to perform for the calculated attribute.
    #   @return [String]
    #
    # @!attribute [rw] conditions
    #   The conditions including range, object count, and threshold for the
    #   calculated attribute.
    #   @return [Types::Conditions]
    #
    # @!attribute [rw] attribute_details
    #   The mathematical expression and a list of attribute items specified
    #   in that expression.
    #   @return [Types::AttributeDetails]
    #
    # @!attribute [rw] use_historical_data
    #   Whether historical data ingested before the Calculated Attribute was
    #   created should be included in calculations.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   Status of the Calculated Attribute creation (whether all historical
    #   data has been indexed.)
    #   @return [String]
    #
    # @!attribute [rw] readiness
    #   Information indicating if the Calculated Attribute is ready for use
    #   by confirming all historical data has been processed and reflected.
    #   @return [Types::Readiness]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/UpdateCalculatedAttributeDefinitionResponse AWS API Documentation
    #
    class UpdateCalculatedAttributeDefinitionResponse < Struct.new(
      :calculated_attribute_name,
      :display_name,
      :description,
      :created_at,
      :last_updated_at,
      :statistic,
      :conditions,
      :attribute_details,
      :use_historical_data,
      :status,
      :readiness,
      :tags)
      SENSITIVE = [:description, :statistic, :conditions, :attribute_details]
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] layout_definition_name
    #   The unique name of the layout.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the layout
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the layout
    #   @return [String]
    #
    # @!attribute [rw] is_default
    #   If set to true for a layout, this layout will be used by default to
    #   view data. If set to false, then the layout will not be used by
    #   default, but it can be used to view data by explicitly selecting it
    #   in the console.
    #   @return [Boolean]
    #
    # @!attribute [rw] layout_type
    #   The type of layout that can be used to view data under a Customer
    #   Profiles domain.
    #   @return [String]
    #
    # @!attribute [rw] layout
    #   A customizable layout that can be used to view data under a Customer
    #   Profiles domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/UpdateDomainLayoutRequest AWS API Documentation
    #
    class UpdateDomainLayoutRequest < Struct.new(
      :domain_name,
      :layout_definition_name,
      :description,
      :display_name,
      :is_default,
      :layout_type,
      :layout)
      SENSITIVE = [:description, :layout]
      include Aws::Structure
    end

    # @!attribute [rw] layout_definition_name
    #   The unique name of the layout.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the layout
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the layout
    #   @return [String]
    #
    # @!attribute [rw] is_default
    #   If set to true for a layout, this layout will be used by default to
    #   view data. If set to false, then the layout will not be used by
    #   default, but it can be used to view data by explicitly selecting it
    #   in the console.
    #   @return [Boolean]
    #
    # @!attribute [rw] layout_type
    #   The type of layout that can be used to view data under a Customer
    #   Profiles domain.
    #   @return [String]
    #
    # @!attribute [rw] layout
    #   A customizable layout that can be used to view data under a Customer
    #   Profiles domain.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version used to create layout.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the layout was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the layout was most recently updated.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/UpdateDomainLayoutResponse AWS API Documentation
    #
    class UpdateDomainLayoutResponse < Struct.new(
      :layout_definition_name,
      :description,
      :display_name,
      :is_default,
      :layout_type,
      :layout,
      :version,
      :created_at,
      :last_updated_at,
      :tags)
      SENSITIVE = [:description, :layout]
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] default_expiration_days
    #   The default number of days until the data within the domain expires.
    #   @return [Integer]
    #
    # @!attribute [rw] default_encryption_key
    #   The default encryption key, which is an AWS managed key, is used
    #   when no specific type of encryption key is specified. It is used to
    #   encrypt all data before it is placed in permanent or semi-permanent
    #   storage. If specified as an empty string, it will clear any existing
    #   value.
    #   @return [String]
    #
    # @!attribute [rw] dead_letter_queue_url
    #   The URL of the SQS dead letter queue, which is used for reporting
    #   errors associated with ingesting data from third party applications.
    #   If specified as an empty string, it will clear any existing value.
    #   You must set up a policy on the DeadLetterQueue for the SendMessage
    #   operation to enable Amazon Connect Customer Profiles to send
    #   messages to the DeadLetterQueue.
    #   @return [String]
    #
    # @!attribute [rw] matching
    #   The process of matching duplicate profiles. If `Matching` = `true`,
    #   Amazon Connect Customer Profiles starts a weekly batch process
    #   called Identity Resolution Job. If you do not specify a date and
    #   time for Identity Resolution Job to run, by default it runs every
    #   Saturday at 12AM UTC to detect duplicate profiles in your domains.
    #
    #   After the Identity Resolution Job completes, use the [GetMatches][1]
    #   API to return and review the results. Or, if you have configured
    #   `ExportingConfig` in the `MatchingRequest`, you can download the
    #   results from S3.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html
    #   @return [Types::MatchingRequest]
    #
    # @!attribute [rw] rule_based_matching
    #   The process of matching duplicate profiles using the rule-Based
    #   matching. If `RuleBasedMatching` = true, Amazon Connect Customer
    #   Profiles will start to match and merge your profiles according to
    #   your configuration in the `RuleBasedMatchingRequest`. You can use
    #   the `ListRuleBasedMatches` and `GetSimilarProfiles` API to return
    #   and review the results. Also, if you have configured
    #   `ExportingConfig` in the `RuleBasedMatchingRequest`, you can
    #   download the results from S3.
    #   @return [Types::RuleBasedMatchingRequest]
    #
    # @!attribute [rw] data_store
    #   Set to true to enabled data store for this domain.
    #   @return [Types::DataStoreRequest]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/UpdateDomainRequest AWS API Documentation
    #
    class UpdateDomainRequest < Struct.new(
      :domain_name,
      :default_expiration_days,
      :default_encryption_key,
      :dead_letter_queue_url,
      :matching,
      :rule_based_matching,
      :data_store,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] default_expiration_days
    #   The default number of days until the data within the domain expires.
    #   @return [Integer]
    #
    # @!attribute [rw] default_encryption_key
    #   The default encryption key, which is an AWS managed key, is used
    #   when no specific type of encryption key is specified. It is used to
    #   encrypt all data before it is placed in permanent or semi-permanent
    #   storage.
    #   @return [String]
    #
    # @!attribute [rw] dead_letter_queue_url
    #   The URL of the SQS dead letter queue, which is used for reporting
    #   errors associated with ingesting data from third party applications.
    #   @return [String]
    #
    # @!attribute [rw] matching
    #   The process of matching duplicate profiles. If `Matching` = `true`,
    #   Amazon Connect Customer Profiles starts a weekly batch process
    #   called Identity Resolution Job. If you do not specify a date and
    #   time for Identity Resolution Job to run, by default it runs every
    #   Saturday at 12AM UTC to detect duplicate profiles in your domains.
    #
    #   After the Identity Resolution Job completes, use the [GetMatches][1]
    #   API to return and review the results. Or, if you have configured
    #   `ExportingConfig` in the `MatchingRequest`, you can download the
    #   results from S3.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html
    #   @return [Types::MatchingResponse]
    #
    # @!attribute [rw] rule_based_matching
    #   The process of matching duplicate profiles using the rule-Based
    #   matching. If `RuleBasedMatching` = true, Amazon Connect Customer
    #   Profiles will start to match and merge your profiles according to
    #   your configuration in the `RuleBasedMatchingRequest`. You can use
    #   the `ListRuleBasedMatches` and `GetSimilarProfiles` API to return
    #   and review the results. Also, if you have configured
    #   `ExportingConfig` in the `RuleBasedMatchingRequest`, you can
    #   download the results from S3.
    #   @return [Types::RuleBasedMatchingResponse]
    #
    # @!attribute [rw] data_store
    #   The data store.
    #   @return [Types::DataStoreResponse]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the domain was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the domain was most recently edited.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/UpdateDomainResponse AWS API Documentation
    #
    class UpdateDomainResponse < Struct.new(
      :domain_name,
      :default_expiration_days,
      :default_encryption_key,
      :dead_letter_queue_url,
      :matching,
      :rule_based_matching,
      :data_store,
      :created_at,
      :last_updated_at,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] event_trigger_name
    #   The unique name of the event trigger.
    #   @return [String]
    #
    # @!attribute [rw] object_type_name
    #   The unique name of the object type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the event trigger.
    #   @return [String]
    #
    # @!attribute [rw] event_trigger_conditions
    #   A list of conditions that determine when an event should trigger the
    #   destination.
    #   @return [Array<Types::EventTriggerCondition>]
    #
    # @!attribute [rw] segment_filter
    #   The destination is triggered only for profiles that meet the
    #   criteria of a segment definition.
    #   @return [String]
    #
    # @!attribute [rw] event_trigger_limits
    #   Defines limits controlling whether an event triggers the
    #   destination, based on ingestion latency and the number of
    #   invocations per profile over specific time periods.
    #   @return [Types::EventTriggerLimits]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/UpdateEventTriggerRequest AWS API Documentation
    #
    class UpdateEventTriggerRequest < Struct.new(
      :domain_name,
      :event_trigger_name,
      :object_type_name,
      :description,
      :event_trigger_conditions,
      :segment_filter,
      :event_trigger_limits)
      SENSITIVE = [:description, :event_trigger_conditions]
      include Aws::Structure
    end

    # @!attribute [rw] event_trigger_name
    #   The unique name of the event trigger.
    #   @return [String]
    #
    # @!attribute [rw] object_type_name
    #   The unique name of the object type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the event trigger.
    #   @return [String]
    #
    # @!attribute [rw] event_trigger_conditions
    #   A list of conditions that determine when an event should trigger the
    #   destination.
    #   @return [Array<Types::EventTriggerCondition>]
    #
    # @!attribute [rw] segment_filter
    #   The destination is triggered only for profiles that meet the
    #   criteria of a segment definition.
    #   @return [String]
    #
    # @!attribute [rw] event_trigger_limits
    #   Defines limits controlling whether an event triggers the
    #   destination, based on ingestion latency and the number of
    #   invocations per profile over specific time periods.
    #   @return [Types::EventTriggerLimits]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the event trigger was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp of when the event trigger was most recently updated.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   An array of key-value pairs to apply to this resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/UpdateEventTriggerResponse AWS API Documentation
    #
    class UpdateEventTriggerResponse < Struct.new(
      :event_trigger_name,
      :object_type_name,
      :description,
      :event_trigger_conditions,
      :segment_filter,
      :event_trigger_limits,
      :created_at,
      :last_updated_at,
      :tags)
      SENSITIVE = [:description, :event_trigger_conditions]
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] profile_id
    #   The unique identifier of a customer profile.
    #   @return [String]
    #
    # @!attribute [rw] additional_information
    #   Any additional information relevant to the customer’s profile.
    #   @return [String]
    #
    # @!attribute [rw] account_number
    #   An account number that you have assigned to the customer.
    #   @return [String]
    #
    # @!attribute [rw] party_type
    #   The type of profile used to describe the customer.
    #   @return [String]
    #
    # @!attribute [rw] business_name
    #   The name of the customer’s business.
    #   @return [String]
    #
    # @!attribute [rw] first_name
    #   The customer’s first name.
    #   @return [String]
    #
    # @!attribute [rw] middle_name
    #   The customer’s middle name.
    #   @return [String]
    #
    # @!attribute [rw] last_name
    #   The customer’s last name.
    #   @return [String]
    #
    # @!attribute [rw] birth_date
    #   The customer’s birth date.
    #   @return [String]
    #
    # @!attribute [rw] gender
    #   The gender with which the customer identifies.
    #   @return [String]
    #
    # @!attribute [rw] phone_number
    #   The customer’s phone number, which has not been specified as a
    #   mobile, home, or business number.
    #   @return [String]
    #
    # @!attribute [rw] mobile_phone_number
    #   The customer’s mobile phone number.
    #   @return [String]
    #
    # @!attribute [rw] home_phone_number
    #   The customer’s home phone number.
    #   @return [String]
    #
    # @!attribute [rw] business_phone_number
    #   The customer’s business phone number.
    #   @return [String]
    #
    # @!attribute [rw] email_address
    #   The customer’s email address, which has not been specified as a
    #   personal or business address.
    #   @return [String]
    #
    # @!attribute [rw] personal_email_address
    #   The customer’s personal email address.
    #   @return [String]
    #
    # @!attribute [rw] business_email_address
    #   The customer’s business email address.
    #   @return [String]
    #
    # @!attribute [rw] address
    #   A generic address associated with the customer that is not mailing,
    #   shipping, or billing.
    #   @return [Types::UpdateAddress]
    #
    # @!attribute [rw] shipping_address
    #   The customer’s shipping address.
    #   @return [Types::UpdateAddress]
    #
    # @!attribute [rw] mailing_address
    #   The customer’s mailing address.
    #   @return [Types::UpdateAddress]
    #
    # @!attribute [rw] billing_address
    #   The customer’s billing address.
    #   @return [Types::UpdateAddress]
    #
    # @!attribute [rw] attributes
    #   A key value pair of attributes of a customer profile.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] party_type_string
    #   An alternative to `PartyType` which accepts any string as input.
    #   @return [String]
    #
    # @!attribute [rw] gender_string
    #   An alternative to `Gender` which accepts any string as input.
    #   @return [String]
    #
    # @!attribute [rw] profile_type
    #   Determines the type of the profile.
    #   @return [String]
    #
    # @!attribute [rw] engagement_preferences
    #   Object that defines users preferred methods of engagement.
    #   @return [Types::EngagementPreferences]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/UpdateProfileRequest AWS API Documentation
    #
    class UpdateProfileRequest < Struct.new(
      :domain_name,
      :profile_id,
      :additional_information,
      :account_number,
      :party_type,
      :business_name,
      :first_name,
      :middle_name,
      :last_name,
      :birth_date,
      :gender,
      :phone_number,
      :mobile_phone_number,
      :home_phone_number,
      :business_phone_number,
      :email_address,
      :personal_email_address,
      :business_email_address,
      :address,
      :shipping_address,
      :mailing_address,
      :billing_address,
      :attributes,
      :party_type_string,
      :gender_string,
      :profile_type,
      :engagement_preferences)
      SENSITIVE = [:additional_information, :account_number, :party_type, :business_name, :first_name, :middle_name, :last_name, :birth_date, :gender, :phone_number, :mobile_phone_number, :home_phone_number, :business_phone_number, :email_address, :personal_email_address, :business_email_address, :address, :shipping_address, :mailing_address, :billing_address, :attributes, :party_type_string, :gender_string, :profile_type, :engagement_preferences]
      include Aws::Structure
    end

    # @!attribute [rw] profile_id
    #   The unique identifier of a customer profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/UpdateProfileResponse AWS API Documentation
    #
    class UpdateProfileResponse < Struct.new(
      :profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain_name
    #   The unique name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] recommender_name
    #   The name of the recommender to update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The new description to assign to the recommender.
    #   @return [String]
    #
    # @!attribute [rw] recommender_config
    #   The new configuration settings to apply to the recommender,
    #   including updated parameters and settings that define its behavior.
    #   @return [Types::RecommenderConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/UpdateRecommenderRequest AWS API Documentation
    #
    class UpdateRecommenderRequest < Struct.new(
      :domain_name,
      :recommender_name,
      :description,
      :recommender_config)
      SENSITIVE = [:description]
      include Aws::Structure
    end

    # @!attribute [rw] recommender_name
    #   The name of the recommender that was updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/UpdateRecommenderResponse AWS API Documentation
    #
    class UpdateRecommenderResponse < Struct.new(
      :recommender_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary information for an individual upload job.
    #
    # @!attribute [rw] job_id
    #   The unique identifier of the upload job.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of the upload job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the upload job.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the current status of the upload job.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp when the upload job was created.
    #   @return [Time]
    #
    # @!attribute [rw] completed_at
    #   The timestamp when the upload job was completed.
    #   @return [Time]
    #
    # @!attribute [rw] data_expiry
    #   The expiry duration for the profiles ingested with the upload job.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/UploadJobItem AWS API Documentation
    #
    class UploadJobItem < Struct.new(
      :job_id,
      :display_name,
      :status,
      :status_reason,
      :created_at,
      :completed_at,
      :data_expiry)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure letting customers specify a relative time window over
    # which over which data is included in the Calculated Attribute. Use
    # positive numbers to indicate that the endpoint is in the past, and
    # negative numbers to indicate it is in the future. ValueRange overrides
    # Value.
    #
    # @!attribute [rw] start
    #   The start time of when to include objects. Use positive numbers to
    #   indicate that the starting point is in the past, and negative
    #   numbers to indicate it is in the future.
    #   @return [Integer]
    #
    # @!attribute [rw] end
    #   The end time of when to include objects. Use positive numbers to
    #   indicate that the starting point is in the past, and negative
    #   numbers to indicate it is in the future.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ValueRange AWS API Documentation
    #
    class ValueRange < Struct.new(
      :start,
      :end)
      SENSITIVE = []
      include Aws::Structure
    end

    # Structure to hold workflow attributes.
    #
    # @!attribute [rw] appflow_integration
    #   Workflow attributes specific to `APPFLOW_INTEGRATION` workflow.
    #   @return [Types::AppflowIntegrationWorkflowAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/WorkflowAttributes AWS API Documentation
    #
    class WorkflowAttributes < Struct.new(
      :appflow_integration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Generic object containing workflow execution metrics.
    #
    # @!attribute [rw] appflow_integration
    #   Workflow execution metrics for `APPFLOW_INTEGRATION` workflow.
    #   @return [Types::AppflowIntegrationWorkflowMetrics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/WorkflowMetrics AWS API Documentation
    #
    class WorkflowMetrics < Struct.new(
      :appflow_integration)
      SENSITIVE = []
      include Aws::Structure
    end

    # List containing steps in workflow.
    #
    # @!attribute [rw] appflow_integration
    #   Workflow step information specific to `APPFLOW_INTEGRATION`
    #   workflow.
    #   @return [Types::AppflowIntegrationWorkflowStep]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/WorkflowStepItem AWS API Documentation
    #
    class WorkflowStepItem < Struct.new(
      :appflow_integration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties that are applied when using Zendesk as a flow source.
    #
    # @!attribute [rw] object
    #   The object specified in the Zendesk flow source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ZendeskSourceProperties AWS API Documentation
    #
    class ZendeskSourceProperties < Struct.new(
      :object)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

