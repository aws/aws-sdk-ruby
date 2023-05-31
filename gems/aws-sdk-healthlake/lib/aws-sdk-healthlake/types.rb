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

    # The Data Store is in a transition state and the user requested action
    # can not be performed.
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
    #   The user generated name for the Data Store.
    #   @return [String]
    #
    # @!attribute [rw] datastore_type_version
    #   The FHIR version of the Data Store. The only supported version is
    #   R4.
    #   @return [String]
    #
    # @!attribute [rw] sse_configuration
    #   The server-side encryption key configuration for a customer provided
    #   encryption key specified for creating a Data Store.
    #   @return [Types::SseConfiguration]
    #
    # @!attribute [rw] preload_data_config
    #   Optional parameter to preload data upon creation of the Data Store.
    #   Currently, the only supported preloaded data is synthetic data
    #   generated from Synthea.
    #   @return [Types::PreloadDataConfig]
    #
    # @!attribute [rw] client_token
    #   Optional user provided token used for ensuring idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Resource tags that are applied to a Data Store when it is created.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] identity_provider_configuration
    #   The configuration of the identity provider that you want to use for
    #   your Data Store.
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
    #   The AWS-generated Data Store id. This id is in the output from the
    #   initial Data Store creation call.
    #   @return [String]
    #
    # @!attribute [rw] datastore_arn
    #   The Data Store ARN is generated during the creation of the Data
    #   Store and can be found in the output from the initial Data Store
    #   creation call.
    #   @return [String]
    #
    # @!attribute [rw] datastore_status
    #   The status of the FHIR Data Store. Possible statuses are ‘CREATING’,
    #   ‘ACTIVE’, ‘DELETING’, ‘DELETED’.
    #   @return [String]
    #
    # @!attribute [rw] datastore_endpoint
    #   The AWS endpoint for the created Data Store.
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

    # The filters applied to Data Store query.
    #
    # @!attribute [rw] datastore_name
    #   Allows the user to filter Data Store results by name.
    #   @return [String]
    #
    # @!attribute [rw] datastore_status
    #   Allows the user to filter Data Store results by status.
    #   @return [String]
    #
    # @!attribute [rw] created_before
    #   A filter that allows the user to set cutoff dates for records. All
    #   Data Stores created before the specified date will be included in
    #   the results.
    #   @return [Time]
    #
    # @!attribute [rw] created_after
    #   A filter that allows the user to set cutoff dates for records. All
    #   Data Stores created after the specified date will be included in the
    #   results.
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

    # Displays the properties of the Data Store, including the ID, ARN,
    # name, and the status of the Data Store.
    #
    # @!attribute [rw] datastore_id
    #   The AWS-generated ID number for the Data Store.
    #   @return [String]
    #
    # @!attribute [rw] datastore_arn
    #   The Amazon Resource Name used in the creation of the Data Store.
    #   @return [String]
    #
    # @!attribute [rw] datastore_name
    #   The user-generated name for the Data Store.
    #   @return [String]
    #
    # @!attribute [rw] datastore_status
    #   The status of the Data Store. Possible statuses are 'CREATING',
    #   'ACTIVE', 'DELETING', or 'DELETED'.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time that a Data Store was created.
    #   @return [Time]
    #
    # @!attribute [rw] datastore_type_version
    #   The FHIR version. Only R4 version data is supported.
    #   @return [String]
    #
    # @!attribute [rw] datastore_endpoint
    #   The AWS endpoint for the Data Store. Each Data Store will have it's
    #   own endpoint with Data Store ID in the endpoint URL.
    #   @return [String]
    #
    # @!attribute [rw] sse_configuration
    #   The server-side encryption key configuration for a customer provided
    #   encryption key (CMK).
    #   @return [Types::SseConfiguration]
    #
    # @!attribute [rw] preload_data_config
    #   The preloaded data configuration for the Data Store. Only data
    #   preloaded from Synthea is supported.
    #   @return [Types::PreloadDataConfig]
    #
    # @!attribute [rw] identity_provider_configuration
    #   The identity provider that you selected when you created the Data
    #   Store.
    #   @return [Types::IdentityProviderConfiguration]
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
      :identity_provider_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datastore_id
    #   The AWS-generated ID for the Data Store to be deleted.
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
    #   The AWS-generated ID for the Data Store to be deleted.
    #   @return [String]
    #
    # @!attribute [rw] datastore_arn
    #   The Amazon Resource Name (ARN) that gives Amazon HealthLake access
    #   permission.
    #   @return [String]
    #
    # @!attribute [rw] datastore_status
    #   The status of the Data Store that the user has requested to be
    #   deleted.
    #   @return [String]
    #
    # @!attribute [rw] datastore_endpoint
    #   The AWS endpoint for the Data Store the user has requested to be
    #   deleted.
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
    #   The AWS-generated Data Store ID.
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
    #   All properties associated with a Data Store, including the Data
    #   Store ID, Data Store ARN, Data Store name, Data Store status,
    #   created at, Data Store type version, and Data Store endpoint.
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
    #   The AWS generated ID for the Data Store from which files are being
    #   exported from for an export job.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The AWS generated ID for an export job.
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
    #   Displays the properties of the export job, including the ID, Arn,
    #   Name, and the status of the job.
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
    #   The AWS-generated ID of the Data Store.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The AWS-generated job ID.
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
    #   The properties of the Import job request, including the ID, ARN,
    #   name, and the status of the job.
    #   @return [Types::ImportJobProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/DescribeFHIRImportJobResponse AWS API Documentation
    #
    class DescribeFHIRImportJobResponse < Struct.new(
      :import_job_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties of a FHIR export job, including the ID, ARN, name, and
    # the status of the job.
    #
    # @!attribute [rw] job_id
    #   The AWS generated ID for an export job.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The user generated name for an export job.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The status of a FHIR export job. Possible statuses are SUBMITTED,
    #   IN\_PROGRESS, COMPLETED, or FAILED.
    #   @return [String]
    #
    # @!attribute [rw] submit_time
    #   The time an export job was initiated.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time an export job completed.
    #   @return [Time]
    #
    # @!attribute [rw] datastore_id
    #   The AWS generated ID for the Data Store from which files are being
    #   exported for an export job.
    #   @return [String]
    #
    # @!attribute [rw] output_data_config
    #   The output data configuration that was supplied when the export job
    #   was created.
    #   @return [Types::OutputDataConfig]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name used during the initiation of the job.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   An explanation of any errors that may have occurred during the
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

    # The identity provider configuration that you gave when the Data Store
    # was created.
    #
    # @!attribute [rw] authorization_strategy
    #   The authorization strategy that you selected when you created the
    #   Data Store.
    #   @return [String]
    #
    # @!attribute [rw] fine_grained_authorization_enabled
    #   If you enabled fine-grained authorization when you created the Data
    #   Store.
    #   @return [Boolean]
    #
    # @!attribute [rw] metadata
    #   The JSON metadata elements that you want to use in your identity
    #   provider configuration. Required elements are listed based on the
    #   launch specification of the SMART application. For more information
    #   on all possible elements, see [Metadata][1] in SMART's App Launch
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
    #   The Amazon Resource Name (ARN) of the Lambda function that you want
    #   to use to decode the access token created by the authorization
    #   server.
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

    # Displays the properties of the import job, including the ID, Arn,
    # Name, and the status of the Data Store.
    #
    # @!attribute [rw] job_id
    #   The AWS-generated id number for the Import job.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The user-generated name for an Import job.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The job status for an Import job. Possible statuses are SUBMITTED,
    #   IN\_PROGRESS, COMPLETED\_WITH\_ERRORS, COMPLETED, FAILED.
    #   @return [String]
    #
    # @!attribute [rw] submit_time
    #   The time that the Import job was submitted for processing.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time that the Import job was completed.
    #   @return [Time]
    #
    # @!attribute [rw] datastore_id
    #   The datastore id used when the Import job was created.
    #   @return [String]
    #
    # @!attribute [rw] input_data_config
    #   The input data configuration that was supplied when the Import job
    #   was created.
    #   @return [Types::InputDataConfig]
    #
    # @!attribute [rw] job_output_data_config
    #   The output data configuration that was supplied when the export job
    #   was created.
    #   @return [Types::OutputDataConfig]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) that gives Amazon HealthLake access
    #   to your input data.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   An explanation of any errors that may have occurred during the FHIR
    #   import job.
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
      :data_access_role_arn,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input properties for an import job.
    #
    # @note InputDataConfig is a union - when making an API calls you must set exactly one of the members.
    #
    # @note InputDataConfig is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of InputDataConfig corresponding to the set member.
    #
    # @!attribute [rw] s3_uri
    #   The S3Uri is the user specified S3 location of the FHIR data to be
    #   imported into Amazon HealthLake.
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

    # Unknown error occurs in the service.
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

    # The customer-managed-key(CMK) used when creating a Data Store. If a
    # customer owned key is not specified, an AWS owned key will be used for
    # encryption.
    #
    # @!attribute [rw] cmk_type
    #   The type of customer-managed-key(CMK) used for encyrption. The two
    #   types of supported CMKs are customer owned CMKs and AWS owned CMKs.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS encryption key id/alias used to encrypt the Data Store
    #   contents at rest.
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
    #   Lists all filters associated with a FHIR Data Store request.
    #   @return [Types::DatastoreFilter]
    #
    # @!attribute [rw] next_token
    #   Fetches the next page of Data Stores when results are paginated.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of Data Stores returned in a single page of a
    #   ListFHIRDatastoresRequest call.
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
    #   All properties associated with the listed Data Stores.
    #   @return [Array<Types::DatastoreProperties>]
    #
    # @!attribute [rw] next_token
    #   Pagination token that can be used to retrieve the next page of
    #   results.
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
    #   This parameter limits the response to the export job with the
    #   specified Data Store ID.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token used to identify the next page of results to
    #   return for a ListFHIRExportJobs query.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   This parameter limits the number of results returned for a
    #   ListFHIRExportJobs to a maximum quantity specified by the user.
    #   @return [Integer]
    #
    # @!attribute [rw] job_name
    #   This parameter limits the response to the export job with the
    #   specified job name.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   This parameter limits the response to the export jobs with the
    #   specified job status.
    #   @return [String]
    #
    # @!attribute [rw] submitted_before
    #   This parameter limits the response to FHIR export jobs submitted
    #   before a user specified date.
    #   @return [Time]
    #
    # @!attribute [rw] submitted_after
    #   This parameter limits the response to FHIR export jobs submitted
    #   after a user specified date.
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
    #   The properties of listed FHIR export jobs, including the ID, ARN,
    #   name, and the status of the job.
    #   @return [Array<Types::ExportJobProperties>]
    #
    # @!attribute [rw] next_token
    #   A pagination token used to identify the next page of results to
    #   return for a ListFHIRExportJobs query.
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
    #   This parameter limits the response to the import job with the
    #   specified Data Store ID.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token used to identify the next page of results to
    #   return for a ListFHIRImportJobs query.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   This parameter limits the number of results returned for a
    #   ListFHIRImportJobs to a maximum quantity specified by the user.
    #   @return [Integer]
    #
    # @!attribute [rw] job_name
    #   This parameter limits the response to the import job with the
    #   specified job name.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   This parameter limits the response to the import job with the
    #   specified job status.
    #   @return [String]
    #
    # @!attribute [rw] submitted_before
    #   This parameter limits the response to FHIR import jobs submitted
    #   before a user specified date.
    #   @return [Time]
    #
    # @!attribute [rw] submitted_after
    #   This parameter limits the response to FHIR import jobs submitted
    #   after a user specified date.
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
    #   The properties of a listed FHIR import jobs, including the ID, ARN,
    #   name, and the status of the job.
    #   @return [Array<Types::ImportJobProperties>]
    #
    # @!attribute [rw] next_token
    #   A pagination token used to identify the next page of results to
    #   return for a ListFHIRImportJobs query.
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
    #   The Amazon Resource Name(ARN) of the Data Store for which tags are
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
    #   Returns a list of tags associated with a Data Store.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output data configuration that was supplied when the export job
    # was created.
    #
    # @note OutputDataConfig is a union - when making an API calls you must set exactly one of the members.
    #
    # @note OutputDataConfig is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of OutputDataConfig corresponding to the set member.
    #
    # @!attribute [rw] s3_configuration
    #   The output data configuration that was supplied when the export job
    #   was created.
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

    # The input properties for the preloaded Data Store. Only data preloaded
    # from Synthea is supported.
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

    # The requested Data Store was not found.
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
    # This includes assigning permissions for access.
    #
    # @!attribute [rw] s3_uri
    #   The S3Uri is the user specified S3 location of the FHIR data to be
    #   imported into Amazon HealthLake.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key ID used to access the S3 bucket.
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

    # The server-side encryption key configuration for a customer provided
    # encryption key.
    #
    # @!attribute [rw] kms_encryption_config
    #   The KMS encryption configuration used to provide details for data
    #   encryption.
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
    #   The user generated name for an export job.
    #   @return [String]
    #
    # @!attribute [rw] output_data_config
    #   The output data configuration that was supplied when the export job
    #   was created.
    #   @return [Types::OutputDataConfig]
    #
    # @!attribute [rw] datastore_id
    #   The AWS generated ID for the Data Store from which files are being
    #   exported for an export job.
    #   @return [String]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name used during the initiation of the job.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   An optional user provided token used for ensuring idempotency.
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
    #   The AWS generated ID for an export job.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The status of a FHIR export job. Possible statuses are SUBMITTED,
    #   IN\_PROGRESS, COMPLETED, or FAILED.
    #   @return [String]
    #
    # @!attribute [rw] datastore_id
    #   The AWS generated ID for the Data Store from which files are being
    #   exported for an export job.
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
    #   The name of the FHIR Import job in the StartFHIRImport job request.
    #   @return [String]
    #
    # @!attribute [rw] input_data_config
    #   The input properties of the FHIR Import job in the StartFHIRImport
    #   job request.
    #   @return [Types::InputDataConfig]
    #
    # @!attribute [rw] job_output_data_config
    #   The output data configuration that was supplied when the export job
    #   was created.
    #   @return [Types::OutputDataConfig]
    #
    # @!attribute [rw] datastore_id
    #   The AWS-generated Data Store ID.
    #   @return [String]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) that gives Amazon HealthLake access
    #   permission.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Optional user provided token used for ensuring idempotency.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
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
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The AWS-generated job ID.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The status of an import job.
    #   @return [String]
    #
    # @!attribute [rw] datastore_id
    #   The AWS-generated Data Store ID.
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

    # A tag is a label consisting of a user-defined key and value. The form
    # for tags is \\\{"Key", "Value"\\}
    #
    # @!attribute [rw] key
    #   The key portion of a tag. Tag keys are case sensitive.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value portion of a tag. Tag values are case sensitive.
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
    #   The Amazon Resource Name(ARN)that gives Amazon HealthLake access to
    #   the Data Store which tags are being added to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The user specified key and value pair tags being added to a Data
    #   Store.
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
    #   "The Amazon Resource Name(ARN) of the Data Store for which tags are
    #   being removed
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys for the tags to be removed from the Healthlake Data Store.
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
