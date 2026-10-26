# frozen_string_literal: true

# This is generated code!

module Aws::CustomerProfiles
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

    # @!attribute profile_id
    #   <p>The unique identifier of a customer profile.</p>
    #   @return [String]
    # @!attribute key_name
    #   <p>A searchable identifier of a customer profile. The predefined keys you can use include: _account, _profileId, _assetId,
    #            _caseId, _orderId, _fullName, _phone, _email, _ctrContactId, _marketoLeadId,
    #            _salesforceAccountId, _salesforceContactId, _salesforceAssetId, _zendeskUserId,
    #            _zendeskExternalId, _zendeskTicketId, _serviceNowSystemId, _serviceNowIncidentId,
    #            _segmentUserId, _shopifyCustomerId, _shopifyOrderId.</p>
    #   @return [String]
    # @!attribute values
    #   <p>A list of key values.</p>
    #   @return [Array<String>]
    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    class AddProfileKeyRequest < Struct.new(
      nil,
      :profile_id,
      :key_name,
      :values,
      :domain_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute key_name
    #   <p>A searchable identifier of a customer profile.</p>
    #   @return [String]
    # @!attribute values
    #   <p>A list of key values.</p>
    #   @return [Array<String>]
    class AddProfileKeyResponse < Struct.new(
      nil,
      :key_name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A data type pair that consists of a <code>KeyName</code> and <code>Values</code> list
    #          that is used in conjunction with the <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_SearchProfiles.html#customerprofiles-SearchProfiles-request-KeyName">KeyName</a> and <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_SearchProfiles.html#customerprofiles-SearchProfiles-request-Values">Values</a> parameters to search for profiles using the <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_SearchProfiles.html">SearchProfiles</a>
    #          API.</p>
    # @!attribute key_name
    #   <p>A searchable identifier of a customer profile.</p>
    #   @return [String]
    # @!attribute values
    #   <p>A list of key values.</p>
    #   @return [Array<String>]
    class AdditionalSearchKey < Struct.new(
      nil,
      :key_name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A generic address associated with the customer that is not mailing, shipping, or
    #          billing.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute address1
    #   <p>The first line of a customer address.</p>
    #   @return [String]
    # @!attribute address2
    #   <p>The second line of a customer address.</p>
    #   @return [String]
    # @!attribute address3
    #   <p>The third line of a customer address.</p>
    #   @return [String]
    # @!attribute address4
    #   <p>The fourth line of a customer address.</p>
    #   @return [String]
    # @!attribute city
    #   <p>The city in which a customer lives.</p>
    #   @return [String]
    # @!attribute county
    #   <p>The county in which a customer lives.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state in which a customer lives.</p>
    #   @return [String]
    # @!attribute province
    #   <p>The province in which a customer lives.</p>
    #   @return [String]
    # @!attribute country
    #   <p>The country in which a customer lives.</p>
    #   @return [String]
    # @!attribute postal_code
    #   <p>The postal code of a customer address.</p>
    #   @return [String]
    class Address < Struct.new(
      nil,
      :address1,
      :address2,
      :address3,
      :address4,
      :city,
      :county,
      :state,
      :province,
      :country,
      :postal_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object that segments on Customer Profile's address object.</p>
    # @!attribute city
    #   <p>The city belonging to the address.</p>
    #   @return [Types::ProfileDimension]
    # @!attribute country
    #   <p>The country belonging to the address.</p>
    #   @return [Types::ProfileDimension]
    # @!attribute county
    #   <p>The county belonging to the address.</p>
    #   @return [Types::ProfileDimension]
    # @!attribute postal_code
    #   <p>The postal code belonging to the address.</p>
    #   @return [Types::ProfileDimension]
    # @!attribute province
    #   <p>The province belonging to the address.</p>
    #   @return [Types::ProfileDimension]
    # @!attribute state
    #   <p>The state belonging to the address.</p>
    #   @return [Types::ProfileDimension]
    class AddressDimension < Struct.new(
      nil,
      :city,
      :country,
      :county,
      :postal_code,
      :province,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details for workflow of type <code>APPFLOW_INTEGRATION</code>.</p>
    # @!attribute flow_definition
    #   <p>The configurations that control how Customer Profiles retrieves data from the source,
    #            Amazon AppFlow. Customer Profiles uses this information to create an AppFlow flow on behalf of
    #            customers.</p>
    #   @return [Types::FlowDefinition]
    # @!attribute batches
    #   <p>Batches in workflow of type <code>APPFLOW_INTEGRATION</code>.</p>
    #   @return [Array<Types::Batch>]
    class AppflowIntegration < Struct.new(
      nil,
      :flow_definition,
      :batches,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Structure holding all <code>APPFLOW_INTEGRATION</code> specific workflow
    #          attributes.</p>
    # @!attribute source_connector_type
    #   <p>Specifies the source connector type, such as Salesforce, ServiceNow, and Marketo.
    #            Indicates source of ingestion.</p>
    #   @return [String]
    # @!attribute connector_profile_name
    #   <p>The name of the AppFlow connector profile used for ingestion.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role. Customer Profiles assumes this role to create resources on your behalf as part of workflow execution.</p>
    #   @return [String]
    class AppflowIntegrationWorkflowAttributes < Struct.new(
      nil,
      :source_connector_type,
      :connector_profile_name,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Workflow specific execution metrics for <code>APPFLOW_INTEGRATION</code>
    #          workflow.</p>
    # @!attribute records_processed
    #   <p>Number of records processed in <code>APPFLOW_INTEGRATION</code> workflow.</p>
    #   @return [Integer]
    # @!attribute steps_completed
    #   <p>Total steps completed in <code>APPFLOW_INTEGRATION</code> workflow.</p>
    #   @return [Integer]
    # @!attribute total_steps
    #   <p>Total steps in <code>APPFLOW_INTEGRATION</code> workflow.</p>
    #   @return [Integer]
    class AppflowIntegrationWorkflowMetrics < Struct.new(
      nil,
      :records_processed,
      :steps_completed,
      :total_steps,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:records_processed] = 0 unless options.key?(:records_processed)
        options[:steps_completed] = 0 unless options.key?(:steps_completed)
        options[:total_steps] = 0 unless options.key?(:total_steps)
        super
      end
    end

    # <p>Workflow step details for <code>APPFLOW_INTEGRATION</code> workflow.</p>
    # @!attribute flow_name
    #   <p>Name of the flow created during execution of workflow step.
    #               <code>APPFLOW_INTEGRATION</code> workflow type creates an appflow flow during workflow
    #            step execution on the customers behalf.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Workflow step status for <code>APPFLOW_INTEGRATION</code> workflow.</p>
    #   @return [String]
    # @!attribute execution_message
    #   <p>Message indicating execution of workflow step for <code>APPFLOW_INTEGRATION</code>
    #            workflow.</p>
    #   @return [String]
    # @!attribute records_processed
    #   <p>Total number of records processed during execution of workflow step for
    #               <code>APPFLOW_INTEGRATION</code> workflow.</p>
    #   @return [Integer]
    # @!attribute batch_records_start_time
    #   <p>Start datetime of records pulled in batch during execution of workflow step for
    #               <code>APPFLOW_INTEGRATION</code> workflow.</p>
    #   @return [String]
    # @!attribute batch_records_end_time
    #   <p>End datetime of records pulled in batch during execution of workflow step for
    #               <code>APPFLOW_INTEGRATION</code> workflow.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>Creation timestamp of workflow step for <code>APPFLOW_INTEGRATION</code>
    #            workflow.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>Last updated timestamp for workflow step for <code>APPFLOW_INTEGRATION</code>
    #            workflow.</p>
    #   @return [Time]
    class AppflowIntegrationWorkflowStep < Struct.new(
      nil,
      :flow_name,
      :status,
      :execution_message,
      :records_processed,
      :batch_records_start_time,
      :batch_records_end_time,
      :created_at,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:records_processed] = 0 unless options.key?(:records_processed)
        super
      end
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute destination_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Kinesis data stream to deliver segment membership events to.
    #            For example, <code>arn:aws:kinesis:region:account-id:stream/stream-name</code>. </p>
    #   @return [String]
    # @!attribute destination_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that allows Customer Profiles service principal to assume the role for
    #            conducting AWS Key Management Service (KMS) and Amazon Kinesis operations. The role must grant the following
    #            Amazon Kinesis permissions to deliver segment membership events to the stream: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>kinesis:PutRecord</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kinesis:PutRecords</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>kinesis:DescribeStream</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class AssociateStreamForSegmentsRequest < Struct.new(
      nil,
      :domain_name,
      :destination_arn,
      :destination_role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class AssociateStreamForSegmentsResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a segment associated with a membership event stream. </p>
    # @!attribute segment_name
    #   <p>The unique name of the segment definition. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The subscription status of the segment. The following are valid values: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>STARTING</b>: The segment is being prepared to publish
    #                  membership events. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>RUNNING</b>: The segment is actively publishing
    #                  membership events to the stream. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>STOPPED</b>: The segment has stopped publishing
    #                  membership events. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>FAILED</b>: The segment failed to publish membership
    #                  events. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute message
    #   <p>An optional message providing context, such as a failure reason. </p>
    #   @return [String]
    class AssociatedSegment < Struct.new(
      nil,
      :segment_name,
      :status,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Mathematical expression and a list of attribute items specified in that
    #          expression.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute attributes
    #   <p>A list of attribute items specified in the mathematical expression.</p>
    #   @return [Array<Types::AttributeItem>]
    # @!attribute expression
    #   <p>Mathematical expression that is performed on attribute items provided in the attribute
    #            list. Each element in the expression should follow the structure of
    #            \"{ObjectTypeName.AttributeName}\".</p>
    #   @return [String]
    class AttributeDetails < Struct.new(
      nil,
      :attributes,
      :expression,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object that segments on various Customer Profile's fields.</p>
    # @!attribute dimension_type
    #   <p>The action to segment with.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values to apply the DimensionType on. To reference a calculated attribute or profile
    #            attribute as a dynamic value, use handlebar notation:
    #            <code>{{_profile.ProfileAttributeName}}</code> or
    #            <code>{{_calculated_attribute.CalculatedAttributeName}}</code>.</p>
    #   @return [Array<String>]
    class AttributeDimension < Struct.new(
      nil,
      :dimension_type,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a single attribute item specified in the mathematical expression.</p>
    # @!attribute name
    #   <p>The name of an attribute defined in a profile object type.</p>
    #   @return [String]
    class AttributeItem < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration information about the <code>AttributeTypesSelector </code>where the
    #          rule-based identity resolution uses to match profiles. You can choose how profiles are
    #          compared across attribute types and which attribute to use for matching from each type.
    #          There are three attribute types you can configure:</p>
    #          <ul>
    #             <li>
    #                <p>Email type</p>
    #                <ul>
    #                   <li>
    #                      <p>You can choose from <code>Email</code>, <code>BusinessEmail</code>, and
    #                         <code>PersonalEmail</code>
    #                      </p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Phone number type</p>
    #                <ul>
    #                   <li>
    #                      <p>You can choose from <code>Phone</code>, <code>HomePhone</code>, and
    #                         <code>MobilePhone</code>
    #                      </p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p>Address type</p>
    #                <ul>
    #                   <li>
    #                      <p>You can choose from <code>Address</code>, <code>BusinessAddress</code>,
    #                         <code>MaillingAddress</code>, and <code>ShippingAddress</code>
    #                      </p>
    #                   </li>
    #                </ul>
    #             </li>
    #          </ul>
    #          <p>You can either choose <code>ONE_TO_ONE</code> or <code>MANY_TO_MANY</code> as the
    #             <code>AttributeMatchingModel</code>. When choosing <code>MANY_TO_MANY</code>, the system
    #          can match attribute across the sub-types of an attribute type. For example, if the value of
    #          the <code>Email</code> field of Profile A and the value of <code>BusinessEmail</code> field
    #          of Profile B matches, the two profiles are matched on the Email type. When choosing
    #             <code>ONE_TO_ONE</code> the system can only match if the sub-types are exact matches.
    #          For example, only when the value of the <code>Email</code> field of Profile A and the value
    #          of the <code>Email</code> field of Profile B matches, the two profiles are matched on the
    #          Email type.</p>
    # @!attribute attribute_matching_model
    #   <p>Configures the <code>AttributeMatchingModel</code>, you can either choose
    #               <code>ONE_TO_ONE</code> or <code>MANY_TO_MANY</code>.</p>
    #   @return [String]
    # @!attribute address
    #   <p>The <code>Address</code> type. You can choose from <code>Address</code>,
    #               <code>BusinessAddress</code>, <code>MaillingAddress</code>, and
    #               <code>ShippingAddress</code>.</p>
    #            <p>You only can use the Address type in the <code>MatchingRule</code>. For example, if you
    #            want to match profile based on <code>BusinessAddress.City</code> or
    #               <code>MaillingAddress.City</code>, you need to choose the <code>BusinessAddress</code>
    #            and the <code>MaillingAddress</code> to represent the Address type and specify the
    #               <code>Address.City</code> on the matching rule.</p>
    #   @return [Array<String>]
    # @!attribute phone_number
    #   <p>The <code>PhoneNumber</code> type. You can choose from <code>PhoneNumber</code>,
    #               <code>HomePhoneNumber</code>, and <code>MobilePhoneNumber</code>.</p>
    #            <p>You only can use the <code>PhoneNumber</code> type in the <code>MatchingRule</code>. For
    #            example, if you want to match a profile based on <code>Phone</code> or
    #               <code>HomePhone</code>, you need to choose the <code>Phone</code> and the
    #               <code>HomePhone</code> to represent the <code>PhoneNumber</code> type and only specify
    #            the <code>PhoneNumber</code> on the matching rule.</p>
    #   @return [Array<String>]
    # @!attribute email_address
    #   <p>The <code>Email</code> type. You can choose from <code>EmailAddress</code>,
    #               <code>BusinessEmailAddress</code> and <code>PersonalEmailAddress</code>.</p>
    #            <p>You only can use the <code>EmailAddress</code> type in the <code>MatchingRule</code>.
    #            For example, if you want to match profile based on <code>PersonalEmailAddress</code> or
    #               <code>BusinessEmailAddress</code>, you need to choose the
    #               <code>PersonalEmailAddress</code> and the <code>BusinessEmailAddress</code> to represent
    #            the <code>EmailAddress</code> type and only specify the <code>EmailAddress</code> on the
    #            matching rule.</p>
    #   @return [Array<String>]
    class AttributeTypesSelector < Struct.new(
      nil,
      :attribute_matching_model,
      :address,
      :phone_number,
      :email_address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>List containing the values for the given attribute.</p>
    # @!attribute value
    #   <p>An individual value belonging to the given attribute.</p>
    #   @return [String]
    class AttributeValueItem < Struct.new(
      nil,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings for how to perform the auto-merging of profiles.</p>
    # @!attribute enabled
    #   <p>The flag that enables the auto-merging of duplicate profiles.</p>
    #   @return [Boolean]
    # @!attribute consolidation
    #   <p>A list of matching attributes that represent matching criteria. If two profiles meet at
    #            least one of the requirements in the matching attributes list, they will be merged.</p>
    #   @return [Types::Consolidation]
    # @!attribute conflict_resolution
    #   <p>How the auto-merging process should resolve conflicts between different profiles. For
    #            example, if Profile A and Profile B have the same <code>FirstName</code> and
    #               <code>LastName</code> (and that is the matching criteria), which
    #               <code>EmailAddress</code> should be used? </p>
    #   @return [Types::ConflictResolution]
    # @!attribute min_allowed_confidence_score_for_merging
    #   <p>A number between 0 and 1 that represents the minimum confidence score required for
    #            profiles within a matching group to be merged during the auto-merge process. A higher score
    #            means higher similarity required to merge profiles. </p>
    #   @return [Float]
    class AutoMerging < Struct.new(
      nil,
      :enabled,
      :consolidation,
      :conflict_resolution,
      :min_allowed_confidence_score_for_merging,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input you provided is invalid.</p>
    # @!attribute message
    #   @return [String]
    class BadRequestException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Batch defines the boundaries for ingestion for each step in
    #             <code>APPFLOW_INTEGRATION</code> workflow. <code>APPFLOW_INTEGRATION</code> workflow
    #          splits ingestion based on these boundaries.</p>
    # @!attribute start_time
    #   <p>Start time of batch to split ingestion.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>End time of batch to split ingestion.</p>
    #   @return [Time]
    class Batch < Struct.new(
      nil,
      :start_time,
      :end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Error object describing why a specific profile and calculated attribute failed.</p>
    # @!attribute code
    #   <p>Status code for why a specific profile and calculated attribute failed.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Message describing why a specific profile and calculated attribute failed.</p>
    #   @return [String]
    # @!attribute profile_id
    #   <p>The profile id that failed.</p>
    #   @return [String]
    class BatchGetCalculatedAttributeForProfileError < Struct.new(
      nil,
      :code,
      :message,
      :profile_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute calculated_attribute_name
    #   <p>The unique name of the calculated attribute.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute profile_ids
    #   <p>List of unique identifiers for customer profiles to retrieve.</p>
    #   @return [Array<String>]
    # @!attribute condition_overrides
    #   <p>Overrides the condition block within the original calculated attribute
    #            definition.</p>
    #   @return [Types::ConditionOverrides]
    class BatchGetCalculatedAttributeForProfileRequest < Struct.new(
      nil,
      :calculated_attribute_name,
      :domain_name,
      :profile_ids,
      :condition_overrides,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute errors
    #   <p>List of errors for calculated attribute values that could not be retrieved.</p>
    #   @return [Array<Types::BatchGetCalculatedAttributeForProfileError>]
    # @!attribute calculated_attribute_values
    #   <p>List of calculated attribute values retrieved.</p>
    #   @return [Array<Types::CalculatedAttributeValue>]
    # @!attribute condition_overrides
    #   <p>Overrides the condition block within the original calculated attribute
    #            definition.</p>
    #   @return [Types::ConditionOverrides]
    class BatchGetCalculatedAttributeForProfileResponse < Struct.new(
      nil,
      :errors,
      :calculated_attribute_values,
      :condition_overrides,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Error object describing why a specific profile failed.</p>
    # @!attribute code
    #   <p>Status code for why a specific profile failed.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Message describing why a specific profile failed.</p>
    #   @return [String]
    # @!attribute profile_id
    #   <p>The profile id that failed.</p>
    #   @return [String]
    class BatchGetProfileError < Struct.new(
      nil,
      :code,
      :message,
      :profile_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute profile_ids
    #   <p>List of unique identifiers for customer profiles to retrieve.</p>
    #   @return [Array<String>]
    class BatchGetProfileRequest < Struct.new(
      nil,
      :domain_name,
      :profile_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute errors
    #   <p>For information about the errors that are common to all actions, see <a href="https://docs.aws.amazon.com/connect/latest/APIReference/CommonErrors.html">Common
    #               Errors</a>.</p>
    #   @return [Array<Types::BatchGetProfileError>]
    # @!attribute profiles
    #   <p>Array of Profile Objects.</p>
    #   @return [Array<Types::Profile>]
    class BatchGetProfileResponse < Struct.new(
      nil,
      :errors,
      :profiles,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An item that failed to be added to the domain.</p>
    # @!attribute id
    #   <p>The unique identifier of the item in the batch request that failed.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The HTTP status code for the error.</p>
    #   @return [Integer]
    # @!attribute message
    #   <p>A message describing the error.</p>
    #   @return [String]
    class BatchPutProfileObjectErrorItem < Struct.new(
      nil,
      :id,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute object_type_name
    #   <p>The name of the profile object type.</p>
    #   @return [String]
    # @!attribute items
    #   <p>A list of items to add to the domain.</p>
    #   @return [Array<Types::BatchPutProfileObjectRequestItem>]
    class BatchPutProfileObjectRequest < Struct.new(
      nil,
      :domain_name,
      :object_type_name,
      :items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An item to add to the domain as part of a batch request.</p>
    # @!attribute id
    #   <p>A unique identifier for this item in the batch request. Used to correlate items in the response.</p>
    #   @return [String]
    # @!attribute object
    #   <p>A string that is serialized from a JSON object.</p>
    #   @return [String]
    class BatchPutProfileObjectRequestItem < Struct.new(
      nil,
      :id,
      :object,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute successful
    #   <p>A list of items that were successfully added to the domain.</p>
    #   @return [Array<Types::BatchPutProfileObjectResponseItem>]
    # @!attribute failed
    #   <p>A list of items that failed to be added to the domain.</p>
    #   @return [Array<Types::BatchPutProfileObjectErrorItem>]
    class BatchPutProfileObjectResponse < Struct.new(
      nil,
      :successful,
      :failed,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An item that was successfully added to the domain.</p>
    # @!attribute id
    #   <p>The unique identifier of the item in the batch request.</p>
    #   @return [String]
    # @!attribute profile_object_unique_key
    #   <p>The unique identifier of the profile object generated by the service.</p>
    #   @return [String]
    class BatchPutProfileObjectResponseItem < Struct.new(
      nil,
      :id,
      :profile_object_unique_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object that segments on Customer Profile's Calculated Attributes.</p>
    # @!attribute dimension_type
    #   <p>The action to segment with.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values to apply the DimensionType with. To reference a calculated attribute or
    #            profile attribute as a dynamic value, use handlebar notation:
    #            <code>{{_profile.ProfileAttributeName}}</code> or
    #            <code>{{_calculated_attribute.CalculatedAttributeName}}</code>.</p>
    #   @return [Array<String>]
    # @!attribute condition_overrides
    #   <p>Applies the given condition over the initial Calculated Attribute's definition.</p>
    #   @return [Types::ConditionOverrides]
    class CalculatedAttributeDimension < Struct.new(
      nil,
      :dimension_type,
      :values,
      :condition_overrides,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The object containing the values of a single calculated attribute value.</p>
    # @!attribute calculated_attribute_name
    #   <p>The unique name of the calculated attribute.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the calculated attribute.</p>
    #   @return [String]
    # @!attribute is_data_partial
    #   <p>Indicates whether the calculated attribute's value is based on partial data. If the data
    #            is partial, it is set to true.</p>
    #   @return [String]
    # @!attribute profile_id
    #   <p>The profile id belonging to this calculated attribute value.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the calculated attribute.</p>
    #   @return [String]
    # @!attribute last_object_timestamp
    #   <p>The timestamp of the newest object included in the calculated attribute
    #            calculation.</p>
    #   @return [Time]
    class CalculatedAttributeValue < Struct.new(
      nil,
      :calculated_attribute_name,
      :display_name,
      :is_data_partial,
      :profile_id,
      :value,
      :last_object_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an item in the catalog with its complete set of attributes and metadata.</p>
    # @!attribute id
    #   <p>The unique identifier for the catalog item.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The display name of the catalog item.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The product code or SKU of the catalog item.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type classification of the catalog item.</p>
    #   @return [String]
    # @!attribute category
    #   <p>The category to which the catalog item belongs.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A detailed description of the catalog item.</p>
    #   @return [String]
    # @!attribute additional_information
    #   <p>Supplementary information about the catalog item beyond the basic description.</p>
    #   @return [String]
    # @!attribute image_link
    #   <p>The URL link to the item's image.</p>
    #   @return [String]
    # @!attribute link
    #   <p>The URL link to the item's detailed page or external resource.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the catalog item was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the catalog item was last updated.</p>
    #   @return [Time]
    # @!attribute price
    #   <p>The price of the catalog item.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>Additional attributes or properties associated with the catalog item stored as key-value pairs.</p>
    #   @return [Hash<String, String>]
    class CatalogItem < Struct.new(
      nil,
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
      :attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object to override the original condition block of a calculated attribute.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute range
    #   <p>The relative time period over which data is included in the aggregation for this
    #            override.</p>
    #   @return [Types::RangeOverride]
    class ConditionOverrides < Struct.new(
      nil,
      :range,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The conditions including range, object count, and threshold for the calculated
    #          attribute.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute range
    #   <p>The relative time period over which data is included in the aggregation.</p>
    #   @return [Types::Range]
    # @!attribute object_count
    #   <p>The number of profile objects used for the calculated attribute.</p>
    #   @return [Integer]
    # @!attribute threshold
    #   <p>The threshold for the calculated attribute.</p>
    #   @return [Types::Threshold]
    class Conditions < Struct.new(
      nil,
      :range,
      :object_count,
      :threshold,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>How the auto-merging process should resolve conflicts between different profiles.</p>
    # @!attribute conflict_resolving_model
    #   <p>How the auto-merging process should resolve conflicts between different profiles.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>RECENCY</code>: Uses the data that was most recently updated.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SOURCE</code>: Uses the data from a specific source. For example, if a
    #                  company has been aquired or two departments have merged, data from the specified
    #                  source is used. If two duplicate profiles are from the same source, then
    #                     <code>RECENCY</code> is used again.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute source_name
    #   <p>The <code>ObjectType</code> name that is used to resolve profile merging conflicts when
    #            choosing <code>SOURCE</code> as the <code>ConflictResolvingModel</code>.</p>
    #   @return [String]
    class ConflictResolution < Struct.new(
      nil,
      :conflict_resolving_model,
      :source_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operation to be performed on the provided source fields.</p>
    # @!attribute marketo
    #   <p>The operation to be performed on the provided Marketo source fields.</p>
    #   @return [String]
    # @!attribute s3
    #   <p>The operation to be performed on the provided Amazon S3 source fields.</p>
    #   @return [String]
    # @!attribute salesforce
    #   <p>The operation to be performed on the provided Salesforce source fields.</p>
    #   @return [String]
    # @!attribute service_now
    #   <p>The operation to be performed on the provided ServiceNow source fields.</p>
    #   @return [String]
    # @!attribute zendesk
    #   <p>The operation to be performed on the provided Zendesk source fields.</p>
    #   @return [String]
    class ConnectorOperator < Struct.new(
      nil,
      :marketo,
      :s3,
      :salesforce,
      :service_now,
      :zendesk,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The matching criteria to be used during the auto-merging process. </p>
    # @!attribute matching_attributes_list
    #   <p>A list of matching criteria.</p>
    #   @return [Array<Array<String>>]
    class Consolidation < Struct.new(
      nil,
      :matching_attributes_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object that defines users contact preference.</p>
    # @!attribute key_name
    #   <p>A searchable, unique identifier of a customer profile.</p>
    #   @return [String]
    # @!attribute key_value
    #   <p>The key value used to look up profile based off the keyName.</p>
    #   @return [String]
    # @!attribute profile_id
    #   <p>The unique identifier of a customer profile.</p>
    #   @return [String]
    # @!attribute contact_type
    #   <p>The contact type used for engagement. For example: HomePhoneNumber,
    #            PersonalEmailAddress.</p>
    #   @return [String]
    class ContactPreference < Struct.new(
      nil,
      :key_name,
      :key_value,
      :profile_id,
      :contact_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute calculated_attribute_name
    #   <p>The unique name of the calculated attribute.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the calculated attribute.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the calculated attribute.</p>
    #   @return [String]
    # @!attribute attribute_details
    #   <p>Mathematical expression and a list of attribute items specified in that
    #            expression.</p>
    #   @return [Types::AttributeDetails]
    # @!attribute conditions
    #   <p>The conditions including range, object count, and threshold for the calculated
    #            attribute.</p>
    #   @return [Types::Conditions]
    # @!attribute filter
    #   <p>Defines how to filter incoming objects to include part of the Calculated
    #            Attribute.</p>
    #   @return [Types::Filter]
    # @!attribute statistic
    #   <p>The aggregation operation to perform for the calculated attribute.</p>
    #   @return [String]
    # @!attribute use_historical_data
    #   <p>Whether historical data ingested before the Calculated Attribute was created should be
    #            included in calculations.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class CreateCalculatedAttributeDefinitionRequest < Struct.new(
      nil,
      :domain_name,
      :calculated_attribute_name,
      :display_name,
      :description,
      :attribute_details,
      :conditions,
      :filter,
      :statistic,
      :use_historical_data,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute calculated_attribute_name
    #   <p>The unique name of the calculated attribute.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the calculated attribute.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the calculated attribute.</p>
    #   @return [String]
    # @!attribute attribute_details
    #   <p>Mathematical expression and a list of attribute items specified in that
    #            expression.</p>
    #   @return [Types::AttributeDetails]
    # @!attribute conditions
    #   <p>The conditions including range, object count, and threshold for the calculated
    #            attribute.</p>
    #   @return [Types::Conditions]
    # @!attribute filter
    #   <p>The filter that was used as part of the request.</p>
    #   @return [Types::Filter]
    # @!attribute statistic
    #   <p>The aggregation operation to perform for the calculated attribute.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the calculated attribute definition was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp of when the calculated attribute definition was most recently
    #            edited.</p>
    #   @return [Time]
    # @!attribute use_historical_data
    #   <p>Whether historical data ingested before the Calculated Attribute was created should be
    #            included in calculations.</p>
    #   @return [Boolean]
    # @!attribute status
    #   <p>Status of the Calculated Attribute creation (whether all historical data has been
    #            indexed.)</p>
    #   @return [String]
    # @!attribute readiness
    #   <p>Information indicating if the Calculated Attribute is ready for use by confirming all
    #            historical data has been processed and reflected.</p>
    #   @return [Types::Readiness]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class CreateCalculatedAttributeDefinitionResponse < Struct.new(
      nil,
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
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute layout_definition_name
    #   <p>The unique name of the layout.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the layout</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the layout</p>
    #   @return [String]
    # @!attribute is_default
    #   <p>If set to true for a layout, this layout will be used by default to view data. If set to
    #            false, then the layout will not be used by default, but it can be used to view data by
    #            explicitly selecting it in the console.</p>
    #   @return [Boolean]
    # @!attribute layout_type
    #   <p>The type of layout that can be used to view data under a Customer Profiles domain.</p>
    #   @return [String]
    # @!attribute layout
    #   <p>A customizable layout that can be used to view data under a Customer Profiles domain.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class CreateDomainLayoutRequest < Struct.new(
      nil,
      :domain_name,
      :layout_definition_name,
      :description,
      :display_name,
      :is_default,
      :layout_type,
      :layout,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute layout_definition_name
    #   <p>The unique name of the layout.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the layout</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the layout</p>
    #   @return [String]
    # @!attribute is_default
    #   <p>If set to true for a layout, this layout will be used by default to view data. If set to
    #            false, then the layout will not be used by default, but it can be used to view data by
    #            explicitly selecting it in the console.</p>
    #   @return [Boolean]
    # @!attribute layout_type
    #   <p>The type of layout that can be used to view data under customer profiles domain.</p>
    #   @return [String]
    # @!attribute layout
    #   <p>A customizable layout that can be used to view data under Customer Profiles
    #            domain.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version used to create layout.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute created_at
    #   <p>The timestamp of when the layout was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp of when the layout was most recently updated.</p>
    #   @return [Time]
    class CreateDomainLayoutResponse < Struct.new(
      nil,
      :layout_definition_name,
      :description,
      :display_name,
      :is_default,
      :layout_type,
      :layout,
      :version,
      :tags,
      :created_at,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_default] = false unless options.key?(:is_default)
        super
      end
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute default_expiration_days
    #   <p>The default number of days until the data within the domain expires.</p>
    #   @return [Integer]
    # @!attribute default_encryption_key
    #   <p>The default encryption key, which is an AWS managed key, is used when no specific type
    #            of encryption key is specified. It is used to encrypt all data before it is placed in
    #            permanent or semi-permanent storage.</p>
    #   @return [String]
    # @!attribute dead_letter_queue_url
    #   <p>The URL of the SQS dead letter queue, which is used for reporting errors associated with
    #            ingesting data from third party applications. You must set up a policy on the
    #            DeadLetterQueue for the SendMessage operation to enable Amazon Connect Customer Profiles to send
    #            messages to the DeadLetterQueue.</p>
    #   @return [String]
    # @!attribute matching
    #   <p>The process of matching duplicate profiles. If <code>Matching</code> = <code>true</code>, Amazon Connect Customer Profiles starts a weekly
    #   batch process called Identity Resolution Job. If you do not specify a date and time for Identity Resolution Job to run, by default it runs every
    #   Saturday at 12AM UTC to detect duplicate profiles in your domains. </p>
    #            <p>After the Identity Resolution Job completes, use the
    #   <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html">GetMatches</a>
    #   API to return and review the results. Or, if you have configured <code>ExportingConfig</code> in the <code>MatchingRequest</code>, you can download the results from
    #   S3.</p>
    #   @return [Types::MatchingRequest]
    # @!attribute rule_based_matching
    #   <p>The process of matching duplicate profiles using the Rule-Based matching. If
    #               <code>RuleBasedMatching</code> = true, Connect Customer Customer Profiles will start
    #            to match and merge your profiles according to your configuration in the
    #               <code>RuleBasedMatchingRequest</code>. You can use the <code>ListRuleBasedMatches</code>
    #            and <code>GetSimilarProfiles</code> API to return and review the results. Also, if you have
    #            configured <code>ExportingConfig</code> in the <code>RuleBasedMatchingRequest</code>, you
    #            can download the results from S3.</p>
    #   @return [Types::RuleBasedMatchingRequest]
    # @!attribute data_store
    #   <p>Set to true to enabled data store for this domain.</p>
    #   @return [Types::DataStoreRequest]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class CreateDomainRequest < Struct.new(
      nil,
      :domain_name,
      :default_expiration_days,
      :default_encryption_key,
      :dead_letter_queue_url,
      :matching,
      :rule_based_matching,
      :data_store,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute default_expiration_days
    #   <p>The default number of days until the data within the domain expires.</p>
    #   @return [Integer]
    # @!attribute default_encryption_key
    #   <p>The default encryption key, which is an AWS managed key, is used when no specific type
    #            of encryption key is specified. It is used to encrypt all data before it is placed in
    #            permanent or semi-permanent storage.</p>
    #   @return [String]
    # @!attribute dead_letter_queue_url
    #   <p>The URL of the SQS dead letter queue, which is used for reporting errors associated with
    #            ingesting data from third party applications.</p>
    #   @return [String]
    # @!attribute matching
    #   <p>The process of matching duplicate profiles. If <code>Matching</code> = <code>true</code>, Amazon Connect Customer Profiles starts a weekly
    #   batch process called Identity Resolution Job. If you do not specify a date and time for Identity Resolution Job to run, by default it runs every
    #   Saturday at 12AM UTC to detect duplicate profiles in your domains. </p>
    #            <p>After the Identity Resolution Job completes, use the
    #   <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html">GetMatches</a>
    #   API to return and review the results. Or, if you have configured <code>ExportingConfig</code> in the <code>MatchingRequest</code>, you can download the results from
    #   S3.</p>
    #   @return [Types::MatchingResponse]
    # @!attribute rule_based_matching
    #   <p>The process of matching duplicate profiles using the Rule-Based matching. If
    #               <code>RuleBasedMatching</code> = true, Connect Customer Customer Profiles will start
    #            to match and merge your profiles according to your configuration in the
    #               <code>RuleBasedMatchingRequest</code>. You can use the <code>ListRuleBasedMatches</code>
    #            and <code>GetSimilarProfiles</code> API to return and review the results. Also, if you have
    #            configured <code>ExportingConfig</code> in the <code>RuleBasedMatchingRequest</code>, you
    #            can download the results from S3.</p>
    #   @return [Types::RuleBasedMatchingResponse]
    # @!attribute data_store
    #   <p>The data store.</p>
    #   @return [Types::DataStoreResponse]
    # @!attribute created_at
    #   <p>The timestamp of when the domain was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp of when the domain was most recently edited.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class CreateDomainResponse < Struct.new(
      nil,
      :domain_name,
      :default_expiration_days,
      :default_encryption_key,
      :dead_letter_queue_url,
      :matching,
      :rule_based_matching,
      :data_store,
      :created_at,
      :last_updated_at,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute uri
    #   <p>The StreamARN of the destination to deliver profile events to. For example,
    #            arn:aws:kinesis:region:account-id:stream/stream-name</p>
    #   @return [String]
    # @!attribute event_stream_name
    #   <p>The name of the event stream.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class CreateEventStreamRequest < Struct.new(
      nil,
      :domain_name,
      :uri,
      :event_stream_name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_stream_arn
    #   <p>A unique identifier for the event stream.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class CreateEventStreamResponse < Struct.new(
      nil,
      :event_stream_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute event_trigger_name
    #   <p>The unique name of the event trigger.</p>
    #   @return [String]
    # @!attribute object_type_name
    #   <p>The unique name of the object type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the event trigger.</p>
    #   @return [String]
    # @!attribute event_trigger_conditions
    #   <p>A list of conditions that determine when an event should trigger the destination.</p>
    #   @return [Array<Types::EventTriggerCondition>]
    # @!attribute segment_filter
    #   <p>The destination is triggered only for profiles that meet the criteria of a segment
    #            definition.</p>
    #   @return [String]
    # @!attribute event_trigger_limits
    #   <p>Defines limits controlling whether an event triggers the destination, based on ingestion
    #            latency and the number of invocations per profile over specific time periods.</p>
    #   @return [Types::EventTriggerLimits]
    # @!attribute tags
    #   <p>An array of key-value pairs to apply to this resource.</p>
    #   @return [Hash<String, String>]
    class CreateEventTriggerRequest < Struct.new(
      nil,
      :domain_name,
      :event_trigger_name,
      :object_type_name,
      :description,
      :event_trigger_conditions,
      :segment_filter,
      :event_trigger_limits,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_trigger_name
    #   <p>The unique name of the event trigger.</p>
    #   @return [String]
    # @!attribute object_type_name
    #   <p>The unique name of the object type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the event trigger.</p>
    #   @return [String]
    # @!attribute event_trigger_conditions
    #   <p>A list of conditions that determine when an event should trigger the destination.</p>
    #   @return [Array<Types::EventTriggerCondition>]
    # @!attribute segment_filter
    #   <p>The destination is triggered only for profiles that meet the criteria of a segment
    #            definition.</p>
    #   @return [String]
    # @!attribute event_trigger_limits
    #   <p>Defines limits controlling whether an event triggers the destination, based on ingestion
    #            latency and the number of invocations per profile over specific time periods.</p>
    #   @return [Types::EventTriggerLimits]
    # @!attribute created_at
    #   <p>The timestamp of when the event trigger was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp of when the event trigger was most recently updated.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>An array of key-value pairs to apply to this resource.</p>
    #   @return [Hash<String, String>]
    class CreateEventTriggerResponse < Struct.new(
      nil,
      :event_trigger_name,
      :object_type_name,
      :description,
      :event_trigger_conditions,
      :segment_filter,
      :event_trigger_limits,
      :created_at,
      :last_updated_at,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute workflow_type
    #   <p>The type of workflow. The only supported value is APPFLOW_INTEGRATION.</p>
    #   @return [String]
    # @!attribute integration_config
    #   <p>Configuration data for integration workflow.</p>
    #   @return [Types::IntegrationConfig]
    # @!attribute object_type_name
    #   <p>The name of the profile object type.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role. Customer Profiles assumes this role to create resources on your behalf as part of workflow execution.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class CreateIntegrationWorkflowRequest < Struct.new(
      nil,
      :domain_name,
      :workflow_type,
      :integration_config,
      :object_type_name,
      :role_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_id
    #   <p>Unique identifier for the workflow.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message indicating create request was received.</p>
    #   @return [String]
    class CreateIntegrationWorkflowResponse < Struct.new(
      nil,
      :workflow_id,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute account_number
    #   <p>An account number that you have assigned to the customer.</p>
    #   @return [String]
    # @!attribute additional_information
    #   <p>Any additional information relevant to the customer’s profile.</p>
    #   @return [String]
    # @!attribute party_type
    #   <p>The type of profile used to describe the customer.</p>
    #   @return [String]
    # @!attribute business_name
    #   <p>The name of the customer’s business.</p>
    #   @return [String]
    # @!attribute first_name
    #   <p>The customer’s first name.</p>
    #   @return [String]
    # @!attribute middle_name
    #   <p>The customer’s middle name.</p>
    #   @return [String]
    # @!attribute last_name
    #   <p>The customer’s last name.</p>
    #   @return [String]
    # @!attribute birth_date
    #   <p>The customer’s birth date. </p>
    #   @return [String]
    # @!attribute gender
    #   <p>The gender with which the customer identifies. </p>
    #   @return [String]
    # @!attribute phone_number
    #   <p>The customer’s phone number, which has not been specified as a mobile, home, or business
    #            number. </p>
    #   @return [String]
    # @!attribute mobile_phone_number
    #   <p>The customer’s mobile phone number.</p>
    #   @return [String]
    # @!attribute home_phone_number
    #   <p>The customer’s home phone number.</p>
    #   @return [String]
    # @!attribute business_phone_number
    #   <p>The customer’s business phone number.</p>
    #   @return [String]
    # @!attribute email_address
    #   <p>The customer’s email address, which has not been specified as a personal or business
    #            address. </p>
    #   @return [String]
    # @!attribute personal_email_address
    #   <p>The customer’s personal email address.</p>
    #   @return [String]
    # @!attribute business_email_address
    #   <p>The customer’s business email address.</p>
    #   @return [String]
    # @!attribute address
    #   <p>A generic address associated with the customer that is not mailing, shipping, or
    #            billing.</p>
    #   @return [Types::Address]
    # @!attribute shipping_address
    #   <p>The customer’s shipping address.</p>
    #   @return [Types::Address]
    # @!attribute mailing_address
    #   <p>The customer’s mailing address.</p>
    #   @return [Types::Address]
    # @!attribute billing_address
    #   <p>The customer’s billing address.</p>
    #   @return [Types::Address]
    # @!attribute attributes
    #   <p>A key value pair of attributes of a customer profile.</p>
    #   @return [Hash<String, String>]
    # @!attribute party_type_string
    #   <p>An alternative to <code>PartyType</code> which accepts any string as input.</p>
    #   @return [String]
    # @!attribute gender_string
    #   <p>An alternative to <code>Gender</code> which accepts any string as input.</p>
    #   @return [String]
    # @!attribute profile_type
    #   <p>The type of the profile.</p>
    #   @return [String]
    # @!attribute engagement_preferences
    #   <p>Object that defines the preferred methods of engagement, per channel.</p>
    #   @return [Types::EngagementPreferences]
    class CreateProfileRequest < Struct.new(
      nil,
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
      :engagement_preferences,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_id
    #   <p>The unique identifier of a customer profile.</p>
    #   @return [String]
    class CreateProfileResponse < Struct.new(
      nil,
      :profile_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute recommender_filter_name
    #   <p>The name of the recommender filter. The name must be unique within the domain.</p>
    #   @return [String]
    # @!attribute recommender_filter_expression
    #   <p>The filter expression that defines which items to include or exclude from recommendations.</p>
    #   @return [String]
    # @!attribute recommender_schema_name
    #   <p>The name of the recommender schema to use for this recommender filter. If not specified, the default schema is used.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the recommender filter.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class CreateRecommenderFilterRequest < Struct.new(
      nil,
      :domain_name,
      :recommender_filter_name,
      :recommender_filter_expression,
      :recommender_schema_name,
      :description,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommender_filter_arn
    #   <p>The Amazon Resource Name (ARN) of the recommender filter.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class CreateRecommenderFilterResponse < Struct.new(
      nil,
      :recommender_filter_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute recommender_name
    #   <p>The name of the recommender.</p>
    #   @return [String]
    # @!attribute recommender_recipe_name
    #   <p>The name of the recommeder recipe.</p>
    #   @return [String]
    # @!attribute recommender_config
    #   <p>The recommender configuration.</p>
    #   @return [Types::RecommenderConfig]
    # @!attribute description
    #   <p>The description of the domain object type.</p>
    #   @return [String]
    # @!attribute recommender_schema_name
    #   <p>The name of the recommender schema to use for this recommender. If not specified, the default schema is used.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class CreateRecommenderRequest < Struct.new(
      nil,
      :domain_name,
      :recommender_name,
      :recommender_recipe_name,
      :recommender_config,
      :description,
      :recommender_schema_name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommender_arn
    #   <p>The ARN of the recommender</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class CreateRecommenderResponse < Struct.new(
      nil,
      :recommender_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute recommender_schema_name
    #   <p>The name of the recommender schema. The name must be unique within the domain.</p>
    #   @return [String]
    # @!attribute fields
    #   <p>A map of dataset type to column definitions that specifies which data columns to include in the schema. The <code>_webAnalytics</code> and <code>_catalogItem</code> keys are supported.</p>
    #   @return [Hash<String, Array<Types::RecommenderSchemaField>>]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class CreateRecommenderSchemaRequest < Struct.new(
      nil,
      :domain_name,
      :recommender_schema_name,
      :fields,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommender_schema_arn
    #   <p>The Amazon Resource Name (ARN) of the recommender schema.</p>
    #   @return [String]
    # @!attribute recommender_schema_name
    #   <p>The name of the recommender schema.</p>
    #   @return [String]
    # @!attribute fields
    #   <p>A map of dataset type to column definitions included in the schema.</p>
    #   @return [Hash<String, Array<Types::RecommenderSchemaField>>]
    # @!attribute created_at
    #   <p>The timestamp of when the recommender schema was created.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the recommender schema.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class CreateRecommenderSchemaResponse < Struct.new(
      nil,
      :recommender_schema_arn,
      :recommender_schema_name,
      :fields,
      :created_at,
      :status,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute segment_definition_name
    #   <p>The unique name of the segment definition.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the segment definition.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the segment definition.</p>
    #   @return [String]
    # @!attribute segment_groups
    #   <p>Specifies the base segments and dimensions for a segment definition along with their
    #            respective relationship.</p>
    #   @return [Types::SegmentGroup]
    # @!attribute segment_sql_query
    #   <p>The segment SQL query.</p>
    #   @return [String]
    # @!attribute segment_sort
    #   <p>The segment sort.</p>
    #   @return [Types::SegmentSort]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class CreateSegmentDefinitionRequest < Struct.new(
      nil,
      :domain_name,
      :segment_definition_name,
      :display_name,
      :description,
      :segment_groups,
      :segment_sql_query,
      :segment_sort,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute segment_definition_name
    #   <p>The name of the segment definition.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the segment definition.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the segment definition.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the segment definition was created.</p>
    #   @return [Time]
    # @!attribute segment_definition_arn
    #   <p>The arn of the segment definition.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class CreateSegmentDefinitionResponse < Struct.new(
      nil,
      :segment_definition_name,
      :display_name,
      :description,
      :created_at,
      :segment_definition_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute segment_query
    #   <p>The segment query for calculating a segment estimate.</p>
    #   @return [Types::SegmentGroupStructure]
    # @!attribute segment_sql_query
    #   <p>The segment SQL query.</p>
    #   @return [String]
    class CreateSegmentEstimateRequest < Struct.new(
      nil,
      :domain_name,
      :segment_query,
      :segment_sql_query,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute estimate_id
    #   <p>A unique identifier for the resource. The value can be passed to
    #               <code>GetSegmentEstimate</code> to retrieve the result of segment estimate
    #            status.</p>
    #   @return [String]
    # @!attribute status_code
    #   <p>The status code for the response.</p>
    #   @return [Integer]
    class CreateSegmentEstimateResponse < Struct.new(
      nil,
      :domain_name,
      :estimate_id,
      :status_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:status_code] = 0 unless options.key?(:status_code)
        super
      end
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute segment_definition_name
    #   <p>The name of the segment definition used in this snapshot request.</p>
    #   @return [String]
    # @!attribute data_format
    #   <p>The format in which the segment will be exported.</p>
    #   @return [String]
    # @!attribute encryption_key
    #   <p>The Amazon Resource Name (ARN) of the KMS key used to encrypt the exported
    #            segment.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that allows Customer Profiles service
    #            principal to assume the role for conducting KMS and S3 operations.</p>
    #   @return [String]
    # @!attribute destination_uri
    #   <p>The destination to which the segment will be exported. This field must be provided if
    #            the request is not submitted from the Connect Customer Admin Website.</p>
    #   @return [String]
    class CreateSegmentSnapshotRequest < Struct.new(
      nil,
      :domain_name,
      :segment_definition_name,
      :data_format,
      :encryption_key,
      :role_arn,
      :destination_uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute snapshot_id
    #   <p>The unique identifier of the segment snapshot.</p>
    #   @return [String]
    class CreateSegmentSnapshotResponse < Struct.new(
      nil,
      :snapshot_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain. Domain should be exists for the upload job to be created.
    #         </p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The unique name of the upload job. Could be a file name to identify the upload
    #            job.</p>
    #   @return [String]
    # @!attribute fields
    #   <p>The mapping between CSV Columns and Profile Object attributes. A map of the name and
    #            ObjectType field.</p>
    #   @return [Hash<String, Types::ObjectTypeField>]
    # @!attribute unique_key
    #   <p>The unique key columns for de-duping the profiles used to map data to the profile.
    #         </p>
    #   @return [String]
    # @!attribute data_expiry
    #   <p>The expiry duration for the profiles ingested with the job. If not provided, the system
    #            default of 2 weeks is used. </p>
    #   @return [Integer]
    class CreateUploadJobRequest < Struct.new(
      nil,
      :domain_name,
      :display_name,
      :fields,
      :unique_key,
      :data_expiry,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The unique identifier for the created upload job. </p>
    #   @return [String]
    class CreateUploadJobResponse < Struct.new(
      nil,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The data store request.</p>
    # @!attribute enabled
    #   <p>Enabled: Set to true to enabled data store for this domain.</p>
    #   @return [Boolean]
    class DataStoreRequest < Struct.new(
      nil,
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The data store response.</p>
    # @!attribute enabled
    #   <p>True if data store is enabled for this domain</p>
    #   @return [Boolean]
    # @!attribute readiness
    #   <p>Information indicating if the Calculated Attribute is ready for use by confirming all
    #            historical data has been processed and reflected.</p>
    #   @return [Types::Readiness]
    class DataStoreResponse < Struct.new(
      nil,
      :enabled,
      :readiness,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object that segments on various Customer Profile's date fields.</p>
    # @!attribute dimension_type
    #   <p>The action to segment with.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values to apply the DimensionType on. To reference a calculated attribute or profile
    #            attribute as a dynamic value, use handlebar notation:
    #            <code>{{_profile.ProfileAttributeName}}</code> or
    #            <code>{{_calculated_attribute.CalculatedAttributeName}}</code>.</p>
    #   @return [Array<String>]
    class DateDimension < Struct.new(
      nil,
      :dimension_type,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute calculated_attribute_name
    #   <p>The unique name of the calculated attribute.</p>
    #   @return [String]
    class DeleteCalculatedAttributeDefinitionRequest < Struct.new(
      nil,
      :domain_name,
      :calculated_attribute_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteCalculatedAttributeDefinitionResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute layout_definition_name
    #   <p>The unique name of the layout.</p>
    #   @return [String]
    class DeleteDomainLayoutRequest < Struct.new(
      nil,
      :domain_name,
      :layout_definition_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message
    #   <p>A message that indicates the delete request is done.</p>
    #   @return [String]
    class DeleteDomainLayoutResponse < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute object_type_name
    #   <p>The unique name of the domain object type.</p>
    #   @return [String]
    class DeleteDomainObjectTypeRequest < Struct.new(
      nil,
      :domain_name,
      :object_type_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteDomainObjectTypeResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    class DeleteDomainRequest < Struct.new(
      nil,
      :domain_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message
    #   <p>A message that indicates the delete request is done.</p>
    #   @return [String]
    class DeleteDomainResponse < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute event_stream_name
    #   <p>The name of the event stream</p>
    #   @return [String]
    class DeleteEventStreamRequest < Struct.new(
      nil,
      :domain_name,
      :event_stream_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteEventStreamResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute event_trigger_name
    #   <p>The unique name of the event trigger.</p>
    #   @return [String]
    class DeleteEventTriggerRequest < Struct.new(
      nil,
      :domain_name,
      :event_trigger_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message
    #   <p>A message that indicates the delete request is done.</p>
    #   @return [String]
    class DeleteEventTriggerResponse < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute uri
    #   <p>The URI of the S3 bucket or any other type of data source.</p>
    #   @return [String]
    class DeleteIntegrationRequest < Struct.new(
      nil,
      :domain_name,
      :uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message
    #   <p>A message that indicates the delete request is done.</p>
    #   @return [String]
    class DeleteIntegrationResponse < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_id
    #   <p>The unique identifier of a customer profile.</p>
    #   @return [String]
    # @!attribute key_name
    #   <p>A searchable identifier of a customer profile.</p>
    #   @return [String]
    # @!attribute values
    #   <p>A list of key values.</p>
    #   @return [Array<String>]
    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    class DeleteProfileKeyRequest < Struct.new(
      nil,
      :profile_id,
      :key_name,
      :values,
      :domain_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message
    #   <p>A message that indicates the delete request is done.</p>
    #   @return [String]
    class DeleteProfileKeyResponse < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_id
    #   <p>The unique identifier of a customer profile.</p>
    #   @return [String]
    # @!attribute profile_object_unique_key
    #   <p>The unique identifier of the profile object generated by the service.</p>
    #   @return [String]
    # @!attribute object_type_name
    #   <p>The name of the profile object type.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    class DeleteProfileObjectRequest < Struct.new(
      nil,
      :profile_id,
      :profile_object_unique_key,
      :object_type_name,
      :domain_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message
    #   <p>A message that indicates the delete request is done.</p>
    #   @return [String]
    class DeleteProfileObjectResponse < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute object_type_name
    #   <p>The name of the profile object type.</p>
    #   @return [String]
    class DeleteProfileObjectTypeRequest < Struct.new(
      nil,
      :domain_name,
      :object_type_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message
    #   <p>A message that indicates the delete request is done.</p>
    #   @return [String]
    class DeleteProfileObjectTypeResponse < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_id
    #   <p>The unique identifier of a customer profile.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    class DeleteProfileRequest < Struct.new(
      nil,
      :profile_id,
      :domain_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message
    #   <p>A message that indicates the delete request is done.</p>
    #   @return [String]
    class DeleteProfileResponse < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute recommender_filter_name
    #   <p>The name of the recommender filter to delete.</p>
    #   @return [String]
    class DeleteRecommenderFilterRequest < Struct.new(
      nil,
      :domain_name,
      :recommender_filter_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message
    #   <p>A message that indicates the delete request is done.</p>
    #   @return [String]
    class DeleteRecommenderFilterResponse < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute recommender_name
    #   <p>The recommender name.</p>
    #   @return [String]
    class DeleteRecommenderRequest < Struct.new(
      nil,
      :domain_name,
      :recommender_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteRecommenderResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute recommender_schema_name
    #   <p>The name of the recommender schema to delete.</p>
    #   @return [String]
    class DeleteRecommenderSchemaRequest < Struct.new(
      nil,
      :domain_name,
      :recommender_schema_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteRecommenderSchemaResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute segment_definition_name
    #   <p>The unique name of the segment definition.</p>
    #   @return [String]
    class DeleteSegmentDefinitionRequest < Struct.new(
      nil,
      :domain_name,
      :segment_definition_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message
    #   <p>A message that indicates the delete request is done.</p>
    #   @return [String]
    class DeleteSegmentDefinitionResponse < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute segment_definition_name
    #   <p>The unique name of the segment definition. </p>
    #   @return [String]
    class DeleteSegmentSubscriptionRequest < Struct.new(
      nil,
      :domain_name,
      :segment_definition_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message
    #   <p>A confirmation message indicating the subscription was deleted successfully. </p>
    #   @return [String]
    class DeleteSegmentSubscriptionResponse < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute workflow_id
    #   <p>Unique identifier for the workflow.</p>
    #   @return [String]
    class DeleteWorkflowRequest < Struct.new(
      nil,
      :domain_name,
      :workflow_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteWorkflowResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about the Kinesis data stream</p>
    # @!attribute uri
    #   <p>The StreamARN of the destination to deliver profile events to. For example,
    #            arn:aws:kinesis:region:account-id:stream/stream-name.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of enabling the Kinesis stream as a destination for export.</p>
    #   @return [String]
    # @!attribute unhealthy_since
    #   <p>The timestamp when the status last changed to <code>UNHEALHY</code>.</p>
    #   @return [Time]
    class DestinationSummary < Struct.new(
      nil,
      :uri,
      :status,
      :unhealthy_since,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute objects
    #   <p>A string that is serialized from a JSON object.</p>
    #   @return [Array<String>]
    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    class DetectProfileObjectTypeRequest < Struct.new(
      nil,
      :objects,
      :domain_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute detected_profile_object_types
    #   <p>Detected <code>ProfileObjectType</code> mappings from given objects. A maximum of one
    #            mapping is supported.</p>
    #   @return [Array<Types::DetectedProfileObjectType>]
    class DetectProfileObjectTypeResponse < Struct.new(
      nil,
      :detected_profile_object_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains <code>ProfileObjectType</code> mapping information from the model.</p>
    # @!attribute source_last_updated_timestamp_format
    #   <p>The format of <code>sourceLastUpdatedTimestamp</code> that was detected in
    #            fields.</p>
    #   @return [String]
    # @!attribute fields
    #   <p>A map of the name and the <code>ObjectType</code> field.</p>
    #   @return [Hash<String, Types::ObjectTypeField>]
    # @!attribute keys
    #   <p>A list of unique keys that can be used to map data to a profile.</p>
    #   @return [Hash<String, Array<Types::ObjectTypeKey>>]
    class DetectedProfileObjectType < Struct.new(
      nil,
      :source_last_updated_timestamp_format,
      :fields,
      :keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object that holds what profile and calculated attributes to segment on.</p>
    # @!attribute profile_attributes
    #   <p>Object that holds the profile attributes to segment on.</p>
    #   @return [Types::ProfileAttributes]
    # @!attribute calculated_attributes
    #   <p>Object that holds the calculated attributes to segment on.</p>
    #   @return [Hash<String, Types::CalculatedAttributeDimension>]
    class Dimension < Struct.new(
      :profile_attributes,
      :calculated_attributes,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ProfileAttributes < Dimension; end
      class CalculatedAttributes < Dimension; end
      class Unknown < Dimension; end
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    class DisassociateStreamForSegmentsRequest < Struct.new(
      nil,
      :domain_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message
    #   <p>A confirmation message indicating the stream was disassociated successfully. </p>
    #   @return [String]
    class DisassociateStreamForSegmentsResponse < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a diversity constraint for a single item column, specifying a cap type and a target value or placeholder that controls how many recommended items may share the same column value.</p>
    # @!attribute name
    #   <p>The name of the item catalog column on which to apply the diversity cap. The column must be defined in the recommender schema.</p>
    #   @return [String]
    # @!attribute cap_type
    #   <p>The type of diversity cap to apply. Valid values are <code>PERCENTAGE</code> (interpret <code>Target</code> as a percentage of returned items) and <code>VALUE</code> (interpret <code>Target</code> as an absolute count).</p>
    #   @return [String]
    # @!attribute target
    #   <p>The diversity cap target. Either an integer literal (for example, <code>"25"</code>) or a placeholder expression of the form <code>$name</code> whose value is supplied at inference time through <code>GetProfileRecommendations</code>.</p>
    #   @return [String]
    class DiversityColumn < Struct.new(
      nil,
      :name,
      :cap_type,
      :target,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration that controls diversity of recommendation results by capping the representation of specified item columns.</p>
    # @!attribute diversity_columns
    #   <p>A list of up to two diversity columns. Each column defines a cap on the number or percentage of recommended items that share the same value for that column.</p>
    #   @return [Array<Types::DiversityColumn>]
    class DiversityConfig < Struct.new(
      nil,
      :diversity_columns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The standard domain object type.</p>
    # @!attribute source
    #   <p>The expression that defines how to extract the field value from the source object.></p>
    #   @return [String]
    # @!attribute target
    #   <p>The expression that defines where the field value should be placed in the standard domain object.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The content type of the field.</p>
    #   @return [String]
    # @!attribute feature_type
    #   <p>The semantic meaning of the field.</p>
    #   @return [String]
    class DomainObjectTypeField < Struct.new(
      nil,
      :source,
      :target,
      :content_type,
      :feature_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an item in the list of domain object types, containing basic information about a specific object type within a domain.</p>
    # @!attribute object_type_name
    #   <p>The name that identifies the object type within the domain.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description explaining the purpose and characteristics of this object type.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the domain object type was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp of when the domain object type was most recently edited.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class DomainObjectTypesListItem < Struct.new(
      nil,
      :object_type_name,
      :description,
      :created_at,
      :last_updated_at,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Usage-specific statistics about the domain.</p>
    # @!attribute profile_count
    #   <p>The total number of profiles currently in the domain.</p>
    #   @return [Integer]
    # @!attribute metering_profile_count
    #   <p>The number of profiles that you are currently paying for in the domain. If you have more
    #            than 100 objects associated with a single profile, that profile counts as two profiles. If
    #            you have more than 200 objects, that profile counts as three, and so on.</p>
    #   @return [Integer]
    # @!attribute object_count
    #   <p>The total number of objects in domain.</p>
    #   @return [Integer]
    # @!attribute total_size
    #   <p>The total size, in bytes, of all objects in the domain.</p>
    #   @return [Integer]
    class DomainStats < Struct.new(
      nil,
      :profile_count,
      :metering_profile_count,
      :object_count,
      :total_size,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:profile_count] = 0 unless options.key?(:profile_count)
        options[:metering_profile_count] = 0 unless options.key?(:metering_profile_count)
        options[:object_count] = 0 unless options.key?(:object_count)
        options[:total_size] = 0 unless options.key?(:total_size)
        super
      end
    end

    # <p>Object that defines users preferred methods of engagement.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute phone
    #   <p>A list of phone-related contact preferences</p>
    #   @return [Array<Types::ContactPreference>]
    # @!attribute email
    #   <p>A list of email-related contact preferences</p>
    #   @return [Array<Types::ContactPreference>]
    class EngagementPreferences < Struct.new(
      nil,
      :phone,
      :email,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration parameters for events in the personalization system.</p>
    # @!attribute event_type
    #   <p>The type of event being tracked (e.g., 'click', 'purchase', 'view').</p>
    #   @return [String]
    # @!attribute event_value_threshold
    #   <p>The minimum value threshold that an event must meet to be considered valid.</p>
    #   @return [Float]
    # @!attribute event_weight
    #   <p>The weight of the event type. A higher weight means higher importance of the event type for the created solution.</p>
    #   @return [Float]
    class EventParameters < Struct.new(
      nil,
      :event_type,
      :event_value_threshold,
      :event_weight,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details of the destination being used for the EventStream.</p>
    # @!attribute uri
    #   <p>The StreamARN of the destination to deliver profile events to. For example,
    #            arn:aws:kinesis:region:account-id:stream/stream-name.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of enabling the Kinesis stream as a destination for export.</p>
    #   @return [String]
    # @!attribute unhealthy_since
    #   <p>The timestamp when the status last changed to <code>UNHEALHY</code>.</p>
    #   @return [Time]
    # @!attribute message
    #   <p>The human-readable string that corresponds to the error or success while enabling the
    #            streaming destination.</p>
    #   @return [String]
    class EventStreamDestinationDetails < Struct.new(
      nil,
      :uri,
      :status,
      :unhealthy_since,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An instance of EventStream in a list of EventStreams.</p>
    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute event_stream_name
    #   <p>The name of the event stream.</p>
    #   @return [String]
    # @!attribute event_stream_arn
    #   <p>A unique identifier for the event stream.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The operational state of destination stream for export.</p>
    #   @return [String]
    # @!attribute stopped_since
    #   <p>The timestamp when the <code>State</code> changed to <code>STOPPED</code>.</p>
    #   @return [Time]
    # @!attribute destination_summary
    #   <p>Summary information about the Kinesis data stream.</p>
    #   @return [Types::DestinationSummary]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class EventStreamSummary < Struct.new(
      nil,
      :domain_name,
      :event_stream_name,
      :event_stream_arn,
      :state,
      :stopped_since,
      :destination_summary,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the circumstances under which the event should trigger the destination.</p>
    # @!attribute event_trigger_dimensions
    #   <p>A list of dimensions to be evaluated for the event.</p>
    #   @return [Array<Types::EventTriggerDimension>]
    # @!attribute logical_operator
    #   <p>The operator used to combine multiple dimensions.</p>
    #   @return [String]
    class EventTriggerCondition < Struct.new(
      nil,
      :event_trigger_dimensions,
      :logical_operator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A specific event dimension to be assessed.</p>
    # @!attribute object_attributes
    #   <p>A list of object attributes to be evaluated.</p>
    #   @return [Array<Types::ObjectAttribute>]
    class EventTriggerDimension < Struct.new(
      nil,
      :object_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines limits controlling whether an event triggers the destination, based on ingestion
    #          latency and the number of invocations per profile over specific time periods.</p>
    # @!attribute event_expiration
    #   <p>In milliseconds. Specifies that an event will only trigger the destination if it is
    #            processed within a certain latency period.</p>
    #   @return [Integer]
    # @!attribute periods
    #   <p>A list of time periods during which the limits apply.</p>
    #   @return [Array<Types::Period>]
    class EventTriggerLimits < Struct.new(
      nil,
      :event_expiration,
      :periods,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The summary of the event trigger.</p>
    # @!attribute object_type_name
    #   <p>The unique name of the object type.</p>
    #   @return [String]
    # @!attribute event_trigger_name
    #   <p>The unique name of the event trigger.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the event trigger.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the event trigger was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp of when the event trigger was most recently updated.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>An array of key-value pairs to apply to this resource.</p>
    #   @return [Hash<String, String>]
    class EventTriggerSummaryItem < Struct.new(
      nil,
      :object_type_name,
      :event_trigger_name,
      :description,
      :created_at,
      :last_updated_at,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings that define how events are processed and tracked.</p>
    # @!attribute event_parameters_list
    #   <p>A list of event parameters configurations that specify how different event types should be handled.</p>
    #   @return [Array<Types::EventParameters>]
    class EventsConfig < Struct.new(
      nil,
      :event_parameters_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration information about the S3 bucket where Identity Resolution Jobs writes result files. </p>
    #          <note>
    #             <p>You need to give Customer Profiles service principal write permission to your S3 bucket.
    #             Otherwise, you'll get an exception in the API response. For an example policy, see
    #                <a href="https://docs.aws.amazon.com/connect/latest/adminguide/cross-service-confused-deputy-prevention.html#customer-profiles-cross-service">Amazon Connect Customer Profiles cross-service confused deputy prevention</a>. </p>
    #          </note>
    # @!attribute s3_exporting
    #   <p>The S3 location where Identity Resolution Jobs write result files.</p>
    #   @return [Types::S3ExportingConfig]
    class ExportingConfig < Struct.new(
      nil,
      :s3_exporting,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The S3 location where Identity Resolution Jobs write result files.</p>
    # @!attribute s3_exporting
    #   <p>Information about the S3 location where Identity Resolution Jobs write result files.</p>
    #   @return [Types::S3ExportingLocation]
    class ExportingLocation < Struct.new(
      nil,
      :s3_exporting,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object that segments on various Customer profile's fields that are larger than
    #          normal.</p>
    # @!attribute dimension_type
    #   <p>The action to segment with.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values to apply the DimensionType on. To reference a calculated attribute or profile
    #            attribute as a dynamic value, use handlebar notation:
    #            <code>{{_profile.ProfileAttributeName}}</code> or
    #            <code>{{_calculated_attribute.CalculatedAttributeName}}</code>.</p>
    #   @return [Array<String>]
    class ExtraLengthValueProfileDimension < Struct.new(
      nil,
      :dimension_type,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A duplicate customer profile that is to be merged into a main profile. </p>
    # @!attribute account_number
    #   <p>A unique identifier for the account number field to be merged. </p>
    #   @return [String]
    # @!attribute additional_information
    #   <p>A unique identifier for the additional information field to be merged.</p>
    #   @return [String]
    # @!attribute party_type
    #   <p>A unique identifier for the party type field to be merged.</p>
    #   @return [String]
    # @!attribute business_name
    #   <p>A unique identifier for the business name field to be merged.</p>
    #   @return [String]
    # @!attribute first_name
    #   <p>A unique identifier for the first name field to be merged.</p>
    #   @return [String]
    # @!attribute middle_name
    #   <p>A unique identifier for the middle name field to be merged.</p>
    #   @return [String]
    # @!attribute last_name
    #   <p>A unique identifier for the last name field to be merged.</p>
    #   @return [String]
    # @!attribute birth_date
    #   <p>A unique identifier for the birthdate field to be merged.</p>
    #   @return [String]
    # @!attribute gender
    #   <p>A unique identifier for the gender field to be merged.</p>
    #   @return [String]
    # @!attribute phone_number
    #   <p>A unique identifier for the phone number field to be merged.</p>
    #   @return [String]
    # @!attribute mobile_phone_number
    #   <p>A unique identifier for the mobile phone number field to be merged.</p>
    #   @return [String]
    # @!attribute home_phone_number
    #   <p>A unique identifier for the home phone number field to be merged.</p>
    #   @return [String]
    # @!attribute business_phone_number
    #   <p>A unique identifier for the business phone number field to be merged.</p>
    #   @return [String]
    # @!attribute email_address
    #   <p>A unique identifier for the email address field to be merged.</p>
    #   @return [String]
    # @!attribute personal_email_address
    #   <p>A unique identifier for the personal email address field to be merged.</p>
    #   @return [String]
    # @!attribute business_email_address
    #   <p>A unique identifier for the party type field to be merged.</p>
    #   @return [String]
    # @!attribute address
    #   <p>A unique identifier for the party type field to be merged.</p>
    #   @return [String]
    # @!attribute shipping_address
    #   <p>A unique identifier for the shipping address field to be merged.</p>
    #   @return [String]
    # @!attribute mailing_address
    #   <p>A unique identifier for the mailing address field to be merged.</p>
    #   @return [String]
    # @!attribute billing_address
    #   <p>A unique identifier for the billing type field to be merged.</p>
    #   @return [String]
    # @!attribute attributes
    #   <p>A unique identifier for the attributes field to be merged.</p>
    #   @return [Hash<String, String>]
    # @!attribute profile_type
    #   <p>A unique identifier for the profile type field to be merged.</p>
    #   @return [String]
    # @!attribute engagement_preferences
    #   <p>A unique identifier for the engagement preferences field to be merged.</p>
    #   @return [String]
    class FieldSourceProfileIds < Struct.new(
      nil,
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
      :engagement_preferences,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines how to filter the objects coming in for calculated attributes.</p>
    # @!attribute include
    #   <p>Define whether to include or exclude objects for Calculated Attributed calculation that
    #            fit the filter groups criteria.</p>
    #   @return [String]
    # @!attribute groups
    #   <p>Holds the list of Filter groups within the Filter definition.</p>
    #   @return [Array<Types::FilterGroup>]
    class Filter < Struct.new(
      nil,
      :include,
      :groups,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object that defines how to filter the incoming objects for the calculated
    #          attribute.</p>
    # @!attribute dimension_type
    #   <p>The action to filter with.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values to apply the DimensionType on.</p>
    #   @return [Array<String>]
    class FilterAttributeDimension < Struct.new(
      nil,
      :dimension_type,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the map of attribute names to attribute dimensions.</p>
    # @!attribute attributes
    #   <p>Is the attribute within the FilterDimension map</p>
    #   @return [Hash<String, Types::FilterAttributeDimension>]
    class FilterDimension < Struct.new(
      nil,
      :attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object that holds the dimensions to filter on.</p>
    # @!attribute type
    #   <p>The type of logical relationship between the dimensions of the Filter group.</p>
    #   @return [String]
    # @!attribute dimensions
    #   <p>Object that holds the attributes to filter on.</p>
    #   @return [Array<Types::FilterDimension>]
    class FilterGroup < Struct.new(
      nil,
      :type,
      :dimensions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configurations that control how Customer Profiles retrieves data from the source,
    #          Amazon AppFlow. Customer Profiles uses this information to create an AppFlow flow on behalf of
    #          customers.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute description
    #   <p>A description of the flow you want to create.</p>
    #   @return [String]
    # @!attribute flow_name
    #   <p>The specified name of the flow. Use underscores (_) or hyphens (-) only. Spaces are not
    #            allowed.</p>
    #   @return [String]
    # @!attribute kms_arn
    #   <p>The Amazon Resource Name of the AWS Key Management Service (KMS) key you provide for encryption.</p>
    #   @return [String]
    # @!attribute source_flow_config
    #   <p>The configuration that controls how Customer Profiles retrieves data from the
    #            source.</p>
    #   @return [Types::SourceFlowConfig]
    # @!attribute tasks
    #   <p>A list of tasks that Customer Profiles performs while transferring the data in the flow
    #            run.</p>
    #   @return [Array<Types::Task>]
    # @!attribute trigger_config
    #   <p>The trigger settings that determine how and when the flow runs.</p>
    #   @return [Types::TriggerConfig]
    class FlowDefinition < Struct.new(
      nil,
      :description,
      :flow_name,
      :kms_arn,
      :source_flow_config,
      :tasks,
      :trigger_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A data type pair that consists of a <code>KeyName</code> and <code>Values</code> list
    #          that were used to find a profile returned in response to a <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_SearchProfiles.html">SearchProfiles</a> request.
    #       </p>
    # @!attribute key_name
    #   <p>A searchable identifier of a customer profile.</p>
    #   @return [String]
    # @!attribute values
    #   <p>A list of key values.</p>
    #   @return [Array<String>]
    class FoundByKeyValue < Struct.new(
      nil,
      :key_name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute consolidation
    #   <p>A list of matching attributes that represent matching criteria.</p>
    #   @return [Types::Consolidation]
    # @!attribute conflict_resolution
    #   <p>How the auto-merging process should resolve conflicts between different profiles.</p>
    #   @return [Types::ConflictResolution]
    # @!attribute min_allowed_confidence_score_for_merging
    #   <p>Minimum confidence score required for profiles within a matching group to be merged
    #            during the auto-merge process.</p>
    #   @return [Float]
    class GetAutoMergingPreviewRequest < Struct.new(
      nil,
      :domain_name,
      :consolidation,
      :conflict_resolution,
      :min_allowed_confidence_score_for_merging,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute number_of_matches_in_sample
    #   <p>The number of match groups in the domain that have been reviewed in this preview dry
    #            run.</p>
    #   @return [Integer]
    # @!attribute number_of_profiles_in_sample
    #   <p>The number of profiles found in this preview dry run.</p>
    #   @return [Integer]
    # @!attribute number_of_profiles_will_be_merged
    #   <p>The number of profiles that would be merged if this wasn't a preview dry run.</p>
    #   @return [Integer]
    class GetAutoMergingPreviewResponse < Struct.new(
      nil,
      :domain_name,
      :number_of_matches_in_sample,
      :number_of_profiles_in_sample,
      :number_of_profiles_will_be_merged,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:number_of_matches_in_sample] = 0 unless options.key?(:number_of_matches_in_sample)
        options[:number_of_profiles_in_sample] = 0 unless options.key?(:number_of_profiles_in_sample)
        options[:number_of_profiles_will_be_merged] = 0 unless options.key?(:number_of_profiles_will_be_merged)
        super
      end
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute calculated_attribute_name
    #   <p>The unique name of the calculated attribute.</p>
    #   @return [String]
    class GetCalculatedAttributeDefinitionRequest < Struct.new(
      nil,
      :domain_name,
      :calculated_attribute_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute calculated_attribute_name
    #   <p>The unique name of the calculated attribute.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the calculated attribute.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the calculated attribute.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the calculated attribute definition was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp of when the calculated attribute definition was most recently
    #            edited.</p>
    #   @return [Time]
    # @!attribute statistic
    #   <p>The aggregation operation to perform for the calculated attribute.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>The filter assigned to this calculated attribute definition.</p>
    #   @return [Types::Filter]
    # @!attribute conditions
    #   <p>The conditions including range, object count, and threshold for the calculated
    #            attribute.</p>
    #   @return [Types::Conditions]
    # @!attribute attribute_details
    #   <p>Mathematical expression and a list of attribute items specified in that
    #            expression.</p>
    #   @return [Types::AttributeDetails]
    # @!attribute use_historical_data
    #   <p>Whether historical data ingested before the Calculated Attribute was created should be
    #            included in calculations.</p>
    #   @return [Boolean]
    # @!attribute status
    #   <p>Status of the Calculated Attribute creation (whether all historical data has been
    #            indexed).</p>
    #   @return [String]
    # @!attribute readiness
    #   <p>Information indicating if the Calculated Attribute is ready for use by confirming all
    #            historical data has been processed and reflected.</p>
    #   @return [Types::Readiness]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class GetCalculatedAttributeDefinitionResponse < Struct.new(
      nil,
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
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute profile_id
    #   <p>The unique identifier of a customer profile.</p>
    #   @return [String]
    # @!attribute calculated_attribute_name
    #   <p>The unique name of the calculated attribute.</p>
    #   @return [String]
    class GetCalculatedAttributeForProfileRequest < Struct.new(
      nil,
      :domain_name,
      :profile_id,
      :calculated_attribute_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute calculated_attribute_name
    #   <p>The unique name of the calculated attribute.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the calculated attribute.</p>
    #   @return [String]
    # @!attribute is_data_partial
    #   <p>Indicates whether the calculated attribute’s value is based on partial data. If data is
    #            partial, it is set to true.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the calculated attribute.</p>
    #   @return [String]
    # @!attribute last_object_timestamp
    #   <p>The timestamp of the newest object included in the calculated attribute
    #            calculation.</p>
    #   @return [Time]
    class GetCalculatedAttributeForProfileResponse < Struct.new(
      nil,
      :calculated_attribute_name,
      :display_name,
      :is_data_partial,
      :value,
      :last_object_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute layout_definition_name
    #   <p>The unique name of the layout.</p>
    #   @return [String]
    class GetDomainLayoutRequest < Struct.new(
      nil,
      :domain_name,
      :layout_definition_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute layout_definition_name
    #   <p>The unique name of the layout.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the layout</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the layout</p>
    #   @return [String]
    # @!attribute is_default
    #   <p>If set to true for a layout, this layout will be used by default to view data. If set to
    #            false, then the layout will not be used by default, but it can be used to view data by
    #            explicitly selecting it in the console.</p>
    #   @return [Boolean]
    # @!attribute layout_type
    #   <p>The type of layout that can be used to view data under a Customer Profiles domain.</p>
    #   @return [String]
    # @!attribute layout
    #   <p>A customizable layout that can be used to view data under a Customer Profiles domain.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version used to create layout.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the layout was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp of when the layout was most recently updated.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class GetDomainLayoutResponse < Struct.new(
      nil,
      :layout_definition_name,
      :description,
      :display_name,
      :is_default,
      :layout_type,
      :layout,
      :version,
      :created_at,
      :last_updated_at,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_default] = false unless options.key?(:is_default)
        super
      end
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute object_type_name
    #   <p>The unique name of the domain object type.</p>
    #   @return [String]
    class GetDomainObjectTypeRequest < Struct.new(
      nil,
      :domain_name,
      :object_type_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute object_type_name
    #   <p>The unique name of the domain object type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the domain object type.</p>
    #   @return [String]
    # @!attribute encryption_key
    #   <p>The customer provided KMS key used to encrypt this type of domain object.</p>
    #   @return [String]
    # @!attribute fields
    #   <p>A map of field names to their corresponding domain object type field definitions.</p>
    #   @return [Hash<String, Types::DomainObjectTypeField>]
    # @!attribute created_at
    #   <p>The timestamp of when the domain object type was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp of when the domain object type was most recently edited.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class GetDomainObjectTypeResponse < Struct.new(
      nil,
      :object_type_name,
      :description,
      :encryption_key,
      :fields,
      :created_at,
      :last_updated_at,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    class GetDomainRequest < Struct.new(
      nil,
      :domain_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute default_expiration_days
    #   <p>The default number of days until the data within the domain expires.</p>
    #   @return [Integer]
    # @!attribute default_encryption_key
    #   <p>The default encryption key, which is an AWS managed key, is used when no specific type
    #            of encryption key is specified. It is used to encrypt all data before it is placed in
    #            permanent or semi-permanent storage.</p>
    #   @return [String]
    # @!attribute dead_letter_queue_url
    #   <p>The URL of the SQS dead letter queue, which is used for reporting errors associated with
    #            ingesting data from third party applications.</p>
    #   @return [String]
    # @!attribute stats
    #   <p>Usage-specific statistics about the domain.</p>
    #   @return [Types::DomainStats]
    # @!attribute matching
    #   <p>The process of matching duplicate profiles. If <code>Matching</code> = <code>true</code>, Amazon Connect Customer Profiles starts a weekly
    #   batch process called Identity Resolution Job. If you do not specify a date and time for Identity Resolution Job to run, by default it runs every
    #   Saturday at 12AM UTC to detect duplicate profiles in your domains. </p>
    #            <p>After the Identity Resolution Job completes, use the
    #   <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html">GetMatches</a>
    #   API to return and review the results. Or, if you have configured <code>ExportingConfig</code> in the <code>MatchingRequest</code>, you can download the results from
    #   S3.</p>
    #   @return [Types::MatchingResponse]
    # @!attribute rule_based_matching
    #   <p>The process of matching duplicate profiles using the Rule-Based matching. If
    #               <code>RuleBasedMatching</code> = true, Connect Customer Customer Profiles will start
    #            to match and merge your profiles according to your configuration in the
    #               <code>RuleBasedMatchingRequest</code>. You can use the <code>ListRuleBasedMatches</code>
    #            and <code>GetSimilarProfiles</code> API to return and review the results. Also, if you have
    #            configured <code>ExportingConfig</code> in the <code>RuleBasedMatchingRequest</code>, you
    #            can download the results from S3.</p>
    #   @return [Types::RuleBasedMatchingResponse]
    # @!attribute data_store
    #   <p> True if data store is enabled for this domain.</p>
    #   @return [Types::DataStoreResponse]
    # @!attribute created_at
    #   <p>The timestamp of when the domain was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp of when the domain was most recently edited.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class GetDomainResponse < Struct.new(
      nil,
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
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute event_stream_name
    #   <p>The name of the event stream provided during create operations.</p>
    #   @return [String]
    class GetEventStreamRequest < Struct.new(
      nil,
      :domain_name,
      :event_stream_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute event_stream_arn
    #   <p>A unique identifier for the event stream.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the export was created.</p>
    #   @return [Time]
    # @!attribute state
    #   <p>The operational state of destination stream for export.</p>
    #   @return [String]
    # @!attribute stopped_since
    #   <p>The timestamp when the <code>State</code> changed to <code>STOPPED</code>.</p>
    #   @return [Time]
    # @!attribute destination_details
    #   <p>Details regarding the Kinesis stream.</p>
    #   @return [Types::EventStreamDestinationDetails]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class GetEventStreamResponse < Struct.new(
      nil,
      :domain_name,
      :event_stream_arn,
      :created_at,
      :state,
      :stopped_since,
      :destination_details,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute event_trigger_name
    #   <p>The unique name of the event trigger.</p>
    #   @return [String]
    class GetEventTriggerRequest < Struct.new(
      nil,
      :domain_name,
      :event_trigger_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_trigger_name
    #   <p>The unique name of the event trigger.</p>
    #   @return [String]
    # @!attribute object_type_name
    #   <p>The unique name of the object type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the event trigger.</p>
    #   @return [String]
    # @!attribute event_trigger_conditions
    #   <p>A list of conditions that determine when an event should trigger the destination.</p>
    #   @return [Array<Types::EventTriggerCondition>]
    # @!attribute segment_filter
    #   <p>The destination is triggered only for profiles that meet the criteria of a segment
    #            definition.</p>
    #   @return [String]
    # @!attribute event_trigger_limits
    #   <p>Defines limits controlling whether an event triggers the destination, based on ingestion
    #            latency and the number of invocations per profile over specific time periods.</p>
    #   @return [Types::EventTriggerLimits]
    # @!attribute created_at
    #   <p>The timestamp of when the event trigger was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp of when the event trigger was most recently updated.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>An array of key-value pairs to apply to this resource.</p>
    #   @return [Hash<String, String>]
    class GetEventTriggerResponse < Struct.new(
      nil,
      :event_trigger_name,
      :object_type_name,
      :description,
      :event_trigger_conditions,
      :segment_filter,
      :event_trigger_limits,
      :created_at,
      :last_updated_at,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The unique identifier of the Identity Resolution Job.</p>
    #   @return [String]
    class GetIdentityResolutionJobRequest < Struct.new(
      nil,
      :domain_name,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The unique identifier of the Identity Resolution Job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the Identity Resolution Job.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code>: The Identity Resolution Job is scheduled but has not started yet. If you turn
    #                  off the Identity Resolution feature in your domain, jobs in the <code>PENDING</code> state are
    #                  deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PREPROCESSING</code>: The Identity Resolution Job is loading your data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FIND_MATCHING</code>: The Identity Resolution Job is using the machine learning model to
    #                  identify profiles that belong to the same matching group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MERGING</code>: The Identity Resolution Job is merging duplicate profiles.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COMPLETED</code>: The Identity Resolution Job completed successfully.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PARTIAL_SUCCESS</code>: There's a system error and not all of the data is
    #                  merged. The Identity Resolution Job writes a message indicating the source of the problem.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code>: The Identity Resolution Job did not merge any data. It writes a message
    #                  indicating the source of the problem.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute message
    #   <p>The error messages that are generated when the Identity Resolution Job runs.</p>
    #   @return [String]
    # @!attribute job_start_time
    #   <p>The timestamp of when the Identity Resolution Job was started or will be started.</p>
    #   @return [Time]
    # @!attribute job_end_time
    #   <p>The timestamp of when the Identity Resolution Job was completed.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp of when the Identity Resolution Job was most recently edited.</p>
    #   @return [Time]
    # @!attribute job_expiration_time
    #   <p>The timestamp of when the Identity Resolution Job will expire.</p>
    #   @return [Time]
    # @!attribute auto_merging
    #   <p>Configuration settings for how to perform the auto-merging of profiles.</p>
    #   @return [Types::AutoMerging]
    # @!attribute exporting_location
    #   <p>The S3 location where the Identity Resolution Job writes result files.</p>
    #   @return [Types::ExportingLocation]
    # @!attribute job_stats
    #   <p>Statistics about the Identity Resolution Job.</p>
    #   @return [Types::JobStats]
    class GetIdentityResolutionJobResponse < Struct.new(
      nil,
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
      :job_stats,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute uri
    #   <p>The URI of the S3 bucket or any other type of data source.</p>
    #   @return [String]
    class GetIntegrationRequest < Struct.new(
      nil,
      :domain_name,
      :uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute uri
    #   <p>The URI of the S3 bucket or any other type of data source.</p>
    #   @return [String]
    # @!attribute object_type_name
    #   <p>The name of the profile object type.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the domain was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp of when the domain was most recently edited.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute object_type_names
    #   <p>A map in which each key is an event type from an external application such as Segment or Shopify, and each value is an <code>ObjectTypeName</code> (template) used to ingest the event.
    #   It supports the following event types: <code>SegmentIdentify</code>, <code>ShopifyCreateCustomers</code>, <code>ShopifyUpdateCustomers</code>, <code>ShopifyCreateDraftOrders</code>,
    #   <code>ShopifyUpdateDraftOrders</code>, <code>ShopifyCreateOrders</code>, and <code>ShopifyUpdatedOrders</code>.</p>
    #   @return [Hash<String, String>]
    # @!attribute workflow_id
    #   <p>Unique identifier for the workflow.</p>
    #   @return [String]
    # @!attribute is_unstructured
    #   <p>Boolean that shows if the Flow that's associated with the Integration is created in
    #            Amazon Appflow, or with ObjectTypeName equals _unstructured via API/CLI in
    #            flowDefinition.</p>
    #   @return [Boolean]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role. The Integration uses this role to make
    #            Customer Profiles requests on your behalf.</p>
    #   @return [String]
    # @!attribute event_trigger_names
    #   <p>A list of unique names for active event triggers associated with the integration. This
    #            list would be empty if no Event Trigger is associated with the integration.</p>
    #   @return [Array<String>]
    # @!attribute scope
    #   <p>Specifies whether the integration applies to profile level data (associated with profiles) or domain level data (not associated with any specific profile). The default value is PROFILE.</p>
    #   @return [String]
    class GetIntegrationResponse < Struct.new(
      nil,
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
      :scope,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    class GetMatchesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :domain_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    # @!attribute match_generation_date
    #   <p>The timestamp this version of Match Result generated.</p>
    #   @return [Time]
    # @!attribute potential_matches
    #   <p>The number of potential matches found.</p>
    #   @return [Integer]
    # @!attribute matches
    #   <p>The list of matched profiles for this instance.</p>
    #   @return [Array<Types::MatchItem>]
    class GetMatchesResponse < Struct.new(
      nil,
      :next_token,
      :match_generation_date,
      :potential_matches,
      :matches,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains percentile statistics for object type attributes.</p>
    # @!attribute p5
    #   <p>The 5th percentile value of the attribute.</p>
    #   @return [Float]
    # @!attribute p25
    #   <p>The 25th percentile value of the attribute.</p>
    #   @return [Float]
    # @!attribute p50
    #   <p>The 50th percentile (median) value of the attribute.</p>
    #   @return [Float]
    # @!attribute p75
    #   <p>The 75th percentile value of the attribute.</p>
    #   @return [Float]
    # @!attribute p95
    #   <p>The 95th percentile value of the attribute.</p>
    #   @return [Float]
    class GetObjectTypeAttributeStatisticsPercentiles < Struct.new(
      nil,
      :p5,
      :p25,
      :p50,
      :p75,
      :p95,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute object_type_name
    #   <p>The unique name of the domain object type.</p>
    #   @return [String]
    # @!attribute attribute_name
    #   <p>The attribute name.</p>
    #   @return [String]
    class GetObjectTypeAttributeStatisticsRequest < Struct.new(
      nil,
      :domain_name,
      :object_type_name,
      :attribute_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute statistics
    #   <p>The statistics.</p>
    #   @return [Types::GetObjectTypeAttributeStatisticsStats]
    # @!attribute calculated_at
    #   <p>Time when this statistics was calculated.</p>
    #   @return [Time]
    class GetObjectTypeAttributeStatisticsResponse < Struct.new(
      nil,
      :statistics,
      :calculated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Statistical measurements for object type attributes including basic statistics and percentiles.</p>
    # @!attribute maximum
    #   <p>The maximum value found in the attribute dataset.</p>
    #   @return [Float]
    # @!attribute minimum
    #   <p>The minimum value found in the attribute dataset.</p>
    #   @return [Float]
    # @!attribute average
    #   <p>The arithmetic mean of the attribute values.</p>
    #   @return [Float]
    # @!attribute standard_deviation
    #   <p>The standard deviation of the attribute values, measuring their spread around the mean.</p>
    #   @return [Float]
    # @!attribute percentiles
    #   <p>Percentile distribution statistics for the attribute values.</p>
    #   @return [Types::GetObjectTypeAttributeStatisticsPercentiles]
    class GetObjectTypeAttributeStatisticsStats < Struct.new(
      nil,
      :maximum,
      :minimum,
      :average,
      :standard_deviation,
      :percentiles,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain for which to return a profile history record.</p>
    #   @return [String]
    # @!attribute profile_id
    #   <p>The unique identifier of the profile for which to return a history record.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the profile history record to return.</p>
    #   @return [String]
    class GetProfileHistoryRecordRequest < Struct.new(
      nil,
      :domain_name,
      :profile_id,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The unique identifier of the profile history record.</p>
    #   @return [String]
    # @!attribute object_type_name
    #   <p>The name of the profile object type.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the profile history record was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp of when the profile history record was last updated.</p>
    #   @return [Time]
    # @!attribute action_type
    #   <p>The action type of the profile history record.</p>
    #   @return [String]
    # @!attribute profile_object_unique_key
    #   <p>The unique identifier of the profile object generated by the service.</p>
    #   @return [String]
    # @!attribute content
    #   <p>A string containing the customer profile, profile object, or profile key content.</p>
    #   @return [String]
    # @!attribute performed_by
    #   <p>The Amazon Resource Name (ARN) of the person or service principal who performed the action.</p>
    #   @return [String]
    class GetProfileHistoryRecordResponse < Struct.new(
      nil,
      :id,
      :object_type_name,
      :created_at,
      :last_updated_at,
      :action_type,
      :profile_object_unique_key,
      :content,
      :performed_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute object_type_name
    #   <p>The name of the profile object type.</p>
    #   @return [String]
    class GetProfileObjectTypeRequest < Struct.new(
      nil,
      :domain_name,
      :object_type_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute object_type_name
    #   <p>The name of the profile object type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the profile object type.</p>
    #   @return [String]
    # @!attribute template_id
    #   <p>A unique identifier for the object template.</p>
    #   @return [String]
    # @!attribute expiration_days
    #   <p>The number of days until the data in the object expires.</p>
    #   @return [Integer]
    # @!attribute encryption_key
    #   <p>The customer-provided key to encrypt the profile object that will be created in this
    #            profile object type.</p>
    #   @return [String]
    # @!attribute allow_profile_creation
    #   <p>Indicates whether a profile should be created when data is received if one doesn’t exist
    #            for an object of this type. The default is <code>FALSE</code>. If the AllowProfileCreation
    #            flag is set to <code>FALSE</code>, then the service tries to fetch a standard profile and
    #            associate this object with the profile. If it is set to <code>TRUE</code>, and if no match
    #            is found, then the service creates a new standard profile.</p>
    #   @return [Boolean]
    # @!attribute source_last_updated_timestamp_format
    #   <p>The format of your <code>sourceLastUpdatedTimestamp</code> that was previously set
    #            up.</p>
    #   @return [String]
    # @!attribute max_available_profile_object_count
    #   <p>The amount of provisioned profile object max count available.</p>
    #   @return [Integer]
    # @!attribute max_profile_object_count
    #   <p>The amount of profile object max count assigned to the object type.</p>
    #   @return [Integer]
    # @!attribute source_priority
    #   <p>An integer that determines the priority of this object type when data from multiple sources is ingested. Lower values take priority. Object types without a specified source priority default to the lowest priority.</p>
    #   @return [Integer]
    # @!attribute fields
    #   <p>A map of the name and ObjectType field.</p>
    #   @return [Hash<String, Types::ObjectTypeField>]
    # @!attribute keys
    #   <p>A list of unique keys that can be used to map data to the profile.</p>
    #   @return [Hash<String, Array<Types::ObjectTypeKey>>]
    # @!attribute created_at
    #   <p>The timestamp of when the domain was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp of when the domain was most recently edited.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class GetProfileObjectTypeResponse < Struct.new(
      nil,
      :object_type_name,
      :description,
      :template_id,
      :expiration_days,
      :encryption_key,
      :allow_profile_creation,
      :source_last_updated_timestamp_format,
      :max_available_profile_object_count,
      :max_profile_object_count,
      :source_priority,
      :fields,
      :keys,
      :created_at,
      :last_updated_at,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:allow_profile_creation] = false unless options.key?(:allow_profile_creation)
        super
      end
    end

    # @!attribute template_id
    #   <p>A unique identifier for the object template.</p>
    #   @return [String]
    class GetProfileObjectTypeTemplateRequest < Struct.new(
      nil,
      :template_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_id
    #   <p>A unique identifier for the object template.</p>
    #   @return [String]
    # @!attribute source_name
    #   <p>The name of the source of the object template.</p>
    #   @return [String]
    # @!attribute source_object
    #   <p>The source of the object template.</p>
    #   @return [String]
    # @!attribute allow_profile_creation
    #   <p>Indicates whether a profile should be created when data is received if one doesn’t exist
    #            for an object of this type. The default is <code>FALSE</code>. If the AllowProfileCreation
    #            flag is set to <code>FALSE</code>, then the service tries to fetch a standard profile and
    #            associate this object with the profile. If it is set to <code>TRUE</code>, and if no match
    #            is found, then the service creates a new standard profile.</p>
    #   @return [Boolean]
    # @!attribute source_last_updated_timestamp_format
    #   <p>The format of your <code>sourceLastUpdatedTimestamp</code> that was previously set
    #            up.</p>
    #   @return [String]
    # @!attribute fields
    #   <p>A map of the name and ObjectType field.</p>
    #   @return [Hash<String, Types::ObjectTypeField>]
    # @!attribute keys
    #   <p>A list of unique keys that can be used to map data to the profile.</p>
    #   @return [Hash<String, Array<Types::ObjectTypeKey>>]
    class GetProfileObjectTypeTemplateResponse < Struct.new(
      nil,
      :template_id,
      :source_name,
      :source_object,
      :allow_profile_creation,
      :source_last_updated_timestamp_format,
      :fields,
      :keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:allow_profile_creation] = false unless options.key?(:allow_profile_creation)
        super
      end
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute profile_id
    #   <p>The unique identifier of the profile for which to retrieve recommendations.</p>
    #   @return [String]
    # @!attribute recommender_name
    #   <p>The unique name of the recommender.</p>
    #   @return [String]
    # @!attribute context
    #   <p>The contextual metadata used to provide dynamic runtime information to tailor recommendations.</p>
    #   @return [Hash<String, String>]
    # @!attribute recommender_filters
    #   <p>A list of filters to apply to the returned recommendations. Filters define criteria for including or excluding items from the recommendation results.</p>
    #   @return [Array<Types::RecommenderFilter>]
    # @!attribute recommender_promotional_filters
    #   <p>A list of promotional filters to apply to the recommendations. Promotional filters allow you to promote specific items within a configurable subset of recommendation results.</p>
    #   @return [Array<Types::RecommenderPromotionalFilter>]
    # @!attribute candidate_ids
    #   <p>A list of item IDs to rank for the user. Use this when you want to re-rank a specific set of items rather than getting recommendations from the full item catalog. Required for personalized-ranking use cases.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>The maximum number of recommendations to return. The default value is 10.</p>
    #   @return [Integer]
    # @!attribute metadata_config
    #   <p>Configuration for including item metadata in the recommendation response. Use this to specify which metadata columns to return alongside recommended items.</p>
    #   @return [Types::MetadataConfig]
    # @!attribute diversity_config
    #   <p>Runtime diversity configuration for this request. Enables diversity-aware recommendations and optionally supplies values for placeholder-based diversity caps configured on the recommender.</p>
    #   @return [Types::RecommendationDiversityConfig]
    class GetProfileRecommendationsRequest < Struct.new(
      nil,
      :domain_name,
      :profile_id,
      :recommender_name,
      :context,
      :recommender_filters,
      :recommender_promotional_filters,
      :candidate_ids,
      :max_results,
      :metadata_config,
      :diversity_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommendations
    #   <p>List of recommendations generated by the recommender.</p>
    #   @return [Array<Types::Recommendation>]
    class GetProfileRecommendationsResponse < Struct.new(
      nil,
      :recommendations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute recommender_filter_name
    #   <p>The name of the recommender filter to retrieve.</p>
    #   @return [String]
    class GetRecommenderFilterRequest < Struct.new(
      nil,
      :domain_name,
      :recommender_filter_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommender_filter_name
    #   <p>The name of the recommender filter.</p>
    #   @return [String]
    # @!attribute recommender_filter_expression
    #   <p>The filter expression that defines which items to include or exclude from recommendations.</p>
    #   @return [String]
    # @!attribute recommender_schema_name
    #   <p>The name of the recommender schema associated with this recommender filter.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the recommender filter was created.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the recommender filter.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the recommender filter.</p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>If the recommender filter failed, provides the reason for the failure.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class GetRecommenderFilterResponse < Struct.new(
      nil,
      :recommender_filter_name,
      :recommender_filter_expression,
      :recommender_schema_name,
      :created_at,
      :status,
      :description,
      :failure_reason,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute recommender_name
    #   <p>The name of the recommender.</p>
    #   @return [String]
    # @!attribute training_metrics_count
    #   <p>The number of training metrics to retrieve for the recommender.</p>
    #   @return [Integer]
    class GetRecommenderRequest < Struct.new(
      nil,
      :domain_name,
      :recommender_name,
      :training_metrics_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommender_name
    #   <p>The name of the recommender.</p>
    #   @return [String]
    # @!attribute recommender_recipe_name
    #   <p>The name of the recipe used by the recommender to generate recommendations.</p>
    #   @return [String]
    # @!attribute recommender_schema_name
    #   <p>The name of the recommender schema associated with this recommender.</p>
    #   @return [String]
    # @!attribute recommender_config
    #   <p>The configuration settings for the recommender, including parameters and settings that define its behavior.</p>
    #   @return [Types::RecommenderConfig]
    # @!attribute description
    #   <p>A detailed description of the recommender providing information about its purpose and functionality.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the recommender, indicating whether it is active, creating, updating, or in another state.</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>The timestamp of when the recommender was edited.</p>
    #   @return [Time]
    # @!attribute created_at
    #   <p>The timestamp of when the recommender was created.</p>
    #   @return [Time]
    # @!attribute failure_reason
    #   <p>If the recommender fails, provides the reason for the failure.</p>
    #   @return [String]
    # @!attribute latest_recommender_update
    #   <p>Information about the most recent update performed on the recommender, including status and timestamp.</p>
    #   @return [Types::RecommenderUpdate]
    # @!attribute active_recommender_version_name
    #   <p>The name of the recommender version currently serving recommendations. Omitted when no active recommender version is set.</p>
    #   @return [String]
    # @!attribute training_metrics
    #   <p>A set of metrics that provide information about the recommender's training performance and accuracy.</p>
    #   @return [Array<Types::TrainingMetrics>]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class GetRecommenderResponse < Struct.new(
      nil,
      :recommender_name,
      :recommender_recipe_name,
      :recommender_schema_name,
      :recommender_config,
      :description,
      :status,
      :last_updated_at,
      :created_at,
      :failure_reason,
      :latest_recommender_update,
      :active_recommender_version_name,
      :training_metrics,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute recommender_schema_name
    #   <p>The name of the recommender schema to retrieve.</p>
    #   @return [String]
    class GetRecommenderSchemaRequest < Struct.new(
      nil,
      :domain_name,
      :recommender_schema_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommender_schema_name
    #   <p>The name of the recommender schema.</p>
    #   @return [String]
    # @!attribute fields
    #   <p>A map of dataset type to column definitions included in the schema.</p>
    #   @return [Hash<String, Array<Types::RecommenderSchemaField>>]
    # @!attribute created_at
    #   <p>The timestamp of when the recommender schema was created.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the recommender schema.</p>
    #   @return [String]
    class GetRecommenderSchemaResponse < Struct.new(
      nil,
      :recommender_schema_name,
      :fields,
      :created_at,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute segment_definition_name
    #   <p>The unique name of the segment definition.</p>
    #   @return [String]
    class GetSegmentDefinitionRequest < Struct.new(
      nil,
      :domain_name,
      :segment_definition_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute segment_definition_name
    #   <p>The name of the segment definition.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the segment definition.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the segment definition.</p>
    #   @return [String]
    # @!attribute segment_groups
    #   <p>The segment criteria associated with this definition.</p>
    #   @return [Types::SegmentGroup]
    # @!attribute segment_sort
    #   <p>The segment sort.</p>
    #   @return [Types::SegmentSort]
    # @!attribute segment_definition_arn
    #   <p>The arn of the segment definition.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the segment definition was created.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute segment_sql_query
    #   <p>The segment SQL query.</p>
    #   @return [String]
    # @!attribute segment_type
    #   <p>The segment type.</p>
    #            <p> Classic : Segments created using traditional SegmentGroup structure</p>
    #            <p> Enhanced : Segments created using SQL queries
    #         </p>
    #   @return [String]
    class GetSegmentDefinitionResponse < Struct.new(
      nil,
      :segment_definition_name,
      :display_name,
      :description,
      :segment_groups,
      :segment_sort,
      :segment_definition_arn,
      :created_at,
      :tags,
      :segment_sql_query,
      :segment_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute estimate_id
    #   <p>The query Id passed by a previous <code>CreateSegmentEstimate</code> operation.</p>
    #   @return [String]
    class GetSegmentEstimateRequest < Struct.new(
      nil,
      :domain_name,
      :estimate_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute estimate_id
    #   <p>The <code>QueryId</code> which is the same as the value passed in
    #            <code>QueryId</code>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the query.</p>
    #   @return [String]
    # @!attribute estimate
    #   <p>The estimated number of profiles contained in the segment.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message if there is any error.</p>
    #   @return [String]
    # @!attribute status_code
    #   <p>The status code of the segment estimate.</p>
    #   @return [Integer]
    class GetSegmentEstimateResponse < Struct.new(
      nil,
      :domain_name,
      :estimate_id,
      :status,
      :estimate,
      :message,
      :status_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:status_code] = 0 unless options.key?(:status_code)
        super
      end
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute segment_definition_name
    #   <p>The Id of the wanted segment. Needs to be a valid, and existing segment Id.</p>
    #   @return [String]
    # @!attribute profile_ids
    #   <p>The list of profile IDs to query for.</p>
    #   @return [Array<String>]
    class GetSegmentMembershipRequest < Struct.new(
      nil,
      :domain_name,
      :segment_definition_name,
      :profile_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute segment_definition_name
    #   <p>The unique name of the segment definition.</p>
    #   @return [String]
    # @!attribute profiles
    #   <p>An array of maps where each contains a response per profile requested.</p>
    #   @return [Array<Types::ProfileQueryResult>]
    # @!attribute failures
    #   <p>An array of maps where each contains a response per profile failed for the
    #            request.</p>
    #   @return [Array<Types::ProfileQueryFailures>]
    # @!attribute last_computed_at
    #   <p>The timestamp indicating when the segment membership was last computed or updated.</p>
    #   @return [Time]
    class GetSegmentMembershipResponse < Struct.new(
      nil,
      :segment_definition_name,
      :profiles,
      :failures,
      :last_computed_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique identifier of the domain.</p>
    #   @return [String]
    # @!attribute segment_definition_name
    #   <p>The unique name of the segment definition.</p>
    #   @return [String]
    # @!attribute snapshot_id
    #   <p>The unique identifier of the segment snapshot.</p>
    #   @return [String]
    class GetSegmentSnapshotRequest < Struct.new(
      nil,
      :domain_name,
      :segment_definition_name,
      :snapshot_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute snapshot_id
    #   <p>The unique identifier of the segment snapshot.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the asynchronous job for exporting the segment snapshot.</p>
    #   @return [String]
    # @!attribute status_message
    #   <p>The status message of the asynchronous job for exporting the segment snapshot.</p>
    #   @return [String]
    # @!attribute data_format
    #   <p>The format in which the segment will be exported.</p>
    #   @return [String]
    # @!attribute encryption_key
    #   <p>The Amazon Resource Name (ARN) of the KMS key used to encrypt the exported
    #            segment.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that allows Customer Profiles service
    #            principal to assume the role for conducting KMS and S3 operations.</p>
    #   @return [String]
    # @!attribute destination_uri
    #   <p>The destination to which the segment will be exported. This field must be provided if
    #            the request is not submitted from the Connect Customer Admin Website.</p>
    #   @return [String]
    class GetSegmentSnapshotResponse < Struct.new(
      nil,
      :snapshot_id,
      :status,
      :status_message,
      :data_format,
      :encryption_key,
      :role_arn,
      :destination_uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute segment_definition_name
    #   <p>The unique name of the segment definition. </p>
    #   @return [String]
    class GetSegmentSubscriptionRequest < Struct.new(
      nil,
      :domain_name,
      :segment_definition_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The current lifecycle status of the subscription. The following are valid values: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>STARTING</b>: Initial snapshot is in progress. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>RUNNING</b>: Notifications are active and running.
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>STOPPED</b>: Notifications have been stopped. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>FAILED</b>: Notifications failed (for example, the
    #                  Amazon Kinesis data stream became inaccessible). </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute message
    #   <p>A status message providing additional context, such as a failure reason. </p>
    #   @return [String]
    # @!attribute schedule_configuration
    #   <p>The schedule configuration for periodic membership event notifications. </p>
    #   @return [Types::ScheduleConfiguration]
    # @!attribute scheduled_executions
    #   <p>Information about scheduled execution timestamps. </p>
    #   @return [Types::ScheduledExecutions]
    # @!attribute started_at
    #   <p>The timestamp of when the subscription was first started. </p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp of the most recent configuration change. </p>
    #   @return [Time]
    class GetSegmentSubscriptionResponse < Struct.new(
      nil,
      :status,
      :message,
      :schedule_configuration,
      :scheduled_executions,
      :started_at,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token from the previous <code>GetSimilarProfiles</code> API call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects returned per page.</p>
    #   @return [Integer]
    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute match_type
    #   <p>Specify the type of matching to get similar profiles for.</p>
    #   @return [String]
    # @!attribute search_key
    #   <p>The string indicating the search key to be used.</p>
    #   @return [String]
    # @!attribute search_value
    #   <p>The string based on <code>SearchKey</code> to be searched for similar profiles.</p>
    #   @return [String]
    class GetSimilarProfilesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :domain_name,
      :match_type,
      :search_key,
      :search_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_ids
    #   <p>Set of <code>profileId</code>s that belong to the same matching group.</p>
    #   @return [Array<String>]
    # @!attribute match_id
    #   <p>The string <code>matchId</code> that the similar profiles belong to.</p>
    #   @return [String]
    # @!attribute match_type
    #   <p>Specify the type of matching to get similar profiles for.</p>
    #   @return [String]
    # @!attribute rule_level
    #   <p>The integer rule level that the profiles matched on.</p>
    #   @return [Integer]
    # @!attribute confidence_score
    #   <p>It only has value when the <code>MatchType</code> is <code>ML_BASED_MATCHING</code>.A
    #            number between 0 and 1, where a higher score means higher similarity. Examining match
    #            confidence scores lets you distinguish between groups of similar records in which the
    #            system is highly confident (which you may decide to merge), groups of similar records about
    #            which the system is uncertain (which you may decide to have reviewed by a human), and
    #            groups of similar records that the system deems to be unlikely (which you may decide to
    #            reject). Given confidence scores vary as per the data input, it should not be used as an
    #            absolute measure of matching quality.</p>
    #   @return [Float]
    # @!attribute next_token
    #   <p>The pagination token from the previous <code>GetSimilarProfiles</code> API call.</p>
    #   @return [String]
    class GetSimilarProfilesResponse < Struct.new(
      nil,
      :profile_ids,
      :match_id,
      :match_type,
      :rule_level,
      :confidence_score,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    class GetStreamForSegmentsRequest < Struct.new(
      nil,
      :domain_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute associated_at
    #   <p>The timestamp of when the stream was associated. </p>
    #   @return [Time]
    # @!attribute associated_segments
    #   <p>A list of segments currently associated with the stream and their subscription status.
    #         </p>
    #   @return [Array<Types::AssociatedSegment>]
    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute destination_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Kinesis data stream receiving segment membership events. </p>
    #   @return [String]
    # @!attribute destination_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role used for Amazon Kinesis and AWS Key Management Service (KMS) operations. </p>
    #   @return [String]
    # @!attribute state
    #   <p>The operational state of the destination stream. The following are valid values: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>RUNNING</b>: The stream is associated and healthy.
    #                  Segment membership events are being published. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>UNHEALTHY</b>: The stream is associated but events
    #                  cannot currently be published. See <code>FailureReason</code> for details. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>STOPPED</b>: The stream is no longer publishing
    #                  segment membership events. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute disassociated_at
    #   <p>The timestamp of when the stream was disassociated. </p>
    #   @return [Time]
    # @!attribute failure_reason
    #   <p>The reason why the stream is in an unhealthy state, if applicable. </p>
    #   @return [String]
    class GetStreamForSegmentsResponse < Struct.new(
      nil,
      :associated_at,
      :associated_segments,
      :domain_name,
      :destination_arn,
      :destination_role_arn,
      :state,
      :disassociated_at,
      :failure_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain containing the upload job. </p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The unique identifier of the upload job to retrieve the upload path for. This is
    #            generated from the CreateUploadJob API. </p>
    #   @return [String]
    class GetUploadJobPathRequest < Struct.new(
      nil,
      :domain_name,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute url
    #   <p>The pre-signed S3 URL for uploading the CSV file associated with the upload job. </p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The plaintext data key used to encrypt the upload file. </p>
    #            <p>To persist to the pre-signed url, use the client token and MD5 client token as header.
    #            The required headers are as follows: </p>
    #            <ul>
    #               <li>
    #                  <p>x-amz-server-side-encryption-customer-key: Client Token </p>
    #               </li>
    #               <li>
    #                  <p>x-amz-server-side-encryption-customer-key-MD5: MD5 Client Token </p>
    #               </li>
    #               <li>
    #                  <p>x-amz-server-side-encryption-customer-algorithm: AES256 </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute valid_until
    #   <p>The expiry timestamp for the pre-signed URL, after which the URL will no longer be
    #            valid. </p>
    #   @return [Time]
    class GetUploadJobPathResponse < Struct.new(
      nil,
      :url,
      :client_token,
      :valid_until,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain containing the upload job. </p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The unique identifier of the upload job to retrieve. </p>
    #   @return [String]
    class GetUploadJobRequest < Struct.new(
      nil,
      :domain_name,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The unique identifier of the upload job. </p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The unique name of the upload job. Could be a file name to identify the upload job.
    #         </p>
    #   @return [String]
    # @!attribute status
    #   <p>The status describing the status for the upload job. The following are Valid Values: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>CREATED</b>: The upload job has been created, but has
    #                  not started processing yet. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>IN_PROGRESS</b>: The upload job is currently in
    #                  progress, ingesting and processing the profile data. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>PARTIALLY_SUCCEEDED</b>: The upload job has
    #                  successfully completed the ingestion and processing of all profile data. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>SUCCEEDED</b>: The upload job has successfully
    #                  completed the ingestion and processing of all profile data. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>FAILED</b>: The upload job has failed to complete.
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>STOPPED</b>: The upload job has been manually stopped
    #                  or terminated before completion. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the current status of the upload job. Possible reasons: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>VALIDATION_FAILURE</b>: The upload job has
    #                  encountered an error or issue and was unable to complete the profile data ingestion.
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>INTERNAL_FAILURE</b>: Failure caused from service
    #                  side </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the upload job was created. </p>
    #   @return [Time]
    # @!attribute completed_at
    #   <p>The timestamp when the upload job was completed. </p>
    #   @return [Time]
    # @!attribute fields
    #   <p>The mapping between CSV Columns and Profile Object attributes for the upload job.
    #         </p>
    #   @return [Hash<String, Types::ObjectTypeField>]
    # @!attribute unique_key
    #   <p>The unique key columns used for de-duping the keys in the upload job. </p>
    #   @return [String]
    # @!attribute results_summary
    #   <p>The summary of results for the upload job, including the number of updated, created, and
    #            failed records. </p>
    #   @return [Types::ResultsSummary]
    # @!attribute data_expiry
    #   <p>The expiry duration for the profiles ingested with the upload job. </p>
    #   @return [Integer]
    class GetUploadJobResponse < Struct.new(
      nil,
      :job_id,
      :display_name,
      :status,
      :status_reason,
      :created_at,
      :completed_at,
      :fields,
      :unique_key,
      :results_summary,
      :data_expiry,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute workflow_id
    #   <p>Unique identifier for the workflow.</p>
    #   @return [String]
    class GetWorkflowRequest < Struct.new(
      nil,
      :domain_name,
      :workflow_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_id
    #   <p>Unique identifier for the workflow.</p>
    #   @return [String]
    # @!attribute workflow_type
    #   <p>The type of workflow. The only supported value is APPFLOW_INTEGRATION.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Status of workflow execution.</p>
    #   @return [String]
    # @!attribute error_description
    #   <p>Workflow error messages during execution (if any).</p>
    #   @return [String]
    # @!attribute start_date
    #   <p>The timestamp that represents when workflow execution started.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp that represents when workflow execution last updated.</p>
    #   @return [Time]
    # @!attribute attributes
    #   <p>Attributes provided for workflow execution.</p>
    #   @return [Types::WorkflowAttributes]
    # @!attribute metrics
    #   <p>Workflow specific execution metrics.</p>
    #   @return [Types::WorkflowMetrics]
    class GetWorkflowResponse < Struct.new(
      nil,
      :workflow_id,
      :workflow_type,
      :status,
      :error_description,
      :start_date,
      :last_updated_at,
      :attributes,
      :metrics,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute workflow_id
    #   <p>Unique identifier for the workflow.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    class GetWorkflowStepsRequest < Struct.new(
      nil,
      :domain_name,
      :workflow_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute workflow_id
    #   <p>Unique identifier for the workflow.</p>
    #   @return [String]
    # @!attribute workflow_type
    #   <p>The type of workflow. The only supported value is APPFLOW_INTEGRATION.</p>
    #   @return [String]
    # @!attribute items
    #   <p>List containing workflow step details.</p>
    #   @return [Array<Types::WorkflowStepItem>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class GetWorkflowStepsResponse < Struct.new(
      nil,
      :workflow_id,
      :workflow_type,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains dimensions that determine what to segment on.</p>
    # @!attribute dimensions
    #   <p>Defines the attributes to segment on.</p>
    #   @return [Array<Types::Dimension>]
    # @!attribute source_segments
    #   <p>Defines the starting source of data.</p>
    #   @return [Array<Types::SourceSegment>]
    # @!attribute source_type
    #   <p>Defines how to interact with the source data.</p>
    #   @return [String]
    # @!attribute type
    #   <p>Defines how to interact with the profiles found in the current filtering.</p>
    #   @return [String]
    class Group < Struct.new(
      nil,
      :dimensions,
      :source_segments,
      :source_type,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:source_type] = 'ALL' unless options.key?(:source_type)
        options[:type] = 'ALL' unless options.key?(:type)
        super
      end
    end

    # <p>Information about the Identity Resolution Job.</p>
    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The unique identifier of the Identity Resolution Job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the Identity Resolution Job.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code>: The Identity Resolution Job is scheduled but has not started yet. If you turn
    #                  off the Identity Resolution feature in your domain, jobs in the <code>PENDING</code> state are
    #                  deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PREPROCESSING</code>: The Identity Resolution Job is loading your data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FIND_MATCHING</code>: The Identity Resolution Job is using the machine learning model to
    #                  identify profiles that belong to the same matching group.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MERGING</code>: The Identity Resolution Job is merging duplicate profiles.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>COMPLETED</code>: The Identity Resolution Job completed successfully.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PARTIAL_SUCCESS</code>: There's a system error and not all of the data is
    #                  merged. The Identity Resolution Job writes a message indicating the source of the problem.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code>: The Identity Resolution Job did not merge any data. It writes a message
    #                  indicating the source of the problem.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute job_start_time
    #   <p>The timestamp of when the job was started or will be started.</p>
    #   @return [Time]
    # @!attribute job_end_time
    #   <p>The timestamp of when the job was completed.</p>
    #   @return [Time]
    # @!attribute job_stats
    #   <p>Statistics about an Identity Resolution Job.</p>
    #   @return [Types::JobStats]
    # @!attribute exporting_location
    #   <p>The S3 location where the Identity Resolution Job writes result files.</p>
    #   @return [Types::ExportingLocation]
    # @!attribute message
    #   <p>The error messages that are generated when the Identity Resolution Job runs.</p>
    #   @return [String]
    class IdentityResolutionJob < Struct.new(
      nil,
      :domain_name,
      :job_id,
      :status,
      :job_start_time,
      :job_end_time,
      :job_stats,
      :exporting_location,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the configuration used when importing incremental records from the
    #          source.</p>
    # @!attribute datetime_type_field_name
    #   <p>A field that specifies the date time or timestamp field as the criteria to use when
    #            importing incremental records from the source.</p>
    #   @return [String]
    class IncrementalPullConfig < Struct.new(
      nil,
      :datetime_type_field_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings for inference behavior of the recommender.</p>
    # @!attribute min_provisioned_tps
    #   <p>The minimum provisioned transactions per second (TPS) that the recommender supports. The default value is 1. A high MinProvisionedTPS will increase your cost.</p>
    #   @return [Integer]
    class InferenceConfig < Struct.new(
      nil,
      :min_provisioned_tps,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration data for integration workflow.</p>
    # @!attribute appflow_integration
    #   <p>Configuration data for <code>APPFLOW_INTEGRATION</code> workflow type.</p>
    #   @return [Types::AppflowIntegration]
    class IntegrationConfig < Struct.new(
      nil,
      :appflow_integration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An internal service error occurred.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The day and time when do you want to start the Identity Resolution Job every week.</p>
    # @!attribute day_of_the_week
    #   <p>The day when the Identity Resolution Job should run every week.</p>
    #   @return [String]
    # @!attribute time
    #   <p>The time when the Identity Resolution Job should run every week.</p>
    #   @return [String]
    class JobSchedule < Struct.new(
      nil,
      :day_of_the_week,
      :time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Statistics about the Identity Resolution Job.</p>
    # @!attribute number_of_profiles_reviewed
    #   <p>The number of profiles reviewed.</p>
    #   @return [Integer]
    # @!attribute number_of_matches_found
    #   <p>The number of matches found.</p>
    #   @return [Integer]
    # @!attribute number_of_merges_done
    #   <p>The number of merges completed.</p>
    #   @return [Integer]
    class JobStats < Struct.new(
      nil,
      :number_of_profiles_reviewed,
      :number_of_matches_found,
      :number_of_merges_done,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:number_of_profiles_reviewed] = 0 unless options.key?(:number_of_profiles_reviewed)
        options[:number_of_matches_found] = 0 unless options.key?(:number_of_matches_found)
        options[:number_of_merges_done] = 0 unless options.key?(:number_of_merges_done)
        super
      end
    end

    # <p>The layout object that contains LayoutDefinitionName, Description, DisplayName,
    #          IsDefault, LayoutType, Tags, CreatedAt, LastUpdatedAt </p>
    # @!attribute layout_definition_name
    #   <p>The unique name of the layout.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the layout</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the layout</p>
    #   @return [String]
    # @!attribute is_default
    #   <p>If set to true for a layout, this layout will be used by default to view data. If set to
    #            false, then layout will not be used by default but it can be used to view data by explicit
    #            selection on UI.</p>
    #   @return [Boolean]
    # @!attribute layout_type
    #   <p>The type of layout that can be used to view data under customer profiles domain.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute created_at
    #   <p>The timestamp of when the layout was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp of when the layout was most recently updated.</p>
    #   @return [Time]
    class LayoutItem < Struct.new(
      nil,
      :layout_definition_name,
      :description,
      :display_name,
      :is_default,
      :layout_type,
      :tags,
      :created_at,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_default] = false unless options.key?(:is_default)
        super
      end
    end

    # @!attribute uri
    #   <p>The URI of the S3 bucket or any other type of data source.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token from the previous ListAccountIntegrations API call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects returned per page.</p>
    #   @return [Integer]
    # @!attribute include_hidden
    #   <p>Boolean to indicate if hidden integration should be returned. Defaults to <code>False</code>.</p>
    #   @return [Boolean]
    class ListAccountIntegrationsRequest < Struct.new(
      nil,
      :uri,
      :next_token,
      :max_results,
      :include_hidden,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The list of ListAccountIntegration instances.</p>
    #   @return [Array<Types::ListIntegrationItem>]
    # @!attribute next_token
    #   <p>The pagination token from the previous ListAccountIntegrations API call.</p>
    #   @return [String]
    class ListAccountIntegrationsResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a single calculated attribute definition.</p>
    # @!attribute calculated_attribute_name
    #   <p>The unique name of the calculated attribute.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the calculated attribute.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The threshold for the calculated attribute.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The threshold for the calculated attribute.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp of when the calculated attribute definition was most recently
    #            edited.</p>
    #   @return [Time]
    # @!attribute use_historical_data
    #   <p>Whether historical data ingested before the Calculated Attribute was created should be
    #            included in calculations.</p>
    #   @return [Boolean]
    # @!attribute status
    #   <p>Status of the Calculated Attribute creation (whether all historical data has been
    #            indexed.)</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class ListCalculatedAttributeDefinitionItem < Struct.new(
      nil,
      :calculated_attribute_name,
      :display_name,
      :description,
      :created_at,
      :last_updated_at,
      :use_historical_data,
      :status,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token from the previous call to
    #            ListCalculatedAttributeDefinitions.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of calculated attribute definitions returned per page.</p>
    #   @return [Integer]
    class ListCalculatedAttributeDefinitionsRequest < Struct.new(
      nil,
      :domain_name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The list of calculated attribute definitions.</p>
    #   @return [Array<Types::ListCalculatedAttributeDefinitionItem>]
    # @!attribute next_token
    #   <p>The pagination token from the previous call to
    #            ListCalculatedAttributeDefinitions.</p>
    #   @return [String]
    class ListCalculatedAttributeDefinitionsResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of a single calculated attribute for a profile.</p>
    # @!attribute calculated_attribute_name
    #   <p>The unique name of the calculated attribute.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the calculated attribute.</p>
    #   @return [String]
    # @!attribute is_data_partial
    #   <p>Indicates whether the calculated attribute’s value is based on partial data. If data is
    #            partial, it is set to true.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the calculated attribute.</p>
    #   @return [String]
    # @!attribute last_object_timestamp
    #   <p>The timestamp of the newest object included in the calculated attribute
    #            calculation.</p>
    #   @return [Time]
    class ListCalculatedAttributeForProfileItem < Struct.new(
      nil,
      :calculated_attribute_name,
      :display_name,
      :is_data_partial,
      :value,
      :last_object_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token from the previous call to
    #            ListCalculatedAttributesForProfile.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of calculated attributes returned per page.</p>
    #   @return [Integer]
    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute profile_id
    #   <p>The unique identifier of a customer profile.</p>
    #   @return [String]
    class ListCalculatedAttributesForProfileRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :domain_name,
      :profile_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The list of calculated attributes.</p>
    #   @return [Array<Types::ListCalculatedAttributeForProfileItem>]
    # @!attribute next_token
    #   <p>The pagination token from the previous call to
    #            ListCalculatedAttributesForProfile.</p>
    #   @return [String]
    class ListCalculatedAttributesForProfileResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object in a list that represents a domain.</p>
    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the domain was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp of when the domain was most recently edited.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class ListDomainItem < Struct.new(
      nil,
      :domain_name,
      :created_at,
      :last_updated_at,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects returned per page.</p>
    #   @return [Integer]
    class ListDomainLayoutsRequest < Struct.new(
      nil,
      :domain_name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>Contains summary information about an EventStream.</p>
    #   @return [Array<Types::LayoutItem>]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    class ListDomainLayoutsResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of domain object types returned per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token from the previous call to ListDomainObjectTypes.</p>
    #   @return [String]
    class ListDomainObjectTypesRequest < Struct.new(
      nil,
      :domain_name,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The list of domain object types.</p>
    #   @return [Array<Types::DomainObjectTypesListItem>]
    # @!attribute next_token
    #   <p>The pagination token from the previous call to ListDomainObjectTypes.</p>
    #   @return [String]
    class ListDomainObjectTypesResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token from the previous ListDomain API call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects returned per page.</p>
    #   @return [Integer]
    class ListDomainsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The list of ListDomains instances.</p>
    #   @return [Array<Types::ListDomainItem>]
    # @!attribute next_token
    #   <p>The pagination token from the previous ListDomains API call.</p>
    #   @return [String]
    class ListDomainsResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects returned per page.</p>
    #   @return [Integer]
    class ListEventStreamsRequest < Struct.new(
      nil,
      :domain_name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>Contains summary information about an EventStream.</p>
    #   @return [Array<Types::EventStreamSummary>]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    class ListEventStreamsResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token to use with ListEventTriggers.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    class ListEventTriggersRequest < Struct.new(
      nil,
      :domain_name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The list of Event Triggers.</p>
    #   @return [Array<Types::EventTriggerSummaryItem>]
    # @!attribute next_token
    #   <p>The pagination token from the previous call to ListEventTriggers.</p>
    #   @return [String]
    class ListEventTriggersResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    class ListIdentityResolutionJobsRequest < Struct.new(
      nil,
      :domain_name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute identity_resolution_jobs_list
    #   <p>A list of Identity Resolution Jobs.</p>
    #   @return [Array<Types::IdentityResolutionJob>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListIdentityResolutionJobsResponse < Struct.new(
      nil,
      :identity_resolution_jobs_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An integration in list of integrations.</p>
    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute uri
    #   <p>The URI of the S3 bucket or any other type of data source.</p>
    #   @return [String]
    # @!attribute object_type_name
    #   <p>The name of the profile object type.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the domain was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp of when the integration was most recently edited.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute object_type_names
    #   <p>A map in which each key is an event type from an external application such as Segment or Shopify, and each value is an <code>ObjectTypeName</code> (template) used to ingest the event.
    #   It supports the following event types: <code>SegmentIdentify</code>, <code>ShopifyCreateCustomers</code>, <code>ShopifyUpdateCustomers</code>, <code>ShopifyCreateDraftOrders</code>,
    #   <code>ShopifyUpdateDraftOrders</code>, <code>ShopifyCreateOrders</code>, and <code>ShopifyUpdatedOrders</code>.</p>
    #   @return [Hash<String, String>]
    # @!attribute workflow_id
    #   <p>Unique identifier for the workflow.</p>
    #   @return [String]
    # @!attribute is_unstructured
    #   <p>Boolean that shows if the Flow that's associated with the Integration is created in
    #            Amazon Appflow, or with ObjectTypeName equals _unstructured via API/CLI in
    #            flowDefinition.</p>
    #   @return [Boolean]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role. The Integration uses this role to make
    #            Customer Profiles requests on your behalf.</p>
    #   @return [String]
    # @!attribute event_trigger_names
    #   <p>A list of unique names for active event triggers associated with the integration.</p>
    #   @return [Array<String>]
    # @!attribute scope
    #   <p>The scope or boundary of the integration item's applicability.</p>
    #   @return [String]
    class ListIntegrationItem < Struct.new(
      nil,
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
      :scope,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token from the previous ListIntegrations API call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects returned per page.</p>
    #   @return [Integer]
    # @!attribute include_hidden
    #   <p>Boolean to indicate if hidden integration should be returned. Defaults to <code>False</code>.</p>
    #   @return [Boolean]
    class ListIntegrationsRequest < Struct.new(
      nil,
      :domain_name,
      :next_token,
      :max_results,
      :include_hidden,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The list of ListIntegrations instances.</p>
    #   @return [Array<Types::ListIntegrationItem>]
    # @!attribute next_token
    #   <p>The pagination token from the previous ListIntegrations API call.</p>
    #   @return [String]
    class ListIntegrationsResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Item that contains the attribute and when it was last updated.</p>
    # @!attribute attribute_name
    #   <p>Name of the attribute.</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>When the attribute was last updated.</p>
    #   @return [Time]
    class ListObjectTypeAttributeItem < Struct.new(
      nil,
      :attribute_name,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents an item in the list of object type attribute values with its associated metadata.</p>
    # @!attribute value
    #   <p>The actual value of the object type attribute.</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>The timestamp of when the object type attribute value was most recently updated.</p>
    #   @return [Time]
    class ListObjectTypeAttributeValuesItem < Struct.new(
      nil,
      :value,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token from the previous call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects returned per page. Valid Range: Minimum value of 1. Maximum value of 100. If not provided default as 100.</p>
    #   @return [Integer]
    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute object_type_name
    #   <p>The unique name of the domain object type.</p>
    #   @return [String]
    # @!attribute attribute_name
    #   <p>The attribute name.</p>
    #   @return [String]
    class ListObjectTypeAttributeValuesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :domain_name,
      :object_type_name,
      :attribute_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>A list of unique attribute values sorted on the basis of LastUpdatedAt. </p>
    #   @return [Array<Types::ListObjectTypeAttributeValuesItem>]
    # @!attribute next_token
    #   <p>The pagination token from the previous call to call ListObjectTypeAttributeValues. </p>
    #   @return [String]
    class ListObjectTypeAttributeValuesResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token from the previous call. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects returned per page.</p>
    #   @return [Integer]
    # @!attribute domain_name
    #   <p>The unique identifier of the domain.</p>
    #   @return [String]
    # @!attribute object_type_name
    #   <p>The name of the profile object type.</p>
    #   @return [String]
    class ListObjectTypeAttributesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :domain_name,
      :object_type_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The items returned as part of the response.</p>
    #   @return [Array<Types::ListObjectTypeAttributeItem>]
    # @!attribute next_token
    #   <p>The pagination token from the previous call.</p>
    #   @return [String]
    class ListObjectTypeAttributesResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain for which to return profile history records.</p>
    #   @return [String]
    # @!attribute profile_id
    #   <p>The identifier of the profile to be taken.</p>
    #   @return [String]
    # @!attribute object_type_name
    #   <p>Applies a filter to include profile history records only with the specified <code>ObjectTypeName</code> value in the response.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    # @!attribute action_type
    #   <p>Applies a filter to include profile history records only with the specified <code>ActionType</code> value in the response.</p>
    #   @return [String]
    # @!attribute performed_by
    #   <p>Applies a filter to include profile history records only with the specified <code>PerformedBy</code> value in the response. The <code>PerformedBy</code> value can be the Amazon Resource Name (ARN) of the person or service principal who performed the action.</p>
    #   @return [String]
    class ListProfileHistoryRecordsRequest < Struct.new(
      nil,
      :domain_name,
      :profile_id,
      :object_type_name,
      :next_token,
      :max_results,
      :action_type,
      :performed_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_history_records
    #   <p>The list of profile history records.</p>
    #   @return [Array<Types::ProfileHistoryRecord>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListProfileHistoryRecordsResponse < Struct.new(
      nil,
      :profile_history_records,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A ProfileObjectType instance.</p>
    # @!attribute object_type_name
    #   <p>The name of the profile object type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Description of the profile object type.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the domain was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp of when the profile object type was most recently edited.</p>
    #   @return [Time]
    # @!attribute max_profile_object_count
    #   <p>The amount of profile object max count assigned to the object type.</p>
    #   @return [Integer]
    # @!attribute max_available_profile_object_count
    #   <p>The amount of provisioned profile object max count available.</p>
    #   @return [Integer]
    # @!attribute source_priority
    #   <p>An integer that determines the priority of this object type when data from multiple sources is ingested. Lower values take priority. Object types without a specified source priority default to the lowest priority.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class ListProfileObjectTypeItem < Struct.new(
      nil,
      :object_type_name,
      :description,
      :created_at,
      :last_updated_at,
      :max_profile_object_count,
      :max_available_profile_object_count,
      :source_priority,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A ProfileObjectTypeTemplate in a list of ProfileObjectTypeTemplates.</p>
    # @!attribute template_id
    #   <p>A unique identifier for the object template.</p>
    #   @return [String]
    # @!attribute source_name
    #   <p>The name of the source of the object template.</p>
    #   @return [String]
    # @!attribute source_object
    #   <p>The source of the object template.</p>
    #   @return [String]
    class ListProfileObjectTypeTemplateItem < Struct.new(
      nil,
      :template_id,
      :source_name,
      :source_object,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token from the previous ListObjectTypeTemplates API call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects returned per page.</p>
    #   @return [Integer]
    class ListProfileObjectTypeTemplatesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The list of ListProfileObjectType template instances.</p>
    #   @return [Array<Types::ListProfileObjectTypeTemplateItem>]
    # @!attribute next_token
    #   <p>The pagination token from the previous ListObjectTypeTemplates API call. </p>
    #   @return [String]
    class ListProfileObjectTypeTemplatesResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects returned per page.</p>
    #   @return [Integer]
    class ListProfileObjectTypesRequest < Struct.new(
      nil,
      :domain_name,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The list of ListProfileObjectTypes instances.</p>
    #   @return [Array<Types::ListProfileObjectTypeItem>]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    class ListProfileObjectTypesResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A ProfileObject in a list of ProfileObjects.</p>
    # @!attribute object_type_name
    #   <p>Specifies the kind of object being added to a profile, such as
    #            "Salesforce-Account."</p>
    #   @return [String]
    # @!attribute profile_object_unique_key
    #   <p>The unique identifier of the ProfileObject generated by the service.</p>
    #   @return [String]
    # @!attribute object
    #   <p>A JSON representation of a ProfileObject that belongs to a profile.</p>
    #   @return [String]
    class ListProfileObjectsItem < Struct.new(
      nil,
      :object_type_name,
      :profile_object_unique_key,
      :object,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token from the previous call to ListProfileObjects.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects returned per page.</p>
    #   @return [Integer]
    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute object_type_name
    #   <p>The name of the profile object type.</p>
    #   @return [String]
    # @!attribute profile_id
    #   <p>The unique identifier of a customer profile.</p>
    #   @return [String]
    # @!attribute object_filter
    #   <p>Applies a filter to the response to include profile objects with the specified index
    #            values.</p>
    #   @return [Types::ObjectFilter]
    class ListProfileObjectsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :domain_name,
      :object_type_name,
      :profile_id,
      :object_filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The list of ListProfileObject instances.</p>
    #   @return [Array<Types::ListProfileObjectsItem>]
    # @!attribute next_token
    #   <p>The pagination token from the previous call to ListProfileObjects.</p>
    #   @return [String]
    class ListProfileObjectsResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of recommender filters to return in the response. The default value is 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token received from a previous ListRecommenderFilters call to retrieve the next page of results.</p>
    #   @return [String]
    class ListRecommenderFiltersRequest < Struct.new(
      nil,
      :domain_name,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token to retrieve the next page of results. Null if there are no more results to retrieve.</p>
    #   @return [String]
    # @!attribute recommender_filters
    #   <p>A list of recommender filters and their properties in the specified domain.</p>
    #   @return [Array<Types::RecommenderFilterSummary>]
    class ListRecommenderFiltersResponse < Struct.new(
      nil,
      :next_token,
      :recommender_filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of recommender recipes to return in the response. The default value is 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token received from a previous ListRecommenderRecipes call to retrieve the next page of results.</p>
    #   @return [String]
    class ListRecommenderRecipesRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token to retrieve the next page of results. Null if there are no more results to retrieve.</p>
    #   @return [String]
    # @!attribute recommender_recipes
    #   <p>A list of available recommender recipes and their properties.</p>
    #   @return [Array<Types::RecommenderRecipe>]
    class ListRecommenderRecipesResponse < Struct.new(
      nil,
      :next_token,
      :recommender_recipes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of recommender schemas to return in the response. The default value is 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token received from a previous ListRecommenderSchemas call to retrieve the next page of results.</p>
    #   @return [String]
    class ListRecommenderSchemasRequest < Struct.new(
      nil,
      :domain_name,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token to retrieve the next page of results. Null if there are no more results to retrieve.</p>
    #   @return [String]
    # @!attribute recommender_schemas
    #   <p>A list of recommender schemas and their properties in the specified domain.</p>
    #   @return [Array<Types::RecommenderSchemaSummary>]
    class ListRecommenderSchemasResponse < Struct.new(
      nil,
      :next_token,
      :recommender_schemas,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of recommenders to return in the response. The default value is 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token received from a previous ListRecommenders call to retrieve the next page of results.</p>
    #   @return [String]
    class ListRecommendersRequest < Struct.new(
      nil,
      :domain_name,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token to retrieve the next page of results. Null if there are no more results to retrieve.</p>
    #   @return [String]
    # @!attribute recommenders
    #   <p>A list of recommenders and their properties in the specified domain.</p>
    #   @return [Array<Types::RecommenderSummary>]
    class ListRecommendersResponse < Struct.new(
      nil,
      :next_token,
      :recommenders,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token from the previous <code>ListRuleBasedMatches</code> API
    #            call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of <code>MatchIds</code> returned per page.</p>
    #   @return [Integer]
    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    class ListRuleBasedMatchesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :domain_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute match_ids
    #   <p>The list of <code>MatchIds</code> for the given domain.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The pagination token from the previous <code>ListRuleBasedMatches</code> API
    #            call.</p>
    #   @return [String]
    class ListRuleBasedMatchesResponse < Struct.new(
      nil,
      :match_ids,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique identifier of the domain.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects returned per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token from the previous call. </p>
    #   @return [String]
    class ListSegmentDefinitionsRequest < Struct.new(
      nil,
      :domain_name,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token from the previous call.</p>
    #   @return [String]
    # @!attribute items
    #   <p>List of segment definitions.</p>
    #   @return [Array<Types::SegmentDefinitionItem>]
    class ListSegmentDefinitionsResponse < Struct.new(
      nil,
      :next_token,
      :items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute segment_definition_name
    #   <p>The unique name of the segment definition. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of events to return per page. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token from the previous call to retrieve the next page of results. </p>
    #   @return [String]
    class ListSegmentSubscriptionEventsRequest < Struct.new(
      nil,
      :domain_name,
      :segment_definition_name,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute events
    #   <p>A list of segment membership events. </p>
    #   @return [Array<Types::SubscriptionEventItem>]
    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results. </p>
    #   @return [String]
    class ListSegmentSubscriptionEventsResponse < Struct.new(
      nil,
      :events,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource for which you want to view tags.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain to list upload jobs for. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of upload jobs to return per page. </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token from the previous call to retrieve the next page of results.
    #         </p>
    #   @return [String]
    class ListUploadJobsRequest < Struct.new(
      nil,
      :domain_name,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token to use to retrieve the next page of results. </p>
    #   @return [String]
    # @!attribute items
    #   <p>The list of upload jobs for the specified domain. </p>
    #   @return [Array<Types::UploadJobItem>]
    class ListUploadJobsResponse < Struct.new(
      nil,
      :next_token,
      :items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A workflow in list of workflows.</p>
    # @!attribute workflow_type
    #   <p>The type of workflow. The only supported value is APPFLOW_INTEGRATION.</p>
    #   @return [String]
    # @!attribute workflow_id
    #   <p>Unique identifier for the workflow.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Status of workflow execution.</p>
    #   @return [String]
    # @!attribute status_description
    #   <p>Description for workflow execution status.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>Creation timestamp for workflow.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>Last updated timestamp for workflow.</p>
    #   @return [Time]
    class ListWorkflowsItem < Struct.new(
      nil,
      :workflow_type,
      :workflow_id,
      :status,
      :status_description,
      :created_at,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute workflow_type
    #   <p>The type of workflow. The only supported value is APPFLOW_INTEGRATION.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Status of workflow execution.</p>
    #   @return [String]
    # @!attribute query_start_date
    #   <p>Retrieve workflows started after timestamp.</p>
    #   @return [Time]
    # @!attribute query_end_date
    #   <p>Retrieve workflows ended after timestamp.</p>
    #   @return [Time]
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #   @return [Integer]
    class ListWorkflowsRequest < Struct.new(
      nil,
      :domain_name,
      :workflow_type,
      :status,
      :query_start_date,
      :query_end_date,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>List containing workflow details.</p>
    #   @return [Array<Types::ListWorkflowsItem>]
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #   @return [String]
    class ListWorkflowsResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The properties that are applied when Marketo is being used as a source.</p>
    # @!attribute object
    #   <p>The object specified in the Marketo flow source.</p>
    #   @return [String]
    class MarketoSourceProperties < Struct.new(
      nil,
      :object,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Match group object.</p>
    # @!attribute match_id
    #   <p>The unique identifiers for this group of profiles that match.</p>
    #   @return [String]
    # @!attribute profile_ids
    #   <p>A list of identifiers for profiles that match.</p>
    #   @return [Array<String>]
    # @!attribute confidence_score
    #   <p>A number between 0 and 1, where a higher score means higher similarity. Examining match
    #            confidence scores lets you distinguish between groups of similar records in which the
    #            system is highly confident (which you may decide to merge), groups of similar records about
    #            which the system is uncertain (which you may decide to have reviewed by a human), and
    #            groups of similar records that the system deems to be unlikely (which you may decide to
    #            reject). Given confidence scores vary as per the data input, it should not be used an
    #            absolute measure of matching quality.</p>
    #   @return [Float]
    class MatchItem < Struct.new(
      nil,
      :match_id,
      :profile_ids,
      :confidence_score,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The flag that enables the matching process of duplicate profiles.</p>
    # @!attribute enabled
    #   <p>The flag that enables the matching process of duplicate profiles.</p>
    #   @return [Boolean]
    # @!attribute job_schedule
    #   <p>The day and time when do you want to start the Identity Resolution Job every week.</p>
    #   @return [Types::JobSchedule]
    # @!attribute auto_merging
    #   <p>Configuration information about the auto-merging process.</p>
    #   @return [Types::AutoMerging]
    # @!attribute exporting_config
    #   <p>Configuration information for exporting Identity Resolution results, for example, to an S3
    #            bucket.</p>
    #   @return [Types::ExportingConfig]
    class MatchingRequest < Struct.new(
      nil,
      :enabled,
      :job_schedule,
      :auto_merging,
      :exporting_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The flag that enables the matching process of duplicate profiles.</p>
    # @!attribute enabled
    #   <p>The flag that enables the matching process of duplicate profiles.</p>
    #   @return [Boolean]
    # @!attribute job_schedule
    #   <p>The day and time when do you want to start the Identity Resolution Job every week.</p>
    #   @return [Types::JobSchedule]
    # @!attribute auto_merging
    #   <p>Configuration information about the auto-merging process.</p>
    #   @return [Types::AutoMerging]
    # @!attribute exporting_config
    #   <p>Configuration information for exporting Identity Resolution results, for example, to an S3
    #            bucket.</p>
    #   @return [Types::ExportingConfig]
    class MatchingResponse < Struct.new(
      nil,
      :enabled,
      :job_schedule,
      :auto_merging,
      :exporting_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies how does the rule-based matching process should match profiles. You can choose
    #          from the following attributes to build the matching Rule:</p>
    #          <ul>
    #             <li>
    #                <p>AccountNumber</p>
    #             </li>
    #             <li>
    #                <p>Address.Address</p>
    #             </li>
    #             <li>
    #                <p>Address.City</p>
    #             </li>
    #             <li>
    #                <p>Address.Country</p>
    #             </li>
    #             <li>
    #                <p>Address.County</p>
    #             </li>
    #             <li>
    #                <p>Address.PostalCode</p>
    #             </li>
    #             <li>
    #                <p>Address.State</p>
    #             </li>
    #             <li>
    #                <p>Address.Province</p>
    #             </li>
    #             <li>
    #                <p>BirthDate</p>
    #             </li>
    #             <li>
    #                <p>BusinessName</p>
    #             </li>
    #             <li>
    #                <p>EmailAddress</p>
    #             </li>
    #             <li>
    #                <p>FirstName</p>
    #             </li>
    #             <li>
    #                <p>Gender</p>
    #             </li>
    #             <li>
    #                <p>LastName</p>
    #             </li>
    #             <li>
    #                <p>MiddleName</p>
    #             </li>
    #             <li>
    #                <p>PhoneNumber</p>
    #             </li>
    #             <li>
    #                <p>Any customized profile attributes that start with the
    #                <code>Attributes</code>
    #                </p>
    #             </li>
    #          </ul>
    # @!attribute rule
    #   <p>A single rule level of the <code>MatchRules</code>. Configures how the rule-based
    #            matching process should match profiles.</p>
    #   @return [Array<String>]
    class MatchingRule < Struct.new(
      nil,
      :rule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute main_profile_id
    #   <p>The identifier of the profile to be taken.</p>
    #   @return [String]
    # @!attribute profile_ids_to_be_merged
    #   <p>The identifier of the profile to be merged into MainProfileId.</p>
    #   @return [Array<String>]
    # @!attribute field_source_profile_ids
    #   <p>The identifiers of the fields in the profile that has the information you want to apply
    #            to the merge. For example, say you want to merge EmailAddress from Profile1 into
    #            MainProfile. This would be the identifier of the EmailAddress field in Profile1. </p>
    #   @return [Types::FieldSourceProfileIds]
    class MergeProfilesRequest < Struct.new(
      nil,
      :domain_name,
      :main_profile_id,
      :profile_ids_to_be_merged,
      :field_source_profile_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute message
    #   <p>A message that indicates the merge request is complete.</p>
    #   @return [String]
    class MergeProfilesResponse < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for metadata to include in recommendation responses.</p>
    # @!attribute metadata_columns
    #   <p>A list of metadata column names from your Items dataset to include in the recommendation response.</p>
    #   @return [Array<String>]
    class MetadataConfig < Struct.new(
      nil,
      :metadata_columns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The criteria that a specific object attribute must meet to trigger the
    #          destination.</p>
    # @!attribute source
    #   <p>An attribute contained within a source object.</p>
    #   @return [String]
    # @!attribute field_name
    #   <p>A field defined within an object type.</p>
    #   @return [String]
    # @!attribute comparison_operator
    #   <p>The operator used to compare an attribute against a list of values.</p>
    #   @return [String]
    # @!attribute values
    #   <p>A list of attribute values used for comparison.</p>
    #   @return [Array<String>]
    class ObjectAttribute < Struct.new(
      nil,
      :source,
      :field_name,
      :comparison_operator,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The filter applied to <code>ListProfileObjects</code> response to include profile
    #          objects with the specified index values.</p>
    # @!attribute key_name
    #   <p>A searchable identifier of a profile object. The predefined keys you can use to search
    #            for <code>_asset</code> include: <code>_assetId</code>, <code>_assetName</code>, and
    #               <code>_serialNumber</code>. The predefined keys you can use to search for
    #               <code>_case</code> include: <code>_caseId</code>. The predefined keys you can use to
    #            search for <code>_order</code> include: <code>_orderId</code>.</p>
    #   @return [String]
    # @!attribute values
    #   <p>A list of key values.</p>
    #   @return [Array<String>]
    class ObjectFilter < Struct.new(
      nil,
      :key_name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a field in a ProfileObjectType.</p>
    # @!attribute source
    #   <p>A field of a ProfileObject. For example: _source.FirstName, where “_source” is a
    #            ProfileObjectType of a Zendesk user and “FirstName” is a field in that ObjectType.</p>
    #   @return [String]
    # @!attribute target
    #   <p>The location of the data in the standard ProfileObject model. For example:
    #            _profile.Address.PostalCode. Do not include sensitive or personally identifiable information (PII) in the target field name.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The content type of the field. Used for determining equality when searching.</p>
    #   @return [String]
    class ObjectTypeField < Struct.new(
      nil,
      :source,
      :target,
      :content_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object that defines the Key element of a ProfileObject. A Key is a special element
    #          that can be used to search for a customer profile.</p>
    # @!attribute standard_identifiers
    #   <p>The types of keys that a ProfileObject can have. Each ProfileObject can have only 1
    #            UNIQUE key but multiple PROFILE keys. PROFILE, ASSET, CASE, or ORDER means that this key
    #            can be used to tie an object to a PROFILE, ASSET, CASE, or ORDER respectively. UNIQUE means
    #            that it can be used to uniquely identify an object. If a key a is marked as SECONDARY, it
    #            will be used to search for profiles after all other PROFILE keys have been searched. A
    #            LOOKUP_ONLY key is only used to match a profile but is not persisted to be used for
    #            searching of the profile. A NEW_ONLY key is only used if the profile does not already exist
    #            before the object is ingested, otherwise it is only used for matching objects to
    #            profiles.</p>
    #   @return [Array<String>]
    # @!attribute field_names
    #   <p>The reference for the key name of the fields map.</p>
    #   @return [Array<String>]
    class ObjectTypeKey < Struct.new(
      nil,
      :standard_identifiers,
      :field_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a limit and the time period during which it is enforced.</p>
    # @!attribute unit
    #   <p>The unit of time.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The amount of time of the specified unit.</p>
    #   @return [Integer]
    # @!attribute max_invocations_per_profile
    #   <p>The maximum allowed number of destination invocations per profile.</p>
    #   @return [Integer]
    # @!attribute unlimited
    #   <p>If set to true, there is no limit on the number of destination invocations per profile.
    #            The default is false.</p>
    #   @return [Boolean]
    class Period < Struct.new(
      nil,
      :unit,
      :value,
      :max_invocations_per_profile,
      :unlimited,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:unlimited] = false unless options.key?(:unlimited)
        super
      end
    end

    # <p>The standard profile of a customer.</p>
    # @!attribute profile_id
    #   <p>The unique identifier of a customer profile.</p>
    #   @return [String]
    # @!attribute account_number
    #   <p>An account number that you have assigned to the customer.</p>
    #   @return [String]
    # @!attribute additional_information
    #   <p>Any additional information relevant to the customer’s profile.</p>
    #   @return [String]
    # @!attribute party_type
    #   <p>The type of profile used to describe the customer.</p>
    #   @return [String]
    # @!attribute business_name
    #   <p>The name of the customer’s business.</p>
    #   @return [String]
    # @!attribute first_name
    #   <p>The customer’s first name.</p>
    #   @return [String]
    # @!attribute middle_name
    #   <p>The customer’s middle name.</p>
    #   @return [String]
    # @!attribute last_name
    #   <p>The customer’s last name.</p>
    #   @return [String]
    # @!attribute birth_date
    #   <p>The customer’s birth date. </p>
    #   @return [String]
    # @!attribute gender
    #   <p>The gender with which the customer identifies. </p>
    #   @return [String]
    # @!attribute phone_number
    #   <p>The customer's phone number, which has not been specified as a mobile, home, or business
    #            number.</p>
    #   @return [String]
    # @!attribute mobile_phone_number
    #   <p>The customer’s mobile phone number.</p>
    #   @return [String]
    # @!attribute home_phone_number
    #   <p>The customer’s home phone number.</p>
    #   @return [String]
    # @!attribute business_phone_number
    #   <p>The customer’s home phone number.</p>
    #   @return [String]
    # @!attribute email_address
    #   <p>The customer’s email address, which has not been specified as a personal or business
    #            address. </p>
    #   @return [String]
    # @!attribute personal_email_address
    #   <p>The customer’s personal email address.</p>
    #   @return [String]
    # @!attribute business_email_address
    #   <p>The customer’s business email address.</p>
    #   @return [String]
    # @!attribute address
    #   <p>A generic address associated with the customer that is not mailing, shipping, or
    #            billing.</p>
    #   @return [Types::Address]
    # @!attribute shipping_address
    #   <p>The customer’s shipping address.</p>
    #   @return [Types::Address]
    # @!attribute mailing_address
    #   <p>The customer’s mailing address.</p>
    #   @return [Types::Address]
    # @!attribute billing_address
    #   <p>The customer’s billing address.</p>
    #   @return [Types::Address]
    # @!attribute attributes
    #   <p>A key value pair of attributes of a customer profile.</p>
    #   @return [Hash<String, String>]
    # @!attribute found_by_items
    #   <p>A list of items used to find a profile returned in a <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_SearchProfiles.html">SearchProfiles</a> response.
    #            An item is a key-value(s) pair that matches an attribute in the profile.</p>
    #            <p>If the optional <code>AdditionalSearchKeys</code> parameter was included in the
    #            <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_SearchProfiles.html">SearchProfiles</a> request, the <code>FoundByItems</code> list should be interpreted
    #            based on the <code>LogicalOperator</code> used in the request:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AND</code> - The profile included in the response matched all of the search
    #                  keys specified in the request. The <code>FoundByItems</code> will include all of the
    #                  key-value(s) pairs that were specified in the request (as this is a requirement of
    #                     <code>AND</code> search logic).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OR</code> - The profile included in the response matched at least one of the
    #                  search keys specified in the request. The <code>FoundByItems</code> will include each
    #                  of the key-value(s) pairs that the profile was found by.</p>
    #               </li>
    #            </ul>
    #            <p>The <code>OR</code> relationship is the default behavior if the
    #               <code>LogicalOperator</code> parameter is not included in the <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_SearchProfiles.html">SearchProfiles</a>
    #            request.</p>
    #   @return [Array<Types::FoundByKeyValue>]
    # @!attribute party_type_string
    #   <p>An alternative to PartyType which accepts any string as input.</p>
    #   @return [String]
    # @!attribute gender_string
    #   <p>An alternative to Gender which accepts any string as input.</p>
    #   @return [String]
    # @!attribute profile_type
    #   <p>The type of the profile.</p>
    #   @return [String]
    # @!attribute engagement_preferences
    #   <p>The customer or account’s engagement preferences.</p>
    #   @return [Types::EngagementPreferences]
    class Profile < Struct.new(
      nil,
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
      :engagement_preferences,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique identifier of the domain.</p>
    #   @return [String]
    # @!attribute attribute_name
    #   <p>The attribute name.</p>
    #   @return [String]
    class ProfileAttributeValuesRequest < Struct.new(
      nil,
      :domain_name,
      :attribute_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The name of the domain.</p>
    #   @return [String]
    # @!attribute attribute_name
    #   <p>The attribute name.</p>
    #   @return [String]
    # @!attribute items
    #   <p>The items returned as part of the response.</p>
    #   @return [Array<Types::AttributeValueItem>]
    # @!attribute status_code
    #   <p>The status code for the response.</p>
    #   @return [Integer]
    class ProfileAttributeValuesResponse < Struct.new(
      nil,
      :domain_name,
      :attribute_name,
      :items,
      :status_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:status_code] = 0 unless options.key?(:status_code)
        super
      end
    end

    # <p>The object used to segment on attributes within the customer profile.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute account_number
    #   <p>A field to describe values to segment on within account number.</p>
    #   @return [Types::ProfileDimension]
    # @!attribute additional_information
    #   <p>A field to describe values to segment on within additional information.</p>
    #   @return [Types::ExtraLengthValueProfileDimension]
    # @!attribute first_name
    #   <p>A field to describe values to segment on within first name.</p>
    #   @return [Types::ProfileDimension]
    # @!attribute last_name
    #   <p>A field to describe values to segment on within last name.</p>
    #   @return [Types::ProfileDimension]
    # @!attribute middle_name
    #   <p>A field to describe values to segment on within middle name.</p>
    #   @return [Types::ProfileDimension]
    # @!attribute gender_string
    #   <p>A field to describe values to segment on within genderString.</p>
    #   @return [Types::ProfileDimension]
    # @!attribute party_type_string
    #   <p>A field to describe values to segment on within partyTypeString.</p>
    #   @return [Types::ProfileDimension]
    # @!attribute birth_date
    #   <p>A field to describe values to segment on within birthDate.</p>
    #   @return [Types::DateDimension]
    # @!attribute phone_number
    #   <p>A field to describe values to segment on within phone number.</p>
    #   @return [Types::ProfileDimension]
    # @!attribute business_name
    #   <p>A field to describe values to segment on within business name.</p>
    #   @return [Types::ProfileDimension]
    # @!attribute business_phone_number
    #   <p>A field to describe values to segment on within business phone number.</p>
    #   @return [Types::ProfileDimension]
    # @!attribute home_phone_number
    #   <p>A field to describe values to segment on within home phone number.</p>
    #   @return [Types::ProfileDimension]
    # @!attribute mobile_phone_number
    #   <p>A field to describe values to segment on within mobile phone number.</p>
    #   @return [Types::ProfileDimension]
    # @!attribute email_address
    #   <p>A field to describe values to segment on within email address.</p>
    #   @return [Types::ProfileDimension]
    # @!attribute personal_email_address
    #   <p>A field to describe values to segment on within personal email address.</p>
    #   @return [Types::ProfileDimension]
    # @!attribute business_email_address
    #   <p>A field to describe values to segment on within business email address.</p>
    #   @return [Types::ProfileDimension]
    # @!attribute address
    #   <p>A field to describe values to segment on within address.</p>
    #   @return [Types::AddressDimension]
    # @!attribute shipping_address
    #   <p>A field to describe values to segment on within shipping address.</p>
    #   @return [Types::AddressDimension]
    # @!attribute mailing_address
    #   <p>A field to describe values to segment on within mailing address.</p>
    #   @return [Types::AddressDimension]
    # @!attribute billing_address
    #   <p>A field to describe values to segment on within billing address.</p>
    #   @return [Types::AddressDimension]
    # @!attribute attributes
    #   <p>A field to describe values to segment on within attributes.</p>
    #   @return [Hash<String, Types::AttributeDimension>]
    # @!attribute profile_type
    #   <p>A field to describe values to segment on within profile type.</p>
    #   @return [Types::ProfileTypeDimension]
    class ProfileAttributes < Struct.new(
      nil,
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
      :profile_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object to hold the dimensions of a profile's fields to segment on.</p>
    # @!attribute dimension_type
    #   <p>The action to segment on.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values to apply the DimensionType on. To reference a calculated attribute or profile
    #            attribute as a dynamic value, use handlebar notation:
    #            <code>{{_profile.ProfileAttributeName}}</code> or
    #            <code>{{_calculated_attribute.CalculatedAttributeName}}</code>.</p>
    #   @return [Array<String>]
    class ProfileDimension < Struct.new(
      nil,
      :dimension_type,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains profile history record metadata.</p>
    # @!attribute id
    #   <p>The unique identifier of the profile history record.</p>
    #   @return [String]
    # @!attribute object_type_name
    #   <p>The name of the profile object type.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the profile history record was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp of when the profile history record was last updated.</p>
    #   @return [Time]
    # @!attribute action_type
    #   <p>The action type of the profile history record.</p>
    #   @return [String]
    # @!attribute profile_object_unique_key
    #   <p>The unique identifier of the profile object generated by the service.</p>
    #   @return [String]
    # @!attribute performed_by
    #   <p>The Amazon Resource Name (ARN) of the person or service principal who performed the action.</p>
    #   @return [String]
    class ProfileHistoryRecord < Struct.new(
      nil,
      :id,
      :object_type_name,
      :created_at,
      :last_updated_at,
      :action_type,
      :profile_object_unique_key,
      :performed_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object that holds failures for membership.</p>
    # @!attribute profile_id
    #   <p>The profile id the failure belongs to.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message describing the failure.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status describing the failure.</p>
    #   @return [Integer]
    class ProfileQueryFailures < Struct.new(
      nil,
      :profile_id,
      :message,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object that holds the results for membership.</p>
    # @!attribute profile_id
    #   <p>The profile id the result belongs to.</p>
    #   @return [String]
    # @!attribute query_result
    #   <p>Describes whether the profile was absent or present in the segment.</p>
    #   @return [String]
    # @!attribute profile
    #   <p>The standard profile of a customer.</p>
    #   @return [Types::Profile]
    class ProfileQueryResult < Struct.new(
      nil,
      :profile_id,
      :query_result,
      :profile,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object to hold the dimension of a profile type field to segment on.</p>
    # @!attribute dimension_type
    #   <p>The action to segment on.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values to apply the DimensionType on.</p>
    #   @return [Array<String>]
    class ProfileTypeDimension < Struct.new(
      nil,
      :dimension_type,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute object_type_name
    #   <p>The unique name of the domain object type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the domain object type.</p>
    #   @return [String]
    # @!attribute encryption_key
    #   <p>The customer provided KMS key used to encrypt this type of domain object.</p>
    #   @return [String]
    # @!attribute fields
    #   <p>A map of field names to their corresponding domain object type field definitions.</p>
    #   @return [Hash<String, Types::DomainObjectTypeField>]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class PutDomainObjectTypeRequest < Struct.new(
      nil,
      :domain_name,
      :object_type_name,
      :description,
      :encryption_key,
      :fields,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute object_type_name
    #   <p>The unique name of the domain object type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the domain object type.</p>
    #   @return [String]
    # @!attribute encryption_key
    #   <p>The customer provided KMS key used to encrypt this type of domain object.</p>
    #   @return [String]
    # @!attribute fields
    #   <p>A map of field names to their corresponding domain object type field definitions.</p>
    #   @return [Hash<String, Types::DomainObjectTypeField>]
    # @!attribute created_at
    #   <p>The timestamp of when the domain object type was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp of when the domain object type was most recently edited.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class PutDomainObjectTypeResponse < Struct.new(
      nil,
      :object_type_name,
      :description,
      :encryption_key,
      :fields,
      :created_at,
      :last_updated_at,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute uri
    #   <p>The URI of the S3 bucket or any other type of data source.</p>
    #   @return [String]
    # @!attribute object_type_name
    #   <p>The name of the profile object type.</p>
    #   @return [String]
    # @!attribute object_type_names
    #   <p>A map in which each key is an event type from an external application such as Segment or Shopify, and each value is an <code>ObjectTypeName</code> (template) used to ingest the event.
    #   It supports the following event types: <code>SegmentIdentify</code>, <code>ShopifyCreateCustomers</code>, <code>ShopifyUpdateCustomers</code>, <code>ShopifyCreateDraftOrders</code>,
    #   <code>ShopifyUpdateDraftOrders</code>, <code>ShopifyCreateOrders</code>, and <code>ShopifyUpdatedOrders</code>.</p>
    #   @return [Hash<String, String>]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute flow_definition
    #   <p>The configuration that controls how Customer Profiles retrieves data from the
    #            source.</p>
    #   @return [Types::FlowDefinition]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role. The Integration uses this role to make
    #            Customer Profiles requests on your behalf.</p>
    #   @return [String]
    # @!attribute event_trigger_names
    #   <p>A list of unique names for active event triggers associated with the integration.</p>
    #   @return [Array<String>]
    # @!attribute scope
    #   <p>Specifies whether the integration applies to profile level data (associated with profiles) or domain level data (not associated with any specific profile). The default value is PROFILE.</p>
    #   @return [String]
    class PutIntegrationRequest < Struct.new(
      nil,
      :domain_name,
      :uri,
      :object_type_name,
      :object_type_names,
      :tags,
      :flow_definition,
      :role_arn,
      :event_trigger_names,
      :scope,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute uri
    #   <p>The URI of the S3 bucket or any other type of data source.</p>
    #   @return [String]
    # @!attribute object_type_name
    #   <p>The name of the profile object type.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the domain was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp of when the domain was most recently edited.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute object_type_names
    #   <p>A map in which each key is an event type from an external application such as Segment or Shopify, and each value is an <code>ObjectTypeName</code> (template) used to ingest the event.
    #   It supports the following event types: <code>SegmentIdentify</code>, <code>ShopifyCreateCustomers</code>, <code>ShopifyUpdateCustomers</code>, <code>ShopifyCreateDraftOrders</code>,
    #   <code>ShopifyUpdateDraftOrders</code>, <code>ShopifyCreateOrders</code>, and <code>ShopifyUpdatedOrders</code>.</p>
    #   @return [Hash<String, String>]
    # @!attribute workflow_id
    #   <p>Unique identifier for the workflow.</p>
    #   @return [String]
    # @!attribute is_unstructured
    #   <p>Boolean that shows if the Flow that's associated with the Integration is created in
    #            Amazon Appflow, or with ObjectTypeName equals _unstructured via API/CLI in
    #            flowDefinition.</p>
    #   @return [Boolean]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role. The Integration uses this role to make
    #            Customer Profiles requests on your behalf.</p>
    #   @return [String]
    # @!attribute event_trigger_names
    #   <p>A list of unique names for active event triggers associated with the integration. This
    #            list would be empty if no Event Trigger is associated with the integration.</p>
    #   @return [Array<String>]
    # @!attribute scope
    #   <p>Specifies whether the integration applies to profile level data (associated with profiles) or domain level data (not associated with any specific profile). The default value is PROFILE.</p>
    #   @return [String]
    class PutIntegrationResponse < Struct.new(
      nil,
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
      :scope,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute object_type_name
    #   <p>The name of the profile object type.</p>
    #   @return [String]
    # @!attribute object
    #   <p>A string that is serialized from a JSON object.</p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    class PutProfileObjectRequest < Struct.new(
      nil,
      :object_type_name,
      :object,
      :domain_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_object_unique_key
    #   <p>The unique identifier of the profile object generated by the service.</p>
    #   @return [String]
    class PutProfileObjectResponse < Struct.new(
      nil,
      :profile_object_unique_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute object_type_name
    #   <p>The name of the profile object type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Description of the profile object type.</p>
    #   @return [String]
    # @!attribute template_id
    #   <p>A unique identifier for the object template. For some attributes in the request, the
    #            service will use the default value from the object template when TemplateId is present. If
    #            these attributes are present in the request, the service may return a
    #               <code>BadRequestException</code>. These attributes include: AllowProfileCreation,
    #            SourceLastUpdatedTimestampFormat, Fields, and Keys. For example, if AllowProfileCreation is
    #            set to true when TemplateId is set, the service may return a
    #               <code>BadRequestException</code>.</p>
    #   @return [String]
    # @!attribute expiration_days
    #   <p>The number of days until the data in the object expires.</p>
    #   @return [Integer]
    # @!attribute encryption_key
    #   <p>The customer-provided key to encrypt the profile object that will be created in this
    #            profile object type.</p>
    #   @return [String]
    # @!attribute allow_profile_creation
    #   <p>Indicates whether a profile should be created when data is received if one doesn’t exist
    #            for an object of this type. The default is <code>FALSE</code>. If the AllowProfileCreation
    #            flag is set to <code>FALSE</code>, then the service tries to fetch a standard profile and
    #            associate this object with the profile. If it is set to <code>TRUE</code>, and if no match
    #            is found, then the service creates a new standard profile.</p>
    #   @return [Boolean]
    # @!attribute source_last_updated_timestamp_format
    #   <p>The format of your <code>sourceLastUpdatedTimestamp</code> that was previously set up.
    #         </p>
    #   @return [String]
    # @!attribute max_profile_object_count
    #   <p>The amount of profile object max count assigned to the object type</p>
    #   @return [Integer]
    # @!attribute source_priority
    #   <p>An integer that determines the priority of this object type when data from multiple sources is ingested. Lower values take priority. Object types without a specified source priority default to the lowest priority.</p>
    #   @return [Integer]
    # @!attribute fields
    #   <p>A map of the name and ObjectType field.</p>
    #   @return [Hash<String, Types::ObjectTypeField>]
    # @!attribute keys
    #   <p>A list of unique keys that can be used to map data to the profile.</p>
    #   @return [Hash<String, Array<Types::ObjectTypeKey>>]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class PutProfileObjectTypeRequest < Struct.new(
      nil,
      :domain_name,
      :object_type_name,
      :description,
      :template_id,
      :expiration_days,
      :encryption_key,
      :allow_profile_creation,
      :source_last_updated_timestamp_format,
      :max_profile_object_count,
      :source_priority,
      :fields,
      :keys,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute object_type_name
    #   <p>The name of the profile object type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Description of the profile object type.</p>
    #   @return [String]
    # @!attribute template_id
    #   <p>A unique identifier for the object template.</p>
    #   @return [String]
    # @!attribute expiration_days
    #   <p>The number of days until the data in the object expires.</p>
    #   @return [Integer]
    # @!attribute encryption_key
    #   <p>The customer-provided key to encrypt the profile object that will be created in this
    #            profile object type.</p>
    #   @return [String]
    # @!attribute allow_profile_creation
    #   <p>Indicates whether a profile should be created when data is received if one doesn’t exist
    #            for an object of this type. The default is <code>FALSE</code>. If the AllowProfileCreation
    #            flag is set to <code>FALSE</code>, then the service tries to fetch a standard profile and
    #            associate this object with the profile. If it is set to <code>TRUE</code>, and if no match
    #            is found, then the service creates a new standard profile.</p>
    #   @return [Boolean]
    # @!attribute source_last_updated_timestamp_format
    #   <p>The format of your <code>sourceLastUpdatedTimestamp</code> that was previously set up in
    #            fields that were parsed using <a href="https://docs.oracle.com/javase/10/docs/api/java/text/SimpleDateFormat.html">SimpleDateFormat</a>. If you have <code>sourceLastUpdatedTimestamp</code> in your
    #            field, you must set up <code>sourceLastUpdatedTimestampFormat</code>.</p>
    #   @return [String]
    # @!attribute max_profile_object_count
    #   <p>The amount of profile object max count assigned to the object type.</p>
    #   @return [Integer]
    # @!attribute max_available_profile_object_count
    #   <p>The amount of provisioned profile object max count available.</p>
    #   @return [Integer]
    # @!attribute source_priority
    #   <p>An integer that determines the priority of this object type when data from multiple sources is ingested. Lower values take priority. Object types without a specified source priority default to the lowest priority.</p>
    #   @return [Integer]
    # @!attribute fields
    #   <p>A map of the name and ObjectType field.</p>
    #   @return [Hash<String, Types::ObjectTypeField>]
    # @!attribute keys
    #   <p>A list of unique keys that can be used to map data to the profile.</p>
    #   @return [Hash<String, Array<Types::ObjectTypeKey>>]
    # @!attribute created_at
    #   <p>The timestamp of when the domain was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp of when the domain was most recently edited.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class PutProfileObjectTypeResponse < Struct.new(
      nil,
      :object_type_name,
      :description,
      :template_id,
      :expiration_days,
      :encryption_key,
      :allow_profile_creation,
      :source_last_updated_timestamp_format,
      :max_profile_object_count,
      :max_available_profile_object_count,
      :source_priority,
      :fields,
      :keys,
      :created_at,
      :last_updated_at,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:allow_profile_creation] = false unless options.key?(:allow_profile_creation)
        super
      end
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute segment_definition_name
    #   <p>The unique name of the segment definition. </p>
    #   @return [String]
    # @!attribute schedule_configuration
    #   <p>The optional schedule configuration that controls how often membership snapshots are run.
    #            If not provided, the subscription defaults to a 24-hour interval. </p>
    #   @return [Types::ScheduleConfiguration]
    class PutSegmentSubscriptionRequest < Struct.new(
      nil,
      :domain_name,
      :segment_definition_name,
      :schedule_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute status
    #   <p>The current lifecycle status of the subscription. The following are valid values: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>STARTING</b>: Initial snapshot is in progress. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>RUNNING</b>: Notifications are active and running.
    #               </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>STOPPED</b>: Notifications have been stopped. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>FAILED</b>: Notifications failed (for example, the
    #                  Amazon Kinesis data stream became inaccessible). </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute schedule_configuration
    #   <p>The schedule configuration for the subscription, if configured. </p>
    #   @return [Types::ScheduleConfiguration]
    # @!attribute started_at
    #   <p>The timestamp of when the subscription was started. </p>
    #   @return [Time]
    class PutSegmentSubscriptionResponse < Struct.new(
      nil,
      :status,
      :schedule_configuration,
      :started_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The relative time period over which data is included in the aggregation.</p>
    # @!attribute value
    #   <p>The amount of time of the specified unit.</p>
    #   @return [Integer]
    # @!attribute unit
    #   <p>The unit of time.</p>
    #   @return [String]
    # @!attribute value_range
    #   <p>A structure letting customers specify a relative time window over which over which data
    #            is included in the Calculated Attribute. Use positive numbers to indicate that the endpoint
    #            is in the past, and negative numbers to indicate it is in the future. ValueRange overrides
    #            Value.</p>
    #   @return [Types::ValueRange]
    # @!attribute timestamp_source
    #   <p>An expression specifying the field in your JSON object from which the date should be
    #            parsed. The expression should follow the structure of \"{ObjectTypeName.<Location of
    #            timestamp field in JSON pointer format>}\". E.g. if your object type is MyType and source
    #            JSON is {"generatedAt": {"timestamp": "1737587945945"}}, then TimestampSource should be
    #            "{MyType.generatedAt.timestamp}".</p>
    #   @return [String]
    # @!attribute timestamp_format
    #   <p>The format the timestamp field in your JSON object is specified. This value should be
    #            one of EPOCHMILLI (for Unix epoch timestamps with second/millisecond level precision) or
    #            ISO_8601 (following ISO_8601 format with second/millisecond level precision, with an
    #            optional offset of Z or in the format HH:MM or HHMM.). E.g. if your object type is MyType
    #            and source JSON is {"generatedAt": {"timestamp": "2001-07-04T12:08:56.235-0700"}}, then
    #            TimestampFormat should be "ISO_8601".</p>
    #   @return [String]
    class Range < Struct.new(
      nil,
      :value,
      :unit,
      :value_range,
      :timestamp_source,
      :timestamp_format,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:value] = 0 unless options.key?(:value)
        options[:unit] = 'DAYS' unless options.key?(:unit)
        super
      end
    end

    # <p>Overrides the original range on a calculated attribute definition.</p>
    # @!attribute start
    #   <p>The start time of when to include objects.</p>
    #   @return [Integer]
    # @!attribute end
    #   <p>The end time of when to include objects.</p>
    #   @return [Integer]
    # @!attribute unit
    #   <p>The unit for start and end.</p>
    #   @return [String]
    class RangeOverride < Struct.new(
      nil,
      :start,
      :end,
      :unit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:start] = 366 unless options.key?(:start)
        options[:end] = 0 unless options.key?(:end)
        super
      end
    end

    # <p>Information indicating if the Calculated Attribute is ready for use by confirming all
    #          historical data has been processed and reflected.</p>
    # @!attribute progress_percentage
    #   <p>Approximately how far the Calculated Attribute creation is from completion.</p>
    #   @return [Integer]
    # @!attribute message
    #   <p>Any customer messaging.</p>
    #   @return [String]
    class Readiness < Struct.new(
      nil,
      :progress_percentage,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a single recommendation generated by the recommender system.</p>
    # @!attribute catalog_item
    #   <p>The catalog item being recommended, including its complete details and attributes.</p>
    #   @return [Types::CatalogItem]
    # @!attribute score
    #   <p>Recommendation Score between 0 and 1.</p>
    #   @return [Float]
    class Recommendation < Struct.new(
      nil,
      :catalog_item,
      :score,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Runtime diversity configuration for a <code>GetProfileRecommendations</code> request.</p>
    # @!attribute enabled
    #   <p>Whether diversity-aware recommendations are enabled for this request.</p>
    #   @return [Boolean]
    # @!attribute values
    #   <p>An optional map of placeholder name to integer cap value used to resolve <code>$name</code> placeholders defined in the recommender's <code>DiversityConfig</code> at inference time. Up to 2 entries are supported.</p>
    #   @return [Hash<String, Integer>]
    class RecommendationDiversityConfig < Struct.new(
      nil,
      :enabled,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for metadata to include in recommendation responses.</p>
    # @!attribute columns
    #   <p>A list of metadata column names from your Items dataset to include in the recommendation response.</p>
    #   @return [Array<String>]
    class RecommendationMetadata < Struct.new(
      nil,
      :columns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The recommender used to generate the recommendations.</p>
    # @!attribute name
    #   <p>The unique name of the recommender.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>A list of filters to apply to the returned recommendations. Filters define criteria for including or excluding items from the recommendation results.</p>
    #   @return [Array<Types::RecommenderFilter>]
    # @!attribute promotional_filters
    #   <p>A list of promotional filters to apply to the recommendations. Promotional filters allow you to promote specific items within a configurable subset of recommendation results.</p>
    #   @return [Array<Types::RecommenderPromotionalFilter>]
    class Recommender < Struct.new(
      nil,
      :name,
      :filters,
      :promotional_filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings that define the behavior and parameters of a recommender.</p>
    # @!attribute events_config
    #   <p>Configuration settings for how the recommender processes and uses events.</p>
    #   @return [Types::EventsConfig]
    # @!attribute training_frequency
    #   <p>How often the recommender should retrain its model with new data. If set to 0, automatic retraining will not be enabled.</p>
    #   @return [Integer]
    # @!attribute inference_config
    #   <p>Configuration settings for how the recommender handles inference requests.</p>
    #   @return [Types::InferenceConfig]
    # @!attribute included_columns
    #   <p>A map of dataset type to a list of column names to train on. The <code>_webAnalytics</code> and <code>_catalogItem</code> keys are supported. The column names must be a subset of the columns defined in the recommender schema. If not specified, all columns in the schema are used for training. The following columns are always included in training and do not need to be specified: <code>Item.Id</code>, <code>EventTimestamp</code>, and <code>EventType</code> for <code>_webAnalytics</code>; <code>Id</code> for <code>_catalogItem</code>. Mutually exclusive with ExcludedColumns — both cannot be specified in the same request.</p>
    #   @return [Hash<String, Array<String>>]
    # @!attribute excluded_columns
    #   <p>A map of dataset type to a list of column names to exclude from training. The <code>_webAnalytics</code> and <code>_catalogItem</code> keys are supported. The column names must be valid columns defined in the recommender schema. All columns in the schema except the listed columns will be used for training. The following columns are mandatory and cannot be excluded: <code>Item.Id</code>, <code>EventTimestamp</code>, and <code>EventType</code> for <code>_webAnalytics</code>; <code>Id</code> for <code>_catalogItem</code>. Mutually exclusive with IncludedColumns — both cannot be specified in the same request.</p>
    #   @return [Hash<String, Array<String>>]
    # @!attribute diversity_config
    #   <p>Configuration for diversity-aware recommendations. When set, the recommender applies diversity constraints defined per item column to reduce over-concentration of similar items in the results.</p>
    #   @return [Types::DiversityConfig]
    class RecommenderConfig < Struct.new(
      nil,
      :events_config,
      :training_frequency,
      :inference_config,
      :included_columns,
      :excluded_columns,
      :diversity_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A filter that specifies criteria for including or excluding items from recommendations.</p>
    # @!attribute name
    #   <p>The name of the recommender filter to apply.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values to use when filtering recommendations. For each placeholder parameter in your filter expression, provide the parameter name (in matching case) as a key and the filter value(s) as the corresponding value. Separate multiple values for one parameter with a comma.</p>
    #   @return [Hash<String, String>]
    class RecommenderFilter < Struct.new(
      nil,
      :name,
      :values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a summary of a recommender filter's configuration and current state.</p>
    # @!attribute recommender_filter_name
    #   <p>The name of the recommender filter.</p>
    #   @return [String]
    # @!attribute recommender_schema_name
    #   <p>The name of the recommender schema associated with this recommender filter.</p>
    #   @return [String]
    # @!attribute recommender_filter_expression
    #   <p>The filter expression that defines which items to include or exclude from recommendations.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the recommender filter was created.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>A description of the recommender filter's purpose and characteristics.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current operational status of the recommender filter.</p>
    #   @return [String]
    # @!attribute failure_reason
    #   <p>If the recommender filter is in a failed state, provides the reason for the failure.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class RecommenderFilterSummary < Struct.new(
      nil,
      :recommender_filter_name,
      :recommender_schema_name,
      :recommender_filter_expression,
      :created_at,
      :description,
      :status,
      :failure_reason,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information on a promotion. A promotion defines additional business rules that apply to a configurable subset of recommended items.</p>
    # @!attribute name
    #   <p>The name of the recommender filter to use for the promotion.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values to use when promoting items. For each placeholder parameter in your promotion's filter expression, provide the parameter name (in matching case) as a key and the filter value(s) as the corresponding value. Separate multiple values for one parameter with a comma.</p>
    #   @return [Hash<String, String>]
    # @!attribute promotion_name
    #   <p>The name of the promotion.</p>
    #   @return [String]
    # @!attribute percent_promoted_items
    #   <p>The percentage of recommended items to apply the promotion to.</p>
    #   @return [Integer]
    class RecommenderPromotionalFilter < Struct.new(
      nil,
      :name,
      :values,
      :promotion_name,
      :percent_promoted_items,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the algorithm and approach used to generate recommendations.</p>
    # @!attribute name
    #   <p>The name of the recommender recipe.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the recommender recipe's purpose and functionality.</p>
    #   @return [String]
    class RecommenderRecipe < Struct.new(
      nil,
      :name,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a column in a recommender schema, including the target field name and optional feature and content type settings for training.</p>
    # @!attribute target_field_name
    #   <p>The name of the target field in the dataset, such as <code>Location.City</code> or <code>Attributes.MealTime</code>.</p>
    #   @return [String]
    # @!attribute content_type
    #   <p>The data type of the column value. Valid values are <code>String</code> and <code>Number</code>. The default value is <code>String</code>.</p>
    #   @return [String]
    # @!attribute feature_type
    #   <p>How the column is treated for model training. Valid values are <code>CATEGORICAL</code> and <code>TEXTUAL</code>.</p>
    #   @return [String]
    class RecommenderSchemaField < Struct.new(
      nil,
      :target_field_name,
      :content_type,
      :feature_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a summary of a recommender schema's configuration and current state.</p>
    # @!attribute recommender_schema_name
    #   <p>The name of the recommender schema.</p>
    #   @return [String]
    # @!attribute fields
    #   <p>A map of dataset type to column definitions included in the schema.</p>
    #   @return [Hash<String, Array<Types::RecommenderSchemaField>>]
    # @!attribute created_at
    #   <p>The timestamp when the recommender schema was created.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current operational status of the recommender schema.</p>
    #   @return [String]
    class RecommenderSchemaSummary < Struct.new(
      nil,
      :recommender_schema_name,
      :fields,
      :created_at,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides a summary of a recommender's configuration and current state.</p>
    # @!attribute recommender_name
    #   <p>The name of the recommender.</p>
    #   @return [String]
    # @!attribute recipe_name
    #   <p>The name of the recipe used by this recommender.</p>
    #   @return [String]
    # @!attribute recommender_schema_name
    #   <p>The name of the recommender schema associated with this recommender.</p>
    #   @return [String]
    # @!attribute recommender_config
    #   <p>The configuration settings applied to this recommender.</p>
    #   @return [Types::RecommenderConfig]
    # @!attribute created_at
    #   <p>The timestamp when the recommender was created.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>A description of the recommender's purpose and characteristics.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current operational status of the recommender.</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>The timestamp of when the recommender was edited.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    # @!attribute failure_reason
    #   <p>If the recommender is in a failed state, provides the reason for the failure.</p>
    #   @return [String]
    # @!attribute latest_recommender_update
    #   <p>Information about the most recent update performed on the recommender, including its status and timing.</p>
    #   @return [Types::RecommenderUpdate]
    class RecommenderSummary < Struct.new(
      nil,
      :recommender_name,
      :recipe_name,
      :recommender_schema_name,
      :recommender_config,
      :created_at,
      :description,
      :status,
      :last_updated_at,
      :tags,
      :failure_reason,
      :latest_recommender_update,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about an update operation performed on a recommender.</p>
    # @!attribute recommender_config
    #   <p>The updated configuration settings applied to the recommender during this update.</p>
    #   @return [Types::RecommenderConfig]
    # @!attribute status
    #   <p>The current status of the recommender update operation.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when this recommender update was initiated.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp of when the recommender was edited.</p>
    #   @return [Time]
    # @!attribute failure_reason
    #   <p>If the update operation failed, provides the reason for the failure.</p>
    #   @return [String]
    # @!attribute recommender_version_name
    #   <p>The name of the recommender version associated with this update operation.</p>
    #   @return [String]
    class RecommenderUpdate < Struct.new(
      nil,
      :recommender_config,
      :status,
      :created_at,
      :last_updated_at,
      :failure_reason,
      :recommender_version_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested resource does not exist, or access was denied.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The summary of results for an upload job, including the number of updated, created, and
    #          failed records. </p>
    # @!attribute updated_records
    #   <p>The number of records that were updated during the upload job. </p>
    #   @return [Integer]
    # @!attribute created_records
    #   <p>The number of records that were newly created during the upload job. </p>
    #   @return [Integer]
    # @!attribute failed_records
    #   <p>The number of records that failed to be processed during the upload job. </p>
    #   @return [Integer]
    class ResultsSummary < Struct.new(
      nil,
      :updated_records,
      :created_records,
      :failed_records,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request to enable the rule-based matching.</p>
    # @!attribute enabled
    #   <p>The flag that enables the rule-based matching process of duplicate profiles.</p>
    #   @return [Boolean]
    # @!attribute matching_rules
    #   <p>Configures how the rule-based matching process should match profiles. You can have up to
    #            15 <code>MatchingRule</code> in the <code>MatchingRules</code>.</p>
    #   @return [Array<Types::MatchingRule>]
    # @!attribute max_allowed_rule_level_for_merging
    #   <p>
    #               <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_MatchingRule.html">MatchingRule</a>
    #            </p>
    #   @return [Integer]
    # @!attribute max_allowed_rule_level_for_matching
    #   <p>Indicates the maximum allowed rule level.</p>
    #   @return [Integer]
    # @!attribute attribute_types_selector
    #   <p>Configures information about the <code>AttributeTypesSelector</code> where the
    #            rule-based identity resolution uses to match profiles.</p>
    #   @return [Types::AttributeTypesSelector]
    # @!attribute conflict_resolution
    #   <p>How the auto-merging process should resolve conflicts between different profiles.</p>
    #   @return [Types::ConflictResolution]
    # @!attribute exporting_config
    #   <p>Configuration information about the S3 bucket where Identity Resolution Jobs writes result files. </p>
    #            <note>
    #               <p>You need to give Customer Profiles service principal write permission to your S3 bucket.
    #               Otherwise, you'll get an exception in the API response. For an example policy, see
    #                  <a href="https://docs.aws.amazon.com/connect/latest/adminguide/cross-service-confused-deputy-prevention.html#customer-profiles-cross-service">Amazon Connect Customer Profiles cross-service confused deputy prevention</a>. </p>
    #            </note>
    #   @return [Types::ExportingConfig]
    class RuleBasedMatchingRequest < Struct.new(
      nil,
      :enabled,
      :matching_rules,
      :max_allowed_rule_level_for_merging,
      :max_allowed_rule_level_for_matching,
      :attribute_types_selector,
      :conflict_resolution,
      :exporting_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response of the Rule-based matching request.</p>
    # @!attribute enabled
    #   <p>The flag that enables the rule-based matching process of duplicate profiles.</p>
    #   @return [Boolean]
    # @!attribute matching_rules
    #   <p>Configures how the rule-based matching process should match profiles. You can have up to
    #            15 <code>MatchingRule</code> in the <code>MatchingRules</code>.</p>
    #   @return [Array<Types::MatchingRule>]
    # @!attribute status
    #   <p>PENDING</p>
    #            <ul>
    #               <li>
    #                  <p>The first status after configuration a rule-based matching rule. If it is an
    #                  existing domain, the rule-based Identity Resolution waits one hour before creating the matching
    #                  rule. If it is a new domain, the system will skip the <code>PENDING</code>
    #                  stage.</p>
    #               </li>
    #            </ul>
    #            <p>IN_PROGRESS</p>
    #            <ul>
    #               <li>
    #                  <p>The system is creating the rule-based matching rule. Under this status, the system
    #                  is evaluating the existing data and you can no longer change the Rule-based matching
    #                  configuration.</p>
    #               </li>
    #            </ul>
    #            <p>ACTIVE</p>
    #            <ul>
    #               <li>
    #                  <p>The rule is ready to use. You can change the rule a day after the status is in
    #                     <code>ACTIVE</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute max_allowed_rule_level_for_merging
    #   <p>
    #               <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_MatchingRule.html">MatchingRule</a>
    #            </p>
    #   @return [Integer]
    # @!attribute max_allowed_rule_level_for_matching
    #   <p>Indicates the maximum allowed rule level.</p>
    #   @return [Integer]
    # @!attribute attribute_types_selector
    #   <p>Configures information about the <code>AttributeTypesSelector</code> where the
    #            rule-based identity resolution uses to match profiles.</p>
    #   @return [Types::AttributeTypesSelector]
    # @!attribute conflict_resolution
    #   <p>How the auto-merging process should resolve conflicts between different profiles.</p>
    #   @return [Types::ConflictResolution]
    # @!attribute exporting_config
    #   <p>Configuration information about the S3 bucket where Identity Resolution Jobs writes result files. </p>
    #            <note>
    #               <p>You need to give Customer Profiles service principal write permission to your S3 bucket.
    #               Otherwise, you'll get an exception in the API response. For an example policy, see
    #                  <a href="https://docs.aws.amazon.com/connect/latest/adminguide/cross-service-confused-deputy-prevention.html#customer-profiles-cross-service">Amazon Connect Customer Profiles cross-service confused deputy prevention</a>. </p>
    #            </note>
    #   @return [Types::ExportingConfig]
    class RuleBasedMatchingResponse < Struct.new(
      nil,
      :enabled,
      :matching_rules,
      :status,
      :max_allowed_rule_level_for_merging,
      :max_allowed_rule_level_for_matching,
      :attribute_types_selector,
      :conflict_resolution,
      :exporting_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration information about the S3 bucket where Identity Resolution Jobs write result files.</p>
    # @!attribute s3_bucket_name
    #   <p>The name of the S3 bucket where Identity Resolution Jobs write result files.</p>
    #   @return [String]
    # @!attribute s3_key_name
    #   <p>The S3 key name of the location where Identity Resolution Jobs write result files.</p>
    #   @return [String]
    class S3ExportingConfig < Struct.new(
      nil,
      :s3_bucket_name,
      :s3_key_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The S3 location where Identity Resolution Jobs write result files.</p>
    # @!attribute s3_bucket_name
    #   <p>The name of the S3 bucket name where Identity Resolution Jobs write result files.</p>
    #   @return [String]
    # @!attribute s3_key_name
    #   <p>The S3 key name of the location where Identity Resolution Jobs write result files.</p>
    #   @return [String]
    class S3ExportingLocation < Struct.new(
      nil,
      :s3_bucket_name,
      :s3_key_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The properties that are applied when Amazon S3 is being used as the flow source.</p>
    # @!attribute bucket_name
    #   <p>The Amazon S3 bucket name where the source files are stored.</p>
    #   @return [String]
    # @!attribute bucket_prefix
    #   <p>The object key for the Amazon S3 bucket in which the source files are stored.</p>
    #   @return [String]
    class S3SourceProperties < Struct.new(
      nil,
      :bucket_name,
      :bucket_prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The properties that are applied when Salesforce is being used as a source.</p>
    # @!attribute object
    #   <p>The object specified in the Salesforce flow source.</p>
    #   @return [String]
    # @!attribute enable_dynamic_field_update
    #   <p>The flag that enables dynamic fetching of new (recently added) fields in the Salesforce
    #            objects while running a flow.</p>
    #   @return [Boolean]
    # @!attribute include_deleted_records
    #   <p>Indicates whether Amazon AppFlow includes deleted files in the flow run.</p>
    #   @return [Boolean]
    class SalesforceSourceProperties < Struct.new(
      nil,
      :object,
      :enable_dynamic_field_update,
      :include_deleted_records,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enable_dynamic_field_update] = false unless options.key?(:enable_dynamic_field_update)
        options[:include_deleted_records] = false unless options.key?(:include_deleted_records)
        super
      end
    end

    # <p>Configuration for scheduled segment membership event notifications. </p>
    # @!attribute interval
    #   <p>The interval between scheduled executions. </p>
    #   @return [Integer]
    # @!attribute unit
    #   <p>The unit for the interval. The following are valid values: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>HOURLY</b>: The interval is measured in hours. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ScheduleConfiguration < Struct.new(
      nil,
      :interval,
      :unit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about scheduled execution timestamps. </p>
    # @!attribute next_executed_at
    #   <p>The timestamp of the next scheduled execution. </p>
    #   @return [Time]
    # @!attribute last_executed_at
    #   <p>The timestamp of the last successful scheduled execution. </p>
    #   @return [Time]
    class ScheduledExecutions < Struct.new(
      nil,
      :next_executed_at,
      :last_executed_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the configuration details of a scheduled-trigger flow that you define.
    #          Currently, these settings only apply to the scheduled-trigger type.</p>
    # @!attribute schedule_expression
    #   <p>The scheduling expression that determines the rate at which the schedule will run, for
    #            example rate (5 minutes).</p>
    #   @return [String]
    # @!attribute data_pull_mode
    #   <p>Specifies whether a scheduled flow has an incremental data transfer or a complete data
    #            transfer for each flow run.</p>
    #   @return [String]
    # @!attribute schedule_start_time
    #   <p>Specifies the scheduled start time for a scheduled-trigger flow.</p>
    #   @return [Time]
    # @!attribute schedule_end_time
    #   <p>Specifies the scheduled end time for a scheduled-trigger flow.</p>
    #   @return [Time]
    # @!attribute timezone
    #   <p>Specifies the time zone used when referring to the date and time of a
    #            scheduled-triggered flow, such as America/New_York.</p>
    #   @return [String]
    # @!attribute schedule_offset
    #   <p>Specifies the optional offset that is added to the time interval for a
    #            schedule-triggered flow.</p>
    #   @return [Integer]
    # @!attribute first_execution_from
    #   <p>Specifies the date range for the records to import from the connector in the first flow
    #            run.</p>
    #   @return [Time]
    class ScheduledTriggerProperties < Struct.new(
      nil,
      :schedule_expression,
      :data_pull_mode,
      :schedule_start_time,
      :schedule_end_time,
      :timezone,
      :schedule_offset,
      :first_execution_from,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:schedule_offset] = nil unless options.key?(:schedule_offset)
        super
      end
    end

    # @!attribute next_token
    #   <p>The pagination token from the previous SearchProfiles API call.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects returned per page.</p>
    #            <p>The default is 20 if this parameter is not included in the request.</p>
    #   @return [Integer]
    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute key_name
    #   <p>A searchable identifier of a customer profile. The predefined keys you can use to search include: _account, _profileId,
    #            _assetId, _caseId, _orderId, _fullName, _phone, _email, _ctrContactId, _marketoLeadId,
    #            _salesforceAccountId, _salesforceContactId, _salesforceAssetId, _zendeskUserId,
    #            _zendeskExternalId, _zendeskTicketId, _serviceNowSystemId, _serviceNowIncidentId,
    #            _segmentUserId, _shopifyCustomerId, _shopifyOrderId.</p>
    #   @return [String]
    # @!attribute values
    #   <p>A list of key values.</p>
    #   @return [Array<String>]
    # @!attribute additional_search_keys
    #   <p>A list of <code>AdditionalSearchKey</code> objects that are each searchable identifiers
    #            of a profile. Each <code>AdditionalSearchKey</code> object contains a <code>KeyName</code>
    #            and a list of <code>Values</code> associated with that specific key (i.e., a key-value(s)
    #            pair). These additional search keys will be used in conjunction with the
    #               <code>LogicalOperator</code> and the required <code>KeyName</code> and
    #               <code>Values</code> parameters to search for profiles that satisfy the search criteria.
    #         </p>
    #   @return [Array<Types::AdditionalSearchKey>]
    # @!attribute logical_operator
    #   <p>Relationship between all specified search keys that will be used to search for profiles.
    #            This includes the required <code>KeyName</code> and <code>Values</code> parameters as well
    #            as any key-value(s) pairs specified in the <code>AdditionalSearchKeys</code> list.</p>
    #            <p>This parameter influences which profiles will be returned in the response in the
    #            following manner:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AND</code> - The response only includes profiles that match all of the
    #                  search keys.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OR</code> - The response includes profiles that match at least one of the
    #                  search keys.</p>
    #               </li>
    #            </ul>
    #            <p>The <code>OR</code> relationship is the default behavior if this parameter is not
    #            included in the request.</p>
    #   @return [String]
    class SearchProfilesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :domain_name,
      :key_name,
      :values,
      :additional_search_keys,
      :logical_operator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute items
    #   <p>The list of Profiles matching the search criteria.</p>
    #   @return [Array<Types::Profile>]
    # @!attribute next_token
    #   <p>The pagination token from the previous SearchProfiles API call.</p>
    #   @return [String]
    class SearchProfilesResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute key_name
    #   <p>A searchable identifier of a customer profile. You can use a predefined key, such as
    #            <code>_profileId</code>, <code>_phone</code>, or <code>_email</code>, or a custom-defined key.</p>
    #   @return [String]
    # @!attribute key_values
    #   <p>A list of key values. Provide one value for each field of the search key.</p>
    #   @return [Array<String>]
    # @!attribute recommender
    #   <p>The recommender used to generate the recommendations.</p>
    #   @return [Types::Recommender]
    # @!attribute candidate_ids
    #   <p>A list of item IDs to rank for the user. Use this when you want to re-rank a specific set of items rather than getting recommendations from the full item catalog. Required for personalized-ranking use cases.</p>
    #   @return [Array<String>]
    # @!attribute context
    #   <p>The contextual metadata used to provide dynamic runtime information to tailor recommendations.</p>
    #   @return [Hash<String, String>]
    # @!attribute diversity
    #   <p>Runtime diversity configuration for this request. Enables diversity-aware recommendations and optionally supplies values for placeholder-based diversity caps configured on the recommender.</p>
    #   @return [Types::RecommendationDiversityConfig]
    # @!attribute metadata
    #   <p>Configuration for metadata to include in recommendation responses.</p>
    #   @return [Types::RecommendationMetadata]
    # @!attribute max_recommendations
    #   <p>The maximum number of recommendations to return. The default value is 5.</p>
    #   @return [Integer]
    class SearchRecommendationsRequest < Struct.new(
      nil,
      :domain_name,
      :key_name,
      :key_values,
      :recommender,
      :candidate_ids,
      :context,
      :diversity,
      :metadata,
      :max_recommendations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_id
    #   <p>The unique identifier of the profile for which to retrieve recommendations.</p>
    #   @return [String]
    # @!attribute recommendations
    #   <p>List of recommendations generated by the recommender.</p>
    #   @return [Array<Types::Recommendation>]
    class SearchRecommendationsResponse < Struct.new(
      nil,
      :profile_id,
      :recommendations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object holding the segment definition fields.</p>
    # @!attribute segment_definition_name
    #   <p>Name of the segment definition.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>Display name of the segment definition.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the segment definition.</p>
    #   @return [String]
    # @!attribute segment_definition_arn
    #   <p>The arn of the segment definition.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>When the segment definition was created.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The tags belonging to the segment definition.</p>
    #   @return [Hash<String, String>]
    # @!attribute segment_type
    #   <p>The segment type.</p>
    #            <p> Classic : Segments created using traditional SegmentGroup structure</p>
    #            <p> Enhanced : Segments created using SQL queries
    #         </p>
    #   @return [String]
    class SegmentDefinitionItem < Struct.new(
      nil,
      :segment_definition_name,
      :display_name,
      :description,
      :segment_definition_arn,
      :created_at,
      :tags,
      :segment_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains all groups of the segment definition.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute groups
    #   <p>Holds the list of groups within the segment definition.</p>
    #   @return [Array<Types::Group>]
    # @!attribute include
    #   <p>Defines whether to include or exclude the profiles that fit the segment criteria.</p>
    #   @return [String]
    class SegmentGroup < Struct.new(
      nil,
      :groups,
      :include,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:include] = 'ALL' unless options.key?(:include)
        super
      end
    end

    # <p>Contains all groups of the segment definition.</p>
    # @!attribute groups
    #   <p>Holds the list of groups within the segment definition.</p>
    #   @return [Array<Types::Group>]
    # @!attribute include
    #   <p>Define whether to include or exclude the profiles that fit the segment criteria.</p>
    #   @return [String]
    class SegmentGroupStructure < Struct.new(
      nil,
      :groups,
      :include,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines how segments should be sorted and ordered in the results.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute attributes
    #   <p>A list of attributes used to sort the segments and their ordering preferences.</p>
    #   @return [Array<Types::SortAttribute>]
    class SegmentSort < Struct.new(
      nil,
      :attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The properties that are applied when ServiceNow is being used as a source.</p>
    # @!attribute object
    #   <p>The object specified in the ServiceNow flow source.</p>
    #   @return [String]
    class ServiceNowSourceProperties < Struct.new(
      nil,
      :object,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the characteristics and rules for sorting by a specific attribute.</p>
    # @!attribute name
    #   <p>The name of the attribute to sort by.</p>
    #   @return [String]
    # @!attribute data_type
    #   <p>The data type of the sort attribute (e.g., string, number, date).</p>
    #   @return [String]
    # @!attribute order
    #   <p>The sort order for the attribute (ascending or descending).</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of attribute (e.g., profile, calculated).</p>
    #   @return [String]
    class SortAttribute < Struct.new(
      nil,
      :name,
      :data_type,
      :order,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:type] = 'PROFILE' unless options.key?(:type)
        super
      end
    end

    # <p>Specifies the information that is required to query a particular Amazon AppFlow connector.
    #          Customer Profiles supports Salesforce, Zendesk, Marketo, ServiceNow and Amazon S3.</p>
    # @!attribute marketo
    #   <p>The properties that are applied when Marketo is being used as a source.</p>
    #   @return [Types::MarketoSourceProperties]
    # @!attribute s3
    #   <p>The properties that are applied when Amazon S3 is being used as the flow source.</p>
    #   @return [Types::S3SourceProperties]
    # @!attribute salesforce
    #   <p>The properties that are applied when Salesforce is being used as a source.</p>
    #   @return [Types::SalesforceSourceProperties]
    # @!attribute service_now
    #   <p>The properties that are applied when ServiceNow is being used as a source.</p>
    #   @return [Types::ServiceNowSourceProperties]
    # @!attribute zendesk
    #   <p>The properties that are applied when using Zendesk as a flow source.</p>
    #   @return [Types::ZendeskSourceProperties]
    class SourceConnectorProperties < Struct.new(
      nil,
      :marketo,
      :s3,
      :salesforce,
      :service_now,
      :zendesk,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the configuration of the source connector used in the
    #          flow.</p>
    # @!attribute connector_profile_name
    #   <p>The name of the AppFlow connector profile. This name must be unique for each connector
    #            profile in the AWS account.</p>
    #   @return [String]
    # @!attribute connector_type
    #   <p>The type of connector, such as Salesforce, Marketo, and so on.</p>
    #   @return [String]
    # @!attribute incremental_pull_config
    #   <p>Defines the configuration for a scheduled incremental data pull. If a valid
    #            configuration is provided, the fields specified in the configuration are used when querying
    #            for the incremental data pull.</p>
    #   @return [Types::IncrementalPullConfig]
    # @!attribute source_connector_properties
    #   <p>Specifies the information that is required to query a particular source
    #            connector.</p>
    #   @return [Types::SourceConnectorProperties]
    class SourceFlowConfig < Struct.new(
      nil,
      :connector_profile_name,
      :connector_type,
      :incremental_pull_config,
      :source_connector_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The source segments to build off of.</p>
    # @!attribute segment_definition_name
    #   <p>The unique name of the segment definition.</p>
    #   @return [String]
    class SourceSegment < Struct.new(
      nil,
      :segment_definition_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute recommender_name
    #   <p>The name of the recommender to start.</p>
    #   @return [String]
    class StartRecommenderRequest < Struct.new(
      nil,
      :domain_name,
      :recommender_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StartRecommenderResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain containing the upload job to start. </p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The unique identifier of the upload job to start. </p>
    #   @return [String]
    class StartUploadJobRequest < Struct.new(
      nil,
      :domain_name,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StartUploadJobResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute recommender_name
    #   <p>The name of the recommender to stop.</p>
    #   @return [String]
    class StopRecommenderRequest < Struct.new(
      nil,
      :domain_name,
      :recommender_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StopRecommenderResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain containing the upload job to stop. </p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The unique identifier of the upload job to stop. </p>
    #   @return [String]
    class StopUploadJobRequest < Struct.new(
      nil,
      :domain_name,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StopUploadJobResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a single segment membership event. </p>
    # @!attribute profile_id
    #   <p>The unique identifier of a customer profile.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The timestamp of when the membership change was detected. </p>
    #   @return [Time]
    # @!attribute event_type
    #   <p>The type of event that triggered the membership change. The following are valid values:
    #         </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>LIVE</b>: Real-time event triggered by a profile or
    #                  calculated attribute change (Classic segments only). </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>SCHEDULE</b>: Event generated during a scheduled
    #                  execution. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute event
    #   <p>Whether the profile joined or left the segment. The following are valid values: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>JOINED</b>: The profile joined the segment. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>LEFT</b>: The profile left the segment. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class SubscriptionEventItem < Struct.new(
      nil,
      :profile_id,
      :updated_at,
      :event_type,
      :event,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource that you're adding tags to.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A class for modeling different type of tasks. Task implementation varies based on the
    #          TaskType.</p>
    # @!attribute connector_operator
    #   <p>The operation to be performed on the provided source fields.</p>
    #   @return [Types::ConnectorOperator]
    # @!attribute destination_field
    #   <p>A field in a destination connector, or a field value against which Amazon AppFlow validates a
    #            source field.</p>
    #   @return [String]
    # @!attribute source_fields
    #   <p>The source fields to which a particular task is applied.</p>
    #   @return [Array<String>]
    # @!attribute task_properties
    #   <p>A map used to store task-related information. The service looks for particular
    #            information based on the TaskType.</p>
    #   @return [Hash<String, String>]
    # @!attribute task_type
    #   <p>Specifies the particular task implementation that Amazon AppFlow performs.</p>
    #   @return [String]
    class Task < Struct.new(
      nil,
      :connector_operator,
      :destination_field,
      :source_fields,
      :task_properties,
      :task_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The threshold for the calculated attribute.</p>
    # @!attribute value
    #   <p>The value of the threshold.</p>
    #   @return [String]
    # @!attribute operator
    #   <p>The operator of the threshold.</p>
    #   @return [String]
    class Threshold < Struct.new(
      nil,
      :value,
      :operator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You exceeded the maximum number of requests.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains metrics and performance indicators from the training of a recommender model.</p>
    # @!attribute time
    #   <p>The timestamp when these training metrics were recorded.</p>
    #   @return [Time]
    # @!attribute metrics
    #   <p>A collection of performance metrics and statistics from the training process.</p>
    #   @return [Hash<String, Float>]
    # @!attribute recommender_version_name
    #   <p>The name of the recommender version that produced these training metrics.</p>
    #   @return [String]
    class TrainingMetrics < Struct.new(
      nil,
      :time,
      :metrics,
      :recommender_version_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The trigger settings that determine how and when Amazon AppFlow runs the specified
    #          flow.</p>
    # @!attribute trigger_type
    #   <p>Specifies the type of flow trigger. It can be OnDemand, Scheduled, or Event.</p>
    #   @return [String]
    # @!attribute trigger_properties
    #   <p>Specifies the configuration details of a schedule-triggered flow that you define.
    #            Currently, these settings only apply to the Scheduled trigger type.</p>
    #   @return [Types::TriggerProperties]
    class TriggerConfig < Struct.new(
      nil,
      :trigger_type,
      :trigger_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the configuration details that control the trigger for a flow. Currently,
    #          these settings only apply to the Scheduled trigger type.</p>
    # @!attribute scheduled
    #   <p>Specifies the configuration details of a schedule-triggered flow that you define.</p>
    #   @return [Types::ScheduledTriggerProperties]
    class TriggerProperties < Struct.new(
      nil,
      :scheduled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource from which you are removing tags.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The list of tag keys to remove from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Updates associated with the address properties of a customer profile.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute address1
    #   <p>The first line of a customer address.</p>
    #   @return [String]
    # @!attribute address2
    #   <p>The second line of a customer address.</p>
    #   @return [String]
    # @!attribute address3
    #   <p>The third line of a customer address.</p>
    #   @return [String]
    # @!attribute address4
    #   <p>The fourth line of a customer address.</p>
    #   @return [String]
    # @!attribute city
    #   <p>The city in which a customer lives.</p>
    #   @return [String]
    # @!attribute county
    #   <p>The county in which a customer lives.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state in which a customer lives.</p>
    #   @return [String]
    # @!attribute province
    #   <p>The province in which a customer lives.</p>
    #   @return [String]
    # @!attribute country
    #   <p>The country in which a customer lives.</p>
    #   @return [String]
    # @!attribute postal_code
    #   <p>The postal code of a customer address.</p>
    #   @return [String]
    class UpdateAddress < Struct.new(
      nil,
      :address1,
      :address2,
      :address3,
      :address4,
      :city,
      :county,
      :state,
      :province,
      :country,
      :postal_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute calculated_attribute_name
    #   <p>The unique name of the calculated attribute.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the calculated attribute.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the calculated attribute.</p>
    #   @return [String]
    # @!attribute conditions
    #   <p>The conditions including range, object count, and threshold for the calculated
    #            attribute.</p>
    #   @return [Types::Conditions]
    class UpdateCalculatedAttributeDefinitionRequest < Struct.new(
      nil,
      :domain_name,
      :calculated_attribute_name,
      :display_name,
      :description,
      :conditions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute calculated_attribute_name
    #   <p>The unique name of the calculated attribute.</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the calculated attribute.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the calculated attribute.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the calculated attribute definition was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp of when the calculated attribute definition was most recently
    #            edited.</p>
    #   @return [Time]
    # @!attribute statistic
    #   <p>The aggregation operation to perform for the calculated attribute.</p>
    #   @return [String]
    # @!attribute conditions
    #   <p>The conditions including range, object count, and threshold for the calculated
    #            attribute.</p>
    #   @return [Types::Conditions]
    # @!attribute attribute_details
    #   <p>The mathematical expression and a list of attribute items specified in that
    #            expression.</p>
    #   @return [Types::AttributeDetails]
    # @!attribute use_historical_data
    #   <p>Whether historical data ingested before the Calculated Attribute was created should be
    #            included in calculations.</p>
    #   @return [Boolean]
    # @!attribute status
    #   <p>Status of the Calculated Attribute creation (whether all historical data has been
    #            indexed.)</p>
    #   @return [String]
    # @!attribute readiness
    #   <p>Information indicating if the Calculated Attribute is ready for use by confirming all
    #            historical data has been processed and reflected.</p>
    #   @return [Types::Readiness]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class UpdateCalculatedAttributeDefinitionResponse < Struct.new(
      nil,
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
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute layout_definition_name
    #   <p>The unique name of the layout.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the layout</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the layout</p>
    #   @return [String]
    # @!attribute is_default
    #   <p>If set to true for a layout, this layout will be used by default to view data. If set to
    #            false, then the layout will not be used by default, but it can be used to view data by
    #            explicitly selecting it in the console.</p>
    #   @return [Boolean]
    # @!attribute layout_type
    #   <p>The type of layout that can be used to view data under a Customer Profiles domain.</p>
    #   @return [String]
    # @!attribute layout
    #   <p>A customizable layout that can be used to view data under a Customer Profiles domain.</p>
    #   @return [String]
    class UpdateDomainLayoutRequest < Struct.new(
      nil,
      :domain_name,
      :layout_definition_name,
      :description,
      :display_name,
      :is_default,
      :layout_type,
      :layout,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute layout_definition_name
    #   <p>The unique name of the layout.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the layout</p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The display name of the layout</p>
    #   @return [String]
    # @!attribute is_default
    #   <p>If set to true for a layout, this layout will be used by default to view data. If set to
    #            false, then the layout will not be used by default, but it can be used to view data by
    #            explicitly selecting it in the console.</p>
    #   @return [Boolean]
    # @!attribute layout_type
    #   <p>The type of layout that can be used to view data under a Customer Profiles domain.</p>
    #   @return [String]
    # @!attribute layout
    #   <p>A customizable layout that can be used to view data under a Customer Profiles domain.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version used to create layout.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the layout was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp of when the layout was most recently updated.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class UpdateDomainLayoutResponse < Struct.new(
      nil,
      :layout_definition_name,
      :description,
      :display_name,
      :is_default,
      :layout_type,
      :layout,
      :version,
      :created_at,
      :last_updated_at,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_default] = false unless options.key?(:is_default)
        super
      end
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute default_expiration_days
    #   <p>The default number of days until the data within the domain expires.</p>
    #   @return [Integer]
    # @!attribute default_encryption_key
    #   <p>The default encryption key, which is an AWS managed key, is used when no specific type
    #            of encryption key is specified. It is used to encrypt all data before it is placed in
    #            permanent or semi-permanent storage. If specified as an empty string, it will clear any
    #            existing value.</p>
    #   @return [String]
    # @!attribute dead_letter_queue_url
    #   <p>The URL of the SQS dead letter queue, which is used for reporting errors associated with
    #            ingesting data from third party applications. If specified as an empty string, it will
    #            clear any existing value. You must set up a policy on the DeadLetterQueue for the
    #            SendMessage operation to enable Amazon Connect Customer Profiles to send messages to the
    #            DeadLetterQueue.</p>
    #   @return [String]
    # @!attribute matching
    #   <p>The process of matching duplicate profiles. If <code>Matching</code> = <code>true</code>, Amazon Connect Customer Profiles starts a weekly
    #   batch process called Identity Resolution Job. If you do not specify a date and time for Identity Resolution Job to run, by default it runs every
    #   Saturday at 12AM UTC to detect duplicate profiles in your domains. </p>
    #            <p>After the Identity Resolution Job completes, use the
    #   <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html">GetMatches</a>
    #   API to return and review the results. Or, if you have configured <code>ExportingConfig</code> in the <code>MatchingRequest</code>, you can download the results from
    #   S3.</p>
    #   @return [Types::MatchingRequest]
    # @!attribute rule_based_matching
    #   <p>The process of matching duplicate profiles using the rule-Based matching. If
    #               <code>RuleBasedMatching</code> = true, Connect Customer Customer Profiles will start
    #            to match and merge your profiles according to your configuration in the
    #               <code>RuleBasedMatchingRequest</code>. You can use the <code>ListRuleBasedMatches</code>
    #            and <code>GetSimilarProfiles</code> API to return and review the results. Also, if you have
    #            configured <code>ExportingConfig</code> in the <code>RuleBasedMatchingRequest</code>, you
    #            can download the results from S3.</p>
    #   @return [Types::RuleBasedMatchingRequest]
    # @!attribute data_store
    #   <p>Set to true to enabled data store for this domain.</p>
    #   @return [Types::DataStoreRequest]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class UpdateDomainRequest < Struct.new(
      nil,
      :domain_name,
      :default_expiration_days,
      :default_encryption_key,
      :dead_letter_queue_url,
      :matching,
      :rule_based_matching,
      :data_store,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute default_expiration_days
    #   <p>The default number of days until the data within the domain expires.</p>
    #   @return [Integer]
    # @!attribute default_encryption_key
    #   <p>The default encryption key, which is an AWS managed key, is used when no specific type
    #            of encryption key is specified. It is used to encrypt all data before it is placed in
    #            permanent or semi-permanent storage.</p>
    #   @return [String]
    # @!attribute dead_letter_queue_url
    #   <p>The URL of the SQS dead letter queue, which is used for reporting errors associated with
    #            ingesting data from third party applications.</p>
    #   @return [String]
    # @!attribute matching
    #   <p>The process of matching duplicate profiles. If <code>Matching</code> = <code>true</code>, Amazon Connect Customer Profiles starts a weekly
    #   batch process called Identity Resolution Job. If you do not specify a date and time for Identity Resolution Job to run, by default it runs every
    #   Saturday at 12AM UTC to detect duplicate profiles in your domains. </p>
    #            <p>After the Identity Resolution Job completes, use the
    #   <a href="https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html">GetMatches</a>
    #   API to return and review the results. Or, if you have configured <code>ExportingConfig</code> in the <code>MatchingRequest</code>, you can download the results from
    #   S3.</p>
    #   @return [Types::MatchingResponse]
    # @!attribute rule_based_matching
    #   <p>The process of matching duplicate profiles using the rule-Based matching. If
    #               <code>RuleBasedMatching</code> = true, Connect Customer Customer Profiles will start
    #            to match and merge your profiles according to your configuration in the
    #               <code>RuleBasedMatchingRequest</code>. You can use the <code>ListRuleBasedMatches</code>
    #            and <code>GetSimilarProfiles</code> API to return and review the results. Also, if you have
    #            configured <code>ExportingConfig</code> in the <code>RuleBasedMatchingRequest</code>, you
    #            can download the results from S3.</p>
    #   @return [Types::RuleBasedMatchingResponse]
    # @!attribute data_store
    #   <p>The data store.</p>
    #   @return [Types::DataStoreResponse]
    # @!attribute created_at
    #   <p>The timestamp of when the domain was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp of when the domain was most recently edited.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #   @return [Hash<String, String>]
    class UpdateDomainResponse < Struct.new(
      nil,
      :domain_name,
      :default_expiration_days,
      :default_encryption_key,
      :dead_letter_queue_url,
      :matching,
      :rule_based_matching,
      :data_store,
      :created_at,
      :last_updated_at,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute event_trigger_name
    #   <p>The unique name of the event trigger.</p>
    #   @return [String]
    # @!attribute object_type_name
    #   <p>The unique name of the object type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the event trigger.</p>
    #   @return [String]
    # @!attribute event_trigger_conditions
    #   <p>A list of conditions that determine when an event should trigger the destination.</p>
    #   @return [Array<Types::EventTriggerCondition>]
    # @!attribute segment_filter
    #   <p>The destination is triggered only for profiles that meet the criteria of a segment
    #            definition.</p>
    #   @return [String]
    # @!attribute event_trigger_limits
    #   <p>Defines limits controlling whether an event triggers the destination, based on ingestion
    #            latency and the number of invocations per profile over specific time periods.</p>
    #   @return [Types::EventTriggerLimits]
    class UpdateEventTriggerRequest < Struct.new(
      nil,
      :domain_name,
      :event_trigger_name,
      :object_type_name,
      :description,
      :event_trigger_conditions,
      :segment_filter,
      :event_trigger_limits,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute event_trigger_name
    #   <p>The unique name of the event trigger.</p>
    #   @return [String]
    # @!attribute object_type_name
    #   <p>The unique name of the object type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the event trigger.</p>
    #   @return [String]
    # @!attribute event_trigger_conditions
    #   <p>A list of conditions that determine when an event should trigger the destination.</p>
    #   @return [Array<Types::EventTriggerCondition>]
    # @!attribute segment_filter
    #   <p>The destination is triggered only for profiles that meet the criteria of a segment
    #            definition.</p>
    #   @return [String]
    # @!attribute event_trigger_limits
    #   <p>Defines limits controlling whether an event triggers the destination, based on ingestion
    #            latency and the number of invocations per profile over specific time periods.</p>
    #   @return [Types::EventTriggerLimits]
    # @!attribute created_at
    #   <p>The timestamp of when the event trigger was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The timestamp of when the event trigger was most recently updated.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>An array of key-value pairs to apply to this resource.</p>
    #   @return [Hash<String, String>]
    class UpdateEventTriggerResponse < Struct.new(
      nil,
      :event_trigger_name,
      :object_type_name,
      :description,
      :event_trigger_conditions,
      :segment_filter,
      :event_trigger_limits,
      :created_at,
      :last_updated_at,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute profile_id
    #   <p>The unique identifier of a customer profile.</p>
    #   @return [String]
    # @!attribute additional_information
    #   <p>Any additional information relevant to the customer’s profile.</p>
    #   @return [String]
    # @!attribute account_number
    #   <p>An account number that you have assigned to the customer.</p>
    #   @return [String]
    # @!attribute party_type
    #   <p>The type of profile used to describe the customer.</p>
    #   @return [String]
    # @!attribute business_name
    #   <p>The name of the customer’s business.</p>
    #   @return [String]
    # @!attribute first_name
    #   <p>The customer’s first name.</p>
    #   @return [String]
    # @!attribute middle_name
    #   <p>The customer’s middle name.</p>
    #   @return [String]
    # @!attribute last_name
    #   <p>The customer’s last name.</p>
    #   @return [String]
    # @!attribute birth_date
    #   <p>The customer’s birth date. </p>
    #   @return [String]
    # @!attribute gender
    #   <p>The gender with which the customer identifies. </p>
    #   @return [String]
    # @!attribute phone_number
    #   <p>The customer’s phone number, which has not been specified as a mobile, home, or business
    #            number. </p>
    #   @return [String]
    # @!attribute mobile_phone_number
    #   <p>The customer’s mobile phone number.</p>
    #   @return [String]
    # @!attribute home_phone_number
    #   <p>The customer’s home phone number.</p>
    #   @return [String]
    # @!attribute business_phone_number
    #   <p>The customer’s business phone number.</p>
    #   @return [String]
    # @!attribute email_address
    #   <p>The customer’s email address, which has not been specified as a personal or business
    #            address. </p>
    #   @return [String]
    # @!attribute personal_email_address
    #   <p>The customer’s personal email address.</p>
    #   @return [String]
    # @!attribute business_email_address
    #   <p>The customer’s business email address.</p>
    #   @return [String]
    # @!attribute address
    #   <p>A generic address associated with the customer that is not mailing, shipping, or
    #            billing.</p>
    #   @return [Types::UpdateAddress]
    # @!attribute shipping_address
    #   <p>The customer’s shipping address.</p>
    #   @return [Types::UpdateAddress]
    # @!attribute mailing_address
    #   <p>The customer’s mailing address.</p>
    #   @return [Types::UpdateAddress]
    # @!attribute billing_address
    #   <p>The customer’s billing address.</p>
    #   @return [Types::UpdateAddress]
    # @!attribute attributes
    #   <p>A key value pair of attributes of a customer profile.</p>
    #   @return [Hash<String, String>]
    # @!attribute party_type_string
    #   <p>An alternative to <code>PartyType</code> which accepts any string as input.</p>
    #   @return [String]
    # @!attribute gender_string
    #   <p>An alternative to <code>Gender</code> which accepts any string as input.</p>
    #   @return [String]
    # @!attribute profile_type
    #   <p>Determines the type of the profile.</p>
    #   @return [String]
    # @!attribute engagement_preferences
    #   <p>Object that defines users preferred methods of engagement.</p>
    #   @return [Types::EngagementPreferences]
    class UpdateProfileRequest < Struct.new(
      nil,
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
      :engagement_preferences,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute profile_id
    #   <p>The unique identifier of a customer profile.</p>
    #   @return [String]
    class UpdateProfileResponse < Struct.new(
      nil,
      :profile_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain_name
    #   <p>The unique name of the domain.</p>
    #   @return [String]
    # @!attribute recommender_name
    #   <p>The name of the recommender to update.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The new description to assign to the recommender.</p>
    #   @return [String]
    # @!attribute recommender_config
    #   <p>The new configuration settings to apply to the recommender, including updated parameters and settings that define its behavior.</p>
    #   @return [Types::RecommenderConfig]
    # @!attribute recommender_version_name
    #   <p>The name of a specific recommender version to activate as part of this update (for example, to roll back to a previously trained version).</p>
    #   @return [String]
    class UpdateRecommenderRequest < Struct.new(
      nil,
      :domain_name,
      :recommender_name,
      :description,
      :recommender_config,
      :recommender_version_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute recommender_name
    #   <p>The name of the recommender that was updated.</p>
    #   @return [String]
    class UpdateRecommenderResponse < Struct.new(
      nil,
      :recommender_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The summary information for an individual upload job. </p>
    # @!attribute job_id
    #   <p>The unique identifier of the upload job. </p>
    #   @return [String]
    # @!attribute display_name
    #   <p>The name of the upload job. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the upload job. </p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the current status of the upload job. </p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the upload job was created. </p>
    #   @return [Time]
    # @!attribute completed_at
    #   <p>The timestamp when the upload job was completed. </p>
    #   @return [Time]
    # @!attribute data_expiry
    #   <p>The expiry duration for the profiles ingested with the upload job. </p>
    #   @return [Integer]
    class UploadJobItem < Struct.new(
      nil,
      :job_id,
      :display_name,
      :status,
      :status_reason,
      :created_at,
      :completed_at,
      :data_expiry,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A structure letting customers specify a relative time window over which over which data
    #          is included in the Calculated Attribute. Use positive numbers to indicate that the endpoint
    #          is in the past, and negative numbers to indicate it is in the future. ValueRange overrides
    #          Value.</p>
    # @!attribute start
    #   <p>The start time of when to include objects. Use positive numbers to indicate that the
    #            starting point is in the past, and negative numbers to indicate it is in the future.</p>
    #   @return [Integer]
    # @!attribute end
    #   <p>The end time of when to include objects. Use positive numbers to indicate that the
    #            starting point is in the past, and negative numbers to indicate it is in the future.</p>
    #   @return [Integer]
    class ValueRange < Struct.new(
      nil,
      :start,
      :end,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Structure to hold workflow attributes.</p>
    # @!attribute appflow_integration
    #   <p>Workflow attributes specific to <code>APPFLOW_INTEGRATION</code> workflow.</p>
    #   @return [Types::AppflowIntegrationWorkflowAttributes]
    class WorkflowAttributes < Struct.new(
      nil,
      :appflow_integration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Generic object containing workflow execution metrics.</p>
    # @!attribute appflow_integration
    #   <p>Workflow execution metrics for <code>APPFLOW_INTEGRATION</code> workflow.</p>
    #   @return [Types::AppflowIntegrationWorkflowMetrics]
    class WorkflowMetrics < Struct.new(
      nil,
      :appflow_integration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>List containing steps in workflow.</p>
    # @!attribute appflow_integration
    #   <p>Workflow step information specific to <code>APPFLOW_INTEGRATION</code> workflow.</p>
    #   @return [Types::AppflowIntegrationWorkflowStep]
    class WorkflowStepItem < Struct.new(
      nil,
      :appflow_integration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The properties that are applied when using Zendesk as a flow source.</p>
    # @!attribute object
    #   <p>The object specified in the Zendesk flow source.</p>
    #   @return [String]
    class ZendeskSourceProperties < Struct.new(
      nil,
      :object,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
