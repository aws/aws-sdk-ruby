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

    # @note When making an API call, you may pass CreateFHIRDatastoreRequest
    #   data as a hash:
    #
    #       {
    #         datastore_name: "DatastoreName",
    #         datastore_type_version: "R4", # required, accepts R4
    #         preload_data_config: {
    #           preload_data_type: "SYNTHEA", # required, accepts SYNTHEA
    #         },
    #         client_token: "ClientTokenString",
    #       }
    #
    # @!attribute [rw] datastore_name
    #   The user generated name for the Data Store.
    #   @return [String]
    #
    # @!attribute [rw] datastore_type_version
    #   The FHIR version of the Data Store. The only supported version is
    #   R4.
    #   @return [String]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/CreateFHIRDatastoreRequest AWS API Documentation
    #
    class CreateFHIRDatastoreRequest < Struct.new(
      :datastore_name,
      :datastore_type_version,
      :preload_data_config,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] datastore_id
    #   The AWS-generated Data Store id. This id is in the output from the
    #   initial Data Store creation call.
    #   @return [String]
    #
    # @!attribute [rw] datastore_arn
    #   The datastore ARN is generated during the creation of the Data Store
    #   and can be found in the output from the initial Data Store creation
    #   call.
    #   @return [String]
    #
    # @!attribute [rw] datastore_status
    #   The status of the FHIR Data Store. Possible statuses are ‘CREATING’,
    #   ‘ACTIVE’, ‘DELETING’, ‘DELETED’.
    #   @return [String]
    #
    # @!attribute [rw] datastore_endpoint
    #   The AWS endpoint for the created Data Store. For preview, only
    #   US-east-1 endpoints are supported.
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
    # @note When making an API call, you may pass DatastoreFilter
    #   data as a hash:
    #
    #       {
    #         datastore_name: "DatastoreName",
    #         datastore_status: "CREATING", # accepts CREATING, ACTIVE, DELETING, DELETED
    #         created_before: Time.now,
    #         created_after: Time.now,
    #       }
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

    # Displays the properties of the Data Store, including the ID, Arn,
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
    # @!attribute [rw] preload_data_config
    #   The preloaded data configuration for the Data Store. Only data
    #   preloaded from Synthea is supported.
    #   @return [Types::PreloadDataConfig]
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
      :preload_data_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteFHIRDatastoreRequest
    #   data as a hash:
    #
    #       {
    #         datastore_id: "DatastoreId",
    #       }
    #
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

    # @note When making an API call, you may pass DescribeFHIRDatastoreRequest
    #   data as a hash:
    #
    #       {
    #         datastore_id: "DatastoreId",
    #       }
    #
    # @!attribute [rw] datastore_id
    #   The AWS-generated Data Store id. This is part of the
    #   ‘CreateFHIRDatastore’ output.
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

    # @note When making an API call, you may pass DescribeFHIRExportJobRequest
    #   data as a hash:
    #
    #       {
    #         datastore_id: "DatastoreId", # required
    #         job_id: "JobId", # required
    #       }
    #
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

    # @note When making an API call, you may pass DescribeFHIRImportJobRequest
    #   data as a hash:
    #
    #       {
    #         datastore_id: "DatastoreId", # required
    #         job_id: "JobId", # required
    #       }
    #
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
    #   IN\_PROGRESS, COMPLETED, FAILED.
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
      :data_access_role_arn,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input properties for an import job.
    #
    # @note When making an API call, you may pass InputDataConfig
    #   data as a hash:
    #
    #       {
    #         s3_uri: "S3Uri",
    #       }
    #
    # @!attribute [rw] s3_uri
    #   The S3Uri is the user specified S3 location of the FHIR data to be
    #   imported into Amazon HealthLake.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/InputDataConfig AWS API Documentation
    #
    class InputDataConfig < Struct.new(
      :s3_uri)
      SENSITIVE = []
      include Aws::Structure
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

    # @note When making an API call, you may pass ListFHIRDatastoresRequest
    #   data as a hash:
    #
    #       {
    #         filter: {
    #           datastore_name: "DatastoreName",
    #           datastore_status: "CREATING", # accepts CREATING, ACTIVE, DELETING, DELETED
    #           created_before: Time.now,
    #           created_after: Time.now,
    #         },
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
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

    # The output data configuration that was supplied when the export job
    # was created.
    #
    # @note When making an API call, you may pass OutputDataConfig
    #   data as a hash:
    #
    #       {
    #         s3_uri: "S3Uri",
    #       }
    #
    # @!attribute [rw] s3_uri
    #   The S3Uri is the user specified S3 location to which data will be
    #   exported from a FHIR Data Store.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/healthlake-2017-07-01/OutputDataConfig AWS API Documentation
    #
    class OutputDataConfig < Struct.new(
      :s3_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input properties for the preloaded Data Store. Only data preloaded
    # from Synthea is supported.
    #
    # @note When making an API call, you may pass PreloadDataConfig
    #   data as a hash:
    #
    #       {
    #         preload_data_type: "SYNTHEA", # required, accepts SYNTHEA
    #       }
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

    # @note When making an API call, you may pass StartFHIRExportJobRequest
    #   data as a hash:
    #
    #       {
    #         job_name: "JobName",
    #         output_data_config: { # required
    #           s3_uri: "S3Uri",
    #         },
    #         datastore_id: "DatastoreId", # required
    #         data_access_role_arn: "IamRoleArn", # required
    #         client_token: "ClientTokenString", # required
    #       }
    #
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

    # @note When making an API call, you may pass StartFHIRImportJobRequest
    #   data as a hash:
    #
    #       {
    #         job_name: "JobName",
    #         input_data_config: { # required
    #           s3_uri: "S3Uri",
    #         },
    #         datastore_id: "DatastoreId", # required
    #         data_access_role_arn: "IamRoleArn", # required
    #         client_token: "ClientTokenString", # required
    #       }
    #
    # @!attribute [rw] job_name
    #   The name of the FHIR Import job in the StartFHIRImport job request.
    #   @return [String]
    #
    # @!attribute [rw] input_data_config
    #   The input properties of the FHIR Import job in the StartFHIRImport
    #   job request.
    #   @return [Types::InputDataConfig]
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
