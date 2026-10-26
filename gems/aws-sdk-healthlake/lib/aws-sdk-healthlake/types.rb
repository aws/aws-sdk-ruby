# frozen_string_literal: true

# This is generated code!

module Aws::HealthLake
  # This module contains the types returned by client operations.
  module Types

    # <p>Access is denied. Your account is not authorized to perform this operation.</p>
    # @!attribute message
    #   A general-purpose string value.
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a message sent to the agent during chat-based profile customization.</p>
    # @!attribute body
    #   <p>The text of your message to the agent.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of input message, which determines how the agent processes your request. Valid values:</p> <ul> <li> <p> <code>normal</code>: A regular message to the agent.</p> </li> <li> <p> <code>confirmation_response</code>: A response to a confirmation request from the agent.</p> </li> </ul>
    #   @return [String]
    class AgentInputMessage < Struct.new(
      nil,
      :body,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The agent message does not fit within the current conversation context. Start a new conversation or provide a message that relates to the current profile customization session.</p>
    # @!attribute message
    #   @return [String]
    class AgentMessageOutOfContextException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a response message from the agent during chat-based profile customization.</p>
    # @!attribute body
    #   <p>The text of the agent's response.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of output message, which indicates how to interpret the agent's response.</p>
    #   @return [String]
    # @!attribute options_list
    #   <p>A list of selectable options presented when the response type is <code>options</code>.</p>
    #   @return [Array<String>]
    class AgentOutputMessage < Struct.new(
      nil,
      :body,
      :type,
      :options_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The analytics configuration for a data store.</p>
    # @!attribute status
    #   <p>The status of the analytics configuration.</p>
    #   @return [String]
    class AnalyticsConfiguration < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The backup configuration for the data store.
    # @!attribute status
    #   The backup status of the data store.
    #   @return [String]
    # @!attribute backup_type
    #   The type of backup.
    #   @return [String]
    # @!attribute retention_period_in_days
    #   The number of days backup data is retained.
    #   @return [Integer]
    # @!attribute backup_tags_enabled
    #   Specifies whether tags are included in backups.
    #   @return [Boolean]
    class BackupConfiguration < Struct.new(
      nil,
      :status,
      :backup_type,
      :retention_period_in_days,
      :backup_tags_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:backup_tags_enabled] = false unless options.key?(:backup_tags_enabled)
        super
      end
    end

    # <p>The data store is in a transition state and the user requested action cannot be performed.</p>
    # @!attribute message
    #   A general-purpose string value.
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Configuration for continuous backup (point-in-time) restore.
    # @!attribute restore_point_time
    #   The point in time to restore the data store to, specified as a UTC timestamp.
    #   @return [Time]
    class ContinuousBackupRestoreConfiguration < Struct.new(
      nil,
      :restore_point_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified conversation identifier does not exist. Verify the conversation ID or omit it to start a new conversation.</p>
    # @!attribute message
    #   @return [String]
    class ConversationNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters for the <code>CreateDataTransformationProfile</code> operation.</p>
    # @!attribute source_format
    #   <p>The source data format that this profile converts from (Consolidated Clinical Document Architecture (C-CDA) or Comma-separated values (CSV)).</p>
    #   @return [String]
    # @!attribute source
    #   <p>The source for the initial profile content. Specify a built-in starter profile, an existing profile version to clone, raw profile content for CI/CD workflows, or a sample data file in Amazon S3.</p>
    #   @return [Types::CreateDataTransformationProfileSource]
    # @!attribute kms_key_id
    #   <p>The Amazon Web Services Key Management Service (Amazon Web Services KMS) key identifier used to encrypt the profile content at rest.</p>
    #   @return [String]
    # @!attribute profile_description
    #   <p>A human-readable description of the profile's purpose.</p>
    #   @return [String]
    # @!attribute profile_name
    #   <p>A name for the data transformation profile.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to associate with the profile at creation time.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, the service ignores the request but does not return an error.</p>
    #   @return [String]
    class CreateDataTransformationProfileRequest < Struct.new(
      nil,
      :source_format,
      :source,
      :kms_key_id,
      :profile_description,
      :profile_name,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response from the <code>CreateDataTransformationProfile</code> operation.</p>
    # @!attribute profile_id
    #   <p>The unique identifier of the created profile.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version number of the newly created profile. The starting version is always 0, which indicates the profile is in DRAFT state.</p>
    #   @return [Integer]
    # @!attribute source_format
    #   <p>The source data format of the profile.</p>
    #   @return [String]
    # @!attribute target_format
    #   <p>The target output format. Always <code>FHIR_R4</code>.</p>
    #   @return [String]
    # @!attribute profile_name
    #   <p>The name of the created profile.</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>The timestamp when the profile was last updated.</p>
    #   @return [Time]
    class CreateDataTransformationProfileResponse < Struct.new(
      nil,
      :profile_id,
      :version,
      :source_format,
      :target_format,
      :profile_name,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The source for initial content when creating a data transformation profile. Specify exactly one variant: a built-in starter profile, an existing profile version to clone, raw profile content, or a sample data file.</p>
    # @!attribute starter_profile
    #   <p>Creates the profile from a built-in starter profile. Valid only when the source format is Consolidated Clinical Document Architecture (C-CDA).</p>
    #   @return [Types::StarterProfileSource]
    # @!attribute existing_versioned_profile_id
    #   <p>Creates the profile by cloning an existing profile at a specific version.</p>
    #   @return [Types::ExistingVersionedProfileSource]
    # @!attribute profile_mapping
    #   <p>Creates the profile from raw profile content that you provide directly. Use this variant for continuous integration and continuous delivery (CI/CD) workflows.</p>
    #   @return [Types::ProfileMappingSource]
    # @!attribute sample_data
    #   <p>Creates the profile from a sample data file stored in Amazon S3. Valid only when the source format is Comma-separated values (CSV).</p>
    #   @return [Types::SampleDataSource]
    class CreateDataTransformationProfileSource < Struct.new(
      :starter_profile,
      :existing_versioned_profile_id,
      :profile_mapping,
      :sample_data,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class StarterProfile < CreateDataTransformationProfileSource; end
      class ExistingVersionedProfileId < CreateDataTransformationProfileSource; end
      class ProfileMapping < CreateDataTransformationProfileSource; end
      class SampleData < CreateDataTransformationProfileSource; end
      class Unknown < CreateDataTransformationProfileSource; end
    end

    # @!attribute datastore_name
    #   <p>The data store name (user-generated).</p>
    #   @return [String]
    # @!attribute datastore_type_version
    #   <p>The FHIR release version supported by the data store. Current support is for version <code>R4</code>.</p>
    #   @return [String]
    # @!attribute sse_configuration
    #   <p>The server-side encryption key configuration for a customer-provided encryption key specified for creating a data store. </p>
    #   @return [Types::SseConfiguration]
    # @!attribute preload_data_config
    #   <p>An optional parameter to preload (import) open source Synthea FHIR data upon creation of the data store.</p>
    #   @return [Types::PreloadDataConfig]
    # @!attribute client_token
    #   <p>An optional user-provided token to ensure API idempotency.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The resource tags applied to a data store when it is created.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute identity_provider_configuration
    #   <p>The identity provider configuration to use for the data store.</p>
    #   @return [Types::IdentityProviderConfiguration]
    # @!attribute analytics_configuration
    #   <p>The analytics configuration for the data store.</p>
    #   @return [Types::AnalyticsConfiguration]
    # @!attribute nlp_configuration
    #   <p>The natural language processing (NLP) configuration for the data store.</p>
    #   @return [Types::NlpConfiguration]
    # @!attribute profile_configuration
    #   <p>The profile configuration for the data store.</p>
    #   @return [Types::ProfileConfiguration]
    # @!attribute backup_configuration
    #   The backup configuration for the data store.
    #   @return [Types::BackupConfiguration]
    class CreateFHIRDatastoreRequest < Struct.new(
      nil,
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
      :backup_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute datastore_id
    #   <p>The data store identifier.</p>
    #   @return [String]
    # @!attribute datastore_arn
    #   <p>The Amazon Resource Name (ARN) for the data store.</p>
    #   @return [String]
    # @!attribute datastore_status
    #   <p>The data store status.</p>
    #   @return [String]
    # @!attribute datastore_endpoint
    #   <p>The Amazon Web Services endpoint created for the data store.</p>
    #   @return [String]
    class CreateFHIRDatastoreResponse < Struct.new(
      nil,
      :datastore_id,
      :datastore_arn,
      :datastore_status,
      :datastore_endpoint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a data transformation profile. To retrieve profile content, call <code>GetDataTransformationProfile</code>.</p>
    # @!attribute profile_id
    #   <p>The unique identifier of the profile.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The latest version number of the profile.</p>
    #   @return [Integer]
    # @!attribute source_format
    #   <p>The source data format that this profile converts from.</p>
    #   @return [String]
    # @!attribute target_format
    #   <p>The target output format of the profile.</p>
    #   @return [String]
    # @!attribute profile_name
    #   <p>The name of the profile.</p>
    #   @return [String]
    # @!attribute profile_description
    #   <p>A description of the profile's purpose.</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>The timestamp when the profile was last updated.</p>
    #   @return [Time]
    class DataTransformationProfileSummary < Struct.new(
      nil,
      :profile_id,
      :version,
      :source_format,
      :target_format,
      :profile_name,
      :profile_description,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a specific version of a data transformation profile. To retrieve profile content, call <code>GetDataTransformationProfile</code>.</p>
    # @!attribute profile_id
    #   <p>The unique identifier of the profile.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version number.</p>
    #   @return [Integer]
    # @!attribute source_format
    #   <p>The source data format that this profile converts from.</p>
    #   @return [String]
    # @!attribute target_format
    #   <p>The target output format of the profile.</p>
    #   @return [String]
    # @!attribute profile_name
    #   <p>The name of the profile.</p>
    #   @return [String]
    # @!attribute change_description
    #   <p>A description of what changed in this version.</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>The timestamp when this version was last updated.</p>
    #   @return [Time]
    class DataTransformationProfileVersionSummary < Struct.new(
      nil,
      :profile_id,
      :version,
      :source_format,
      :target_format,
      :profile_name,
      :change_description,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon S3 output configuration for a data transformation job, including the output location and encryption settings.</p>
    # @!attribute s3_uri
    #   <p>The Amazon S3 URI where HealthLake writes the converted output files.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The Amazon Web Services Key Management Service (Amazon Web Services KMS) key identifier used to encrypt the transformation job output written to Amazon S3.</p>
    #   @return [String]
    class DataTransformationS3Configuration < Struct.new(
      nil,
      :s3_uri,
      :kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The backup status information for the data store.
    # @!attribute configuration
    #   The backup configuration for the data store.
    #   @return [Types::BackupConfiguration]
    # @!attribute backup_enabled_at
    #   The time backup was enabled on the data store.
    #   @return [Time]
    # @!attribute earliest_restore_point
    #   The earliest point in time the data store can be restored to.
    #   @return [Time]
    # @!attribute latest_restore_point
    #   The latest point in time the data store can be restored to.
    #   @return [Time]
    # @!attribute scheduled_permanent_deletion_time
    #   The time the retained backup data is scheduled for permanent deletion.
    #   @return [Time]
    class DatastoreBackupStatus < Struct.new(
      nil,
      :configuration,
      :backup_enabled_at,
      :earliest_restore_point,
      :latest_restore_point,
      :scheduled_permanent_deletion_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The filters applied to a data store query.</p>
    # @!attribute datastore_name
    #   <p>Filter data store results by name.</p>
    #   @return [String]
    # @!attribute datastore_status
    #   <p>Filter data store results by status.</p>
    #   @return [String]
    # @!attribute created_before
    #   <p>Filter to set cutoff dates for records. All data stores created before the specified date are included in the results. </p>
    #   @return [Time]
    # @!attribute created_after
    #   <p>Filter to set cutoff dates for records. All data stores created after the specified date are included in the results.</p>
    #   @return [Time]
    class DatastoreFilter < Struct.new(
      nil,
      :datastore_name,
      :datastore_status,
      :created_before,
      :created_after,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The data store properties.</p>
    # @!attribute datastore_id
    #   <p>The data store identifier.</p>
    #   @return [String]
    # @!attribute datastore_arn
    #   <p>The Amazon Resource Name (ARN) used in the creation of the data store.</p>
    #   @return [String]
    # @!attribute datastore_name
    #   <p>The data store name.</p>
    #   @return [String]
    # @!attribute datastore_status
    #   <p>The data store status.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time the data store was created. </p>
    #   @return [Time]
    # @!attribute datastore_type_version
    #   <p>The FHIR release version supported by the data store. Current support is for version <code>R4</code>.</p>
    #   @return [String]
    # @!attribute datastore_endpoint
    #   <p>The Amazon Web Services endpoint for the data store.</p>
    #   @return [String]
    # @!attribute sse_configuration
    #   <p> The server-side encryption key configuration for a customer provided encryption key.</p>
    #   @return [Types::SseConfiguration]
    # @!attribute preload_data_config
    #   <p>The preloaded Synthea data configuration for the data store.</p>
    #   @return [Types::PreloadDataConfig]
    # @!attribute identity_provider_configuration
    #   <p>The identity provider selected during data store creation.</p>
    #   @return [Types::IdentityProviderConfiguration]
    # @!attribute error_cause
    #   <p>The error cause for the current data store operation.</p>
    #   @return [Types::ErrorCause]
    # @!attribute nlp_configuration
    #   <p>The natural language processing (NLP) configuration for the data store.</p>
    #   @return [Types::NlpConfiguration]
    # @!attribute analytics_configuration
    #   <p>The analytics configuration for the data store.</p>
    #   @return [Types::AnalyticsConfiguration]
    # @!attribute profile_configuration
    #   <p>The profile configuration for the data store.</p>
    #   @return [Types::ProfileConfiguration]
    # @!attribute backup_status_info
    #   The backup status information for the data store.
    #   @return [Types::DatastoreBackupStatus]
    class DatastoreProperties < Struct.new(
      nil,
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
      :backup_status_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters for the <code>DeleteDataTransformationProfile</code> operation.</p>
    # @!attribute profile_id
    #   <p>The unique identifier of the profile to delete.</p>
    #   @return [String]
    class DeleteDataTransformationProfileRequest < Struct.new(
      nil,
      :profile_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response from the <code>DeleteDataTransformationProfile</code> operation.</p>
    # @!attribute profile_id
    #   <p>The unique identifier of the deleted profile.</p>
    #   @return [String]
    # @!attribute profile_name
    #   <p>The name of the deleted profile.</p>
    #   @return [String]
    # @!attribute deletion_time
    #   <p>The timestamp when the profile was deleted.</p>
    #   @return [Time]
    class DeleteDataTransformationProfileResponse < Struct.new(
      nil,
      :profile_id,
      :profile_name,
      :deletion_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute datastore_id
    #   <p> The Amazon Web Services-generated identifier for the data store to be deleted.</p>
    #   @return [String]
    class DeleteFHIRDatastoreRequest < Struct.new(
      nil,
      :datastore_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute datastore_id
    #   <p>The Amazon Web Services-generated ID for the deleted data store.</p>
    #   @return [String]
    # @!attribute datastore_arn
    #   <p>The Amazon Resource Name (ARN) that grants access permission to HealthLake.</p>
    #   @return [String]
    # @!attribute datastore_status
    #   <p>The data store status.</p>
    #   @return [String]
    # @!attribute datastore_endpoint
    #   <p>The Amazon Web Services endpoint of the data store to be deleted.</p>
    #   @return [String]
    class DeleteFHIRDatastoreResponse < Struct.new(
      nil,
      :datastore_id,
      :datastore_arn,
      :datastore_status,
      :datastore_endpoint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters for the <code>DescribeDataTransformationJob</code> operation.</p>
    # @!attribute job_id
    #   <p>The unique identifier of the data transformation job to describe.</p>
    #   @return [String]
    class DescribeDataTransformationJobRequest < Struct.new(
      nil,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response from the <code>DescribeDataTransformationJob</code> operation.</p>
    # @!attribute transformation_job_properties
    #   <p>The properties of the data transformation job, including status, configuration, and progress information.</p>
    #   @return [Types::TransformationJobProperties]
    class DescribeDataTransformationJobResponse < Struct.new(
      nil,
      :transformation_job_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute datastore_id
    #   <p>The data store identifier.</p>
    #   @return [String]
    class DescribeFHIRDatastoreRequest < Struct.new(
      nil,
      :datastore_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute datastore_properties
    #   <p>The data store properties.</p>
    #   @return [Types::DatastoreProperties]
    class DescribeFHIRDatastoreResponse < Struct.new(
      nil,
      :datastore_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute datastore_id
    #   <p>The data store identifier from which FHIR data is being exported from.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The export job identifier.</p>
    #   @return [String]
    class DescribeFHIRExportJobRequest < Struct.new(
      nil,
      :datastore_id,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute export_job_properties
    #   <p>The export job properties.</p>
    #   @return [Types::ExportJobProperties]
    class DescribeFHIRExportJobResponse < Struct.new(
      nil,
      :export_job_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute datastore_id
    #   <p>The data store identifier.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The import job identifier.</p>
    #   @return [String]
    class DescribeFHIRImportJobRequest < Struct.new(
      nil,
      :datastore_id,
      :job_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute import_job_properties
    #   <p>The import job properties.</p>
    #   @return [Types::ImportJobProperties]
    class DescribeFHIRImportJobResponse < Struct.new(
      nil,
      :import_job_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The error information for <code>CreateFHIRDatastore</code> and <code>DeleteFHIRDatastore</code> actions.</p>
    # @!attribute error_message
    #   <p>The error message text for <code>ErrorCause</code>.</p>
    #   @return [String]
    # @!attribute error_category
    #   <p>The error category for <code>ErrorCause</code>.</p>
    #   @return [String]
    class ErrorCause < Struct.new(
      nil,
      :error_message,
      :error_category,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Identifies an existing data transformation profile and version to clone when creating a new profile.</p>
    # @!attribute profile_id
    #   <p>The unique identifier of the existing profile to clone from.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version number of the existing profile to clone from.</p>
    #   @return [Integer]
    class ExistingVersionedProfileSource < Struct.new(
      nil,
      :profile_id,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The properties of a FHIR export job.</p>
    # @!attribute job_id
    #   <p>The export job identifier.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The export job name.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>The export job status.</p>
    #   @return [String]
    # @!attribute submit_time
    #   <p>The time the export job was initiated.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time the export job completed.</p>
    #   @return [Time]
    # @!attribute datastore_id
    #   <p>The data store identifier from which files are being exported.</p>
    #   @return [String]
    # @!attribute output_data_config
    #   <p>The output data configuration supplied when the export job was created.</p>
    #   @return [Types::OutputDataConfig]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) used during the initiation of the export job.</p>
    #   @return [String]
    # @!attribute message
    #   <p>An explanation of any errors that might have occurred during the export job.</p>
    #   @return [String]
    class ExportJobProperties < Struct.new(
      nil,
      :job_id,
      :job_name,
      :job_status,
      :submit_time,
      :end_time,
      :datastore_id,
      :output_data_config,
      :data_access_role_arn,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A dependent service failed to fulfill the request.</p>
    # @!attribute message
    #   A message describing the error.
    #   @return [String]
    class FailedDependencyException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters for the <code>GetDataTransformationProfile</code> operation.</p>
    # @!attribute profile_id
    #   <p>The unique identifier of the profile to retrieve.</p>
    #   @return [String]
    # @!attribute profile_version
    #   <p>The version number to retrieve. Specify 0 to retrieve the DRAFT version. If you omit this parameter, the service returns the latest published version.</p>
    #   @return [Integer]
    class GetDataTransformationProfileRequest < Struct.new(
      nil,
      :profile_id,
      :profile_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response from the <code>GetDataTransformationProfile</code> operation.</p>
    # @!attribute profile_id
    #   <p>The unique identifier of the profile.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version number of the retrieved profile.</p>
    #   @return [Integer]
    # @!attribute source_format
    #   <p>The source data format of the profile.</p>
    #   @return [String]
    # @!attribute target_format
    #   <p>The target output format of the profile.</p>
    #   @return [String]
    # @!attribute profile_mapping
    #   <p>The profile content as a map of file paths to content strings.</p>
    #   @return [Hash<String, String>]
    # @!attribute profile_name
    #   <p>The name of the profile.</p>
    #   @return [String]
    # @!attribute profile_description
    #   <p>The description of the profile.</p>
    #   @return [String]
    # @!attribute change_description
    #   <p>A description of what changed in this version.</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>The timestamp when this version was last updated.</p>
    #   @return [Time]
    class GetDataTransformationProfileResponse < Struct.new(
      nil,
      :profile_id,
      :version,
      :source_format,
      :target_format,
      :profile_mapping,
      :profile_name,
      :profile_description,
      :change_description,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The identity provider configuration selected when the data store was created.</p>
    # @!attribute authorization_strategy
    #   <p>The authorization strategy selected when the HealthLake data store is created.</p> <note> <p>HealthLake provides support for both SMART on FHIR V1 and V2 as described below.</p> <ul> <li> <p> <code>SMART_ON_FHIR_V1</code> – Support for only SMART on FHIR V1, which includes <code>read</code> (read/search) and <code>write</code> (create/update/delete) permissions.</p> </li> <li> <p> <code>SMART_ON_FHIR</code> – Support for both SMART on FHIR V1 and V2, which includes <code>create</code>, <code>read</code>, <code>update</code>, <code>delete</code>, and <code>search</code> permissions.</p> </li> <li> <p> <code>Amazon Web Services_AUTH</code> – The default HealthLake authorization strategy; not affiliated with SMART on FHIR.</p> </li> </ul> </note>
    #   @return [String]
    # @!attribute fine_grained_authorization_enabled
    #   <p>The parameter to enable SMART on FHIR fine-grained authorization for the data store.</p>
    #   @return [Boolean]
    # @!attribute metadata
    #   <p>The JSON metadata elements to use in your identity provider configuration. Required elements are listed based on the launch specification of the SMART application. For more information on all possible elements, see <a href="https://build.fhir.org/ig/HL7/smart-app-launch/conformance.html#metadata">Metadata</a> in SMART's App Launch specification.</p> <p> <code>authorization_endpoint</code>: The URL to the OAuth2 authorization endpoint.</p> <p> <code>grant_types_supported</code>: An array of grant types that are supported at the token endpoint. You must provide at least one grant type option. Valid options are <code>authorization_code</code> and <code>client_credentials</code>.</p> <p> <code>token_endpoint</code>: The URL to the OAuth2 token endpoint.</p> <p> <code>capabilities</code>: An array of strings of the SMART capabilities that the authorization server supports.</p> <p> <code>code_challenge_methods_supported</code>: An array of strings of supported PKCE code challenge methods. You must include the <code>S256</code> method in the array of PKCE code challenge methods.</p>
    #   @return [String]
    # @!attribute idp_lambda_arn
    #   <p>The Amazon Resource Name (ARN) of the Lambda function to use to decode the access token created by the authorization server.</p>
    #   @return [String]
    class IdentityProviderConfiguration < Struct.new(
      nil,
      :authorization_strategy,
      :fine_grained_authorization_enabled,
      :metadata,
      :idp_lambda_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:fine_grained_authorization_enabled] = false unless options.key?(:fine_grained_authorization_enabled)
        super
      end
    end

    # <p>The import job properties.</p>
    # @!attribute job_id
    #   <p>The import job identifier.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The import job name.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>The import job status.</p>
    #   @return [String]
    # @!attribute submit_time
    #   <p>The time the import job was submitted for processing.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time the import job was completed.</p>
    #   @return [Time]
    # @!attribute datastore_id
    #   <p>The data store identifier. </p>
    #   @return [String]
    # @!attribute input_data_config
    #   <p>The input data configuration supplied when the import job was created.</p>
    #   @return [Types::InputDataConfig]
    # @!attribute job_output_data_config
    #   <p>The output data configuration supplied when the export job was created.</p>
    #   @return [Types::OutputDataConfig]
    # @!attribute job_progress_report
    #   <p>Displays the progress of the import job, including total resources scanned, total resources imported, and total size of data imported.</p>
    #   @return [Types::JobProgressReport]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) that grants HealthLake access to the input data.</p>
    #   @return [String]
    # @!attribute message
    #   <p>An explanation of any errors that might have occurred during the FHIR import job.</p>
    #   @return [String]
    # @!attribute validation_level
    #   <p>The validation level of the import job.</p>
    #   @return [String]
    class ImportJobProperties < Struct.new(
      nil,
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
      :validation_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The import job input properties.</p>
    # @!attribute s3_uri
    #   <p>The <code>S3Uri</code> is the user-specified Amazon S3 location of the FHIR data to be imported into HealthLake.</p>
    #   @return [String]
    class InputDataConfig < Struct.new(
      :s3_uri,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class S3Uri < InputDataConfig; end
      class Unknown < InputDataConfig; end
    end

    # <p>An unknown internal error occurred in the service.</p>
    # @!attribute message
    #   A general-purpose string value.
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The progress report for the import job.</p>
    # @!attribute total_number_of_scanned_files
    #   <p>The number of files scanned from the Amazon S3 input bucket.</p>
    #   @return [Integer]
    # @!attribute total_size_of_scanned_files_in_mb
    #   <p>The size (in MB) of files scanned from the Amazon S3 input bucket.</p>
    #   @return [Float]
    # @!attribute total_number_of_imported_files
    #   <p>The number of files imported.</p>
    #   @return [Integer]
    # @!attribute total_number_of_resources_scanned
    #   <p>The number of resources scanned from the Amazon S3 input bucket.</p>
    #   @return [Integer]
    # @!attribute total_number_of_resources_imported
    #   <p>The number of resources imported.</p>
    #   @return [Integer]
    # @!attribute total_number_of_resources_with_customer_error
    #   <p>The number of resources that failed due to customer error.</p>
    #   @return [Integer]
    # @!attribute total_number_of_files_read_with_customer_error
    #   <p>The number of files that failed to be read from the Amazon S3 input bucket due to customer error.</p>
    #   @return [Integer]
    # @!attribute total_number_of_scanned_non_fhir_files
    #   <p>The number of non-FHIR files scanned from the Amazon S3 input bucket.</p>
    #   @return [Integer]
    # @!attribute total_size_of_scanned_non_fhir_files_in_mb
    #   <p>The size (in MB) of non-FHIR files scanned from the Amazon S3 input bucket.</p>
    #   @return [Float]
    # @!attribute total_number_of_imported_non_fhir_files
    #   <p>The number of non-FHIR files imported.</p>
    #   @return [Integer]
    # @!attribute total_number_of_non_fhir_resources_scanned
    #   <p>The number of non-FHIR resources scanned from the Amazon S3 input bucket.</p>
    #   @return [Integer]
    # @!attribute total_number_of_non_fhir_resources_imported
    #   <p>The number of non-FHIR resources imported.</p>
    #   @return [Integer]
    # @!attribute total_number_of_non_fhir_resources_with_customer_error
    #   <p>The number of non-FHIR resources that failed due to customer error.</p>
    #   @return [Integer]
    # @!attribute total_number_of_non_fhir_files_read_with_customer_error
    #   <p>The number of non-FHIR files that failed to be read from the Amazon S3 input bucket due to customer error.</p>
    #   @return [Integer]
    # @!attribute throughput
    #   <p>The transaction rate the import job is processed at.</p>
    #   @return [Float]
    # @!attribute total_files_converted
    #   <p>Number of CCDA files successfully transformed during the import's transformation phase. Populated only for import jobs that use the two-Step-Function (transformation + ingestion) flow; null for legacy single-SF imports and for pure FHIR imports that skip transformation.</p>
    #   @return [Integer]
    # @!attribute total_resources_generated
    #   <p>Number of FHIR resources produced by the transformation phase. Populated only for import jobs that use the two-Step-Function flow; null for legacy single-SF imports and for pure FHIR imports.</p>
    #   @return [Integer]
    class JobProgressReport < Struct.new(
      nil,
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
      :total_resources_generated,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The customer-managed-key (CMK) used when creating a data store. If a customer-owned key is not specified, an Amazon Web Services-owned key is used for encryption. </p>
    # @!attribute cmk_type
    #   <p>The type of customer-managed-key (CMK) used for encryption.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The Key Management Service (KMS) encryption key id/alias used to encrypt the data store contents at rest.</p>
    #   @return [String]
    class KmsEncryptionConfig < Struct.new(
      nil,
      :cmk_type,
      :kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters for the <code>ListDataTransformationJobs</code> operation.</p>
    # @!attribute max_results
    #   <p>The maximum number of jobs to return per page. If you don't specify a value, the service returns up to 100 results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token from a previous response. Pass this value to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>Filters the results to include only jobs with the specified status.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>Filters the results to include only jobs with the specified name.</p>
    #   @return [String]
    # @!attribute submitted_after
    #   <p>Filters the results to include only jobs submitted at or after this timestamp.</p>
    #   @return [Time]
    # @!attribute submitted_before
    #   <p>Filters the results to include only jobs submitted at or before this timestamp.</p>
    #   @return [Time]
    class ListDataTransformationJobsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :job_status,
      :job_name,
      :submitted_after,
      :submitted_before,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response from the <code>ListDataTransformationJobs</code> operation.</p>
    # @!attribute items
    #   <p>The list of data transformation job summaries.</p>
    #   @return [Array<Types::TransformationJobSummary>]
    # @!attribute next_token
    #   <p>The pagination token to use in the next request. If this value is <code>null</code>, there are no more results.</p>
    #   @return [String]
    class ListDataTransformationJobsResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters for the <code>ListDataTransformationProfileVersions</code> operation.</p>
    # @!attribute profile_id
    #   <p>The unique identifier of the profile whose versions to list.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of profile versions to return per page. If you don't specify a value, the service returns up to 100 results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token from a previous response. Pass this value to retrieve the next page of results.</p>
    #   @return [String]
    class ListDataTransformationProfileVersionsRequest < Struct.new(
      nil,
      :profile_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response from the <code>ListDataTransformationProfileVersions</code> operation.</p>
    # @!attribute items
    #   <p>The list of data transformation profile version summaries.</p>
    #   @return [Array<Types::DataTransformationProfileVersionSummary>]
    # @!attribute next_token
    #   <p>The pagination token to use in the next request. If this value is <code>null</code>, there are no more results.</p>
    #   @return [String]
    class ListDataTransformationProfileVersionsResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters for the <code>ListDataTransformationProfiles</code> operation.</p>
    # @!attribute source_format
    #   <p>Filters the results by source data format.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of profiles to return per page. If you don't specify a value, the service returns up to 100 results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The pagination token from a previous response. Pass this value to retrieve the next page of results.</p>
    #   @return [String]
    class ListDataTransformationProfilesRequest < Struct.new(
      nil,
      :source_format,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response from the <code>ListDataTransformationProfiles</code> operation.</p>
    # @!attribute items
    #   <p>The list of data transformation profile summaries.</p>
    #   @return [Array<Types::DataTransformationProfileSummary>]
    # @!attribute next_token
    #   <p>The pagination token to use in the next request. If this value is <code>null</code>, there are no more results.</p>
    #   @return [String]
    class ListDataTransformationProfilesResponse < Struct.new(
      nil,
      :items,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filter
    #   <p>List all filters associated with a FHIR data store request.</p>
    #   @return [Types::DatastoreFilter]
    # @!attribute next_token
    #   <p>The token used to retrieve the next page of data stores when results are paginated.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of data stores returned on a page.</p>
    #   @return [Integer]
    class ListFHIRDatastoresRequest < Struct.new(
      nil,
      :filter,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute datastore_properties_list
    #   <p>The properties associated with all listed data stores.</p>
    #   @return [Array<Types::DatastoreProperties>]
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results.</p>
    #   @return [String]
    class ListFHIRDatastoresResponse < Struct.new(
      nil,
      :datastore_properties_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute datastore_id
    #   <p>Limits the response to the export job with the specified data store ID. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A pagination token used to identify the next page of results to return.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Limits the number of results returned for a ListFHIRExportJobs to a maximum quantity specified by the user.</p>
    #   @return [Integer]
    # @!attribute job_name
    #   <p>Limits the response to the export job with the specified job name. </p>
    #   @return [String]
    # @!attribute job_status
    #   <p>Limits the response to export jobs with the specified job status. </p>
    #   @return [String]
    # @!attribute submitted_before
    #   <p>Limits the response to FHIR export jobs submitted before a user- specified date.</p>
    #   @return [Time]
    # @!attribute submitted_after
    #   <p>Limits the response to FHIR export jobs submitted after a user-specified date.</p>
    #   @return [Time]
    class ListFHIRExportJobsRequest < Struct.new(
      nil,
      :datastore_id,
      :next_token,
      :max_results,
      :job_name,
      :job_status,
      :submitted_before,
      :submitted_after,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute export_job_properties_list
    #   <p>The properties of listed FHIR export jobs.</p>
    #   @return [Array<Types::ExportJobProperties>]
    # @!attribute next_token
    #   <p>The pagination token used to identify the next page of results to return.</p>
    #   @return [String]
    class ListFHIRExportJobsResponse < Struct.new(
      nil,
      :export_job_properties_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute datastore_id
    #   <p>Limits the response to the import job with the specified data store ID. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token used to identify the next page of results to return.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Limits the number of results returned for <code>ListFHIRImportJobs</code> to a maximum quantity specified by the user.</p>
    #   @return [Integer]
    # @!attribute job_name
    #   <p>Limits the response to the import job with the specified job name. </p>
    #   @return [String]
    # @!attribute job_status
    #   <p>Limits the response to the import job with the specified job status. </p>
    #   @return [String]
    # @!attribute submitted_before
    #   <p>Limits the response to FHIR import jobs submitted before a user- specified date. </p>
    #   @return [Time]
    # @!attribute submitted_after
    #   <p>Limits the response to FHIR import jobs submitted after a user-specified date.</p>
    #   @return [Time]
    class ListFHIRImportJobsRequest < Struct.new(
      nil,
      :datastore_id,
      :next_token,
      :max_results,
      :job_name,
      :job_status,
      :submitted_before,
      :submitted_after,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute import_job_properties_list
    #   <p>The properties for listed import jobs.</p>
    #   @return [Array<Types::ImportJobProperties>]
    # @!attribute next_token
    #   <p>The pagination token used to identify the next page of results to return.</p>
    #   @return [String]
    class ListFHIRImportJobsResponse < Struct.new(
      nil,
      :import_job_properties_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the data store to which tags are being added.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>Returns a list of tags associated with a data store. </p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The natural language processing (NLP) configuration for a data store.</p>
    # @!attribute status
    #   <p>The status of the NLP configuration.</p>
    #   @return [String]
    class NlpConfiguration < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested operation is not yet available. Check the service documentation for a list of supported operations.</p>
    # @!attribute message
    #   @return [String]
    class NotImplementedOperationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The output data configuration supplied when the export job was created.</p>
    # @!attribute s3_configuration
    #   <p>The output data configuration supplied when the export job was created. </p>
    #   @return [Types::S3Configuration]
    class OutputDataConfig < Struct.new(
      :s3_configuration,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class S3Configuration < OutputDataConfig; end
      class Unknown < OutputDataConfig; end
    end

    # <p>The input properties for the preloaded (Synthea) data store.</p>
    # @!attribute preload_data_type
    #   <p>The type of preloaded data. Only Synthea preloaded data is supported.</p>
    #   @return [String]
    class PreloadDataConfig < Struct.new(
      nil,
      :preload_data_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The profile configuration for a data store.</p>
    # @!attribute default_profiles
    #   <p>The list of default profiles for the data store.</p>
    #   @return [Array<String>]
    class ProfileConfiguration < Struct.new(
      nil,
      :default_profiles,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains raw content to use as the source when creating a data transformation profile directly from a mapping.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute profile_mapping
    #   <p>The content as a map of file paths to profile strings.</p>
    #   @return [Hash<String, String>]
    class ProfileMappingSource < Struct.new(
      nil,
      :profile_mapping,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters for the <code>PublishDataTransformationProfile</code> operation.</p>
    # @!attribute profile_id
    #   <p>The unique identifier of the profile to publish.</p>
    #   @return [String]
    # @!attribute source_format
    #   <p>The source data format of the profile.</p>
    #   @return [String]
    # @!attribute from_existing_version
    #   <p>The version number of a previously published version to republish as the new latest version. Use this parameter for rollback scenarios. If you omit this parameter, the service publishes the current DRAFT version.</p>
    #   @return [Integer]
    # @!attribute change_description
    #   <p>A description of what changed or why this version is being published.</p>
    #   @return [String]
    class PublishDataTransformationProfileRequest < Struct.new(
      nil,
      :profile_id,
      :source_format,
      :from_existing_version,
      :change_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response from the <code>PublishDataTransformationProfile</code> operation.</p>
    # @!attribute profile_id
    #   <p>The unique identifier of the published profile.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The new version number that was created.</p>
    #   @return [Integer]
    # @!attribute source_format
    #   <p>The source data format of the profile.</p>
    #   @return [String]
    # @!attribute target_format
    #   <p>The target output format of the profile.</p>
    #   @return [String]
    # @!attribute profile_name
    #   <p>The name of the published profile.</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>The timestamp when the profile was last updated.</p>
    #   @return [Time]
    class PublishDataTransformationProfileResponse < Struct.new(
      nil,
      :profile_id,
      :version,
      :source_format,
      :target_format,
      :profile_name,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested data store was not found.</p>
    # @!attribute message
    #   A general-purpose string value.
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Specifies the type and parameters for the restore operation.
    # @!attribute continuous_backup_restore_configuration
    #   Configuration for restoring from continuous backup to a specific point in time.
    #   @return [Types::ContinuousBackupRestoreConfiguration]
    class RestoreConfiguration < Struct.new(
      :continuous_backup_restore_configuration,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ContinuousBackupRestoreConfiguration < RestoreConfiguration; end
      class Unknown < RestoreConfiguration; end
    end

    # @!attribute source_datastore_id
    #   The identifier of the source data store to restore from.
    #   @return [String]
    # @!attribute restore_configuration
    #   The restore configuration specifying the type and parameters for the restore.
    #   @return [Types::RestoreConfiguration]
    # @!attribute datastore_name
    #   The name for the restored data store.
    #   @return [String]
    # @!attribute sse_configuration
    #   The server-side encryption key configuration for the restored data store.
    #   @return [Types::SseConfiguration]
    # @!attribute client_token
    #   An optional user-provided token to ensure API idempotency of the restore.
    #   @return [String]
    # @!attribute tags
    #   The resource tags applied to the restored data store.
    #   @return [Array<Types::Tag>]
    # @!attribute identity_provider_configuration
    #   The identity provider configuration for the restored data store.
    #   @return [Types::IdentityProviderConfiguration]
    # @!attribute analytics_configuration
    #   The analytics configuration for the restored data store.
    #   @return [Types::AnalyticsConfiguration]
    # @!attribute nlp_configuration
    #   The NLP configuration for the restored data store.
    #   @return [Types::NlpConfiguration]
    # @!attribute profile_configuration
    #   The profile configuration for the restored data store.
    #   @return [Types::ProfileConfiguration]
    class RestoreFHIRDatastoreRequest < Struct.new(
      nil,
      :source_datastore_id,
      :restore_configuration,
      :datastore_name,
      :sse_configuration,
      :client_token,
      :tags,
      :identity_provider_configuration,
      :analytics_configuration,
      :nlp_configuration,
      :profile_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute datastore_id
    #   The restored data store identifier.
    #   @return [String]
    # @!attribute datastore_arn
    #   The Amazon Resource Name (ARN) for the restored data store.
    #   @return [String]
    # @!attribute datastore_status
    #   The restored data store status.
    #   @return [String]
    # @!attribute datastore_endpoint
    #   The AWS endpoint for the restored data store.
    #   @return [String]
    class RestoreFHIRDatastoreResponse < Struct.new(
      nil,
      :datastore_id,
      :datastore_arn,
      :datastore_status,
      :datastore_endpoint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of the Amazon S3 bucket for either an import or export job. This includes assigning access permissions.</p>
    # @!attribute s3_uri
    #   <p>The <code>S3Uri</code> is the user-specified Amazon S3 location of the FHIR data to be imported into HealthLake.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The Key Management Service (KMS) key ID used to access the Amazon S3 bucket. </p>
    #   @return [String]
    class S3Configuration < Struct.new(
      nil,
      :s3_uri,
      :kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Identifies a sample data file in Amazon S3 to use as the source when creating a data transformation profile. Valid only when the source format is Comma-separated values (CSV).</p>
    # @!attribute s3_uri
    #   <p>The Amazon S3 URI of the sample data file.</p>
    #   @return [String]
    class SampleDataSource < Struct.new(
      nil,
      :s3_uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request exceeds the service quota.</p>
    # @!attribute message
    #   A message describing the error.
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The server-side encryption key configuration for a customer-provided encryption key.</p>
    # @!attribute kms_encryption_config
    #   <p>The Key Management Service (KMS) encryption configuration used to provide details for data encryption.</p>
    #   @return [Types::KmsEncryptionConfig]
    class SseConfiguration < Struct.new(
      nil,
      :kms_encryption_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters for the <code>StartDataTransformationJob</code> operation.</p>
    # @!attribute input_data_config
    #   <p>The Amazon S3 location and format of the source files to transform.</p>
    #   @return [Types::TransformationInputDataConfig]
    # @!attribute output_data_config
    #   <p>The Amazon S3 output location and Amazon Web Services Key Management Service (Amazon Web Services KMS) encryption configuration.</p>
    #   @return [Types::TransformationOutputDataConfig]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services Identity and Access Management (IAM) role that HealthLake assumes to read from and write to the specified Amazon S3 locations.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier to ensure that the operation completes no more than one time. If this token matches a previous request, the service ignores the request but does not return an error.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>A descriptive name for the data transformation job.</p>
    #   @return [String]
    # @!attribute profile_id
    #   <p>The unique identifier of the data transformation profile to use for conversion.</p>
    #   @return [String]
    # @!attribute drift_detection_enabled
    #   <p>Specifies whether drift detection is enabled for this job. When enabled, HealthLake writes a drift report to the output Amazon S3 location alongside the converted files.</p>
    #   @return [Boolean]
    # @!attribute provenance_enabled
    #   <p>Specifies whether FHIR R4 Provenance resource generation is enabled for this transformation job. When provenance is enabled, the service also generates related DocumentReference and Device resources. If you don't specify a value, the default is <code>true</code>. To disable provenance output, set this parameter to <code>false</code>.</p>
    #   @return [Boolean]
    class StartDataTransformationJobRequest < Struct.new(
      nil,
      :input_data_config,
      :output_data_config,
      :data_access_role_arn,
      :client_token,
      :job_name,
      :profile_id,
      :drift_detection_enabled,
      :provenance_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response from the <code>StartDataTransformationJob</code> operation.</p>
    # @!attribute job_id
    #   <p>The unique identifier assigned to the data transformation job.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>The initial status of the data transformation job.</p>
    #   @return [String]
    class StartDataTransformationJobResponse < Struct.new(
      nil,
      :job_id,
      :job_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_name
    #   <p>The export job name.</p>
    #   @return [String]
    # @!attribute output_data_config
    #   <p>The output data configuration supplied when the export job was started.</p>
    #   @return [Types::OutputDataConfig]
    # @!attribute datastore_id
    #   <p>The data store identifier from which files are being exported.</p>
    #   @return [String]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) used during initiation of the export job.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>An optional user provided token used for ensuring API idempotency.</p>
    #   @return [String]
    class StartFHIRExportJobRequest < Struct.new(
      nil,
      :job_name,
      :output_data_config,
      :datastore_id,
      :data_access_role_arn,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The export job identifier.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>The export job status.</p>
    #   @return [String]
    # @!attribute datastore_id
    #   <p>The data store identifier from which files are being exported.</p>
    #   @return [String]
    class StartFHIRExportJobResponse < Struct.new(
      nil,
      :job_id,
      :job_status,
      :datastore_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_name
    #   <p>The import job name.</p>
    #   @return [String]
    # @!attribute input_data_config
    #   <p>The input properties for the import job request.</p>
    #   @return [Types::InputDataConfig]
    # @!attribute job_output_data_config
    #   <p>The output data configuration supplied when the export job was created.</p>
    #   @return [Types::OutputDataConfig]
    # @!attribute datastore_id
    #   <p>The data store identifier.</p>
    #   @return [String]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) that grants access permission to HealthLake.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The optional user-provided token used for ensuring API idempotency.</p>
    #   @return [String]
    # @!attribute validation_level
    #   <p>The validation level of the import job.</p>
    #   @return [String]
    # @!attribute profile_id
    #   <p>The data transformation profile identifier to use for the import job.</p>
    #   @return [String]
    # @!attribute input_format
    #   <p>The input format of the data to be imported.</p>
    #   @return [String]
    # @!attribute drift_detection_enabled
    #   <p>Specifies whether to enable drift detection for the import job.</p>
    #   @return [Boolean]
    # @!attribute provenance_enabled
    #   <p>Specifies whether to enable provenance for the import job.</p>
    #   @return [Boolean]
    class StartFHIRImportJobRequest < Struct.new(
      nil,
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
      :provenance_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The import job identifier.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>The import job status.</p>
    #   @return [String]
    # @!attribute datastore_id
    #   <p>The data store identifier.</p>
    #   @return [String]
    class StartFHIRImportJobResponse < Struct.new(
      nil,
      :job_id,
      :job_status,
      :datastore_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Identifies a built-in starter profile to use as the source when creating a data transformation profile. Valid only when the source format is Consolidated Clinical Document Architecture (C-CDA).</p>
    # @!attribute starter_profile_name
    #   <p>The name of the built-in starter profile.</p>
    #   @return [String]
    class StarterProfileSource < Struct.new(
      nil,
      :starter_profile_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A label consisting of a user-defined key and value. The form for tags is {"Key", "Value"}</p>
    # @!attribute key
    #   <p>The key portion of a tag. Tag keys are case sensitive. </p>
    #   @return [String]
    # @!attribute value
    #   <p> The value portion of a tag. Tag values are case-sensitive.</p>
    #   @return [String]
    class Tag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that grants access to the data store tags are being added to.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The user-specified key and value pair tags being added to a data store.</p>
    #   @return [Array<Types::Tag>]
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

    # <p>The user has exceeded their maximum number of allowed calls to the given API. </p>
    # @!attribute message
    #   A general-purpose string value.
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon S3 location and source format configuration for input data in a transformation job.</p>
    # @!attribute s3_uri
    #   <p>The Amazon S3 URI of the input data to transform.</p>
    #   @return [String]
    # @!attribute source_format
    #   <p>The format of the source data files (C-CDA or CSV).</p>
    #   @return [String]
    class TransformationInputDataConfig < Struct.new(
      nil,
      :s3_uri,
      :source_format,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains progress metrics for a data transformation job, including counts of files scanned, converted, and failed.</p>
    # @!attribute total_files_scanned
    #   <p>The total number of source files scanned by the job.</p>
    #   @return [Integer]
    # @!attribute total_files_converted
    #   <p>The total number of source files successfully converted.</p>
    #   @return [Integer]
    # @!attribute total_files_failed
    #   <p>The total number of source files that failed conversion.</p>
    #   @return [Integer]
    # @!attribute total_resources_generated
    #   <p>The total number of FHIR R4 resources generated across all converted files.</p>
    #   @return [Integer]
    class TransformationJobProgressReport < Struct.new(
      nil,
      :total_files_scanned,
      :total_files_converted,
      :total_files_failed,
      :total_resources_generated,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the properties of a data transformation job, including its status, configuration, and progress information. You retrieve this structure by calling <code>DescribeDataTransformationJob</code>.</p>
    # @!attribute job_id
    #   <p>The unique identifier of the data transformation job.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>The current status of the data transformation job.</p>
    #   @return [String]
    # @!attribute input_data_config
    #   <p>The Amazon S3 location and format of the source files for this job.</p>
    #   @return [Types::TransformationInputDataConfig]
    # @!attribute output_data_config
    #   <p>The Amazon S3 location and encryption configuration for the converted output.</p>
    #   @return [Types::TransformationOutputDataConfig]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Web Services Identity and Access Management (IAM) role that grants HealthLake access to the specified Amazon S3 locations. HealthLake assumes this role to read input files and write output files.</p>
    #   @return [String]
    # @!attribute submit_time
    #   <p>The timestamp when the job was submitted.</p>
    #   @return [Time]
    # @!attribute job_name
    #   <p>The name of the data transformation job.</p>
    #   @return [String]
    # @!attribute profile_id
    #   <p>The unique identifier of the data transformation profile used for this job.</p>
    #   @return [String]
    # @!attribute profile_name
    #   <p>The name of the data transformation profile used for this job.</p>
    #   @return [String]
    # @!attribute profile_version
    #   <p>The version number of the data transformation profile used for this job.</p>
    #   @return [Integer]
    # @!attribute end_time
    #   <p>The timestamp when the job completed or failed.</p>
    #   @return [Time]
    # @!attribute drift_detection_enabled
    #   <p>Specifies whether drift detection is enabled for this job. When enabled, HealthLake writes a drift report to the output Amazon S3 location alongside the converted files.</p>
    #   @return [Boolean]
    # @!attribute provenance_enabled
    #   <p>Specifies whether FHIR R4 Provenance resource generation is enabled for this transformation job. When provenance is enabled, the service also generates related DocumentReference and Device resources.</p>
    #   @return [Boolean]
    # @!attribute message
    #   <p>An informational message about the job, such as an error description if the job failed.</p>
    #   @return [String]
    # @!attribute job_progress_report
    #   <p>The progress report for the data transformation job, including counts of files processed and resources generated.</p>
    #   @return [Types::TransformationJobProgressReport]
    class TransformationJobProperties < Struct.new(
      nil,
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
      :job_progress_report,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains summary information about a data transformation job. To retrieve full job details, call <code>DescribeDataTransformationJob</code>.</p>
    # @!attribute job_id
    #   <p>The unique identifier of the job.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>The current status of the job.</p>
    #   @return [String]
    # @!attribute submit_time
    #   <p>The timestamp when the job was submitted.</p>
    #   @return [Time]
    # @!attribute job_name
    #   <p>The name of the job.</p>
    #   @return [String]
    # @!attribute end_time
    #   <p>The timestamp when the job completed.</p>
    #   @return [Time]
    # @!attribute source_format
    #   <p>The source data format for this job.</p>
    #   @return [String]
    class TransformationJobSummary < Struct.new(
      nil,
      :job_id,
      :job_status,
      :submit_time,
      :job_name,
      :end_time,
      :source_format,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon S3 output location and encryption configuration for a transformation job.</p>
    # @!attribute s3_configuration
    #   <p>The Amazon S3 output location and Amazon Web Services Key Management Service (Amazon Web Services KMS) encryption configuration.</p>
    #   @return [Types::DataTransformationS3Configuration]
    class TransformationOutputDataConfig < Struct.new(
      nil,
      :s3_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You are not authorized to make this request. Verify that your Amazon Web Services credentials are valid and that you have the required permissions.</p>
    # @!attribute message
    #   @return [String]
    class UnauthorizedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The content type in your request is not supported. Use a supported content type for this operation.</p>
    # @!attribute message
    #   @return [String]
    class UnsupportedMIMETypeException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the data store from which tags are being removed.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The keys for the tags to be removed from the data store.</p>
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

    # <p>The request parameters for the <code>UpdateDataTransformationProfile</code> operation.</p>
    # @!attribute profile_id
    #   <p>The unique identifier of the profile to update.</p>
    #   @return [String]
    # @!attribute profile_mapping
    #   <p>The new profile content for the DRAFT version. This is a full replacement of all profile files.</p>
    #   @return [Hash<String, String>]
    # @!attribute change_description
    #   <p>A description of what changed in this update.</p>
    #   @return [String]
    class UpdateDataTransformationProfileRequest < Struct.new(
      nil,
      :profile_id,
      :profile_mapping,
      :change_description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response from the <code>UpdateDataTransformationProfile</code> operation.</p>
    # @!attribute profile_id
    #   <p>The unique identifier of the updated profile.</p>
    #   @return [String]
    # @!attribute source_format
    #   <p>The source data format of the profile.</p>
    #   @return [String]
    # @!attribute target_format
    #   <p>The target output format of the profile.</p>
    #   @return [String]
    # @!attribute profile_name
    #   <p>The name of the updated profile.</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>The timestamp when the profile was last updated.</p>
    #   @return [Time]
    class UpdateDataTransformationProfileResponse < Struct.new(
      nil,
      :profile_id,
      :source_format,
      :target_format,
      :profile_name,
      :last_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute datastore_id
    #   <p>The data store identifier.</p>
    #   @return [String]
    # @!attribute datastore_name
    #   <p>The data store name.</p>
    #   @return [String]
    # @!attribute analytics_configuration
    #   <p>The analytics configuration for the data store.</p>
    #   @return [Types::AnalyticsConfiguration]
    # @!attribute nlp_configuration
    #   <p>The natural language processing (NLP) configuration for the data store.</p>
    #   @return [Types::NlpConfiguration]
    # @!attribute profile_configuration
    #   <p>The profile configuration for the data store.</p>
    #   @return [Types::ProfileConfiguration]
    # @!attribute identity_provider_configuration
    #   <p>The identity provider configuration for the data store.</p>
    #   @return [Types::IdentityProviderConfiguration]
    # @!attribute backup_configuration
    #   The backup configuration for the data store.
    #   @return [Types::BackupConfiguration]
    class UpdateFHIRDatastoreRequest < Struct.new(
      nil,
      :datastore_id,
      :datastore_name,
      :analytics_configuration,
      :nlp_configuration,
      :profile_configuration,
      :identity_provider_configuration,
      :backup_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute datastore_properties
    #   <p>The data store properties.</p>
    #   @return [Types::DatastoreProperties]
    class UpdateFHIRDatastoreResponse < Struct.new(
      nil,
      :datastore_properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request parameters for the <code>UpdateProfileWithAgent</code> operation.</p>
    # @!attribute profile_id
    #   <p>The unique identifier of the profile to update via the agent.</p>
    #   @return [String]
    # @!attribute source_format
    #   <p>The source data format for the transformation.</p>
    #   @return [String]
    # @!attribute input_message
    #   <p>The message to send to the agent.</p>
    #   @return [Types::AgentInputMessage]
    # @!attribute conversation_id
    #   <p>The conversation identifier for multi-turn interactions. Omit to start a new conversation.</p>
    #   @return [String]
    class UpdateProfileWithAgentRequest < Struct.new(
      nil,
      :profile_id,
      :source_format,
      :input_message,
      :conversation_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The response from the <code>UpdateProfileWithAgent</code> operation.</p>
    # @!attribute agent_response
    #   <p>The response message from the agent.</p>
    #   @return [Types::AgentOutputMessage]
    # @!attribute conversation_id
    #   <p>The conversation identifier to use for follow-up messages in this conversation.</p>
    #   @return [String]
    class UpdateProfileWithAgentResponse < Struct.new(
      nil,
      :agent_response,
      :conversation_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The user input parameter was invalid.</p>
    # @!attribute message
    #   A general-purpose string value.
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
