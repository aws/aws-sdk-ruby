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

    # @note When making an API call, you may pass AddProfileKeyRequest
    #   data as a hash:
    #
    #       {
    #         profile_id: "uuid", # required
    #         key_name: "name", # required
    #         values: ["string1To255"], # required
    #         domain_name: "name", # required
    #       }
    #
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

    # A generic address associated with the customer that is not mailing,
    # shipping, or billing.
    #
    # @note When making an API call, you may pass Address
    #   data as a hash:
    #
    #       {
    #         address_1: "string1To255",
    #         address_2: "string1To255",
    #         address_3: "string1To255",
    #         address_4: "string1To255",
    #         city: "string1To255",
    #         county: "string1To255",
    #         state: "string1To255",
    #         province: "string1To255",
    #         country: "string1To255",
    #         postal_code: "string1To255",
    #       }
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
    # @note When making an API call, you may pass AppflowIntegration
    #   data as a hash:
    #
    #       {
    #         flow_definition: { # required
    #           description: "FlowDescription",
    #           flow_name: "FlowName", # required
    #           kms_arn: "KmsArn", # required
    #           source_flow_config: { # required
    #             connector_profile_name: "ConnectorProfileName",
    #             connector_type: "Salesforce", # required, accepts Salesforce, Marketo, Zendesk, Servicenow, S3
    #             incremental_pull_config: {
    #               datetime_type_field_name: "DatetimeTypeFieldName",
    #             },
    #             source_connector_properties: { # required
    #               marketo: {
    #                 object: "Object", # required
    #               },
    #               s3: {
    #                 bucket_name: "BucketName", # required
    #                 bucket_prefix: "BucketPrefix",
    #               },
    #               salesforce: {
    #                 object: "Object", # required
    #                 enable_dynamic_field_update: false,
    #                 include_deleted_records: false,
    #               },
    #               service_now: {
    #                 object: "Object", # required
    #               },
    #               zendesk: {
    #                 object: "Object", # required
    #               },
    #             },
    #           },
    #           tasks: [ # required
    #             {
    #               connector_operator: {
    #                 marketo: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #                 s3: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #                 salesforce: "PROJECTION", # accepts PROJECTION, LESS_THAN, CONTAINS, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #                 service_now: "PROJECTION", # accepts PROJECTION, CONTAINS, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #                 zendesk: "PROJECTION", # accepts PROJECTION, GREATER_THAN, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #               },
    #               destination_field: "DestinationField",
    #               source_fields: ["stringTo2048"], # required
    #               task_properties: {
    #                 "VALUE" => "Property",
    #               },
    #               task_type: "Arithmetic", # required, accepts Arithmetic, Filter, Map, Mask, Merge, Truncate, Validate
    #             },
    #           ],
    #           trigger_config: { # required
    #             trigger_type: "Scheduled", # required, accepts Scheduled, Event, OnDemand
    #             trigger_properties: {
    #               scheduled: {
    #                 schedule_expression: "ScheduleExpression", # required
    #                 data_pull_mode: "Incremental", # accepts Incremental, Complete
    #                 schedule_start_time: Time.now,
    #                 schedule_end_time: Time.now,
    #                 timezone: "Timezone",
    #                 schedule_offset: 1,
    #                 first_execution_from: Time.now,
    #               },
    #             },
    #           },
    #         },
    #         batches: [
    #           {
    #             start_time: Time.now, # required
    #             end_time: Time.now, # required
    #           },
    #         ],
    #       }
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

    # Configuration settings for how to perform the auto-merging of
    # profiles.
    #
    # @note When making an API call, you may pass AutoMerging
    #   data as a hash:
    #
    #       {
    #         enabled: false, # required
    #         consolidation: {
    #           matching_attributes_list: [ # required
    #             ["string1To255"],
    #           ],
    #         },
    #         conflict_resolution: {
    #           conflict_resolving_model: "RECENCY", # required, accepts RECENCY, SOURCE
    #           source_name: "string1To255",
    #         },
    #       }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/AutoMerging AWS API Documentation
    #
    class AutoMerging < Struct.new(
      :enabled,
      :consolidation,
      :conflict_resolution)
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
    # @note When making an API call, you may pass Batch
    #   data as a hash:
    #
    #       {
    #         start_time: Time.now, # required
    #         end_time: Time.now, # required
    #       }
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

    # How the auto-merging process should resolve conflicts between
    # different profiles.
    #
    # @note When making an API call, you may pass ConflictResolution
    #   data as a hash:
    #
    #       {
    #         conflict_resolving_model: "RECENCY", # required, accepts RECENCY, SOURCE
    #         source_name: "string1To255",
    #       }
    #
    # @!attribute [rw] conflict_resolving_model
    #   How the auto-merging process should resolve conflicts between
    #   different profiles.
    #
    #   * `RECENCY`\: Uses the data that was most recently updated.
    #
    #   * `SOURCE`\: Uses the data from a specific source. For example, if a
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
    # @note When making an API call, you may pass ConnectorOperator
    #   data as a hash:
    #
    #       {
    #         marketo: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #         s3: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #         salesforce: "PROJECTION", # accepts PROJECTION, LESS_THAN, CONTAINS, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #         service_now: "PROJECTION", # accepts PROJECTION, CONTAINS, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #         zendesk: "PROJECTION", # accepts PROJECTION, GREATER_THAN, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #       }
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
    # @note When making an API call, you may pass Consolidation
    #   data as a hash:
    #
    #       {
    #         matching_attributes_list: [ # required
    #           ["string1To255"],
    #         ],
    #       }
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

    # @note When making an API call, you may pass CreateDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "name", # required
    #         default_expiration_days: 1, # required
    #         default_encryption_key: "encryptionKey",
    #         dead_letter_queue_url: "sqsQueueUrl",
    #         matching: {
    #           enabled: false, # required
    #           job_schedule: {
    #             day_of_the_week: "SUNDAY", # required, accepts SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY
    #             time: "JobScheduleTime", # required
    #           },
    #           auto_merging: {
    #             enabled: false, # required
    #             consolidation: {
    #               matching_attributes_list: [ # required
    #                 ["string1To255"],
    #               ],
    #             },
    #             conflict_resolution: {
    #               conflict_resolving_model: "RECENCY", # required, accepts RECENCY, SOURCE
    #               source_name: "string1To255",
    #             },
    #           },
    #           exporting_config: {
    #             s3_exporting: {
    #               s3_bucket_name: "s3BucketName", # required
    #               s3_key_name: "s3KeyNameCustomerOutputConfig",
    #             },
    #           },
    #         },
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
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

    # @note When making an API call, you may pass CreateIntegrationWorkflowRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "name", # required
    #         workflow_type: "APPFLOW_INTEGRATION", # required, accepts APPFLOW_INTEGRATION
    #         integration_config: { # required
    #           appflow_integration: {
    #             flow_definition: { # required
    #               description: "FlowDescription",
    #               flow_name: "FlowName", # required
    #               kms_arn: "KmsArn", # required
    #               source_flow_config: { # required
    #                 connector_profile_name: "ConnectorProfileName",
    #                 connector_type: "Salesforce", # required, accepts Salesforce, Marketo, Zendesk, Servicenow, S3
    #                 incremental_pull_config: {
    #                   datetime_type_field_name: "DatetimeTypeFieldName",
    #                 },
    #                 source_connector_properties: { # required
    #                   marketo: {
    #                     object: "Object", # required
    #                   },
    #                   s3: {
    #                     bucket_name: "BucketName", # required
    #                     bucket_prefix: "BucketPrefix",
    #                   },
    #                   salesforce: {
    #                     object: "Object", # required
    #                     enable_dynamic_field_update: false,
    #                     include_deleted_records: false,
    #                   },
    #                   service_now: {
    #                     object: "Object", # required
    #                   },
    #                   zendesk: {
    #                     object: "Object", # required
    #                   },
    #                 },
    #               },
    #               tasks: [ # required
    #                 {
    #                   connector_operator: {
    #                     marketo: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #                     s3: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #                     salesforce: "PROJECTION", # accepts PROJECTION, LESS_THAN, CONTAINS, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #                     service_now: "PROJECTION", # accepts PROJECTION, CONTAINS, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #                     zendesk: "PROJECTION", # accepts PROJECTION, GREATER_THAN, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #                   },
    #                   destination_field: "DestinationField",
    #                   source_fields: ["stringTo2048"], # required
    #                   task_properties: {
    #                     "VALUE" => "Property",
    #                   },
    #                   task_type: "Arithmetic", # required, accepts Arithmetic, Filter, Map, Mask, Merge, Truncate, Validate
    #                 },
    #               ],
    #               trigger_config: { # required
    #                 trigger_type: "Scheduled", # required, accepts Scheduled, Event, OnDemand
    #                 trigger_properties: {
    #                   scheduled: {
    #                     schedule_expression: "ScheduleExpression", # required
    #                     data_pull_mode: "Incremental", # accepts Incremental, Complete
    #                     schedule_start_time: Time.now,
    #                     schedule_end_time: Time.now,
    #                     timezone: "Timezone",
    #                     schedule_offset: 1,
    #                     first_execution_from: Time.now,
    #                   },
    #                 },
    #               },
    #             },
    #             batches: [
    #               {
    #                 start_time: Time.now, # required
    #                 end_time: Time.now, # required
    #               },
    #             ],
    #           },
    #         },
    #         object_type_name: "typeName", # required
    #         role_arn: "RoleArn", # required
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
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

    # @note When making an API call, you may pass CreateProfileRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "name", # required
    #         account_number: "string1To255",
    #         additional_information: "string1To1000",
    #         party_type: "INDIVIDUAL", # accepts INDIVIDUAL, BUSINESS, OTHER
    #         business_name: "string1To255",
    #         first_name: "string1To255",
    #         middle_name: "string1To255",
    #         last_name: "string1To255",
    #         birth_date: "string1To255",
    #         gender: "MALE", # accepts MALE, FEMALE, UNSPECIFIED
    #         phone_number: "string1To255",
    #         mobile_phone_number: "string1To255",
    #         home_phone_number: "string1To255",
    #         business_phone_number: "string1To255",
    #         email_address: "string1To255",
    #         personal_email_address: "string1To255",
    #         business_email_address: "string1To255",
    #         address: {
    #           address_1: "string1To255",
    #           address_2: "string1To255",
    #           address_3: "string1To255",
    #           address_4: "string1To255",
    #           city: "string1To255",
    #           county: "string1To255",
    #           state: "string1To255",
    #           province: "string1To255",
    #           country: "string1To255",
    #           postal_code: "string1To255",
    #         },
    #         shipping_address: {
    #           address_1: "string1To255",
    #           address_2: "string1To255",
    #           address_3: "string1To255",
    #           address_4: "string1To255",
    #           city: "string1To255",
    #           county: "string1To255",
    #           state: "string1To255",
    #           province: "string1To255",
    #           country: "string1To255",
    #           postal_code: "string1To255",
    #         },
    #         mailing_address: {
    #           address_1: "string1To255",
    #           address_2: "string1To255",
    #           address_3: "string1To255",
    #           address_4: "string1To255",
    #           city: "string1To255",
    #           county: "string1To255",
    #           state: "string1To255",
    #           province: "string1To255",
    #           country: "string1To255",
    #           postal_code: "string1To255",
    #         },
    #         billing_address: {
    #           address_1: "string1To255",
    #           address_2: "string1To255",
    #           address_3: "string1To255",
    #           address_4: "string1To255",
    #           city: "string1To255",
    #           county: "string1To255",
    #           state: "string1To255",
    #           province: "string1To255",
    #           country: "string1To255",
    #           postal_code: "string1To255",
    #         },
    #         attributes: {
    #           "string1To255" => "string1To255",
    #         },
    #       }
    #
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
      :attributes)
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

    # @note When making an API call, you may pass DeleteDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "name", # required
    #       }
    #
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

    # @note When making an API call, you may pass DeleteIntegrationRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "name", # required
    #         uri: "string1To255", # required
    #       }
    #
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

    # @note When making an API call, you may pass DeleteProfileKeyRequest
    #   data as a hash:
    #
    #       {
    #         profile_id: "uuid", # required
    #         key_name: "name", # required
    #         values: ["string1To255"], # required
    #         domain_name: "name", # required
    #       }
    #
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

    # @note When making an API call, you may pass DeleteProfileObjectRequest
    #   data as a hash:
    #
    #       {
    #         profile_id: "uuid", # required
    #         profile_object_unique_key: "string1To255", # required
    #         object_type_name: "typeName", # required
    #         domain_name: "name", # required
    #       }
    #
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

    # @note When making an API call, you may pass DeleteProfileObjectTypeRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "name", # required
    #         object_type_name: "typeName", # required
    #       }
    #
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

    # @note When making an API call, you may pass DeleteProfileRequest
    #   data as a hash:
    #
    #       {
    #         profile_id: "uuid", # required
    #         domain_name: "name", # required
    #       }
    #
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

    # @note When making an API call, you may pass DeleteWorkflowRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "name", # required
    #         workflow_id: "string1To255", # required
    #       }
    #
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
    # @note When making an API call, you may pass ExportingConfig
    #   data as a hash:
    #
    #       {
    #         s3_exporting: {
    #           s3_bucket_name: "s3BucketName", # required
    #           s3_key_name: "s3KeyNameCustomerOutputConfig",
    #         },
    #       }
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
    # @note When making an API call, you may pass FieldSourceProfileIds
    #   data as a hash:
    #
    #       {
    #         account_number: "uuid",
    #         additional_information: "uuid",
    #         party_type: "uuid",
    #         business_name: "uuid",
    #         first_name: "uuid",
    #         middle_name: "uuid",
    #         last_name: "uuid",
    #         birth_date: "uuid",
    #         gender: "uuid",
    #         phone_number: "uuid",
    #         mobile_phone_number: "uuid",
    #         home_phone_number: "uuid",
    #         business_phone_number: "uuid",
    #         email_address: "uuid",
    #         personal_email_address: "uuid",
    #         business_email_address: "uuid",
    #         address: "uuid",
    #         shipping_address: "uuid",
    #         mailing_address: "uuid",
    #         billing_address: "uuid",
    #         attributes: {
    #           "string1To255" => "uuid",
    #         },
    #       }
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
    # @note When making an API call, you may pass FlowDefinition
    #   data as a hash:
    #
    #       {
    #         description: "FlowDescription",
    #         flow_name: "FlowName", # required
    #         kms_arn: "KmsArn", # required
    #         source_flow_config: { # required
    #           connector_profile_name: "ConnectorProfileName",
    #           connector_type: "Salesforce", # required, accepts Salesforce, Marketo, Zendesk, Servicenow, S3
    #           incremental_pull_config: {
    #             datetime_type_field_name: "DatetimeTypeFieldName",
    #           },
    #           source_connector_properties: { # required
    #             marketo: {
    #               object: "Object", # required
    #             },
    #             s3: {
    #               bucket_name: "BucketName", # required
    #               bucket_prefix: "BucketPrefix",
    #             },
    #             salesforce: {
    #               object: "Object", # required
    #               enable_dynamic_field_update: false,
    #               include_deleted_records: false,
    #             },
    #             service_now: {
    #               object: "Object", # required
    #             },
    #             zendesk: {
    #               object: "Object", # required
    #             },
    #           },
    #         },
    #         tasks: [ # required
    #           {
    #             connector_operator: {
    #               marketo: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #               s3: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #               salesforce: "PROJECTION", # accepts PROJECTION, LESS_THAN, CONTAINS, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #               service_now: "PROJECTION", # accepts PROJECTION, CONTAINS, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #               zendesk: "PROJECTION", # accepts PROJECTION, GREATER_THAN, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #             },
    #             destination_field: "DestinationField",
    #             source_fields: ["stringTo2048"], # required
    #             task_properties: {
    #               "VALUE" => "Property",
    #             },
    #             task_type: "Arithmetic", # required, accepts Arithmetic, Filter, Map, Mask, Merge, Truncate, Validate
    #           },
    #         ],
    #         trigger_config: { # required
    #           trigger_type: "Scheduled", # required, accepts Scheduled, Event, OnDemand
    #           trigger_properties: {
    #             scheduled: {
    #               schedule_expression: "ScheduleExpression", # required
    #               data_pull_mode: "Incremental", # accepts Incremental, Complete
    #               schedule_start_time: Time.now,
    #               schedule_end_time: Time.now,
    #               timezone: "Timezone",
    #               schedule_offset: 1,
    #               first_execution_from: Time.now,
    #             },
    #           },
    #         },
    #       }
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

    # @note When making an API call, you may pass GetAutoMergingPreviewRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "name", # required
    #         consolidation: { # required
    #           matching_attributes_list: [ # required
    #             ["string1To255"],
    #           ],
    #         },
    #         conflict_resolution: { # required
    #           conflict_resolving_model: "RECENCY", # required, accepts RECENCY, SOURCE
    #           source_name: "string1To255",
    #         },
    #       }
    #
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/GetAutoMergingPreviewRequest AWS API Documentation
    #
    class GetAutoMergingPreviewRequest < Struct.new(
      :domain_name,
      :consolidation,
      :conflict_resolution)
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

    # @note When making an API call, you may pass GetDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "name", # required
    #       }
    #
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

    # @note When making an API call, you may pass GetIdentityResolutionJobRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "name", # required
    #         job_id: "uuid", # required
    #       }
    #
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
    #   * `PENDING`\: The Identity Resolution Job is scheduled but has not
    #     started yet. If you turn off the Identity Resolution feature in
    #     your domain, jobs in the `PENDING` state are deleted.
    #
    #   * `PREPROCESSING`\: The Identity Resolution Job is loading your
    #     data.
    #
    #   * `FIND_MATCHING`\: The Identity Resolution Job is using the machine
    #     learning model to identify profiles that belong to the same
    #     matching group.
    #
    #   * `MERGING`\: The Identity Resolution Job is merging duplicate
    #     profiles.
    #
    #   * `COMPLETED`\: The Identity Resolution Job completed successfully.
    #
    #   * `PARTIAL_SUCCESS`\: There's a system error and not all of the
    #     data is merged. The Identity Resolution Job writes a message
    #     indicating the source of the problem.
    #
    #   * `FAILED`\: The Identity Resolution Job did not merge any data. It
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

    # @note When making an API call, you may pass GetIntegrationRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "name", # required
    #         uri: "string1To255", # required
    #       }
    #
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
      :workflow_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetMatchesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "token",
    #         max_results: 1,
    #         domain_name: "name", # required
    #       }
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

    # @note When making an API call, you may pass GetProfileObjectTypeRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "name", # required
    #         object_type_name: "typeName", # required
    #       }
    #
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

    # @note When making an API call, you may pass GetProfileObjectTypeTemplateRequest
    #   data as a hash:
    #
    #       {
    #         template_id: "name", # required
    #       }
    #
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

    # @note When making an API call, you may pass GetWorkflowRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "name", # required
    #         workflow_id: "uuid", # required
    #       }
    #
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

    # @note When making an API call, you may pass GetWorkflowStepsRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "name", # required
    #         workflow_id: "uuid", # required
    #         next_token: "token",
    #         max_results: 1,
    #       }
    #
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
    #   * `PENDING`\: The Identity Resolution Job is scheduled but has not
    #     started yet. If you turn off the Identity Resolution feature in
    #     your domain, jobs in the `PENDING` state are deleted.
    #
    #   * `PREPROCESSING`\: The Identity Resolution Job is loading your
    #     data.
    #
    #   * `FIND_MATCHING`\: The Identity Resolution Job is using the machine
    #     learning model to identify profiles that belong to the same
    #     matching group.
    #
    #   * `MERGING`\: The Identity Resolution Job is merging duplicate
    #     profiles.
    #
    #   * `COMPLETED`\: The Identity Resolution Job completed successfully.
    #
    #   * `PARTIAL_SUCCESS`\: There's a system error and not all of the
    #     data is merged. The Identity Resolution Job writes a message
    #     indicating the source of the problem.
    #
    #   * `FAILED`\: The Identity Resolution Job did not merge any data. It
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
    # @note When making an API call, you may pass IncrementalPullConfig
    #   data as a hash:
    #
    #       {
    #         datetime_type_field_name: "DatetimeTypeFieldName",
    #       }
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
    # @note When making an API call, you may pass IntegrationConfig
    #   data as a hash:
    #
    #       {
    #         appflow_integration: {
    #           flow_definition: { # required
    #             description: "FlowDescription",
    #             flow_name: "FlowName", # required
    #             kms_arn: "KmsArn", # required
    #             source_flow_config: { # required
    #               connector_profile_name: "ConnectorProfileName",
    #               connector_type: "Salesforce", # required, accepts Salesforce, Marketo, Zendesk, Servicenow, S3
    #               incremental_pull_config: {
    #                 datetime_type_field_name: "DatetimeTypeFieldName",
    #               },
    #               source_connector_properties: { # required
    #                 marketo: {
    #                   object: "Object", # required
    #                 },
    #                 s3: {
    #                   bucket_name: "BucketName", # required
    #                   bucket_prefix: "BucketPrefix",
    #                 },
    #                 salesforce: {
    #                   object: "Object", # required
    #                   enable_dynamic_field_update: false,
    #                   include_deleted_records: false,
    #                 },
    #                 service_now: {
    #                   object: "Object", # required
    #                 },
    #                 zendesk: {
    #                   object: "Object", # required
    #                 },
    #               },
    #             },
    #             tasks: [ # required
    #               {
    #                 connector_operator: {
    #                   marketo: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #                   s3: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #                   salesforce: "PROJECTION", # accepts PROJECTION, LESS_THAN, CONTAINS, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #                   service_now: "PROJECTION", # accepts PROJECTION, CONTAINS, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #                   zendesk: "PROJECTION", # accepts PROJECTION, GREATER_THAN, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #                 },
    #                 destination_field: "DestinationField",
    #                 source_fields: ["stringTo2048"], # required
    #                 task_properties: {
    #                   "VALUE" => "Property",
    #                 },
    #                 task_type: "Arithmetic", # required, accepts Arithmetic, Filter, Map, Mask, Merge, Truncate, Validate
    #               },
    #             ],
    #             trigger_config: { # required
    #               trigger_type: "Scheduled", # required, accepts Scheduled, Event, OnDemand
    #               trigger_properties: {
    #                 scheduled: {
    #                   schedule_expression: "ScheduleExpression", # required
    #                   data_pull_mode: "Incremental", # accepts Incremental, Complete
    #                   schedule_start_time: Time.now,
    #                   schedule_end_time: Time.now,
    #                   timezone: "Timezone",
    #                   schedule_offset: 1,
    #                   first_execution_from: Time.now,
    #                 },
    #               },
    #             },
    #           },
    #           batches: [
    #             {
    #               start_time: Time.now, # required
    #               end_time: Time.now, # required
    #             },
    #           ],
    #         },
    #       }
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
    # @note When making an API call, you may pass JobSchedule
    #   data as a hash:
    #
    #       {
    #         day_of_the_week: "SUNDAY", # required, accepts SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY
    #         time: "JobScheduleTime", # required
    #       }
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

    # @note When making an API call, you may pass ListAccountIntegrationsRequest
    #   data as a hash:
    #
    #       {
    #         uri: "string1To255", # required
    #         next_token: "token",
    #         max_results: 1,
    #         include_hidden: false,
    #       }
    #
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

    # @note When making an API call, you may pass ListDomainsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "token",
    #         max_results: 1,
    #       }
    #
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

    # @note When making an API call, you may pass ListIdentityResolutionJobsRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "name", # required
    #         next_token: "token",
    #         max_results: 1,
    #       }
    #
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
      :workflow_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListIntegrationsRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "name", # required
    #         next_token: "token",
    #         max_results: 1,
    #         include_hidden: false,
    #       }
    #
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

    # @note When making an API call, you may pass ListProfileObjectTypeTemplatesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "token",
    #         max_results: 1,
    #       }
    #
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

    # @note When making an API call, you may pass ListProfileObjectTypesRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "name", # required
    #         next_token: "token",
    #         max_results: 1,
    #       }
    #
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

    # @note When making an API call, you may pass ListProfileObjectsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "token",
    #         max_results: 1,
    #         domain_name: "name", # required
    #         object_type_name: "typeName", # required
    #         profile_id: "uuid", # required
    #         object_filter: {
    #           key_name: "name", # required
    #           values: ["string1To255"], # required
    #         },
    #       }
    #
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
    #   specified index values. This filter is only supported for
    #   ObjectTypeName \_asset, \_case and \_order.
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

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "TagArn", # required
    #       }
    #
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

    # @note When making an API call, you may pass ListWorkflowsRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "name", # required
    #         workflow_type: "APPFLOW_INTEGRATION", # accepts APPFLOW_INTEGRATION
    #         status: "NOT_STARTED", # accepts NOT_STARTED, IN_PROGRESS, COMPLETE, FAILED, SPLIT, RETRY, CANCELLED
    #         query_start_date: Time.now,
    #         query_end_date: Time.now,
    #         next_token: "token",
    #         max_results: 1,
    #       }
    #
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
    # @note When making an API call, you may pass MarketoSourceProperties
    #   data as a hash:
    #
    #       {
    #         object: "Object", # required
    #       }
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
    #   A number between 0 and 1 that represents the confidence level of
    #   assigning profiles to a matching group. A score of 1 likely
    #   indicates an exact match.
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
    # @note When making an API call, you may pass MatchingRequest
    #   data as a hash:
    #
    #       {
    #         enabled: false, # required
    #         job_schedule: {
    #           day_of_the_week: "SUNDAY", # required, accepts SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY
    #           time: "JobScheduleTime", # required
    #         },
    #         auto_merging: {
    #           enabled: false, # required
    #           consolidation: {
    #             matching_attributes_list: [ # required
    #               ["string1To255"],
    #             ],
    #           },
    #           conflict_resolution: {
    #             conflict_resolving_model: "RECENCY", # required, accepts RECENCY, SOURCE
    #             source_name: "string1To255",
    #           },
    #         },
    #         exporting_config: {
    #           s3_exporting: {
    #             s3_bucket_name: "s3BucketName", # required
    #             s3_key_name: "s3KeyNameCustomerOutputConfig",
    #           },
    #         },
    #       }
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

    # @note When making an API call, you may pass MergeProfilesRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "name", # required
    #         main_profile_id: "uuid", # required
    #         profile_ids_to_be_merged: ["uuid"], # required
    #         field_source_profile_ids: {
    #           account_number: "uuid",
    #           additional_information: "uuid",
    #           party_type: "uuid",
    #           business_name: "uuid",
    #           first_name: "uuid",
    #           middle_name: "uuid",
    #           last_name: "uuid",
    #           birth_date: "uuid",
    #           gender: "uuid",
    #           phone_number: "uuid",
    #           mobile_phone_number: "uuid",
    #           home_phone_number: "uuid",
    #           business_phone_number: "uuid",
    #           email_address: "uuid",
    #           personal_email_address: "uuid",
    #           business_email_address: "uuid",
    #           address: "uuid",
    #           shipping_address: "uuid",
    #           mailing_address: "uuid",
    #           billing_address: "uuid",
    #           attributes: {
    #             "string1To255" => "uuid",
    #           },
    #         },
    #       }
    #
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

    # The filter applied to ListProfileObjects response to include profile
    # objects with the specified index values. This filter is only supported
    # for ObjectTypeName \_asset, \_case and \_order.
    #
    # @note When making an API call, you may pass ObjectFilter
    #   data as a hash:
    #
    #       {
    #         key_name: "name", # required
    #         values: ["string1To255"], # required
    #       }
    #
    # @!attribute [rw] key_name
    #   A searchable identifier of a standard profile object. The predefined
    #   keys you can use to search for \_asset include: \_assetId,
    #   \_assetName, \_serialNumber. The predefined keys you can use to
    #   search for \_case include: \_caseId. The predefined keys you can use
    #   to search for \_order include: \_orderId.
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
    # @note When making an API call, you may pass ObjectTypeField
    #   data as a hash:
    #
    #       {
    #         source: "text",
    #         target: "text",
    #         content_type: "STRING", # accepts STRING, NUMBER, PHONE_NUMBER, EMAIL_ADDRESS, NAME
    #       }
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
    # @note When making an API call, you may pass ObjectTypeKey
    #   data as a hash:
    #
    #       {
    #         standard_identifiers: ["PROFILE"], # accepts PROFILE, ASSET, CASE, UNIQUE, SECONDARY, LOOKUP_ONLY, NEW_ONLY, ORDER
    #         field_names: ["name"],
    #       }
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
      :attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutIntegrationRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "name", # required
    #         uri: "string1To255",
    #         object_type_name: "typeName",
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         flow_definition: {
    #           description: "FlowDescription",
    #           flow_name: "FlowName", # required
    #           kms_arn: "KmsArn", # required
    #           source_flow_config: { # required
    #             connector_profile_name: "ConnectorProfileName",
    #             connector_type: "Salesforce", # required, accepts Salesforce, Marketo, Zendesk, Servicenow, S3
    #             incremental_pull_config: {
    #               datetime_type_field_name: "DatetimeTypeFieldName",
    #             },
    #             source_connector_properties: { # required
    #               marketo: {
    #                 object: "Object", # required
    #               },
    #               s3: {
    #                 bucket_name: "BucketName", # required
    #                 bucket_prefix: "BucketPrefix",
    #               },
    #               salesforce: {
    #                 object: "Object", # required
    #                 enable_dynamic_field_update: false,
    #                 include_deleted_records: false,
    #               },
    #               service_now: {
    #                 object: "Object", # required
    #               },
    #               zendesk: {
    #                 object: "Object", # required
    #               },
    #             },
    #           },
    #           tasks: [ # required
    #             {
    #               connector_operator: {
    #                 marketo: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #                 s3: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #                 salesforce: "PROJECTION", # accepts PROJECTION, LESS_THAN, CONTAINS, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #                 service_now: "PROJECTION", # accepts PROJECTION, CONTAINS, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #                 zendesk: "PROJECTION", # accepts PROJECTION, GREATER_THAN, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #               },
    #               destination_field: "DestinationField",
    #               source_fields: ["stringTo2048"], # required
    #               task_properties: {
    #                 "VALUE" => "Property",
    #               },
    #               task_type: "Arithmetic", # required, accepts Arithmetic, Filter, Map, Mask, Merge, Truncate, Validate
    #             },
    #           ],
    #           trigger_config: { # required
    #             trigger_type: "Scheduled", # required, accepts Scheduled, Event, OnDemand
    #             trigger_properties: {
    #               scheduled: {
    #                 schedule_expression: "ScheduleExpression", # required
    #                 data_pull_mode: "Incremental", # accepts Incremental, Complete
    #                 schedule_start_time: Time.now,
    #                 schedule_end_time: Time.now,
    #                 timezone: "Timezone",
    #                 schedule_offset: 1,
    #                 first_execution_from: Time.now,
    #               },
    #             },
    #           },
    #         },
    #         object_type_names: {
    #           "string1To255" => "typeName",
    #         },
    #       }
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
      :workflow_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutProfileObjectRequest
    #   data as a hash:
    #
    #       {
    #         object_type_name: "typeName", # required
    #         object: "stringifiedJson", # required
    #         domain_name: "name", # required
    #       }
    #
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

    # @note When making an API call, you may pass PutProfileObjectTypeRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "name", # required
    #         object_type_name: "typeName", # required
    #         description: "text", # required
    #         template_id: "name",
    #         expiration_days: 1,
    #         encryption_key: "encryptionKey",
    #         allow_profile_creation: false,
    #         source_last_updated_timestamp_format: "string1To255",
    #         fields: {
    #           "name" => {
    #             source: "text",
    #             target: "text",
    #             content_type: "STRING", # accepts STRING, NUMBER, PHONE_NUMBER, EMAIL_ADDRESS, NAME
    #           },
    #         },
    #         keys: {
    #           "name" => [
    #             {
    #               standard_identifiers: ["PROFILE"], # accepts PROFILE, ASSET, CASE, UNIQUE, SECONDARY, LOOKUP_ONLY, NEW_ONLY, ORDER
    #               field_names: ["name"],
    #             },
    #           ],
    #         },
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
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
    # @note When making an API call, you may pass S3ExportingConfig
    #   data as a hash:
    #
    #       {
    #         s3_bucket_name: "s3BucketName", # required
    #         s3_key_name: "s3KeyNameCustomerOutputConfig",
    #       }
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
    # @note When making an API call, you may pass S3SourceProperties
    #   data as a hash:
    #
    #       {
    #         bucket_name: "BucketName", # required
    #         bucket_prefix: "BucketPrefix",
    #       }
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
    # @note When making an API call, you may pass SalesforceSourceProperties
    #   data as a hash:
    #
    #       {
    #         object: "Object", # required
    #         enable_dynamic_field_update: false,
    #         include_deleted_records: false,
    #       }
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
    # @note When making an API call, you may pass ScheduledTriggerProperties
    #   data as a hash:
    #
    #       {
    #         schedule_expression: "ScheduleExpression", # required
    #         data_pull_mode: "Incremental", # accepts Incremental, Complete
    #         schedule_start_time: Time.now,
    #         schedule_end_time: Time.now,
    #         timezone: "Timezone",
    #         schedule_offset: 1,
    #         first_execution_from: Time.now,
    #       }
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

    # @note When making an API call, you may pass SearchProfilesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "token",
    #         max_results: 1,
    #         domain_name: "name", # required
    #         key_name: "name", # required
    #         values: ["string1To255"], # required
    #       }
    #
    # @!attribute [rw] next_token
    #   The pagination token from the previous SearchProfiles API call.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/customer-profiles-2020-08-15/SearchProfilesRequest AWS API Documentation
    #
    class SearchProfilesRequest < Struct.new(
      :next_token,
      :max_results,
      :domain_name,
      :key_name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] items
    #   The list of SearchProfiles instances.
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
    # @note When making an API call, you may pass ServiceNowSourceProperties
    #   data as a hash:
    #
    #       {
    #         object: "Object", # required
    #       }
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
    # @note When making an API call, you may pass SourceConnectorProperties
    #   data as a hash:
    #
    #       {
    #         marketo: {
    #           object: "Object", # required
    #         },
    #         s3: {
    #           bucket_name: "BucketName", # required
    #           bucket_prefix: "BucketPrefix",
    #         },
    #         salesforce: {
    #           object: "Object", # required
    #           enable_dynamic_field_update: false,
    #           include_deleted_records: false,
    #         },
    #         service_now: {
    #           object: "Object", # required
    #         },
    #         zendesk: {
    #           object: "Object", # required
    #         },
    #       }
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
    # @note When making an API call, you may pass SourceFlowConfig
    #   data as a hash:
    #
    #       {
    #         connector_profile_name: "ConnectorProfileName",
    #         connector_type: "Salesforce", # required, accepts Salesforce, Marketo, Zendesk, Servicenow, S3
    #         incremental_pull_config: {
    #           datetime_type_field_name: "DatetimeTypeFieldName",
    #         },
    #         source_connector_properties: { # required
    #           marketo: {
    #             object: "Object", # required
    #           },
    #           s3: {
    #             bucket_name: "BucketName", # required
    #             bucket_prefix: "BucketPrefix",
    #           },
    #           salesforce: {
    #             object: "Object", # required
    #             enable_dynamic_field_update: false,
    #             include_deleted_records: false,
    #           },
    #           service_now: {
    #             object: "Object", # required
    #           },
    #           zendesk: {
    #             object: "Object", # required
    #           },
    #         },
    #       }
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

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "TagArn", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
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
    # @note When making an API call, you may pass Task
    #   data as a hash:
    #
    #       {
    #         connector_operator: {
    #           marketo: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #           s3: "PROJECTION", # accepts PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #           salesforce: "PROJECTION", # accepts PROJECTION, LESS_THAN, CONTAINS, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #           service_now: "PROJECTION", # accepts PROJECTION, CONTAINS, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #           zendesk: "PROJECTION", # accepts PROJECTION, GREATER_THAN, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, NO_OP
    #         },
    #         destination_field: "DestinationField",
    #         source_fields: ["stringTo2048"], # required
    #         task_properties: {
    #           "VALUE" => "Property",
    #         },
    #         task_type: "Arithmetic", # required, accepts Arithmetic, Filter, Map, Mask, Merge, Truncate, Validate
    #       }
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
    # @note When making an API call, you may pass TriggerConfig
    #   data as a hash:
    #
    #       {
    #         trigger_type: "Scheduled", # required, accepts Scheduled, Event, OnDemand
    #         trigger_properties: {
    #           scheduled: {
    #             schedule_expression: "ScheduleExpression", # required
    #             data_pull_mode: "Incremental", # accepts Incremental, Complete
    #             schedule_start_time: Time.now,
    #             schedule_end_time: Time.now,
    #             timezone: "Timezone",
    #             schedule_offset: 1,
    #             first_execution_from: Time.now,
    #           },
    #         },
    #       }
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
    # @note When making an API call, you may pass TriggerProperties
    #   data as a hash:
    #
    #       {
    #         scheduled: {
    #           schedule_expression: "ScheduleExpression", # required
    #           data_pull_mode: "Incremental", # accepts Incremental, Complete
    #           schedule_start_time: Time.now,
    #           schedule_end_time: Time.now,
    #           timezone: "Timezone",
    #           schedule_offset: 1,
    #           first_execution_from: Time.now,
    #         },
    #       }
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

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "TagArn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
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
    # @note When making an API call, you may pass UpdateAddress
    #   data as a hash:
    #
    #       {
    #         address_1: "string0To255",
    #         address_2: "string0To255",
    #         address_3: "string0To255",
    #         address_4: "string0To255",
    #         city: "string0To255",
    #         county: "string0To255",
    #         state: "string0To255",
    #         province: "string0To255",
    #         country: "string0To255",
    #         postal_code: "string0To255",
    #       }
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

    # @note When making an API call, you may pass UpdateDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "name", # required
    #         default_expiration_days: 1,
    #         default_encryption_key: "encryptionKey",
    #         dead_letter_queue_url: "sqsQueueUrl",
    #         matching: {
    #           enabled: false, # required
    #           job_schedule: {
    #             day_of_the_week: "SUNDAY", # required, accepts SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY
    #             time: "JobScheduleTime", # required
    #           },
    #           auto_merging: {
    #             enabled: false, # required
    #             consolidation: {
    #               matching_attributes_list: [ # required
    #                 ["string1To255"],
    #               ],
    #             },
    #             conflict_resolution: {
    #               conflict_resolving_model: "RECENCY", # required, accepts RECENCY, SOURCE
    #               source_name: "string1To255",
    #             },
    #           },
    #           exporting_config: {
    #             s3_exporting: {
    #               s3_bucket_name: "s3BucketName", # required
    #               s3_key_name: "s3KeyNameCustomerOutputConfig",
    #             },
    #           },
    #         },
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
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

    # @note When making an API call, you may pass UpdateProfileRequest
    #   data as a hash:
    #
    #       {
    #         domain_name: "name", # required
    #         profile_id: "uuid", # required
    #         additional_information: "string0To1000",
    #         account_number: "string0To255",
    #         party_type: "INDIVIDUAL", # accepts INDIVIDUAL, BUSINESS, OTHER
    #         business_name: "string0To255",
    #         first_name: "string0To255",
    #         middle_name: "string0To255",
    #         last_name: "string0To255",
    #         birth_date: "string0To255",
    #         gender: "MALE", # accepts MALE, FEMALE, UNSPECIFIED
    #         phone_number: "string0To255",
    #         mobile_phone_number: "string0To255",
    #         home_phone_number: "string0To255",
    #         business_phone_number: "string0To255",
    #         email_address: "string0To255",
    #         personal_email_address: "string0To255",
    #         business_email_address: "string0To255",
    #         address: {
    #           address_1: "string0To255",
    #           address_2: "string0To255",
    #           address_3: "string0To255",
    #           address_4: "string0To255",
    #           city: "string0To255",
    #           county: "string0To255",
    #           state: "string0To255",
    #           province: "string0To255",
    #           country: "string0To255",
    #           postal_code: "string0To255",
    #         },
    #         shipping_address: {
    #           address_1: "string0To255",
    #           address_2: "string0To255",
    #           address_3: "string0To255",
    #           address_4: "string0To255",
    #           city: "string0To255",
    #           county: "string0To255",
    #           state: "string0To255",
    #           province: "string0To255",
    #           country: "string0To255",
    #           postal_code: "string0To255",
    #         },
    #         mailing_address: {
    #           address_1: "string0To255",
    #           address_2: "string0To255",
    #           address_3: "string0To255",
    #           address_4: "string0To255",
    #           city: "string0To255",
    #           county: "string0To255",
    #           state: "string0To255",
    #           province: "string0To255",
    #           country: "string0To255",
    #           postal_code: "string0To255",
    #         },
    #         billing_address: {
    #           address_1: "string0To255",
    #           address_2: "string0To255",
    #           address_3: "string0To255",
    #           address_4: "string0To255",
    #           city: "string0To255",
    #           county: "string0To255",
    #           state: "string0To255",
    #           province: "string0To255",
    #           country: "string0To255",
    #           postal_code: "string0To255",
    #         },
    #         attributes: {
    #           "string1To255" => "string0To255",
    #         },
    #       }
    #
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
      :attributes)
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
    # @note When making an API call, you may pass ZendeskSourceProperties
    #   data as a hash:
    #
    #       {
    #         object: "Object", # required
    #       }
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
