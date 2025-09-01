# frozen_string_literal: true

# This is generated code!

module Aws::HealthLake
  # This module contains the types returned by client operations.
  module Types

    # <p>Access is denied. Your account is not authorized to perform this operation.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AuthorizationStrategy
      SMARTV1 = 'SMART_ON_FHIR_V1'
      SMART_ON_FHIR = 'SMART_ON_FHIR'
      AWS_AUTH = 'AWS_AUTH'
    end

    module CmkType
      CM_CMK = 'CUSTOMER_MANAGED_KMS_KEY'
      AO_CMK = 'AWS_OWNED_KMS_KEY'
    end

    # <p>The data store is in a transition state and the user requested action can not be performed.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute datastore_name
    #   <p>The user generated name for the data store.</p>
    #   @return [String]
    # @!attribute datastore_type_version
    #   <p>The FHIR version of the data store. The only supported version is R4.</p>
    #   @return [String]
    # @!attribute sse_configuration
    #   <p>
    #               The server-side encryption key configuration for a customer provided encryption key specified for creating a data store.
    #            </p>
    #   @return [Types::SseConfiguration]
    # @!attribute preload_data_config
    #   <p>Optional parameter to preload data upon creation of the data store. Currently, the only
    #            supported preloaded data is synthetic data generated from Synthea.</p>
    #   @return [Types::PreloadDataConfig]
    # @!attribute client_token
    #   <p>Optional user provided token used for ensuring idempotency.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>
    #               Resource tags that are applied to a data store when it is created.
    #            </p>
    #   @return [Array<Types::Tag>]
    # @!attribute identity_provider_configuration
    #   <p>The configuration of the identity provider that you want to use for your data store.</p>
    #   @return [Types::IdentityProviderConfiguration]
    class CreateFHIRDatastoreRequest < Struct.new(
      :datastore_name,
      :datastore_type_version,
      :sse_configuration,
      :preload_data_config,
      :client_token,
      :tags,
      :identity_provider_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute datastore_id
    #   <p>The AWS-generated data store id. This id is in the output from the initial data store
    #            creation call.</p>
    #   @return [String]
    # @!attribute datastore_arn
    #   <p>The data store ARN is generated during the creation of the data store and can be found in
    #            the output from the initial data store creation call.</p>
    #   @return [String]
    # @!attribute datastore_status
    #   <p>The status of the FHIR data store.</p>
    #   @return [String]
    # @!attribute datastore_endpoint
    #   <p>The AWS endpoint for the created data store.</p>
    #   @return [String]
    class CreateFHIRDatastoreResponse < Struct.new(
      :datastore_id,
      :datastore_arn,
      :datastore_status,
      :datastore_endpoint,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The filters applied to data store query.</p>
    # @!attribute datastore_name
    #   <p>Allows the user to filter data store results by name.</p>
    #   @return [String]
    # @!attribute datastore_status
    #   <p>Allows the user to filter data store results by status.</p>
    #   @return [String]
    # @!attribute created_before
    #   <p>A filter that allows the user to set cutoff dates for records. All data stores created
    #            before the specified date will be included in the results. </p>
    #   @return [Time]
    # @!attribute created_after
    #   <p>A filter that allows the user to set cutoff dates for records. All data stores created
    #            after the specified date will be included in the results.</p>
    #   @return [Time]
    class DatastoreFilter < Struct.new(
      :datastore_name,
      :datastore_status,
      :created_before,
      :created_after,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Displays the properties of the data store, including the ID, ARN, name, and the status of the data store.</p>
    # @!attribute datastore_id
    #   <p>The AWS-generated ID number for the data store.</p>
    #   @return [String]
    # @!attribute datastore_arn
    #   <p>The Amazon Resource Name used in the creation of the data store.</p>
    #   @return [String]
    # @!attribute datastore_name
    #   <p>The user-generated name for the data store.</p>
    #   @return [String]
    # @!attribute datastore_status
    #   <p>The status of the data store.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time that a data store was created. </p>
    #   @return [Time]
    # @!attribute datastore_type_version
    #   <p>The FHIR version. Only R4 version data is supported.</p>
    #   @return [String]
    # @!attribute datastore_endpoint
    #   <p>The AWS endpoint for the data store. Each data store will have it's own endpoint with data store ID in the endpoint URL.</p>
    #   @return [String]
    # @!attribute sse_configuration
    #   <p>
    #            The server-side encryption key configuration for a customer provided encryption key (CMK).
    #         </p>
    #   @return [Types::SseConfiguration]
    # @!attribute preload_data_config
    #   <p>The preloaded data configuration for the data store. Only data preloaded from Synthea is supported.</p>
    #   @return [Types::PreloadDataConfig]
    # @!attribute identity_provider_configuration
    #   <p>The identity provider that you selected when you created the data store.</p>
    #   @return [Types::IdentityProviderConfiguration]
    # @!attribute error_cause
    #   <p>The error cause for the current data store operation.</p>
    #   @return [Types::ErrorCause]
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
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DatastoreStatus
      CREATING = 'CREATING'
      ACTIVE = 'ACTIVE'
      DELETING = 'DELETING'
      DELETED = 'DELETED'
      CREATE_FAILED = 'CREATE_FAILED'
    end

    # @!attribute datastore_id
    #   <p> The AWS-generated ID for the data store to be deleted.</p>
    #   @return [String]
    class DeleteFHIRDatastoreRequest < Struct.new(
      :datastore_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute datastore_id
    #   <p>The AWS-generated ID for the data store to be deleted.</p>
    #   @return [String]
    # @!attribute datastore_arn
    #   <p>The Amazon Resource Name (ARN) that gives AWS HealthLake access permission.</p>
    #   @return [String]
    # @!attribute datastore_status
    #   <p>The status of the data store that the user has requested to be deleted.
    #         </p>
    #   @return [String]
    # @!attribute datastore_endpoint
    #   <p>The AWS endpoint for the data store the user has requested to be deleted.</p>
    #   @return [String]
    class DeleteFHIRDatastoreResponse < Struct.new(
      :datastore_id,
      :datastore_arn,
      :datastore_status,
      :datastore_endpoint,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute datastore_id
    #   <p>The AWS-generated data store ID.</p>
    #   @return [String]
    class DescribeFHIRDatastoreRequest < Struct.new(
      :datastore_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute datastore_properties
    #   <p>All properties associated with a data store, including the data store ID, data store ARN,
    #            data store name, data store status, when the data store was created, data store type version, and the data store's endpoint.</p>
    #   @return [Types::DatastoreProperties]
    class DescribeFHIRDatastoreResponse < Struct.new(
      :datastore_properties,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute datastore_id
    #   <p>The AWS generated ID for the data store from which files are being exported from for an export job.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The AWS generated ID for an export job.</p>
    #   @return [String]
    class DescribeFHIRExportJobRequest < Struct.new(
      :datastore_id,
      :job_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute export_job_properties
    #   <p>Displays the properties of the export job, including the ID, Arn, Name, and the status of the job. </p>
    #   @return [Types::ExportJobProperties]
    class DescribeFHIRExportJobResponse < Struct.new(
      :export_job_properties,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute datastore_id
    #   <p>The AWS-generated ID of the data store.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The AWS-generated job ID.</p>
    #   @return [String]
    class DescribeFHIRImportJobRequest < Struct.new(
      :datastore_id,
      :job_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute import_job_properties
    #   <p>The properties of the Import job request, including the ID, ARN, name, status of the job, and the progress report of the job.</p>
    #   @return [Types::ImportJobProperties]
    class DescribeFHIRImportJobResponse < Struct.new(
      :import_job_properties,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ErrorCategory
      RETRYABLE_ERROR = 'RETRYABLE_ERROR'
      NON_RETRYABLE_ERROR = 'NON_RETRYABLE_ERROR'
    end

    # <p>The error info of the create/delete data store operation.</p>
    # @!attribute error_message
    #   <p>The text of the error message.</p>
    #   @return [String]
    # @!attribute error_category
    #   <p>The error category of the create/delete data store operation. Possible statuses are RETRYABLE_ERROR or NON_RETRYABLE_ERROR.</p>
    #   @return [String]
    class ErrorCause < Struct.new(
      :error_message,
      :error_category,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The properties of a FHIR export job, including the ID, ARN, name, and the status of the job.</p>
    # @!attribute job_id
    #   <p>The AWS generated ID for an export job.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The user generated name for an export job.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>The status of a FHIR export job. Possible statuses are SUBMITTED, IN_PROGRESS, COMPLETED, or FAILED.</p>
    #   @return [String]
    # @!attribute submit_time
    #   <p>The time an export job was initiated.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time an export job completed.</p>
    #   @return [Time]
    # @!attribute datastore_id
    #   <p>The AWS generated ID for the data store from which files are being exported for an export job.</p>
    #   @return [String]
    # @!attribute output_data_config
    #   <p>The output data configuration that was supplied when the export job was created.</p>
    #   @return [Types::OutputDataConfig]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name used during the initiation of the job.</p>
    #   @return [String]
    # @!attribute message
    #   <p>An explanation of any errors that may have occurred during the export job.</p>
    #   @return [String]
    class ExportJobProperties < Struct.new(
      :job_id,
      :job_name,
      :job_status,
      :submit_time,
      :end_time,
      :datastore_id,
      :output_data_config,
      :data_access_role_arn,
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module FHIRVersion
      R4 = 'R4'
    end

    # <p>The identity provider configuration that you gave when the data store was created.</p>
    # @!attribute authorization_strategy
    #   <p>The authorization strategy that you selected when you created the data store.</p>
    #   @return [String]
    # @!attribute fine_grained_authorization_enabled
    #   <p>If you enabled fine-grained authorization when you created the data store.</p>
    #   @return [Boolean]
    # @!attribute metadata
    #   <p>The JSON metadata elements that you want to use in your identity provider configuration. Required elements are listed based on the launch specification of the SMART application. For more information on all possible elements, see <a href="https://build.fhir.org/ig/HL7/smart-app-launch/conformance.html#metadata">Metadata</a> in SMART's App Launch specification.</p>
    #            <p>
    #               <code>authorization_endpoint</code>: The URL to the OAuth2 authorization endpoint.</p>
    #            <p>
    #               <code>grant_types_supported</code>:  An array of grant types that are supported at the token endpoint. You must provide at least one grant type option. Valid options are <code>authorization_code</code> and <code>client_credentials</code>.</p>
    #            <p>
    #               <code>token_endpoint</code>: The URL to the OAuth2 token endpoint.</p>
    #            <p>
    #               <code>capabilities</code>: An array of strings of the SMART capabilities that the authorization server supports.</p>
    #            <p>
    #               <code>code_challenge_methods_supported</code>: An array of strings of supported PKCE code challenge methods. You must include the <code>S256</code> method in the array of PKCE code challenge methods.</p>
    #   @return [String]
    # @!attribute idp_lambda_arn
    #   <p>The Amazon Resource Name (ARN) of the Lambda function that you want to use to decode the access token created by the authorization server.</p>
    #   @return [String]
    class IdentityProviderConfiguration < Struct.new(
      :authorization_strategy,
      :fine_grained_authorization_enabled,
      :metadata,
      :idp_lambda_arn,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:fine_grained_authorization_enabled] = false unless options.key?(:fine_grained_authorization_enabled)
        super
      end
    end

    # <p>Displays the properties of the import job, including the ID, Arn, Name, the status of the job, and the progress report of the job.</p>
    # @!attribute job_id
    #   <p>The AWS-generated id number for the Import job.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The user-generated name for an Import job.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>The job status for an Import job. Possible statuses are SUBMITTED, IN_PROGRESS, COMPLETED_WITH_ERRORS, COMPLETED, FAILED.</p>
    #   @return [String]
    # @!attribute submit_time
    #   <p>The time that the Import job was submitted for processing.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time that the Import job was completed.</p>
    #   @return [Time]
    # @!attribute datastore_id
    #   <p>The datastore id used when the Import job was created. </p>
    #   @return [String]
    # @!attribute input_data_config
    #   <p>The input data configuration that was supplied when the Import job was created.</p>
    #   @return [Types::InputDataConfig]
    # @!attribute job_output_data_config
    #   <p>The output data configuration that was supplied when the export job was created.</p>
    #   @return [Types::OutputDataConfig]
    # @!attribute job_progress_report
    #   <p>Displays the progress of the import job, including total resources scanned, total resources ingested, and total size of data ingested.</p>
    #   @return [Types::JobProgressReport]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) that gives AWS HealthLake access to your input data.</p>
    #   @return [String]
    # @!attribute message
    #   <p>An explanation of any errors that may have occurred during the FHIR import job. </p>
    #   @return [String]
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
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The input properties for an import job.</p>
    # @!attribute s3_uri
    #   <p>The S3Uri is the user specified S3 location of the FHIR data to be imported into AWS HealthLake. </p>
    #   @return [String]
    class InputDataConfig < Struct.new(
      :s3_uri,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class S3Uri < InputDataConfig; end
      class Unknown < InputDataConfig; end
    end

    # <p>Unknown error occurs in the service.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The progress report of an import job.</p>
    # @!attribute total_number_of_scanned_files
    #   <p>The number of files scanned from input S3 bucket.</p>
    #   @return [Integer]
    # @!attribute total_size_of_scanned_files_in_mb
    #   <p>The size (in MB) of the files scanned from the input S3 bucket.</p>
    #   @return [Float]
    # @!attribute total_number_of_imported_files
    #   <p>The number of files imported so far.</p>
    #   @return [Integer]
    # @!attribute total_number_of_resources_scanned
    #   <p>The number of resources scanned from the input S3 bucket.</p>
    #   @return [Integer]
    # @!attribute total_number_of_resources_imported
    #   <p>The number of resources imported so far.</p>
    #   @return [Integer]
    # @!attribute total_number_of_resources_with_customer_error
    #   <p>The number of resources that failed due to customer error.</p>
    #   @return [Integer]
    # @!attribute total_number_of_files_read_with_customer_error
    #   <p>The number of files that failed to be read from the input S3 bucket due to customer error.</p>
    #   @return [Integer]
    # @!attribute throughput
    #   <p>The throughput (in MB/sec) of the import job.</p>
    #   @return [Float]
    class JobProgressReport < Struct.new(
      :total_number_of_scanned_files,
      :total_size_of_scanned_files_in_mb,
      :total_number_of_imported_files,
      :total_number_of_resources_scanned,
      :total_number_of_resources_imported,
      :total_number_of_resources_with_customer_error,
      :total_number_of_files_read_with_customer_error,
      :throughput,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module JobStatus
      SUBMITTED = 'SUBMITTED'
      QUEUED = 'QUEUED'
      IN_PROGRESS = 'IN_PROGRESS'
      COMPLETED_WITH_ERRORS = 'COMPLETED_WITH_ERRORS'
      COMPLETED = 'COMPLETED'
      FAILED = 'FAILED'
      CANCEL_SUBMITTED = 'CANCEL_SUBMITTED'
      CANCEL_IN_PROGRESS = 'CANCEL_IN_PROGRESS'
      CANCEL_COMPLETED = 'CANCEL_COMPLETED'
      CANCEL_FAILED = 'CANCEL_FAILED'
    end

    # <p>
    #             The customer-managed-key(CMK) used when creating a data store. If a customer owned key is not specified, an AWS owned key will be used for encryption.
    #          </p>
    # @!attribute cmk_type
    #   <p>
    #               The type of customer-managed-key(CMK) used for encryption. The two types of supported CMKs are customer owned CMKs and AWS owned CMKs.
    #            </p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>
    #               The KMS encryption key id/alias used to encrypt the data store contents at rest.
    #            </p>
    #   @return [String]
    class KmsEncryptionConfig < Struct.new(
      :cmk_type,
      :kms_key_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filter
    #   <p>Lists all filters associated with a FHIR data store request.</p>
    #   @return [Types::DatastoreFilter]
    # @!attribute next_token
    #   <p>Fetches the next page of data stores when results are paginated.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of data stores returned in a single page of a ListFHIRDatastoresRequest call.</p>
    #   @return [Integer]
    class ListFHIRDatastoresRequest < Struct.new(
      :filter,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute datastore_properties_list
    #   <p>All properties associated with the listed data stores.</p>
    #   @return [Array<Types::DatastoreProperties>]
    # @!attribute next_token
    #   <p>Pagination token that can be used to retrieve the next page of results.</p>
    #   @return [String]
    class ListFHIRDatastoresResponse < Struct.new(
      :datastore_properties_list,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute datastore_id
    #   <p>
    #               This parameter limits the response to the export job with the specified data store ID.
    #            </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>
    #               A pagination token used to identify the next page of results to return for a ListFHIRExportJobs query. 
    #            </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>
    #               This parameter limits the number of results returned for a ListFHIRExportJobs to a maximum quantity specified by the user. 
    #            </p>
    #   @return [Integer]
    # @!attribute job_name
    #   <p>
    #               This parameter limits the response to the export job with the specified job name.
    #            </p>
    #   @return [String]
    # @!attribute job_status
    #   <p>
    #               This parameter limits the response to the export jobs with the specified job status. 
    #            </p>
    #   @return [String]
    # @!attribute submitted_before
    #   <p>
    #               This parameter limits the response to FHIR export jobs submitted before a user specified date. 
    #            </p>
    #   @return [Time]
    # @!attribute submitted_after
    #   <p>
    #               This parameter limits the response to FHIR export jobs submitted after a user specified date. 
    #            </p>
    #   @return [Time]
    class ListFHIRExportJobsRequest < Struct.new(
      :datastore_id,
      :next_token,
      :max_results,
      :job_name,
      :job_status,
      :submitted_before,
      :submitted_after,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute export_job_properties_list
    #   <p>
    #               The properties of listed FHIR export jobs, including the ID, ARN, name, and the status of the job.
    #            </p>
    #   @return [Array<Types::ExportJobProperties>]
    # @!attribute next_token
    #   <p>
    #               A pagination token used to identify the next page of results to return for a ListFHIRExportJobs query.
    #            </p>
    #   @return [String]
    class ListFHIRExportJobsResponse < Struct.new(
      :export_job_properties_list,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute datastore_id
    #   <p>
    #               This parameter limits the response to the import job with the specified data store ID.
    #            </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>
    #               A pagination token used to identify the next page of results to return for a ListFHIRImportJobs query.
    #            </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>
    #               This parameter limits the number of results returned for a ListFHIRImportJobs to a maximum quantity specified by the user.
    #            </p>
    #   @return [Integer]
    # @!attribute job_name
    #   <p>
    #               This parameter limits the response to the import job with the specified job name.
    #            </p>
    #   @return [String]
    # @!attribute job_status
    #   <p>
    #               This parameter limits the response to the import job with the specified job status.
    #            </p>
    #   @return [String]
    # @!attribute submitted_before
    #   <p>
    #               This parameter limits the response to FHIR import jobs submitted before a user specified date.
    #            </p>
    #   @return [Time]
    # @!attribute submitted_after
    #   <p>
    #               This parameter limits the response to FHIR import jobs submitted after a user specified date.
    #            </p>
    #   @return [Time]
    class ListFHIRImportJobsRequest < Struct.new(
      :datastore_id,
      :next_token,
      :max_results,
      :job_name,
      :job_status,
      :submitted_before,
      :submitted_after,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute import_job_properties_list
    #   <p>
    #               The properties of a listed FHIR import jobs, including the ID, ARN, name, the status of the job, and the progress report of the job.
    #            </p>
    #   @return [Array<Types::ImportJobProperties>]
    # @!attribute next_token
    #   <p>
    #               A pagination token used to identify the next page of results to return for a ListFHIRImportJobs query.
    #            </p>
    #   @return [String]
    class ListFHIRImportJobsResponse < Struct.new(
      :import_job_properties_list,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>
    #               The Amazon Resource Name(ARN) of the data store for which tags are being added.
    #            </p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>
    #               Returns a list of tags associated with a data store.
    #            </p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The output data configuration that was supplied when the export job was created.</p>
    # @!attribute s3_configuration
    #   <p>
    #               The output data configuration that was supplied when the export job was created.
    #            </p>
    #   @return [Types::S3Configuration]
    class OutputDataConfig < Struct.new(
      :s3_configuration,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class S3Configuration < OutputDataConfig; end
      class Unknown < OutputDataConfig; end
    end

    # <p> The input properties for the preloaded data store. Only data preloaded from Synthea is supported.</p>
    # @!attribute preload_data_type
    #   <p>The type of preloaded data. Only Synthea preloaded data is supported.</p>
    #   @return [String]
    class PreloadDataConfig < Struct.new(
      :preload_data_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module PreloadDataType
      SYNTHEA = 'SYNTHEA'
    end

    # <p> The requested data store was not found.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #             The configuration of the S3 bucket for either an import or export job. This includes assigning permissions for access.
    #          </p>
    # @!attribute s3_uri
    #   <p>
    #               The S3Uri is the user specified S3 location of the FHIR data to be imported into AWS HealthLake.
    #            </p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>
    #               The KMS key ID used to access the S3 bucket.
    #            </p>
    #   @return [String]
    class S3Configuration < Struct.new(
      :s3_uri,
      :kms_key_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #             The server-side encryption key configuration for a customer provided encryption key.
    #          </p>
    # @!attribute kms_encryption_config
    #   <p>
    #               The KMS encryption configuration used to provide details for data encryption.
    #            </p>
    #   @return [Types::KmsEncryptionConfig]
    class SseConfiguration < Struct.new(
      :kms_encryption_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_name
    #   <p>The user generated name for an export job.</p>
    #   @return [String]
    # @!attribute output_data_config
    #   <p>The output data configuration that was supplied when the export job was created.</p>
    #   @return [Types::OutputDataConfig]
    # @!attribute datastore_id
    #   <p>The AWS generated ID for the data store from which files are being exported for an export job.</p>
    #   @return [String]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name used during the initiation of the job.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>An optional user provided token used for ensuring idempotency.</p>
    #   @return [String]
    class StartFHIRExportJobRequest < Struct.new(
      :job_name,
      :output_data_config,
      :datastore_id,
      :data_access_role_arn,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The AWS generated ID for an export job.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>The status of a FHIR export job. Possible statuses are SUBMITTED, IN_PROGRESS, COMPLETED, or FAILED.</p>
    #   @return [String]
    # @!attribute datastore_id
    #   <p>The AWS generated ID for the data store from which files are being exported for an export job.</p>
    #   @return [String]
    class StartFHIRExportJobResponse < Struct.new(
      :job_id,
      :job_status,
      :datastore_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_name
    #   <p>The name of the FHIR Import job in the StartFHIRImport job request.</p>
    #   @return [String]
    # @!attribute input_data_config
    #   <p>The input properties of the FHIR Import job in the StartFHIRImport job request.</p>
    #   @return [Types::InputDataConfig]
    # @!attribute job_output_data_config
    #   <p>The output data configuration that was supplied when the export job was created.</p>
    #   @return [Types::OutputDataConfig]
    # @!attribute datastore_id
    #   <p>The AWS-generated data store ID.</p>
    #   @return [String]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) that gives AWS HealthLake access permission.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Optional user provided token used for ensuring idempotency.</p>
    #   @return [String]
    class StartFHIRImportJobRequest < Struct.new(
      :job_name,
      :input_data_config,
      :job_output_data_config,
      :datastore_id,
      :data_access_role_arn,
      :client_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The AWS-generated job ID.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>The status of an import job.</p>
    #   @return [String]
    # @!attribute datastore_id
    #   <p>The AWS-generated data store ID.</p>
    #   @return [String]
    class StartFHIRImportJobResponse < Struct.new(
      :job_id,
      :job_status,
      :datastore_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>
    #             A tag is a label consisting of a user-defined key and value. The form for tags is {"Key", "Value"}
    #          </p>
    # @!attribute key
    #   <p>
    #               The key portion of a tag. Tag keys are case sensitive.
    #            </p>
    #   @return [String]
    # @!attribute value
    #   <p>
    #               The value portion of a tag. Tag values are case sensitive.
    #            </p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>
    #               The Amazon Resource Name(ARN)that gives AWS HealthLake access to the data store which tags are being added to.
    #            </p>
    #   @return [String]
    # @!attribute tags
    #   <p>
    #               The user specified key and value pair tags being added to a data store.
    #            </p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The user has exceeded their maximum number of allowed calls to the given API. </p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name(ARN) of the data store for which tags are being removed.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>
    #               The keys for the tags to be removed from the HealthLake data store.
    #            </p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The user input parameter was invalid.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end
