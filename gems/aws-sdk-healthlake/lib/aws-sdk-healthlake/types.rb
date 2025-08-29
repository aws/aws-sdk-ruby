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
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data store is in a transition state and the user requested action
    # cannot be performed.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/CreateFHIRDatastoreRequest AWS API Documentation
    #
    class CreateFHIRDatastoreRequest < Struct.new(
      :datastore_name,
      :datastore_type_version,
      :sse_configuration,
      :preload_data_config,
      :client_token,
      :tags,
      :identity_provider_configuration)
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
    #   The AWS endpoint created for the data store.
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
    #   The AWS endpoint for the data store.
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
      :error_cause)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datastore_id
    #   The AWS-generated identifier for the data store to be deleted.
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
    #   The AWS-generated ID for the deleted data store.
    #   @return [String]
    #
    # @!attribute [rw] datastore_arn
    #   The Amazon Resource Name (ARN) that grants access permission to AWS
    #   HealthLake.
    #   @return [String]
    #
    # @!attribute [rw] datastore_status
    #   The data store status.
    #   @return [String]
    #
    # @!attribute [rw] datastore_endpoint
    #   The AWS endpoint of the data store to be deleted.
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
    #   * `AWS_AUTH` – The default HealthLake authorization strategy; not
    #     affiliated with SMART on FHIR.
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
    #   The Amazon Resource Name (ARN) that grants AWS HealthLake access to
    #   the input data.
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
    #   The `S3Uri` is the user-specified S3 location of the FHIR data to be
    #   imported into AWS HealthLake.
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
    #   The number of files scanned from the S3 input bucket.
    #   @return [Integer]
    #
    # @!attribute [rw] total_size_of_scanned_files_in_mb
    #   The size (in MB) of files scanned from the S3 input bucket.
    #   @return [Float]
    #
    # @!attribute [rw] total_number_of_imported_files
    #   The number of files imported.
    #   @return [Integer]
    #
    # @!attribute [rw] total_number_of_resources_scanned
    #   The number of resources scanned from the S3 input bucket.
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
    #   The number of files that failed to be read from the S3 input bucket
    #   due to customer error.
    #   @return [Integer]
    #
    # @!attribute [rw] throughput
    #   The transaction rate the import job is processed at.
    #   @return [Float]
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
      :throughput)
      SENSITIVE = []
      include Aws::Structure
    end

    # The customer-managed-key (CMK) used when creating a data store. If a
    # customer-owned key is not specified, an AWS-owned key is used for
    # encryption.
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

    # The requested data store was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of the S3 bucket for either an import or export job.
    # This includes assigning access permissions.
    #
    # @!attribute [rw] s3_uri
    #   The `S3Uri` is the user-specified S3 location of the FHIR data to be
    #   imported into AWS HealthLake.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The Key Management Service (KMS) key ID used to access the S3
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
    #   The Amazon Resource Name (ARN) that grants access permission to AWS
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/StartFHIRImportJobRequest AWS API Documentation
    #
    class StartFHIRImportJobRequest < Struct.new(
      :job_name,
      :input_data_config,
      :job_output_data_config,
      :datastore_id,
      :data_access_role_arn,
      :client_token,
      :validation_level)
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
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
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

    # The user input parameter was invalid.
    #
    # @!attribute [rw] message
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

