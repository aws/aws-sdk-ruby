# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::HealthLake
  module Types

    # Access is denied. Your account is not authorized to perform this
    # operation.
    #
    # @!attribute [rw] message
    #   A general-purpose string value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a message sent to the agent during chat-based profile
    # customization.
    #
    # @!attribute [rw] body
    #   The text of your message to the agent.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of input message, which determines how the agent processes
    #   your request. Valid values:
    #
    #   * `normal`: A regular message to the agent.
    #
    #   * `confirmation_response`: A response to a confirmation request from
    #     the agent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/AgentInputMessage AWS API Documentation
    #
    class AgentInputMessage < Struct.new(
      :body,
      :type)
      SENSITIVE = [:body]
      include Aws::Structure
    end

    # The agent message does not fit within the current conversation
    # context. Start a new conversation or provide a message that relates to
    # the current profile customization session.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/AgentMessageOutOfContextException AWS API Documentation
    #
    class AgentMessageOutOfContextException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a response message from the agent during chat-based profile
    # customization.
    #
    # @!attribute [rw] body
    #   The text of the agent's response.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of output message, which indicates how to interpret the
    #   agent's response.
    #   @return [String]
    #
    # @!attribute [rw] options_list
    #   A list of selectable options presented when the response type is
    #   `options`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/AgentOutputMessage AWS API Documentation
    #
    class AgentOutputMessage < Struct.new(
      :body,
      :type,
      :options_list)
      SENSITIVE = [:body, :options_list]
      include Aws::Structure
    end

    # The analytics configuration for a data store.
    #
    # @!attribute [rw] status
    #   The status of the analytics configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/AnalyticsConfiguration AWS API Documentation
    #
    class AnalyticsConfiguration < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The backup configuration for the data store.
    #
    # @!attribute [rw] status
    #   The backup status of the data store.
    #   @return [String]
    #
    # @!attribute [rw] backup_type
    #   The type of backup.
    #   @return [String]
    #
    # @!attribute [rw] retention_period_in_days
    #   The number of days backup data is retained.
    #   @return [Integer]
    #
    # @!attribute [rw] backup_tags_enabled
    #   Specifies whether tags are included in backups.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/BackupConfiguration AWS API Documentation
    #
    class BackupConfiguration < Struct.new(
      :status,
      :backup_type,
      :retention_period_in_days,
      :backup_tags_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data store is in a transition state and the user requested action
    # cannot be performed.
    #
    # @!attribute [rw] message
    #   A general-purpose string value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration for continuous backup (point-in-time) restore.
    #
    # @!attribute [rw] restore_point_time
    #   The point in time to restore the data store to, specified as a UTC
    #   timestamp.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/ContinuousBackupRestoreConfiguration AWS API Documentation
    #
    class ContinuousBackupRestoreConfiguration < Struct.new(
      :restore_point_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified conversation identifier does not exist. Verify the
    # conversation ID or omit it to start a new conversation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/ConversationNotFoundException AWS API Documentation
    #
    class ConversationNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters for the `CreateDataTransformationProfile`
    # operation.
    #
    # @!attribute [rw] source_format
    #   The source data format that this profile converts from (Consolidated
    #   Clinical Document Architecture (C-CDA) or Comma-separated values
    #   (CSV)).
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The source for the initial profile content. Specify a built-in
    #   starter profile, an existing profile version to clone, raw profile
    #   content for CI/CD workflows, or a sample data file in Amazon S3.
    #   @return [Types::CreateDataTransformationProfileSource]
    #
    # @!attribute [rw] kms_key_id
    #   The Amazon Web Services Key Management Service (Amazon Web Services
    #   KMS) key identifier used to encrypt the profile content at rest.
    #   @return [String]
    #
    # @!attribute [rw] profile_description
    #   A human-readable description of the profile's purpose.
    #   @return [String]
    #
    # @!attribute [rw] profile_name
    #   A name for the data transformation profile.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to associate with the profile at creation time.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the operation
    #   completes no more than one time. If this token matches a previous
    #   request, the service ignores the request but does not return an
    #   error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/CreateDataTransformationProfileRequest AWS API Documentation
    #
    class CreateDataTransformationProfileRequest < Struct.new(
      :source_format,
      :source,
      :kms_key_id,
      :profile_description,
      :profile_name,
      :tags,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response from the `CreateDataTransformationProfile` operation.
    #
    # @!attribute [rw] profile_id
    #   The unique identifier of the created profile.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version number of the newly created profile. The starting
    #   version is always 0, which indicates the profile is in DRAFT state.
    #   @return [Integer]
    #
    # @!attribute [rw] source_format
    #   The source data format of the profile.
    #   @return [String]
    #
    # @!attribute [rw] target_format
    #   The target output format. Always `FHIR_R4`.
    #   @return [String]
    #
    # @!attribute [rw] profile_name
    #   The name of the created profile.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp when the profile was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/CreateDataTransformationProfileResponse AWS API Documentation
    #
    class CreateDataTransformationProfileResponse < Struct.new(
      :profile_id,
      :version,
      :source_format,
      :target_format,
      :profile_name,
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The source for initial content when creating a data transformation
    # profile. Specify exactly one variant: a built-in starter profile, an
    # existing profile version to clone, raw profile content, or a sample
    # data file.
    #
    # @note CreateDataTransformationProfileSource is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] starter_profile
    #   Creates the profile from a built-in starter profile. Valid only when
    #   the source format is Consolidated Clinical Document Architecture
    #   (C-CDA).
    #   @return [Types::StarterProfileSource]
    #
    # @!attribute [rw] existing_versioned_profile_id
    #   Creates the profile by cloning an existing profile at a specific
    #   version.
    #   @return [Types::ExistingVersionedProfileSource]
    #
    # @!attribute [rw] profile_mapping
    #   Creates the profile from raw profile content that you provide
    #   directly. Use this variant for continuous integration and continuous
    #   delivery (CI/CD) workflows.
    #   @return [Types::ProfileMappingSource]
    #
    # @!attribute [rw] sample_data
    #   Creates the profile from a sample data file stored in Amazon S3.
    #   Valid only when the source format is Comma-separated values (CSV).
    #   @return [Types::SampleDataSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/CreateDataTransformationProfileSource AWS API Documentation
    #
    class CreateDataTransformationProfileSource < Struct.new(
      :starter_profile,
      :existing_versioned_profile_id,
      :profile_mapping,
      :sample_data,
      :unknown)
      SENSITIVE = [:profile_mapping]
      include Aws::Structure
      include Aws::Structure::Union

      class StarterProfile < CreateDataTransformationProfileSource; end
      class ExistingVersionedProfileId < CreateDataTransformationProfileSource; end
      class ProfileMapping < CreateDataTransformationProfileSource; end
      class SampleData < CreateDataTransformationProfileSource; end
      class Unknown < CreateDataTransformationProfileSource; end
    end

    # @!attribute [rw] datastore_name
    #   The data store name (user-generated).
    #   @return [String]
    #
    # @!attribute [rw] datastore_type_version
    #   The FHIR release version supported by the data store. Current
    #   support is for version `R4`.
    #   @return [String]
    #
    # @!attribute [rw] sse_configuration
    #   The server-side encryption key configuration for a customer-provided
    #   encryption key specified for creating a data store.
    #   @return [Types::SseConfiguration]
    #
    # @!attribute [rw] preload_data_config
    #   An optional parameter to preload (import) open source Synthea FHIR
    #   data upon creation of the data store.
    #   @return [Types::PreloadDataConfig]
    #
    # @!attribute [rw] client_token
    #   An optional user-provided token to ensure API idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The resource tags applied to a data store when it is created.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] identity_provider_configuration
    #   The identity provider configuration to use for the data store.
    #   @return [Types::IdentityProviderConfiguration]
    #
    # @!attribute [rw] analytics_configuration
    #   The analytics configuration for the data store.
    #   @return [Types::AnalyticsConfiguration]
    #
    # @!attribute [rw] nlp_configuration
    #   The natural language processing (NLP) configuration for the data
    #   store.
    #   @return [Types::NlpConfiguration]
    #
    # @!attribute [rw] profile_configuration
    #   The profile configuration for the data store.
    #   @return [Types::ProfileConfiguration]
    #
    # @!attribute [rw] backup_configuration
    #   The backup configuration for the data store.
    #   @return [Types::BackupConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/CreateFHIRDatastoreRequest AWS API Documentation
    #
    class CreateFHIRDatastoreRequest < Struct.new(
      :datastore_name,
      :datastore_type_version,
      :sse_configuration,
      :preload_data_config,
      :client_token,
      :tags,
      :identity_provider_configuration,
      :analytics_configuration,
      :nlp_configuration,
      :profile_configuration,
      :backup_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datastore_id
    #   The data store identifier.
    #   @return [String]
    #
    # @!attribute [rw] datastore_arn
    #   The Amazon Resource Name (ARN) for the data store.
    #   @return [String]
    #
    # @!attribute [rw] datastore_status
    #   The data store status.
    #   @return [String]
    #
    # @!attribute [rw] datastore_endpoint
    #   The Amazon Web Services endpoint created for the data store.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/CreateFHIRDatastoreResponse AWS API Documentation
    #
    class CreateFHIRDatastoreResponse < Struct.new(
      :datastore_id,
      :datastore_arn,
      :datastore_status,
      :datastore_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a data transformation profile. To
    # retrieve profile content, call `GetDataTransformationProfile`.
    #
    # @!attribute [rw] profile_id
    #   The unique identifier of the profile.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The latest version number of the profile.
    #   @return [Integer]
    #
    # @!attribute [rw] source_format
    #   The source data format that this profile converts from.
    #   @return [String]
    #
    # @!attribute [rw] target_format
    #   The target output format of the profile.
    #   @return [String]
    #
    # @!attribute [rw] profile_name
    #   The name of the profile.
    #   @return [String]
    #
    # @!attribute [rw] profile_description
    #   A description of the profile's purpose.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp when the profile was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/DataTransformationProfileSummary AWS API Documentation
    #
    class DataTransformationProfileSummary < Struct.new(
      :profile_id,
      :version,
      :source_format,
      :target_format,
      :profile_name,
      :profile_description,
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a specific version of a data
    # transformation profile. To retrieve profile content, call
    # `GetDataTransformationProfile`.
    #
    # @!attribute [rw] profile_id
    #   The unique identifier of the profile.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version number.
    #   @return [Integer]
    #
    # @!attribute [rw] source_format
    #   The source data format that this profile converts from.
    #   @return [String]
    #
    # @!attribute [rw] target_format
    #   The target output format of the profile.
    #   @return [String]
    #
    # @!attribute [rw] profile_name
    #   The name of the profile.
    #   @return [String]
    #
    # @!attribute [rw] change_description
    #   A description of what changed in this version.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp when this version was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/DataTransformationProfileVersionSummary AWS API Documentation
    #
    class DataTransformationProfileVersionSummary < Struct.new(
      :profile_id,
      :version,
      :source_format,
      :target_format,
      :profile_name,
      :change_description,
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon S3 output configuration for a data transformation job,
    # including the output location and encryption settings.
    #
    # @!attribute [rw] s3_uri
    #   The Amazon S3 URI where HealthLake writes the converted output
    #   files.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The Amazon Web Services Key Management Service (Amazon Web Services
    #   KMS) key identifier used to encrypt the transformation job output
    #   written to Amazon S3.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/DataTransformationS3Configuration AWS API Documentation
    #
    class DataTransformationS3Configuration < Struct.new(
      :s3_uri,
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The backup status information for the data store.
    #
    # @!attribute [rw] configuration
    #   The backup configuration for the data store.
    #   @return [Types::BackupConfiguration]
    #
    # @!attribute [rw] backup_enabled_at
    #   The time backup was enabled on the data store.
    #   @return [Time]
    #
    # @!attribute [rw] earliest_restore_point
    #   The earliest point in time the data store can be restored to.
    #   @return [Time]
    #
    # @!attribute [rw] latest_restore_point
    #   The latest point in time the data store can be restored to.
    #   @return [Time]
    #
    # @!attribute [rw] scheduled_permanent_deletion_time
    #   The time the retained backup data is scheduled for permanent
    #   deletion.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/DatastoreBackupStatus AWS API Documentation
    #
    class DatastoreBackupStatus < Struct.new(
      :configuration,
      :backup_enabled_at,
      :earliest_restore_point,
      :latest_restore_point,
      :scheduled_permanent_deletion_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The filters applied to a data store query.
    #
    # @!attribute [rw] datastore_name
    #   Filter data store results by name.
    #   @return [String]
    #
    # @!attribute [rw] datastore_status
    #   Filter data store results by status.
    #   @return [String]
    #
    # @!attribute [rw] created_before
    #   Filter to set cutoff dates for records. All data stores created
    #   before the specified date are included in the results.
    #   @return [Time]
    #
    # @!attribute [rw] created_after
    #   Filter to set cutoff dates for records. All data stores created
    #   after the specified date are included in the results.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/DatastoreFilter AWS API Documentation
    #
    class DatastoreFilter < Struct.new(
      :datastore_name,
      :datastore_status,
      :created_before,
      :created_after)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data store properties.
    #
    # @!attribute [rw] datastore_id
    #   The data store identifier.
    #   @return [String]
    #
    # @!attribute [rw] datastore_arn
    #   The Amazon Resource Name (ARN) used in the creation of the data
    #   store.
    #   @return [String]
    #
    # @!attribute [rw] datastore_name
    #   The data store name.
    #   @return [String]
    #
    # @!attribute [rw] datastore_status
    #   The data store status.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time the data store was created.
    #   @return [Time]
    #
    # @!attribute [rw] datastore_type_version
    #   The FHIR release version supported by the data store. Current
    #   support is for version `R4`.
    #   @return [String]
    #
    # @!attribute [rw] datastore_endpoint
    #   The Amazon Web Services endpoint for the data store.
    #   @return [String]
    #
    # @!attribute [rw] sse_configuration
    #   The server-side encryption key configuration for a customer provided
    #   encryption key.
    #   @return [Types::SseConfiguration]
    #
    # @!attribute [rw] preload_data_config
    #   The preloaded Synthea data configuration for the data store.
    #   @return [Types::PreloadDataConfig]
    #
    # @!attribute [rw] identity_provider_configuration
    #   The identity provider selected during data store creation.
    #   @return [Types::IdentityProviderConfiguration]
    #
    # @!attribute [rw] error_cause
    #   The error cause for the current data store operation.
    #   @return [Types::ErrorCause]
    #
    # @!attribute [rw] nlp_configuration
    #   The natural language processing (NLP) configuration for the data
    #   store.
    #   @return [Types::NlpConfiguration]
    #
    # @!attribute [rw] analytics_configuration
    #   The analytics configuration for the data store.
    #   @return [Types::AnalyticsConfiguration]
    #
    # @!attribute [rw] profile_configuration
    #   The profile configuration for the data store.
    #   @return [Types::ProfileConfiguration]
    #
    # @!attribute [rw] backup_status_info
    #   The backup status information for the data store.
    #   @return [Types::DatastoreBackupStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/DatastoreProperties AWS API Documentation
    #
    class DatastoreProperties < Struct.new(
      :datastore_id,
      :datastore_arn,
      :datastore_name,
      :datastore_status,
      :created_at,
      :datastore_type_version,
      :datastore_endpoint,
      :sse_configuration,
      :preload_data_config,
      :identity_provider_configuration,
      :error_cause,
      :nlp_configuration,
      :analytics_configuration,
      :profile_configuration,
      :backup_status_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters for the `DeleteDataTransformationProfile`
    # operation.
    #
    # @!attribute [rw] profile_id
    #   The unique identifier of the profile to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/DeleteDataTransformationProfileRequest AWS API Documentation
    #
    class DeleteDataTransformationProfileRequest < Struct.new(
      :profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response from the `DeleteDataTransformationProfile` operation.
    #
    # @!attribute [rw] profile_id
    #   The unique identifier of the deleted profile.
    #   @return [String]
    #
    # @!attribute [rw] profile_name
    #   The name of the deleted profile.
    #   @return [String]
    #
    # @!attribute [rw] deletion_time
    #   The timestamp when the profile was deleted.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/DeleteDataTransformationProfileResponse AWS API Documentation
    #
    class DeleteDataTransformationProfileResponse < Struct.new(
      :profile_id,
      :profile_name,
      :deletion_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datastore_id
    #   The Amazon Web Services-generated identifier for the data store to
    #   be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/DeleteFHIRDatastoreRequest AWS API Documentation
    #
    class DeleteFHIRDatastoreRequest < Struct.new(
      :datastore_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datastore_id
    #   The Amazon Web Services-generated ID for the deleted data store.
    #   @return [String]
    #
    # @!attribute [rw] datastore_arn
    #   The Amazon Resource Name (ARN) that grants access permission to
    #   HealthLake.
    #   @return [String]
    #
    # @!attribute [rw] datastore_status
    #   The data store status.
    #   @return [String]
    #
    # @!attribute [rw] datastore_endpoint
    #   The Amazon Web Services endpoint of the data store to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/DeleteFHIRDatastoreResponse AWS API Documentation
    #
    class DeleteFHIRDatastoreResponse < Struct.new(
      :datastore_id,
      :datastore_arn,
      :datastore_status,
      :datastore_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters for the `DescribeDataTransformationJob`
    # operation.
    #
    # @!attribute [rw] job_id
    #   The unique identifier of the data transformation job to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/DescribeDataTransformationJobRequest AWS API Documentation
    #
    class DescribeDataTransformationJobRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response from the `DescribeDataTransformationJob` operation.
    #
    # @!attribute [rw] transformation_job_properties
    #   The properties of the data transformation job, including status,
    #   configuration, and progress information.
    #   @return [Types::TransformationJobProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/DescribeDataTransformationJobResponse AWS API Documentation
    #
    class DescribeDataTransformationJobResponse < Struct.new(
      :transformation_job_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datastore_id
    #   The data store identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/DescribeFHIRDatastoreRequest AWS API Documentation
    #
    class DescribeFHIRDatastoreRequest < Struct.new(
      :datastore_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datastore_properties
    #   The data store properties.
    #   @return [Types::DatastoreProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/DescribeFHIRDatastoreResponse AWS API Documentation
    #
    class DescribeFHIRDatastoreResponse < Struct.new(
      :datastore_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datastore_id
    #   The data store identifier from which FHIR data is being exported
    #   from.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The export job identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/DescribeFHIRExportJobRequest AWS API Documentation
    #
    class DescribeFHIRExportJobRequest < Struct.new(
      :datastore_id,
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] export_job_properties
    #   The export job properties.
    #   @return [Types::ExportJobProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/DescribeFHIRExportJobResponse AWS API Documentation
    #
    class DescribeFHIRExportJobResponse < Struct.new(
      :export_job_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datastore_id
    #   The data store identifier.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The import job identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/DescribeFHIRImportJobRequest AWS API Documentation
    #
    class DescribeFHIRImportJobRequest < Struct.new(
      :datastore_id,
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] import_job_properties
    #   The import job properties.
    #   @return [Types::ImportJobProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/DescribeFHIRImportJobResponse AWS API Documentation
    #
    class DescribeFHIRImportJobResponse < Struct.new(
      :import_job_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # The error information for `CreateFHIRDatastore` and
    # `DeleteFHIRDatastore` actions.
    #
    # @!attribute [rw] error_message
    #   The error message text for `ErrorCause`.
    #   @return [String]
    #
    # @!attribute [rw] error_category
    #   The error category for `ErrorCause`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/ErrorCause AWS API Documentation
    #
    class ErrorCause < Struct.new(
      :error_message,
      :error_category)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies an existing data transformation profile and version to
    # clone when creating a new profile.
    #
    # @!attribute [rw] profile_id
    #   The unique identifier of the existing profile to clone from.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version number of the existing profile to clone from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/ExistingVersionedProfileSource AWS API Documentation
    #
    class ExistingVersionedProfileSource < Struct.new(
      :profile_id,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties of a FHIR export job.
    #
    # @!attribute [rw] job_id
    #   The export job identifier.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The export job name.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The export job status.
    #   @return [String]
    #
    # @!attribute [rw] submit_time
    #   The time the export job was initiated.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time the export job completed.
    #   @return [Time]
    #
    # @!attribute [rw] datastore_id
    #   The data store identifier from which files are being exported.
    #   @return [String]
    #
    # @!attribute [rw] output_data_config
    #   The output data configuration supplied when the export job was
    #   created.
    #   @return [Types::OutputDataConfig]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) used during the initiation of the
    #   export job.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   An explanation of any errors that might have occurred during the
    #   export job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/ExportJobProperties AWS API Documentation
    #
    class ExportJobProperties < Struct.new(
      :job_id,
      :job_name,
      :job_status,
      :submit_time,
      :end_time,
      :datastore_id,
      :output_data_config,
      :data_access_role_arn,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A dependent service failed to fulfill the request.
    #
    # @!attribute [rw] message
    #   A message describing the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/FailedDependencyException AWS API Documentation
    #
    class FailedDependencyException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters for the `GetDataTransformationProfile`
    # operation.
    #
    # @!attribute [rw] profile_id
    #   The unique identifier of the profile to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] profile_version
    #   The version number to retrieve. Specify 0 to retrieve the DRAFT
    #   version. If you omit this parameter, the service returns the latest
    #   published version.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/GetDataTransformationProfileRequest AWS API Documentation
    #
    class GetDataTransformationProfileRequest < Struct.new(
      :profile_id,
      :profile_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response from the `GetDataTransformationProfile` operation.
    #
    # @!attribute [rw] profile_id
    #   The unique identifier of the profile.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version number of the retrieved profile.
    #   @return [Integer]
    #
    # @!attribute [rw] source_format
    #   The source data format of the profile.
    #   @return [String]
    #
    # @!attribute [rw] target_format
    #   The target output format of the profile.
    #   @return [String]
    #
    # @!attribute [rw] profile_mapping
    #   The profile content as a map of file paths to content strings.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] profile_name
    #   The name of the profile.
    #   @return [String]
    #
    # @!attribute [rw] profile_description
    #   The description of the profile.
    #   @return [String]
    #
    # @!attribute [rw] change_description
    #   A description of what changed in this version.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp when this version was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/GetDataTransformationProfileResponse AWS API Documentation
    #
    class GetDataTransformationProfileResponse < Struct.new(
      :profile_id,
      :version,
      :source_format,
      :target_format,
      :profile_mapping,
      :profile_name,
      :profile_description,
      :change_description,
      :last_updated_at)
      SENSITIVE = [:profile_mapping]
      include Aws::Structure
    end

    # The identity provider configuration selected when the data store was
    # created.
    #
    # @!attribute [rw] authorization_strategy
    #   The authorization strategy selected when the HealthLake data store
    #   is created.
    #
    #   <note markdown="1"> HealthLake provides support for both SMART on FHIR V1 and V2 as
    #   described below.
    #
    #    * `SMART_ON_FHIR_V1` – Support for only SMART on FHIR V1, which
    #     includes `read` (read/search) and `write` (create/update/delete)
    #     permissions.
    #
    #   * `SMART_ON_FHIR` – Support for both SMART on FHIR V1 and V2, which
    #     includes `create`, `read`, `update`, `delete`, and `search`
    #     permissions.
    #
    #   * `Amazon Web Services_AUTH` – The default HealthLake authorization
    #     strategy; not affiliated with SMART on FHIR.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] fine_grained_authorization_enabled
    #   The parameter to enable SMART on FHIR fine-grained authorization for
    #   the data store.
    #   @return [Boolean]
    #
    # @!attribute [rw] metadata
    #   The JSON metadata elements to use in your identity provider
    #   configuration. Required elements are listed based on the launch
    #   specification of the SMART application. For more information on all
    #   possible elements, see [Metadata][1] in SMART's App Launch
    #   specification.
    #
    #   `authorization_endpoint`: The URL to the OAuth2 authorization
    #   endpoint.
    #
    #   `grant_types_supported`: An array of grant types that are supported
    #   at the token endpoint. You must provide at least one grant type
    #   option. Valid options are `authorization_code` and
    #   `client_credentials`.
    #
    #   `token_endpoint`: The URL to the OAuth2 token endpoint.
    #
    #   `capabilities`: An array of strings of the SMART capabilities that
    #   the authorization server supports.
    #
    #   `code_challenge_methods_supported`: An array of strings of supported
    #   PKCE code challenge methods. You must include the `S256` method in
    #   the array of PKCE code challenge methods.
    #
    #
    #
    #   [1]: https://build.fhir.org/ig/HL7/smart-app-launch/conformance.html#metadata
    #   @return [String]
    #
    # @!attribute [rw] idp_lambda_arn
    #   The Amazon Resource Name (ARN) of the Lambda function to use to
    #   decode the access token created by the authorization server.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/IdentityProviderConfiguration AWS API Documentation
    #
    class IdentityProviderConfiguration < Struct.new(
      :authorization_strategy,
      :fine_grained_authorization_enabled,
      :metadata,
      :idp_lambda_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The import job properties.
    #
    # @!attribute [rw] job_id
    #   The import job identifier.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The import job name.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The import job status.
    #   @return [String]
    #
    # @!attribute [rw] submit_time
    #   The time the import job was submitted for processing.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time the import job was completed.
    #   @return [Time]
    #
    # @!attribute [rw] datastore_id
    #   The data store identifier.
    #   @return [String]
    #
    # @!attribute [rw] input_data_config
    #   The input data configuration supplied when the import job was
    #   created.
    #   @return [Types::InputDataConfig]
    #
    # @!attribute [rw] job_output_data_config
    #   The output data configuration supplied when the export job was
    #   created.
    #   @return [Types::OutputDataConfig]
    #
    # @!attribute [rw] job_progress_report
    #   Displays the progress of the import job, including total resources
    #   scanned, total resources imported, and total size of data imported.
    #   @return [Types::JobProgressReport]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) that grants HealthLake access to the
    #   input data.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   An explanation of any errors that might have occurred during the
    #   FHIR import job.
    #   @return [String]
    #
    # @!attribute [rw] validation_level
    #   The validation level of the import job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/ImportJobProperties AWS API Documentation
    #
    class ImportJobProperties < Struct.new(
      :job_id,
      :job_name,
      :job_status,
      :submit_time,
      :end_time,
      :datastore_id,
      :input_data_config,
      :job_output_data_config,
      :job_progress_report,
      :data_access_role_arn,
      :message,
      :validation_level)
      SENSITIVE = []
      include Aws::Structure
    end

    # The import job input properties.
    #
    # @note InputDataConfig is a union - when making an API calls you must set exactly one of the members.
    #
    # @note InputDataConfig is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of InputDataConfig corresponding to the set member.
    #
    # @!attribute [rw] s3_uri
    #   The `S3Uri` is the user-specified Amazon S3 location of the FHIR
    #   data to be imported into HealthLake.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/InputDataConfig AWS API Documentation
    #
    class InputDataConfig < Struct.new(
      :s3_uri,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class S3Uri < InputDataConfig; end
      class Unknown < InputDataConfig; end
    end

    # An unknown internal error occurred in the service.
    #
    # @!attribute [rw] message
    #   A general-purpose string value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The progress report for the import job.
    #
    # @!attribute [rw] total_number_of_scanned_files
    #   The number of files scanned from the Amazon S3 input bucket.
    #   @return [Integer]
    #
    # @!attribute [rw] total_size_of_scanned_files_in_mb
    #   The size (in MB) of files scanned from the Amazon S3 input bucket.
    #   @return [Float]
    #
    # @!attribute [rw] total_number_of_imported_files
    #   The number of files imported.
    #   @return [Integer]
    #
    # @!attribute [rw] total_number_of_resources_scanned
    #   The number of resources scanned from the Amazon S3 input bucket.
    #   @return [Integer]
    #
    # @!attribute [rw] total_number_of_resources_imported
    #   The number of resources imported.
    #   @return [Integer]
    #
    # @!attribute [rw] total_number_of_resources_with_customer_error
    #   The number of resources that failed due to customer error.
    #   @return [Integer]
    #
    # @!attribute [rw] total_number_of_files_read_with_customer_error
    #   The number of files that failed to be read from the Amazon S3 input
    #   bucket due to customer error.
    #   @return [Integer]
    #
    # @!attribute [rw] total_number_of_scanned_non_fhir_files
    #   The number of non-FHIR files scanned from the Amazon S3 input
    #   bucket.
    #   @return [Integer]
    #
    # @!attribute [rw] total_size_of_scanned_non_fhir_files_in_mb
    #   The size (in MB) of non-FHIR files scanned from the Amazon S3 input
    #   bucket.
    #   @return [Float]
    #
    # @!attribute [rw] total_number_of_imported_non_fhir_files
    #   The number of non-FHIR files imported.
    #   @return [Integer]
    #
    # @!attribute [rw] total_number_of_non_fhir_resources_scanned
    #   The number of non-FHIR resources scanned from the Amazon S3 input
    #   bucket.
    #   @return [Integer]
    #
    # @!attribute [rw] total_number_of_non_fhir_resources_imported
    #   The number of non-FHIR resources imported.
    #   @return [Integer]
    #
    # @!attribute [rw] total_number_of_non_fhir_resources_with_customer_error
    #   The number of non-FHIR resources that failed due to customer error.
    #   @return [Integer]
    #
    # @!attribute [rw] total_number_of_non_fhir_files_read_with_customer_error
    #   The number of non-FHIR files that failed to be read from the Amazon
    #   S3 input bucket due to customer error.
    #   @return [Integer]
    #
    # @!attribute [rw] throughput
    #   The transaction rate the import job is processed at.
    #   @return [Float]
    #
    # @!attribute [rw] total_files_converted
    #   Number of CCDA files successfully transformed during the import's
    #   transformation phase. Populated only for import jobs that use the
    #   two-Step-Function (transformation + ingestion) flow; null for legacy
    #   single-SF imports and for pure FHIR imports that skip
    #   transformation.
    #   @return [Integer]
    #
    # @!attribute [rw] total_resources_generated
    #   Number of FHIR resources produced by the transformation phase.
    #   Populated only for import jobs that use the two-Step-Function flow;
    #   null for legacy single-SF imports and for pure FHIR imports.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/JobProgressReport AWS API Documentation
    #
    class JobProgressReport < Struct.new(
      :total_number_of_scanned_files,
      :total_size_of_scanned_files_in_mb,
      :total_number_of_imported_files,
      :total_number_of_resources_scanned,
      :total_number_of_resources_imported,
      :total_number_of_resources_with_customer_error,
      :total_number_of_files_read_with_customer_error,
      :total_number_of_scanned_non_fhir_files,
      :total_size_of_scanned_non_fhir_files_in_mb,
      :total_number_of_imported_non_fhir_files,
      :total_number_of_non_fhir_resources_scanned,
      :total_number_of_non_fhir_resources_imported,
      :total_number_of_non_fhir_resources_with_customer_error,
      :total_number_of_non_fhir_files_read_with_customer_error,
      :throughput,
      :total_files_converted,
      :total_resources_generated)
      SENSITIVE = []
      include Aws::Structure
    end

    # The customer-managed-key (CMK) used when creating a data store. If a
    # customer-owned key is not specified, an Amazon Web Services-owned key
    # is used for encryption.
    #
    # @!attribute [rw] cmk_type
    #   The type of customer-managed-key (CMK) used for encryption.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The Key Management Service (KMS) encryption key id/alias used to
    #   encrypt the data store contents at rest.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/KmsEncryptionConfig AWS API Documentation
    #
    class KmsEncryptionConfig < Struct.new(
      :cmk_type,
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters for the `ListDataTransformationJobs` operation.
    #
    # @!attribute [rw] max_results
    #   The maximum number of jobs to return per page. If you don't specify
    #   a value, the service returns up to 100 results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token from a previous response. Pass this value to
    #   retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   Filters the results to include only jobs with the specified status.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   Filters the results to include only jobs with the specified name.
    #   @return [String]
    #
    # @!attribute [rw] submitted_after
    #   Filters the results to include only jobs submitted at or after this
    #   timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] submitted_before
    #   Filters the results to include only jobs submitted at or before this
    #   timestamp.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/ListDataTransformationJobsRequest AWS API Documentation
    #
    class ListDataTransformationJobsRequest < Struct.new(
      :max_results,
      :next_token,
      :job_status,
      :job_name,
      :submitted_after,
      :submitted_before)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response from the `ListDataTransformationJobs` operation.
    #
    # @!attribute [rw] items
    #   The list of data transformation job summaries.
    #   @return [Array<Types::TransformationJobSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use in the next request. If this value is
    #   `null`, there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/ListDataTransformationJobsResponse AWS API Documentation
    #
    class ListDataTransformationJobsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters for the `ListDataTransformationProfileVersions`
    # operation.
    #
    # @!attribute [rw] profile_id
    #   The unique identifier of the profile whose versions to list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of profile versions to return per page. If you
    #   don't specify a value, the service returns up to 100 results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token from a previous response. Pass this value to
    #   retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/ListDataTransformationProfileVersionsRequest AWS API Documentation
    #
    class ListDataTransformationProfileVersionsRequest < Struct.new(
      :profile_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response from the `ListDataTransformationProfileVersions`
    # operation.
    #
    # @!attribute [rw] items
    #   The list of data transformation profile version summaries.
    #   @return [Array<Types::DataTransformationProfileVersionSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use in the next request. If this value is
    #   `null`, there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/ListDataTransformationProfileVersionsResponse AWS API Documentation
    #
    class ListDataTransformationProfileVersionsResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters for the `ListDataTransformationProfiles`
    # operation.
    #
    # @!attribute [rw] source_format
    #   Filters the results by source data format.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of profiles to return per page. If you don't
    #   specify a value, the service returns up to 100 results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The pagination token from a previous response. Pass this value to
    #   retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/ListDataTransformationProfilesRequest AWS API Documentation
    #
    class ListDataTransformationProfilesRequest < Struct.new(
      :source_format,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response from the `ListDataTransformationProfiles` operation.
    #
    # @!attribute [rw] items
    #   The list of data transformation profile summaries.
    #   @return [Array<Types::DataTransformationProfileSummary>]
    #
    # @!attribute [rw] next_token
    #   The pagination token to use in the next request. If this value is
    #   `null`, there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/ListDataTransformationProfilesResponse AWS API Documentation
    #
    class ListDataTransformationProfilesResponse < Struct.new(
      :items,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter
    #   List all filters associated with a FHIR data store request.
    #   @return [Types::DatastoreFilter]
    #
    # @!attribute [rw] next_token
    #   The token used to retrieve the next page of data stores when results
    #   are paginated.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of data stores returned on a page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/ListFHIRDatastoresRequest AWS API Documentation
    #
    class ListFHIRDatastoresRequest < Struct.new(
      :filter,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datastore_properties_list
    #   The properties associated with all listed data stores.
    #   @return [Array<Types::DatastoreProperties>]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/ListFHIRDatastoresResponse AWS API Documentation
    #
    class ListFHIRDatastoresResponse < Struct.new(
      :datastore_properties_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datastore_id
    #   Limits the response to the export job with the specified data store
    #   ID.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token used to identify the next page of results to
    #   return.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Limits the number of results returned for a ListFHIRExportJobs to a
    #   maximum quantity specified by the user.
    #   @return [Integer]
    #
    # @!attribute [rw] job_name
    #   Limits the response to the export job with the specified job name.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   Limits the response to export jobs with the specified job status.
    #   @return [String]
    #
    # @!attribute [rw] submitted_before
    #   Limits the response to FHIR export jobs submitted before a user-
    #   specified date.
    #   @return [Time]
    #
    # @!attribute [rw] submitted_after
    #   Limits the response to FHIR export jobs submitted after a
    #   user-specified date.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/ListFHIRExportJobsRequest AWS API Documentation
    #
    class ListFHIRExportJobsRequest < Struct.new(
      :datastore_id,
      :next_token,
      :max_results,
      :job_name,
      :job_status,
      :submitted_before,
      :submitted_after)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] export_job_properties_list
    #   The properties of listed FHIR export jobs.
    #   @return [Array<Types::ExportJobProperties>]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to identify the next page of results to
    #   return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/ListFHIRExportJobsResponse AWS API Documentation
    #
    class ListFHIRExportJobsResponse < Struct.new(
      :export_job_properties_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datastore_id
    #   Limits the response to the import job with the specified data store
    #   ID.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to identify the next page of results to
    #   return.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Limits the number of results returned for `ListFHIRImportJobs` to a
    #   maximum quantity specified by the user.
    #   @return [Integer]
    #
    # @!attribute [rw] job_name
    #   Limits the response to the import job with the specified job name.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   Limits the response to the import job with the specified job status.
    #   @return [String]
    #
    # @!attribute [rw] submitted_before
    #   Limits the response to FHIR import jobs submitted before a user-
    #   specified date.
    #   @return [Time]
    #
    # @!attribute [rw] submitted_after
    #   Limits the response to FHIR import jobs submitted after a
    #   user-specified date.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/ListFHIRImportJobsRequest AWS API Documentation
    #
    class ListFHIRImportJobsRequest < Struct.new(
      :datastore_id,
      :next_token,
      :max_results,
      :job_name,
      :job_status,
      :submitted_before,
      :submitted_after)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] import_job_properties_list
    #   The properties for listed import jobs.
    #   @return [Array<Types::ImportJobProperties>]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to identify the next page of results to
    #   return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/ListFHIRImportJobsResponse AWS API Documentation
    #
    class ListFHIRImportJobsResponse < Struct.new(
      :import_job_properties_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the data store to which tags are
    #   being added.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   Returns a list of tags associated with a data store.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The natural language processing (NLP) configuration for a data store.
    #
    # @!attribute [rw] status
    #   The status of the NLP configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/NlpConfiguration AWS API Documentation
    #
    class NlpConfiguration < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested operation is not yet available. Check the service
    # documentation for a list of supported operations.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/NotImplementedOperationException AWS API Documentation
    #
    class NotImplementedOperationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output data configuration supplied when the export job was
    # created.
    #
    # @note OutputDataConfig is a union - when making an API calls you must set exactly one of the members.
    #
    # @note OutputDataConfig is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of OutputDataConfig corresponding to the set member.
    #
    # @!attribute [rw] s3_configuration
    #   The output data configuration supplied when the export job was
    #   created.
    #   @return [Types::S3Configuration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/OutputDataConfig AWS API Documentation
    #
    class OutputDataConfig < Struct.new(
      :s3_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class S3Configuration < OutputDataConfig; end
      class Unknown < OutputDataConfig; end
    end

    # The input properties for the preloaded (Synthea) data store.
    #
    # @!attribute [rw] preload_data_type
    #   The type of preloaded data. Only Synthea preloaded data is
    #   supported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/PreloadDataConfig AWS API Documentation
    #
    class PreloadDataConfig < Struct.new(
      :preload_data_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The profile configuration for a data store.
    #
    # @!attribute [rw] default_profiles
    #   The list of default profiles for the data store.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/ProfileConfiguration AWS API Documentation
    #
    class ProfileConfiguration < Struct.new(
      :default_profiles)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains raw content to use as the source when creating a data
    # transformation profile directly from a mapping.
    #
    # @!attribute [rw] profile_mapping
    #   The content as a map of file paths to profile strings.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/ProfileMappingSource AWS API Documentation
    #
    class ProfileMappingSource < Struct.new(
      :profile_mapping)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters for the `PublishDataTransformationProfile`
    # operation.
    #
    # @!attribute [rw] profile_id
    #   The unique identifier of the profile to publish.
    #   @return [String]
    #
    # @!attribute [rw] source_format
    #   The source data format of the profile.
    #   @return [String]
    #
    # @!attribute [rw] from_existing_version
    #   The version number of a previously published version to republish as
    #   the new latest version. Use this parameter for rollback scenarios.
    #   If you omit this parameter, the service publishes the current DRAFT
    #   version.
    #   @return [Integer]
    #
    # @!attribute [rw] change_description
    #   A description of what changed or why this version is being
    #   published.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/PublishDataTransformationProfileRequest AWS API Documentation
    #
    class PublishDataTransformationProfileRequest < Struct.new(
      :profile_id,
      :source_format,
      :from_existing_version,
      :change_description)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response from the `PublishDataTransformationProfile` operation.
    #
    # @!attribute [rw] profile_id
    #   The unique identifier of the published profile.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The new version number that was created.
    #   @return [Integer]
    #
    # @!attribute [rw] source_format
    #   The source data format of the profile.
    #   @return [String]
    #
    # @!attribute [rw] target_format
    #   The target output format of the profile.
    #   @return [String]
    #
    # @!attribute [rw] profile_name
    #   The name of the published profile.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp when the profile was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/PublishDataTransformationProfileResponse AWS API Documentation
    #
    class PublishDataTransformationProfileResponse < Struct.new(
      :profile_id,
      :version,
      :source_format,
      :target_format,
      :profile_name,
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requested data store was not found.
    #
    # @!attribute [rw] message
    #   A general-purpose string value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the type and parameters for the restore operation.
    #
    # @note RestoreConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] continuous_backup_restore_configuration
    #   Configuration for restoring from continuous backup to a specific
    #   point in time.
    #   @return [Types::ContinuousBackupRestoreConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/RestoreConfiguration AWS API Documentation
    #
    class RestoreConfiguration < Struct.new(
      :continuous_backup_restore_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ContinuousBackupRestoreConfiguration < RestoreConfiguration; end
      class Unknown < RestoreConfiguration; end
    end

    # @!attribute [rw] source_datastore_id
    #   The identifier of the source data store to restore from.
    #   @return [String]
    #
    # @!attribute [rw] restore_configuration
    #   The restore configuration specifying the type and parameters for the
    #   restore.
    #   @return [Types::RestoreConfiguration]
    #
    # @!attribute [rw] datastore_name
    #   The name for the restored data store.
    #   @return [String]
    #
    # @!attribute [rw] sse_configuration
    #   The server-side encryption key configuration for the restored data
    #   store.
    #   @return [Types::SseConfiguration]
    #
    # @!attribute [rw] client_token
    #   An optional user-provided token to ensure API idempotency of the
    #   restore.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The resource tags applied to the restored data store.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] identity_provider_configuration
    #   The identity provider configuration for the restored data store.
    #   @return [Types::IdentityProviderConfiguration]
    #
    # @!attribute [rw] analytics_configuration
    #   The analytics configuration for the restored data store.
    #   @return [Types::AnalyticsConfiguration]
    #
    # @!attribute [rw] nlp_configuration
    #   The NLP configuration for the restored data store.
    #   @return [Types::NlpConfiguration]
    #
    # @!attribute [rw] profile_configuration
    #   The profile configuration for the restored data store.
    #   @return [Types::ProfileConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/RestoreFHIRDatastoreRequest AWS API Documentation
    #
    class RestoreFHIRDatastoreRequest < Struct.new(
      :source_datastore_id,
      :restore_configuration,
      :datastore_name,
      :sse_configuration,
      :client_token,
      :tags,
      :identity_provider_configuration,
      :analytics_configuration,
      :nlp_configuration,
      :profile_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datastore_id
    #   The restored data store identifier.
    #   @return [String]
    #
    # @!attribute [rw] datastore_arn
    #   The Amazon Resource Name (ARN) for the restored data store.
    #   @return [String]
    #
    # @!attribute [rw] datastore_status
    #   The restored data store status.
    #   @return [String]
    #
    # @!attribute [rw] datastore_endpoint
    #   The AWS endpoint for the restored data store.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/RestoreFHIRDatastoreResponse AWS API Documentation
    #
    class RestoreFHIRDatastoreResponse < Struct.new(
      :datastore_id,
      :datastore_arn,
      :datastore_status,
      :datastore_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of the Amazon S3 bucket for either an import or
    # export job. This includes assigning access permissions.
    #
    # @!attribute [rw] s3_uri
    #   The `S3Uri` is the user-specified Amazon S3 location of the FHIR
    #   data to be imported into HealthLake.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The Key Management Service (KMS) key ID used to access the Amazon S3
    #   bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/S3Configuration AWS API Documentation
    #
    class S3Configuration < Struct.new(
      :s3_uri,
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies a sample data file in Amazon S3 to use as the source when
    # creating a data transformation profile. Valid only when the source
    # format is Comma-separated values (CSV).
    #
    # @!attribute [rw] s3_uri
    #   The Amazon S3 URI of the sample data file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/SampleDataSource AWS API Documentation
    #
    class SampleDataSource < Struct.new(
      :s3_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request exceeds the service quota.
    #
    # @!attribute [rw] message
    #   A message describing the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The server-side encryption key configuration for a customer-provided
    # encryption key.
    #
    # @!attribute [rw] kms_encryption_config
    #   The Key Management Service (KMS) encryption configuration used to
    #   provide details for data encryption.
    #   @return [Types::KmsEncryptionConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/SseConfiguration AWS API Documentation
    #
    class SseConfiguration < Struct.new(
      :kms_encryption_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters for the `StartDataTransformationJob` operation.
    #
    # @!attribute [rw] input_data_config
    #   The Amazon S3 location and format of the source files to transform.
    #   @return [Types::TransformationInputDataConfig]
    #
    # @!attribute [rw] output_data_config
    #   The Amazon S3 output location and Amazon Web Services Key Management
    #   Service (Amazon Web Services KMS) encryption configuration.
    #   @return [Types::TransformationOutputDataConfig]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of the Amazon Web Services Identity
    #   and Access Management (IAM) role that HealthLake assumes to read
    #   from and write to the specified Amazon S3 locations.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier to ensure that the operation
    #   completes no more than one time. If this token matches a previous
    #   request, the service ignores the request but does not return an
    #   error.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   A descriptive name for the data transformation job.
    #   @return [String]
    #
    # @!attribute [rw] profile_id
    #   The unique identifier of the data transformation profile to use for
    #   conversion.
    #   @return [String]
    #
    # @!attribute [rw] drift_detection_enabled
    #   Specifies whether drift detection is enabled for this job. When
    #   enabled, HealthLake writes a drift report to the output Amazon S3
    #   location alongside the converted files.
    #   @return [Boolean]
    #
    # @!attribute [rw] provenance_enabled
    #   Specifies whether FHIR R4 Provenance resource generation is enabled
    #   for this transformation job. When provenance is enabled, the service
    #   also generates related DocumentReference and Device resources. If
    #   you don't specify a value, the default is `true`. To disable
    #   provenance output, set this parameter to `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/StartDataTransformationJobRequest AWS API Documentation
    #
    class StartDataTransformationJobRequest < Struct.new(
      :input_data_config,
      :output_data_config,
      :data_access_role_arn,
      :client_token,
      :job_name,
      :profile_id,
      :drift_detection_enabled,
      :provenance_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response from the `StartDataTransformationJob` operation.
    #
    # @!attribute [rw] job_id
    #   The unique identifier assigned to the data transformation job.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The initial status of the data transformation job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/StartDataTransformationJobResponse AWS API Documentation
    #
    class StartDataTransformationJobResponse < Struct.new(
      :job_id,
      :job_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_name
    #   The export job name.
    #   @return [String]
    #
    # @!attribute [rw] output_data_config
    #   The output data configuration supplied when the export job was
    #   started.
    #   @return [Types::OutputDataConfig]
    #
    # @!attribute [rw] datastore_id
    #   The data store identifier from which files are being exported.
    #   @return [String]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) used during initiation of the export
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   An optional user provided token used for ensuring API idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/StartFHIRExportJobRequest AWS API Documentation
    #
    class StartFHIRExportJobRequest < Struct.new(
      :job_name,
      :output_data_config,
      :datastore_id,
      :data_access_role_arn,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The export job identifier.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The export job status.
    #   @return [String]
    #
    # @!attribute [rw] datastore_id
    #   The data store identifier from which files are being exported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/StartFHIRExportJobResponse AWS API Documentation
    #
    class StartFHIRExportJobResponse < Struct.new(
      :job_id,
      :job_status,
      :datastore_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_name
    #   The import job name.
    #   @return [String]
    #
    # @!attribute [rw] input_data_config
    #   The input properties for the import job request.
    #   @return [Types::InputDataConfig]
    #
    # @!attribute [rw] job_output_data_config
    #   The output data configuration supplied when the export job was
    #   created.
    #   @return [Types::OutputDataConfig]
    #
    # @!attribute [rw] datastore_id
    #   The data store identifier.
    #   @return [String]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) that grants access permission to
    #   HealthLake.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The optional user-provided token used for ensuring API idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] validation_level
    #   The validation level of the import job.
    #   @return [String]
    #
    # @!attribute [rw] profile_id
    #   The data transformation profile identifier to use for the import
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] input_format
    #   The input format of the data to be imported.
    #   @return [String]
    #
    # @!attribute [rw] drift_detection_enabled
    #   Specifies whether to enable drift detection for the import job.
    #   @return [Boolean]
    #
    # @!attribute [rw] provenance_enabled
    #   Specifies whether to enable provenance for the import job.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/StartFHIRImportJobRequest AWS API Documentation
    #
    class StartFHIRImportJobRequest < Struct.new(
      :job_name,
      :input_data_config,
      :job_output_data_config,
      :datastore_id,
      :data_access_role_arn,
      :client_token,
      :validation_level,
      :profile_id,
      :input_format,
      :drift_detection_enabled,
      :provenance_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The import job identifier.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The import job status.
    #   @return [String]
    #
    # @!attribute [rw] datastore_id
    #   The data store identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/StartFHIRImportJobResponse AWS API Documentation
    #
    class StartFHIRImportJobResponse < Struct.new(
      :job_id,
      :job_status,
      :datastore_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies a built-in starter profile to use as the source when
    # creating a data transformation profile. Valid only when the source
    # format is Consolidated Clinical Document Architecture (C-CDA).
    #
    # @!attribute [rw] starter_profile_name
    #   The name of the built-in starter profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/StarterProfileSource AWS API Documentation
    #
    class StarterProfileSource < Struct.new(
      :starter_profile_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A label consisting of a user-defined key and value. The form for tags
    # is \{"Key", "Value"}
    #
    # @!attribute [rw] key
    #   The key portion of a tag. Tag keys are case sensitive.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value portion of a tag. Tag values are case-sensitive.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that grants access to the data store
    #   tags are being added to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The user-specified key and value pair tags being added to a data
    #   store.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The user has exceeded their maximum number of allowed calls to the
    # given API.
    #
    # @!attribute [rw] message
    #   A general-purpose string value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon S3 location and source format configuration for input data
    # in a transformation job.
    #
    # @!attribute [rw] s3_uri
    #   The Amazon S3 URI of the input data to transform.
    #   @return [String]
    #
    # @!attribute [rw] source_format
    #   The format of the source data files (C-CDA or CSV).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/TransformationInputDataConfig AWS API Documentation
    #
    class TransformationInputDataConfig < Struct.new(
      :s3_uri,
      :source_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains progress metrics for a data transformation job, including
    # counts of files scanned, converted, and failed.
    #
    # @!attribute [rw] total_files_scanned
    #   The total number of source files scanned by the job.
    #   @return [Integer]
    #
    # @!attribute [rw] total_files_converted
    #   The total number of source files successfully converted.
    #   @return [Integer]
    #
    # @!attribute [rw] total_files_failed
    #   The total number of source files that failed conversion.
    #   @return [Integer]
    #
    # @!attribute [rw] total_resources_generated
    #   The total number of FHIR R4 resources generated across all converted
    #   files.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/TransformationJobProgressReport AWS API Documentation
    #
    class TransformationJobProgressReport < Struct.new(
      :total_files_scanned,
      :total_files_converted,
      :total_files_failed,
      :total_resources_generated)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the properties of a data transformation job, including its
    # status, configuration, and progress information. You retrieve this
    # structure by calling `DescribeDataTransformationJob`.
    #
    # @!attribute [rw] job_id
    #   The unique identifier of the data transformation job.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The current status of the data transformation job.
    #   @return [String]
    #
    # @!attribute [rw] input_data_config
    #   The Amazon S3 location and format of the source files for this job.
    #   @return [Types::TransformationInputDataConfig]
    #
    # @!attribute [rw] output_data_config
    #   The Amazon S3 location and encryption configuration for the
    #   converted output.
    #   @return [Types::TransformationOutputDataConfig]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of the Amazon Web Services Identity
    #   and Access Management (IAM) role that grants HealthLake access to
    #   the specified Amazon S3 locations. HealthLake assumes this role to
    #   read input files and write output files.
    #   @return [String]
    #
    # @!attribute [rw] submit_time
    #   The timestamp when the job was submitted.
    #   @return [Time]
    #
    # @!attribute [rw] job_name
    #   The name of the data transformation job.
    #   @return [String]
    #
    # @!attribute [rw] profile_id
    #   The unique identifier of the data transformation profile used for
    #   this job.
    #   @return [String]
    #
    # @!attribute [rw] profile_name
    #   The name of the data transformation profile used for this job.
    #   @return [String]
    #
    # @!attribute [rw] profile_version
    #   The version number of the data transformation profile used for this
    #   job.
    #   @return [Integer]
    #
    # @!attribute [rw] end_time
    #   The timestamp when the job completed or failed.
    #   @return [Time]
    #
    # @!attribute [rw] drift_detection_enabled
    #   Specifies whether drift detection is enabled for this job. When
    #   enabled, HealthLake writes a drift report to the output Amazon S3
    #   location alongside the converted files.
    #   @return [Boolean]
    #
    # @!attribute [rw] provenance_enabled
    #   Specifies whether FHIR R4 Provenance resource generation is enabled
    #   for this transformation job. When provenance is enabled, the service
    #   also generates related DocumentReference and Device resources.
    #   @return [Boolean]
    #
    # @!attribute [rw] message
    #   An informational message about the job, such as an error description
    #   if the job failed.
    #   @return [String]
    #
    # @!attribute [rw] job_progress_report
    #   The progress report for the data transformation job, including
    #   counts of files processed and resources generated.
    #   @return [Types::TransformationJobProgressReport]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/TransformationJobProperties AWS API Documentation
    #
    class TransformationJobProperties < Struct.new(
      :job_id,
      :job_status,
      :input_data_config,
      :output_data_config,
      :data_access_role_arn,
      :submit_time,
      :job_name,
      :profile_id,
      :profile_name,
      :profile_version,
      :end_time,
      :drift_detection_enabled,
      :provenance_enabled,
      :message,
      :job_progress_report)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains summary information about a data transformation job. To
    # retrieve full job details, call `DescribeDataTransformationJob`.
    #
    # @!attribute [rw] job_id
    #   The unique identifier of the job.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The current status of the job.
    #   @return [String]
    #
    # @!attribute [rw] submit_time
    #   The timestamp when the job was submitted.
    #   @return [Time]
    #
    # @!attribute [rw] job_name
    #   The name of the job.
    #   @return [String]
    #
    # @!attribute [rw] end_time
    #   The timestamp when the job completed.
    #   @return [Time]
    #
    # @!attribute [rw] source_format
    #   The source data format for this job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/TransformationJobSummary AWS API Documentation
    #
    class TransformationJobSummary < Struct.new(
      :job_id,
      :job_status,
      :submit_time,
      :job_name,
      :end_time,
      :source_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon S3 output location and encryption configuration for a
    # transformation job.
    #
    # @!attribute [rw] s3_configuration
    #   The Amazon S3 output location and Amazon Web Services Key Management
    #   Service (Amazon Web Services KMS) encryption configuration.
    #   @return [Types::DataTransformationS3Configuration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/TransformationOutputDataConfig AWS API Documentation
    #
    class TransformationOutputDataConfig < Struct.new(
      :s3_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # You are not authorized to make this request. Verify that your Amazon
    # Web Services credentials are valid and that you have the required
    # permissions.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/UnauthorizedException AWS API Documentation
    #
    class UnauthorizedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The content type in your request is not supported. Use a supported
    # content type for this operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/UnsupportedMIMETypeException AWS API Documentation
    #
    class UnsupportedMIMETypeException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the data store from which tags are
    #   being removed.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys for the tags to be removed from the data store.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # The request parameters for the `UpdateDataTransformationProfile`
    # operation.
    #
    # @!attribute [rw] profile_id
    #   The unique identifier of the profile to update.
    #   @return [String]
    #
    # @!attribute [rw] profile_mapping
    #   The new profile content for the DRAFT version. This is a full
    #   replacement of all profile files.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] change_description
    #   A description of what changed in this update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/UpdateDataTransformationProfileRequest AWS API Documentation
    #
    class UpdateDataTransformationProfileRequest < Struct.new(
      :profile_id,
      :profile_mapping,
      :change_description)
      SENSITIVE = [:profile_mapping]
      include Aws::Structure
    end

    # The response from the `UpdateDataTransformationProfile` operation.
    #
    # @!attribute [rw] profile_id
    #   The unique identifier of the updated profile.
    #   @return [String]
    #
    # @!attribute [rw] source_format
    #   The source data format of the profile.
    #   @return [String]
    #
    # @!attribute [rw] target_format
    #   The target output format of the profile.
    #   @return [String]
    #
    # @!attribute [rw] profile_name
    #   The name of the updated profile.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_at
    #   The timestamp when the profile was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/UpdateDataTransformationProfileResponse AWS API Documentation
    #
    class UpdateDataTransformationProfileResponse < Struct.new(
      :profile_id,
      :source_format,
      :target_format,
      :profile_name,
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datastore_id
    #   The data store identifier.
    #   @return [String]
    #
    # @!attribute [rw] datastore_name
    #   The data store name.
    #   @return [String]
    #
    # @!attribute [rw] analytics_configuration
    #   The analytics configuration for the data store.
    #   @return [Types::AnalyticsConfiguration]
    #
    # @!attribute [rw] nlp_configuration
    #   The natural language processing (NLP) configuration for the data
    #   store.
    #   @return [Types::NlpConfiguration]
    #
    # @!attribute [rw] profile_configuration
    #   The profile configuration for the data store.
    #   @return [Types::ProfileConfiguration]
    #
    # @!attribute [rw] identity_provider_configuration
    #   The identity provider configuration for the data store.
    #   @return [Types::IdentityProviderConfiguration]
    #
    # @!attribute [rw] backup_configuration
    #   The backup configuration for the data store.
    #   @return [Types::BackupConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/UpdateFHIRDatastoreRequest AWS API Documentation
    #
    class UpdateFHIRDatastoreRequest < Struct.new(
      :datastore_id,
      :datastore_name,
      :analytics_configuration,
      :nlp_configuration,
      :profile_configuration,
      :identity_provider_configuration,
      :backup_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datastore_properties
    #   The data store properties.
    #   @return [Types::DatastoreProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/UpdateFHIRDatastoreResponse AWS API Documentation
    #
    class UpdateFHIRDatastoreResponse < Struct.new(
      :datastore_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request parameters for the `UpdateProfileWithAgent` operation.
    #
    # @!attribute [rw] profile_id
    #   The unique identifier of the profile to update via the agent.
    #   @return [String]
    #
    # @!attribute [rw] source_format
    #   The source data format for the transformation.
    #   @return [String]
    #
    # @!attribute [rw] input_message
    #   The message to send to the agent.
    #   @return [Types::AgentInputMessage]
    #
    # @!attribute [rw] conversation_id
    #   The conversation identifier for multi-turn interactions. Omit to
    #   start a new conversation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/UpdateProfileWithAgentRequest AWS API Documentation
    #
    class UpdateProfileWithAgentRequest < Struct.new(
      :profile_id,
      :source_format,
      :input_message,
      :conversation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response from the `UpdateProfileWithAgent` operation.
    #
    # @!attribute [rw] agent_response
    #   The response message from the agent.
    #   @return [Types::AgentOutputMessage]
    #
    # @!attribute [rw] conversation_id
    #   The conversation identifier to use for follow-up messages in this
    #   conversation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/UpdateProfileWithAgentResponse AWS API Documentation
    #
    class UpdateProfileWithAgentResponse < Struct.new(
      :agent_response,
      :conversation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The user input parameter was invalid.
    #
    # @!attribute [rw] message
    #   A general-purpose string value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

