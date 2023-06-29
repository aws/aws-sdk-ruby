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
      SENSITIVE = []
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
    #   \\"\\\{ObjectTypeName.AttributeName\\}\\".
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
    # @!attribute [rw] statistic
    #   The aggregation operation to perform for the calculated attribute.
    #   @return [String]
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
      :statistic,
      :tags)
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
      :statistic,
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
    #   A unique account number that you have given to the customer.
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
      :gender_string)
      SENSITIVE = []
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
      :attributes)
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
      :conditions,
      :attribute_details,
      :tags)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetCalculatedAttributeForProfileResponse AWS API Documentation
    #
    class GetCalculatedAttributeForProfileResponse < Struct.new(
      :calculated_attribute_name,
      :display_name,
      :is_data_partial,
      :value)
      SENSITIVE = []
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
      :is_unstructured)
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
      :fields,
      :keys,
      :created_at,
      :last_updated_at,
      :tags)
      SENSITIVE = []
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
      :tags)
      SENSITIVE = []
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
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/ListCalculatedAttributeForProfileItem AWS API Documentation
    #
    class ListCalculatedAttributeForProfileItem < Struct.new(
      :calculated_attribute_name,
      :display_name,
      :is_data_partial,
      :value)
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
      :is_unstructured)
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
    #   The timestamp of when the domain was most recently edited.
    #   @return [Time]
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
      SENSITIVE = []
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
      SENSITIVE = []
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

    # The standard profile of a customer.
    #
    # @!attribute [rw] profile_id
    #   The unique identifier of a customer profile.
    #   @return [String]
    #
    # @!attribute [rw] account_number
    #   A unique account number that you have given to the customer.
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
      :gender_string)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/PutIntegrationRequest AWS API Documentation
    #
    class PutIntegrationRequest < Struct.new(
      :domain_name,
      :uri,
      :object_type_name,
      :tags,
      :flow_definition,
      :object_type_names)
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
      :is_unstructured)
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
      SENSITIVE = []
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
      :fields,
      :keys,
      :tags)
      SENSITIVE = []
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
      :fields,
      :keys,
      :created_at,
      :last_updated_at,
      :tags)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/Range AWS API Documentation
    #
    class Range < Struct.new(
      :value,
      :unit)
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
    # @!attribute [rw] profile_id
    #   The unique identifier of a customer profile.
    #   @return [String]
    #
    # @!attribute [rw] additional_information
    #   Any additional information relevant to the customer’s profile.
    #   @return [String]
    #
    # @!attribute [rw] account_number
    #   A unique account number that you have given to the customer.
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
      :gender_string)
      SENSITIVE = []
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
