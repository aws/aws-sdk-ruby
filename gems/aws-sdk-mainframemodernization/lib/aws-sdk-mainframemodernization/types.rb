# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MainframeModernization
  module Types

    # The account or role doesn't have the right permissions to make the
    # request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines an alternate key. This value is optional. A legacy data set
    # might not have any alternate key defined but if those alternate keys
    # definitions exist, provide them, as some applications will make use of
    # them.
    #
    # @!attribute [rw] allow_duplicates
    #   Indicates whether the alternate key values are supposed to be unique
    #   for the given data set.
    #   @return [Boolean]
    #
    # @!attribute [rw] length
    #   A strictly positive integer value representing the length of the
    #   alternate key.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the alternate key.
    #   @return [String]
    #
    # @!attribute [rw] offset
    #   A positive integer value representing the offset to mark the start
    #   of the alternate key part in the record byte array.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/AlternateKey AWS API Documentation
    #
    class AlternateKey < Struct.new(
      :allow_duplicates,
      :length,
      :name,
      :offset)
      SENSITIVE = []
      include Aws::Structure
    end

    # A subset of the possible application attributes. Used in the
    # application list.
    #
    # @!attribute [rw] application_arn
    #   The Amazon Resource Name (ARN) of the application.
    #   @return [String]
    #
    # @!attribute [rw] application_id
    #   The unique identifier of the application.
    #   @return [String]
    #
    # @!attribute [rw] application_version
    #   The version of the application.
    #   @return [Integer]
    #
    # @!attribute [rw] creation_time
    #   The timestamp when the application was created.
    #   @return [Time]
    #
    # @!attribute [rw] deployment_status
    #   Indicates either an ongoing deployment or if the application has
    #   ever deployed successfully.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the application.
    #   @return [String]
    #
    # @!attribute [rw] engine_type
    #   The type of the target platform for this application.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The unique identifier of the runtime environment that hosts this
    #   application.
    #   @return [String]
    #
    # @!attribute [rw] last_start_time
    #   The timestamp when you last started the application. Null until the
    #   application runs for the first time.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   The name of the application.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the role associated with the
    #   application.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the application.
    #   @return [String]
    #
    # @!attribute [rw] version_status
    #   Indicates the status of the latest version of the application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/ApplicationSummary AWS API Documentation
    #
    class ApplicationSummary < Struct.new(
      :application_arn,
      :application_id,
      :application_version,
      :creation_time,
      :deployment_status,
      :description,
      :engine_type,
      :environment_id,
      :last_start_time,
      :name,
      :role_arn,
      :status,
      :version_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines an application version summary.
    #
    # @!attribute [rw] application_version
    #   The application version.
    #   @return [Integer]
    #
    # @!attribute [rw] creation_time
    #   The timestamp when the application version was created.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the application.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the reported status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/ApplicationVersionSummary AWS API Documentation
    #
    class ApplicationVersionSummary < Struct.new(
      :application_version,
      :creation_time,
      :status,
      :status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the details of a batch job.
    #
    # @note BatchJobDefinition is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of BatchJobDefinition corresponding to the set member.
    #
    # @!attribute [rw] file_batch_job_definition
    #   Specifies a file containing a batch job definition.
    #   @return [Types::FileBatchJobDefinition]
    #
    # @!attribute [rw] script_batch_job_definition
    #   A script containing a batch job definition.
    #   @return [Types::ScriptBatchJobDefinition]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/BatchJobDefinition AWS API Documentation
    #
    class BatchJobDefinition < Struct.new(
      :file_batch_job_definition,
      :script_batch_job_definition,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class FileBatchJobDefinition < BatchJobDefinition; end
      class ScriptBatchJobDefinition < BatchJobDefinition; end
      class Unknown < BatchJobDefinition; end
    end

    # A subset of the possible batch job attributes. Used in the batch job
    # list.
    #
    # @!attribute [rw] application_id
    #   The unique identifier of the application that hosts this batch job.
    #   @return [String]
    #
    # @!attribute [rw] batch_job_identifier
    #   The unique identifier of this batch job.
    #   @return [Types::BatchJobIdentifier]
    #
    # @!attribute [rw] end_time
    #   The timestamp when this batch job execution ended.
    #   @return [Time]
    #
    # @!attribute [rw] execution_id
    #   The unique identifier of this execution of the batch job.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The unique identifier of a particular batch job.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The name of a particular batch job.
    #   @return [String]
    #
    # @!attribute [rw] job_type
    #   The type of a particular batch job execution.
    #   @return [String]
    #
    # @!attribute [rw] return_code
    #   The batch job return code from either the Blu Age or Micro Focus
    #   runtime engines. For more information, see [Batch return codes][1]
    #   in the *IBM WebSphere Application Server* documentation.
    #
    #
    #
    #   [1]: https://www.ibm.com/docs/en/was/8.5.5?topic=model-batch-return-codes
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The timestamp when a particular batch job execution started.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of a particular batch job execution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/BatchJobExecutionSummary AWS API Documentation
    #
    class BatchJobExecutionSummary < Struct.new(
      :application_id,
      :batch_job_identifier,
      :end_time,
      :execution_id,
      :job_id,
      :job_name,
      :job_type,
      :return_code,
      :start_time,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies a specific batch job.
    #
    # @note BatchJobIdentifier is a union - when making an API calls you must set exactly one of the members.
    #
    # @note BatchJobIdentifier is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of BatchJobIdentifier corresponding to the set member.
    #
    # @!attribute [rw] file_batch_job_identifier
    #   Specifies a file associated with a specific batch job.
    #   @return [Types::FileBatchJobIdentifier]
    #
    # @!attribute [rw] script_batch_job_identifier
    #   A batch job identifier in which the batch job to run is identified
    #   by the script name.
    #   @return [Types::ScriptBatchJobIdentifier]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/BatchJobIdentifier AWS API Documentation
    #
    class BatchJobIdentifier < Struct.new(
      :file_batch_job_identifier,
      :script_batch_job_identifier,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class FileBatchJobIdentifier < BatchJobIdentifier; end
      class ScriptBatchJobIdentifier < BatchJobIdentifier; end
      class Unknown < BatchJobIdentifier; end
    end

    # @!attribute [rw] application_id
    #   The unique identifier of the application.
    #   @return [String]
    #
    # @!attribute [rw] execution_id
    #   The unique identifier of the batch job execution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/CancelBatchJobExecutionRequest AWS API Documentation
    #
    class CancelBatchJobExecutionRequest < Struct.new(
      :application_id,
      :execution_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/CancelBatchJobExecutionResponse AWS API Documentation
    #
    class CancelBatchJobExecutionResponse < Aws::EmptyStructure; end

    # The parameters provided in the request conflict with existing
    # resources.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the conflicting resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the conflicting resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier the service generates to ensure
    #   the idempotency of the request to create an application. The service
    #   generates the clientToken when the API call is triggered. The token
    #   expires after one hour, so if you retry the API within this
    #   timeframe with the same clientToken, you will get the same response.
    #   The service also handles deleting the clientToken after it expires.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] definition
    #   The application definition for this application. You can specify
    #   either inline JSON or an S3 bucket location.
    #   @return [Types::Definition]
    #
    # @!attribute [rw] description
    #   The description of the application.
    #   @return [String]
    #
    # @!attribute [rw] engine_type
    #   The type of the target platform for this application.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The identifier of a customer managed key.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The unique identifier of the application.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the role associated with the
    #   application.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to apply to the application.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/CreateApplicationRequest AWS API Documentation
    #
    class CreateApplicationRequest < Struct.new(
      :client_token,
      :definition,
      :description,
      :engine_type,
      :kms_key_id,
      :name,
      :role_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   The Amazon Resource Name (ARN) of the application.
    #   @return [String]
    #
    # @!attribute [rw] application_id
    #   The unique application identifier.
    #   @return [String]
    #
    # @!attribute [rw] application_version
    #   The version number of the application.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/CreateApplicationResponse AWS API Documentation
    #
    class CreateApplicationResponse < Struct.new(
      :application_arn,
      :application_id,
      :application_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The unique identifier of the application for which you want to
    #   import data sets.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier you provide to ensure the
    #   idempotency of the request to create a data set import. The service
    #   generates the clientToken when the API call is triggered. The token
    #   expires after one hour, so if you retry the API within this
    #   timeframe with the same clientToken, you will get the same response.
    #   The service also handles deleting the clientToken after it expires.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] import_config
    #   The data set import task configuration.
    #   @return [Types::DataSetImportConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/CreateDataSetImportTaskRequest AWS API Documentation
    #
    class CreateDataSetImportTaskRequest < Struct.new(
      :application_id,
      :client_token,
      :import_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] task_id
    #   The task identifier. This operation is asynchronous. Use this
    #   identifier with the GetDataSetImportTask operation to obtain the
    #   status of this task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/CreateDataSetImportTaskResponse AWS API Documentation
    #
    class CreateDataSetImportTaskResponse < Struct.new(
      :task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The application identifier.
    #   @return [String]
    #
    # @!attribute [rw] application_version
    #   The version of the application to deploy.
    #   @return [Integer]
    #
    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier you provide to ensure the
    #   idempotency of the request to create a deployment. The service
    #   generates the clientToken when the API call is triggered. The token
    #   expires after one hour, so if you retry the API within this
    #   timeframe with the same clientToken, you will get the same response.
    #   The service also handles deleting the clientToken after it expires.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The identifier of the runtime environment where you want to deploy
    #   this application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/CreateDeploymentRequest AWS API Documentation
    #
    class CreateDeploymentRequest < Struct.new(
      :application_id,
      :application_version,
      :client_token,
      :environment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deployment_id
    #   The unique identifier of the deployment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/CreateDeploymentResponse AWS API Documentation
    #
    class CreateDeploymentResponse < Struct.new(
      :deployment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   Unique, case-sensitive identifier you provide to ensure the
    #   idempotency of the request to create an environment. The service
    #   generates the clientToken when the API call is triggered. The token
    #   expires after one hour, so if you retry the API within this
    #   timeframe with the same clientToken, you will get the same response.
    #   The service also handles deleting the clientToken after it expires.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the runtime environment.
    #   @return [String]
    #
    # @!attribute [rw] engine_type
    #   The engine type for the runtime environment.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The version of the engine type for the runtime environment.
    #   @return [String]
    #
    # @!attribute [rw] high_availability_config
    #   The details of a high availability configuration for this runtime
    #   environment.
    #   @return [Types::HighAvailabilityConfig]
    #
    # @!attribute [rw] instance_type
    #   The type of instance for the runtime environment.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The identifier of a customer managed key.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the runtime environment. Must be unique within the
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   Configures the maintenance window you want for the runtime
    #   environment. If you do not provide a value, a random
    #   system-generated value will be assigned.
    #   @return [String]
    #
    # @!attribute [rw] publicly_accessible
    #   Specifies whether the runtime environment is publicly accessible.
    #   @return [Boolean]
    #
    # @!attribute [rw] security_group_ids
    #   The list of security groups for the VPC associated with this runtime
    #   environment.
    #   @return [Array<String>]
    #
    # @!attribute [rw] storage_configurations
    #   Optional. The storage configurations for this runtime environment.
    #   @return [Array<Types::StorageConfiguration>]
    #
    # @!attribute [rw] subnet_ids
    #   The list of subnets associated with the VPC for this runtime
    #   environment.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tags for the runtime environment.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/CreateEnvironmentRequest AWS API Documentation
    #
    class CreateEnvironmentRequest < Struct.new(
      :client_token,
      :description,
      :engine_type,
      :engine_version,
      :high_availability_config,
      :instance_type,
      :kms_key_id,
      :name,
      :preferred_maintenance_window,
      :publicly_accessible,
      :security_group_ids,
      :storage_configurations,
      :subnet_ids,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   The unique identifier of the runtime environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/CreateEnvironmentResponse AWS API Documentation
    #
    class CreateEnvironmentResponse < Struct.new(
      :environment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a data set.
    #
    # @!attribute [rw] dataset_name
    #   The logical identifier for a specific data set (in mainframe
    #   format).
    #   @return [String]
    #
    # @!attribute [rw] dataset_org
    #   The type of dataset. The only supported value is VSAM.
    #   @return [Types::DatasetOrgAttributes]
    #
    # @!attribute [rw] record_length
    #   The length of a record.
    #   @return [Types::RecordLength]
    #
    # @!attribute [rw] relative_path
    #   The relative location of the data set in the database or file
    #   system.
    #   @return [String]
    #
    # @!attribute [rw] storage_type
    #   The storage type of the data set: database or file system. For Micro
    #   Focus, database corresponds to datastore and file system corresponds
    #   to EFS/FSX. For Blu Age, there is no support of file system and
    #   database corresponds to Blusam.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/DataSet AWS API Documentation
    #
    class DataSet < Struct.new(
      :dataset_name,
      :dataset_org,
      :record_length,
      :relative_path,
      :storage_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies one or more data sets you want to import with the
    # CreateDataSetImportTask operation.
    #
    # @note DataSetImportConfig is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] data_sets
    #   The data sets.
    #   @return [Array<Types::DataSetImportItem>]
    #
    # @!attribute [rw] s3_location
    #   The Amazon S3 location of the data sets.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/DataSetImportConfig AWS API Documentation
    #
    class DataSetImportConfig < Struct.new(
      :data_sets,
      :s3_location,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class DataSets < DataSetImportConfig; end
      class S3Location < DataSetImportConfig; end
      class Unknown < DataSetImportConfig; end
    end

    # Identifies a specific data set to import from an external location.
    #
    # @!attribute [rw] data_set
    #   The data set.
    #   @return [Types::DataSet]
    #
    # @!attribute [rw] external_location
    #   The location of the data set.
    #   @return [Types::ExternalLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/DataSetImportItem AWS API Documentation
    #
    class DataSetImportItem < Struct.new(
      :data_set,
      :external_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a summary of data set imports.
    #
    # @!attribute [rw] failed
    #   The number of data set imports that have failed.
    #   @return [Integer]
    #
    # @!attribute [rw] in_progress
    #   The number of data set imports that are in progress.
    #   @return [Integer]
    #
    # @!attribute [rw] pending
    #   The number of data set imports that are pending.
    #   @return [Integer]
    #
    # @!attribute [rw] succeeded
    #   The number of data set imports that have succeeded.
    #   @return [Integer]
    #
    # @!attribute [rw] total
    #   The total number of data set imports.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/DataSetImportSummary AWS API Documentation
    #
    class DataSetImportSummary < Struct.new(
      :failed,
      :in_progress,
      :pending,
      :succeeded,
      :total)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a data set import task.
    #
    # @!attribute [rw] status
    #   The status of the data set import task.
    #   @return [String]
    #
    # @!attribute [rw] summary
    #   A summary of the data set import task.
    #   @return [Types::DataSetImportSummary]
    #
    # @!attribute [rw] task_id
    #   The identifier of the data set import task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/DataSetImportTask AWS API Documentation
    #
    class DataSetImportTask < Struct.new(
      :status,
      :summary,
      :task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A subset of the possible data set attributes.
    #
    # @!attribute [rw] creation_time
    #   The timestamp when the data set was created.
    #   @return [Time]
    #
    # @!attribute [rw] data_set_name
    #   The name of the data set.
    #   @return [String]
    #
    # @!attribute [rw] data_set_org
    #   The type of data set. The only supported value is VSAM.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the data set.
    #   @return [String]
    #
    # @!attribute [rw] last_referenced_time
    #   The last time the data set was referenced.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The last time the data set was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/DataSetSummary AWS API Documentation
    #
    class DataSetSummary < Struct.new(
      :creation_time,
      :data_set_name,
      :data_set_org,
      :format,
      :last_referenced_time,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Additional details about the data set. Different attributes correspond
    # to different data set organizations. The values are populated based on
    # datasetOrg, storageType and backend (Blu Age or Micro Focus).
    #
    # @note DatasetDetailOrgAttributes is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of DatasetDetailOrgAttributes corresponding to the set member.
    #
    # @!attribute [rw] gdg
    #   The generation data group of the data set.
    #   @return [Types::GdgDetailAttributes]
    #
    # @!attribute [rw] po
    #   The details of a PO type data set.
    #   @return [Types::PoDetailAttributes]
    #
    # @!attribute [rw] ps
    #   The details of a PS type data set.
    #   @return [Types::PsDetailAttributes]
    #
    # @!attribute [rw] vsam
    #   The details of a VSAM data set.
    #   @return [Types::VsamDetailAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/DatasetDetailOrgAttributes AWS API Documentation
    #
    class DatasetDetailOrgAttributes < Struct.new(
      :gdg,
      :po,
      :ps,
      :vsam,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Gdg < DatasetDetailOrgAttributes; end
      class Po < DatasetDetailOrgAttributes; end
      class Ps < DatasetDetailOrgAttributes; end
      class Vsam < DatasetDetailOrgAttributes; end
      class Unknown < DatasetDetailOrgAttributes; end
    end

    # Additional details about the data set. Different attributes correspond
    # to different data set organizations. The values are populated based on
    # datasetOrg, storageType and backend (Blu Age or Micro Focus).
    #
    # @note DatasetOrgAttributes is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] gdg
    #   The generation data group of the data set.
    #   @return [Types::GdgAttributes]
    #
    # @!attribute [rw] po
    #   The details of a PO type data set.
    #   @return [Types::PoAttributes]
    #
    # @!attribute [rw] ps
    #   The details of a PS type data set.
    #   @return [Types::PsAttributes]
    #
    # @!attribute [rw] vsam
    #   The details of a VSAM data set.
    #   @return [Types::VsamAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/DatasetOrgAttributes AWS API Documentation
    #
    class DatasetOrgAttributes < Struct.new(
      :gdg,
      :po,
      :ps,
      :vsam,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Gdg < DatasetOrgAttributes; end
      class Po < DatasetOrgAttributes; end
      class Ps < DatasetOrgAttributes; end
      class Vsam < DatasetOrgAttributes; end
      class Unknown < DatasetOrgAttributes; end
    end

    # The application definition for a particular application.
    #
    # @note Definition is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] content
    #   The content of the application definition. This is a JSON object
    #   that contains the resource configuration/definitions that identify
    #   an application.
    #   @return [String]
    #
    # @!attribute [rw] s3_location
    #   The S3 bucket that contains the application definition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/Definition AWS API Documentation
    #
    class Definition < Struct.new(
      :content,
      :s3_location,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Content < Definition; end
      class S3Location < Definition; end
      class Unknown < Definition; end
    end

    # @!attribute [rw] application_id
    #   The unique identifier of the application you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The unique identifier of the runtime environment where the
    #   application was previously deployed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/DeleteApplicationFromEnvironmentRequest AWS API Documentation
    #
    class DeleteApplicationFromEnvironmentRequest < Struct.new(
      :application_id,
      :environment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/DeleteApplicationFromEnvironmentResponse AWS API Documentation
    #
    class DeleteApplicationFromEnvironmentResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_id
    #   The unique identifier of the application you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/DeleteApplicationRequest AWS API Documentation
    #
    class DeleteApplicationRequest < Struct.new(
      :application_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/DeleteApplicationResponse AWS API Documentation
    #
    class DeleteApplicationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] environment_id
    #   The unique identifier of the runtime environment you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/DeleteEnvironmentRequest AWS API Documentation
    #
    class DeleteEnvironmentRequest < Struct.new(
      :environment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/DeleteEnvironmentResponse AWS API Documentation
    #
    class DeleteEnvironmentResponse < Aws::EmptyStructure; end

    # Contains a summary of a deployed application.
    #
    # @!attribute [rw] application_version
    #   The version of the deployed application.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the reported status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/DeployedVersionSummary AWS API Documentation
    #
    class DeployedVersionSummary < Struct.new(
      :application_version,
      :status,
      :status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # A subset of information about a specific deployment.
    #
    # @!attribute [rw] application_id
    #   The unique identifier of the application.
    #   @return [String]
    #
    # @!attribute [rw] application_version
    #   The version of the application.
    #   @return [Integer]
    #
    # @!attribute [rw] creation_time
    #   The timestamp when the deployment was created.
    #   @return [Time]
    #
    # @!attribute [rw] deployment_id
    #   The unique identifier of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The unique identifier of the runtime environment.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the reported status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/DeploymentSummary AWS API Documentation
    #
    class DeploymentSummary < Struct.new(
      :application_id,
      :application_version,
      :creation_time,
      :deployment_id,
      :environment_id,
      :status,
      :status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the storage configuration for an Amazon EFS file system.
    #
    # @!attribute [rw] file_system_id
    #   The file system identifier.
    #   @return [String]
    #
    # @!attribute [rw] mount_point
    #   The mount point for the file system.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/EfsStorageConfiguration AWS API Documentation
    #
    class EfsStorageConfiguration < Struct.new(
      :file_system_id,
      :mount_point)
      SENSITIVE = []
      include Aws::Structure
    end

    # A subset of information about the engine version for a specific
    # application.
    #
    # @!attribute [rw] engine_type
    #   The type of target platform for the application.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The version of the engine type used by the application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/EngineVersionsSummary AWS API Documentation
    #
    class EngineVersionsSummary < Struct.new(
      :engine_type,
      :engine_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a subset of the possible runtime environment attributes. Used
    # in the environment list.
    #
    # @!attribute [rw] creation_time
    #   The timestamp when the runtime environment was created.
    #   @return [Time]
    #
    # @!attribute [rw] engine_type
    #   The target platform for the runtime environment.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The version of the runtime engine.
    #   @return [String]
    #
    # @!attribute [rw] environment_arn
    #   The Amazon Resource Name (ARN) of a particular runtime environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The unique identifier of a particular runtime environment.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The instance type of the runtime environment.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the runtime environment.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the runtime environment
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/EnvironmentSummary AWS API Documentation
    #
    class EnvironmentSummary < Struct.new(
      :creation_time,
      :engine_type,
      :engine_version,
      :environment_arn,
      :environment_id,
      :instance_type,
      :name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines an external storage location.
    #
    # @note ExternalLocation is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] s3_location
    #   The URI of the Amazon S3 bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/ExternalLocation AWS API Documentation
    #
    class ExternalLocation < Struct.new(
      :s3_location,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class S3Location < ExternalLocation; end
      class Unknown < ExternalLocation; end
    end

    # A file containing a batch job definition.
    #
    # @!attribute [rw] file_name
    #   The name of the file containing the batch job definition.
    #   @return [String]
    #
    # @!attribute [rw] folder_path
    #   The path to the file containing the batch job definition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/FileBatchJobDefinition AWS API Documentation
    #
    class FileBatchJobDefinition < Struct.new(
      :file_name,
      :folder_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # A batch job identifier in which the batch job to run is identified by
    # the file name and the relative path to the file name.
    #
    # @!attribute [rw] file_name
    #   The file name for the batch job identifier.
    #   @return [String]
    #
    # @!attribute [rw] folder_path
    #   The relative path to the file name for the batch job identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/FileBatchJobIdentifier AWS API Documentation
    #
    class FileBatchJobIdentifier < Struct.new(
      :file_name,
      :folder_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the storage configuration for an Amazon FSx file system.
    #
    # @!attribute [rw] file_system_id
    #   The file system identifier.
    #   @return [String]
    #
    # @!attribute [rw] mount_point
    #   The mount point for the file system.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/FsxStorageConfiguration AWS API Documentation
    #
    class FsxStorageConfiguration < Struct.new(
      :file_system_id,
      :mount_point)
      SENSITIVE = []
      include Aws::Structure
    end

    # The required attributes for a generation data group data set. A
    # generation data set is one of a collection of successive, historically
    # related, catalogued data sets that together are known as a generation
    # data group (GDG). Use this structure when you want to import a GDG.
    # For more information on GDG, see [Generation data sets][1].
    #
    #
    #
    # [1]: https://www.ibm.com/docs/en/zos/2.3.0?topic=guide-generation-data-sets
    #
    # @!attribute [rw] limit
    #   The maximum number of generation data sets, up to 255, in a GDG.
    #   @return [Integer]
    #
    # @!attribute [rw] roll_disposition
    #   The disposition of the data set in the catalog.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/GdgAttributes AWS API Documentation
    #
    class GdgAttributes < Struct.new(
      :limit,
      :roll_disposition)
      SENSITIVE = []
      include Aws::Structure
    end

    # The required attributes for a generation data group data set. A
    # generation data set is one of a collection of successive, historically
    # related, catalogued data sets that together are known as a generation
    # data group (GDG). Use this structure when you want to import a GDG.
    # For more information on GDG, see [Generation data sets][1].
    #
    #
    #
    # [1]: https://www.ibm.com/docs/en/zos/2.3.0?topic=guide-generation-data-sets
    #
    # @!attribute [rw] limit
    #   The maximum number of generation data sets, up to 255, in a GDG.
    #   @return [Integer]
    #
    # @!attribute [rw] roll_disposition
    #   The disposition of the data set in the catalog.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/GdgDetailAttributes AWS API Documentation
    #
    class GdgDetailAttributes < Struct.new(
      :limit,
      :roll_disposition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/GetApplicationRequest AWS API Documentation
    #
    class GetApplicationRequest < Struct.new(
      :application_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_arn
    #   The Amazon Resource Name (ARN) of the application.
    #   @return [String]
    #
    # @!attribute [rw] application_id
    #   The identifier of the application.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The timestamp when this application was created.
    #   @return [Time]
    #
    # @!attribute [rw] deployed_version
    #   The version of the application that is deployed.
    #   @return [Types::DeployedVersionSummary]
    #
    # @!attribute [rw] description
    #   The description of the application.
    #   @return [String]
    #
    # @!attribute [rw] engine_type
    #   The type of the target platform for the application.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The identifier of the runtime environment where you want to deploy
    #   the application.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The identifier of a customer managed key.
    #   @return [String]
    #
    # @!attribute [rw] last_start_time
    #   The timestamp when you last started the application. Null until the
    #   application runs for the first time.
    #   @return [Time]
    #
    # @!attribute [rw] latest_version
    #   The latest version of the application.
    #   @return [Types::ApplicationVersionSummary]
    #
    # @!attribute [rw] listener_arns
    #   The Amazon Resource Name (ARN) for the network load balancer
    #   listener created in your Amazon Web Services account. Amazon Web
    #   Services Mainframe Modernization creates this listener for you the
    #   first time you deploy an application.
    #   @return [Array<String>]
    #
    # @!attribute [rw] listener_ports
    #   The port associated with the network load balancer listener created
    #   in your Amazon Web Services account.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] load_balancer_dns_name
    #   The public DNS name of the load balancer created in your Amazon Web
    #   Services account.
    #   @return [String]
    #
    # @!attribute [rw] log_groups
    #   The list of log summaries. Each log summary includes the log type as
    #   well as the log group identifier. These are CloudWatch logs. Amazon
    #   Web Services Mainframe Modernization pushes the application log to
    #   CloudWatch under the customer's account.
    #   @return [Array<Types::LogGroupSummary>]
    #
    # @!attribute [rw] name
    #   The unique identifier of the application.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the role associated with the
    #   application.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the application.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the reported status.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags associated with the application.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] target_group_arns
    #   Returns the Amazon Resource Names (ARNs) of the target groups that
    #   are attached to the network load balancer.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/GetApplicationResponse AWS API Documentation
    #
    class GetApplicationResponse < Struct.new(
      :application_arn,
      :application_id,
      :creation_time,
      :deployed_version,
      :description,
      :engine_type,
      :environment_id,
      :kms_key_id,
      :last_start_time,
      :latest_version,
      :listener_arns,
      :listener_ports,
      :load_balancer_dns_name,
      :log_groups,
      :name,
      :role_arn,
      :status,
      :status_reason,
      :tags,
      :target_group_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The unique identifier of the application.
    #   @return [String]
    #
    # @!attribute [rw] application_version
    #   The specific version of the application.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/GetApplicationVersionRequest AWS API Documentation
    #
    class GetApplicationVersionRequest < Struct.new(
      :application_id,
      :application_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_version
    #   The specific version of the application.
    #   @return [Integer]
    #
    # @!attribute [rw] creation_time
    #   The timestamp when the application version was created.
    #   @return [Time]
    #
    # @!attribute [rw] definition_content
    #   The content of the application definition. This is a JSON object
    #   that contains the resource configuration and definitions that
    #   identify an application.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The application description.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the application version.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the application version.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the reported status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/GetApplicationVersionResponse AWS API Documentation
    #
    class GetApplicationVersionResponse < Struct.new(
      :application_version,
      :creation_time,
      :definition_content,
      :description,
      :name,
      :status,
      :status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the application.
    #   @return [String]
    #
    # @!attribute [rw] execution_id
    #   The unique identifier of the batch job execution.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/GetBatchJobExecutionRequest AWS API Documentation
    #
    class GetBatchJobExecutionRequest < Struct.new(
      :application_id,
      :execution_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the application.
    #   @return [String]
    #
    # @!attribute [rw] batch_job_identifier
    #   The unique identifier of this batch job.
    #   @return [Types::BatchJobIdentifier]
    #
    # @!attribute [rw] end_time
    #   The timestamp when the batch job execution ended.
    #   @return [Time]
    #
    # @!attribute [rw] execution_id
    #   The unique identifier for this batch job execution.
    #   @return [String]
    #
    # @!attribute [rw] job_id
    #   The unique identifier for this batch job.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The name of this batch job.
    #   @return [String]
    #
    # @!attribute [rw] job_type
    #   The type of job.
    #   @return [String]
    #
    # @!attribute [rw] job_user
    #   The user for the job.
    #   @return [String]
    #
    # @!attribute [rw] return_code
    #   The batch job return code from either the Blu Age or Micro Focus
    #   runtime engines. For more information, see [Batch return codes][1]
    #   in the *IBM WebSphere Application Server* documentation.
    #
    #
    #
    #   [1]: https://www.ibm.com/docs/en/was/8.5.5?topic=model-batch-return-codes
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The timestamp when the batch job execution started.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the batch job execution.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the reported status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/GetBatchJobExecutionResponse AWS API Documentation
    #
    class GetBatchJobExecutionResponse < Struct.new(
      :application_id,
      :batch_job_identifier,
      :end_time,
      :execution_id,
      :job_id,
      :job_name,
      :job_type,
      :job_user,
      :return_code,
      :start_time,
      :status,
      :status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The unique identifier of the application that this data set is
    #   associated with.
    #   @return [String]
    #
    # @!attribute [rw] data_set_name
    #   The name of the data set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/GetDataSetDetailsRequest AWS API Documentation
    #
    class GetDataSetDetailsRequest < Struct.new(
      :application_id,
      :data_set_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] blocksize
    #   The size of the block on disk.
    #   @return [Integer]
    #
    # @!attribute [rw] creation_time
    #   The timestamp when the data set was created.
    #   @return [Time]
    #
    # @!attribute [rw] data_set_name
    #   The name of the data set.
    #   @return [String]
    #
    # @!attribute [rw] data_set_org
    #   The type of data set. The only supported value is VSAM.
    #   @return [Types::DatasetDetailOrgAttributes]
    #
    # @!attribute [rw] last_referenced_time
    #   The last time the data set was referenced.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_time
    #   The last time the data set was updated.
    #   @return [Time]
    #
    # @!attribute [rw] location
    #   The location where the data set is stored.
    #   @return [String]
    #
    # @!attribute [rw] record_length
    #   The length of records in the data set.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/GetDataSetDetailsResponse AWS API Documentation
    #
    class GetDataSetDetailsResponse < Struct.new(
      :blocksize,
      :creation_time,
      :data_set_name,
      :data_set_org,
      :last_referenced_time,
      :last_updated_time,
      :location,
      :record_length)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The application identifier.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   The task identifier returned by the CreateDataSetImportTask
    #   operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/GetDataSetImportTaskRequest AWS API Documentation
    #
    class GetDataSetImportTaskRequest < Struct.new(
      :application_id,
      :task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The status of the task.
    #   @return [String]
    #
    # @!attribute [rw] summary
    #   A summary of the status of the task.
    #   @return [Types::DataSetImportSummary]
    #
    # @!attribute [rw] task_id
    #   The task identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/GetDataSetImportTaskResponse AWS API Documentation
    #
    class GetDataSetImportTaskResponse < Struct.new(
      :status,
      :summary,
      :task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The unique identifier of the application.
    #   @return [String]
    #
    # @!attribute [rw] deployment_id
    #   The unique identifier for the deployment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/GetDeploymentRequest AWS API Documentation
    #
    class GetDeploymentRequest < Struct.new(
      :application_id,
      :deployment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The unique identifier of the application.
    #   @return [String]
    #
    # @!attribute [rw] application_version
    #   The application version.
    #   @return [Integer]
    #
    # @!attribute [rw] creation_time
    #   The timestamp when the deployment was created.
    #   @return [Time]
    #
    # @!attribute [rw] deployment_id
    #   The unique identifier of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The unique identifier of the runtime environment.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the reported status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/GetDeploymentResponse AWS API Documentation
    #
    class GetDeploymentResponse < Struct.new(
      :application_id,
      :application_version,
      :creation_time,
      :deployment_id,
      :environment_id,
      :status,
      :status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   The unique identifier of the runtime environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/GetEnvironmentRequest AWS API Documentation
    #
    class GetEnvironmentRequest < Struct.new(
      :environment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] actual_capacity
    #   The number of instances included in the runtime environment. A
    #   standalone runtime environment has a maxiumum of one instance.
    #   Currently, a high availability runtime environment has a maximum of
    #   two instances.
    #   @return [Integer]
    #
    # @!attribute [rw] creation_time
    #   The timestamp when the runtime environment was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the runtime environment.
    #   @return [String]
    #
    # @!attribute [rw] engine_type
    #   The target platform for the runtime environment.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The version of the runtime engine.
    #   @return [String]
    #
    # @!attribute [rw] environment_arn
    #   The Amazon Resource Name (ARN) of the runtime environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The unique identifier of the runtime environment.
    #   @return [String]
    #
    # @!attribute [rw] high_availability_config
    #   The desired capacity of the high availability configuration for the
    #   runtime environment.
    #   @return [Types::HighAvailabilityConfig]
    #
    # @!attribute [rw] instance_type
    #   The type of instance underlying the runtime environment.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The identifier of a customer managed key.
    #   @return [String]
    #
    # @!attribute [rw] load_balancer_arn
    #   The Amazon Resource Name (ARN) for the load balancer used with the
    #   runtime environment.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the runtime environment. Must be unique within the
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] pending_maintenance
    #   Indicates the pending maintenance scheduled on this environment.
    #   @return [Types::PendingMaintenance]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   Configures the maintenance window you want for the runtime
    #   environment. If you do not provide a value, a random
    #   system-generated value will be assigned.
    #   @return [String]
    #
    # @!attribute [rw] publicly_accessible
    #   Whether applications running in this runtime environment are
    #   publicly accessible.
    #   @return [Boolean]
    #
    # @!attribute [rw] security_group_ids
    #   The unique identifiers of the security groups assigned to this
    #   runtime environment.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The status of the runtime environment.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The reason for the reported status.
    #   @return [String]
    #
    # @!attribute [rw] storage_configurations
    #   The storage configurations defined for the runtime environment.
    #   @return [Array<Types::StorageConfiguration>]
    #
    # @!attribute [rw] subnet_ids
    #   The unique identifiers of the subnets assigned to this runtime
    #   environment.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tags defined for this runtime environment.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] vpc_id
    #   The unique identifier for the VPC used with this runtime
    #   environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/GetEnvironmentResponse AWS API Documentation
    #
    class GetEnvironmentResponse < Struct.new(
      :actual_capacity,
      :creation_time,
      :description,
      :engine_type,
      :engine_version,
      :environment_arn,
      :environment_id,
      :high_availability_config,
      :instance_type,
      :kms_key_id,
      :load_balancer_arn,
      :name,
      :pending_maintenance,
      :preferred_maintenance_window,
      :publicly_accessible,
      :security_group_ids,
      :status,
      :status_reason,
      :storage_configurations,
      :subnet_ids,
      :tags,
      :vpc_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the details of a high availability configuration.
    #
    # @!attribute [rw] desired_capacity
    #   The number of instances in a high availability configuration.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/HighAvailabilityConfig AWS API Documentation
    #
    class HighAvailabilityConfig < Struct.new(
      :desired_capacity)
      SENSITIVE = []
      include Aws::Structure
    end

    # An unexpected error occurred during the processing of the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds to wait before retrying the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The unique identifier of the application.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of application versions to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token returned from a previous call to this operation.
    #   This specifies the next item to return. To return to the beginning
    #   of the list, exclude this parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/ListApplicationVersionsRequest AWS API Documentation
    #
    class ListApplicationVersionsRequest < Struct.new(
      :application_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_versions
    #   The list of application versions.
    #   @return [Array<Types::ApplicationVersionSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are more items to return, this contains a token that is
    #   passed to a subsequent call to this operation to retrieve the next
    #   set of items.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/ListApplicationVersionsResponse AWS API Documentation
    #
    class ListApplicationVersionsResponse < Struct.new(
      :application_versions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   The unique identifier of the runtime environment where the
    #   applications are deployed.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of applications to return.
    #   @return [Integer]
    #
    # @!attribute [rw] names
    #   The names of the applications.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   A pagination token to control the number of applications displayed
    #   in the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/ListApplicationsRequest AWS API Documentation
    #
    class ListApplicationsRequest < Struct.new(
      :environment_id,
      :max_results,
      :names,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] applications
    #   Returns a list of summary details for all the applications in a
    #   runtime environment.
    #   @return [Array<Types::ApplicationSummary>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that's returned when the response doesn't
    #   contain all applications.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/ListApplicationsResponse AWS API Documentation
    #
    class ListApplicationsResponse < Struct.new(
      :applications,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The identifier of the application.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of batch job definitions to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token returned from a previous call to this operation.
    #   This specifies the next item to return. To return to the beginning
    #   of the list, exclude this parameter.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   If the batch job definition is a FileBatchJobDefinition, the prefix
    #   allows you to search on the file names of FileBatchJobDefinitions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/ListBatchJobDefinitionsRequest AWS API Documentation
    #
    class ListBatchJobDefinitionsRequest < Struct.new(
      :application_id,
      :max_results,
      :next_token,
      :prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] batch_job_definitions
    #   The list of batch job definitions.
    #   @return [Array<Types::BatchJobDefinition>]
    #
    # @!attribute [rw] next_token
    #   If there are more items to return, this contains a token that is
    #   passed to a subsequent call to this operation to retrieve the next
    #   set of items.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/ListBatchJobDefinitionsResponse AWS API Documentation
    #
    class ListBatchJobDefinitionsResponse < Struct.new(
      :batch_job_definitions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The unique identifier of the application.
    #   @return [String]
    #
    # @!attribute [rw] execution_ids
    #   The unique identifier of each batch job execution.
    #   @return [Array<String>]
    #
    # @!attribute [rw] job_name
    #   The name of each batch job execution.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of batch job executions to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token to control the number of batch job executions
    #   displayed in the list.
    #   @return [String]
    #
    # @!attribute [rw] started_after
    #   The time after which the batch job executions started.
    #   @return [Time]
    #
    # @!attribute [rw] started_before
    #   The time before the batch job executions started.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the batch job executions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/ListBatchJobExecutionsRequest AWS API Documentation
    #
    class ListBatchJobExecutionsRequest < Struct.new(
      :application_id,
      :execution_ids,
      :job_name,
      :max_results,
      :next_token,
      :started_after,
      :started_before,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] batch_job_executions
    #   Returns a list of batch job executions for an application.
    #   @return [Array<Types::BatchJobExecutionSummary>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that's returned when the response doesn't
    #   contain all batch job executions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/ListBatchJobExecutionsResponse AWS API Documentation
    #
    class ListBatchJobExecutionsResponse < Struct.new(
      :batch_job_executions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The unique identifier of the application.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token returned from a previous call to this operation.
    #   This specifies the next item to return. To return to the beginning
    #   of the list, exclude this parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/ListDataSetImportHistoryRequest AWS API Documentation
    #
    class ListDataSetImportHistoryRequest < Struct.new(
      :application_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_set_import_tasks
    #   The data set import tasks.
    #   @return [Array<Types::DataSetImportTask>]
    #
    # @!attribute [rw] next_token
    #   If there are more items to return, this contains a token that is
    #   passed to a subsequent call to this operation to retrieve the next
    #   set of items.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/ListDataSetImportHistoryResponse AWS API Documentation
    #
    class ListDataSetImportHistoryResponse < Struct.new(
      :data_set_import_tasks,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The unique identifier of the application for which you want to list
    #   the associated data sets.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token returned from a previous call to this operation.
    #   This specifies the next item to return. To return to the beginning
    #   of the list, exclude this parameter.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   The prefix of the data set name, which you can use to filter the
    #   list of data sets.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/ListDataSetsRequest AWS API Documentation
    #
    class ListDataSetsRequest < Struct.new(
      :application_id,
      :max_results,
      :next_token,
      :prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_sets
    #   The list of data sets, containing information including the creation
    #   time, the data set name, the data set organization, the data set
    #   format, and the last time the data set was referenced or updated.
    #   @return [Array<Types::DataSetSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are more items to return, this contains a token that is
    #   passed to a subsequent call to this operation to retrieve the next
    #   set of items.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/ListDataSetsResponse AWS API Documentation
    #
    class ListDataSetsResponse < Struct.new(
      :data_sets,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The application identifier.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token returned from a previous call to this operation.
    #   This specifies the next item to return. To return to the beginning
    #   of the list, exclude this parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/ListDeploymentsRequest AWS API Documentation
    #
    class ListDeploymentsRequest < Struct.new(
      :application_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deployments
    #   The list of deployments that is returned.
    #   @return [Array<Types::DeploymentSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are more items to return, this contains a token that is
    #   passed to a subsequent call to this operation to retrieve the next
    #   set of items.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/ListDeploymentsResponse AWS API Documentation
    #
    class ListDeploymentsResponse < Struct.new(
      :deployments,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] engine_type
    #   The type of target platform.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token returned from a previous call to this operation.
    #   This specifies the next item to return. To return to the beginning
    #   of the list, exclude this parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/ListEngineVersionsRequest AWS API Documentation
    #
    class ListEngineVersionsRequest < Struct.new(
      :engine_type,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] engine_versions
    #   Returns the engine versions.
    #   @return [Array<Types::EngineVersionsSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are more items to return, this contains a token that is
    #   passed to a subsequent call to this operation to retrieve the next
    #   set of items.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/ListEngineVersionsResponse AWS API Documentation
    #
    class ListEngineVersionsResponse < Struct.new(
      :engine_versions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] engine_type
    #   The engine type for the runtime environment.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of runtime environments to return.
    #   @return [Integer]
    #
    # @!attribute [rw] names
    #   The names of the runtime environments. Must be unique within the
    #   account.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   A pagination token to control the number of runtime environments
    #   displayed in the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/ListEnvironmentsRequest AWS API Documentation
    #
    class ListEnvironmentsRequest < Struct.new(
      :engine_type,
      :max_results,
      :names,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environments
    #   Returns a list of summary details for all the runtime environments
    #   in your account.
    #   @return [Array<Types::EnvironmentSummary>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that's returned when the response doesn't
    #   contain all the runtime environments.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/ListEnvironmentsResponse AWS API Documentation
    #
    class ListEnvironmentsResponse < Struct.new(
      :environments,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags for the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A subset of the attributes that describe a log group. In CloudWatch a
    # log group is a group of log streams that share the same retention,
    # monitoring, and access control settings.
    #
    # @!attribute [rw] log_group_name
    #   The name of the log group.
    #   @return [String]
    #
    # @!attribute [rw] log_type
    #   The type of log.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/LogGroupSummary AWS API Documentation
    #
    class LogGroupSummary < Struct.new(
      :log_group_name,
      :log_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The information about the maintenance schedule.
    #
    # @!attribute [rw] end_time
    #   The time the scheduled maintenance is to end.
    #   @return [Time]
    #
    # @!attribute [rw] start_time
    #   The time the scheduled maintenance is to start.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/MaintenanceSchedule AWS API Documentation
    #
    class MaintenanceSchedule < Struct.new(
      :end_time,
      :start_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The scheduled maintenance for a runtime engine.
    #
    # @!attribute [rw] engine_version
    #   The specific runtime engine that the maintenance schedule applies
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] schedule
    #   The maintenance schedule for the runtime engine version.
    #   @return [Types::MaintenanceSchedule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/PendingMaintenance AWS API Documentation
    #
    class PendingMaintenance < Struct.new(
      :engine_version,
      :schedule)
      SENSITIVE = []
      include Aws::Structure
    end

    # The supported properties for a PO type data set.
    #
    # @!attribute [rw] encoding
    #   The character set encoding of the data set.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the data set records.
    #   @return [String]
    #
    # @!attribute [rw] member_file_extensions
    #   An array containing one or more filename extensions, allowing you to
    #   specify which files to be included as PDS member.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/PoAttributes AWS API Documentation
    #
    class PoAttributes < Struct.new(
      :encoding,
      :format,
      :member_file_extensions)
      SENSITIVE = []
      include Aws::Structure
    end

    # The supported properties for a PO type data set.
    #
    # @!attribute [rw] encoding
    #   The character set encoding of the data set.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the data set records.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/PoDetailAttributes AWS API Documentation
    #
    class PoDetailAttributes < Struct.new(
      :encoding,
      :format)
      SENSITIVE = []
      include Aws::Structure
    end

    # The primary key for a KSDS data set.
    #
    # @!attribute [rw] length
    #   A strictly positive integer value representing the length of the
    #   primary key.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   A name for the Primary Key.
    #   @return [String]
    #
    # @!attribute [rw] offset
    #   A positive integer value representing the offset to mark the start
    #   of the primary key in the record byte array.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/PrimaryKey AWS API Documentation
    #
    class PrimaryKey < Struct.new(
      :length,
      :name,
      :offset)
      SENSITIVE = []
      include Aws::Structure
    end

    # The supported properties for a PS type data set.
    #
    # @!attribute [rw] encoding
    #   The character set encoding of the data set.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the data set records.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/PsAttributes AWS API Documentation
    #
    class PsAttributes < Struct.new(
      :encoding,
      :format)
      SENSITIVE = []
      include Aws::Structure
    end

    # The supported properties for a PS type data set.
    #
    # @!attribute [rw] encoding
    #   The character set encoding of the data set.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the data set records.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/PsDetailAttributes AWS API Documentation
    #
    class PsDetailAttributes < Struct.new(
      :encoding,
      :format)
      SENSITIVE = []
      include Aws::Structure
    end

    # The length of the records in the data set.
    #
    # @!attribute [rw] max
    #   The maximum record length. In case of fixed, both minimum and
    #   maximum are the same.
    #   @return [Integer]
    #
    # @!attribute [rw] min
    #   The minimum record length of a record.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/RecordLength AWS API Documentation
    #
    class RecordLength < Struct.new(
      :max,
      :min)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the missing resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the missing resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A batch job definition contained in a script.
    #
    # @!attribute [rw] script_name
    #   The name of the script containing the batch job definition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/ScriptBatchJobDefinition AWS API Documentation
    #
    class ScriptBatchJobDefinition < Struct.new(
      :script_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A batch job identifier in which the batch job to run is identified by
    # the script name.
    #
    # @!attribute [rw] script_name
    #   The name of the script containing the batch job definition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/ScriptBatchJobIdentifier AWS API Documentation
    #
    class ScriptBatchJobIdentifier < Struct.new(
      :script_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more quotas for Amazon Web Services Mainframe Modernization
    # exceeds the limit.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The identifier of the exceeded quota.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource that is exceeding the quota limit.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource that is exceeding the quota limit for Amazon
    #   Web Services Mainframe Modernization.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   A code that identifies the service that the exceeded quota belongs
    #   to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :quota_code,
      :resource_id,
      :resource_type,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The unique identifier of the application you want to start.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/StartApplicationRequest AWS API Documentation
    #
    class StartApplicationRequest < Struct.new(
      :application_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/StartApplicationResponse AWS API Documentation
    #
    class StartApplicationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_id
    #   The unique identifier of the application associated with this batch
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] batch_job_identifier
    #   The unique identifier of the batch job.
    #   @return [Types::BatchJobIdentifier]
    #
    # @!attribute [rw] job_params
    #   The collection of batch job parameters. For details about limits for
    #   keys and values, see [Coding variables in JCL][1].
    #
    #
    #
    #   [1]: https://www.ibm.com/docs/en/workload-automation/9.3.0?topic=zos-coding-variables-in-jcl
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/StartBatchJobRequest AWS API Documentation
    #
    class StartBatchJobRequest < Struct.new(
      :application_id,
      :batch_job_identifier,
      :job_params)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] execution_id
    #   The unique identifier of this execution of the batch job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/StartBatchJobResponse AWS API Documentation
    #
    class StartBatchJobResponse < Struct.new(
      :execution_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The unique identifier of the application you want to stop.
    #   @return [String]
    #
    # @!attribute [rw] force_stop
    #   Stopping an application process can take a long time. Setting this
    #   parameter to true lets you force stop the application so you don't
    #   need to wait until the process finishes to apply another action on
    #   the application. The default value is false.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/StopApplicationRequest AWS API Documentation
    #
    class StopApplicationRequest < Struct.new(
      :application_id,
      :force_stop)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/StopApplicationResponse AWS API Documentation
    #
    class StopApplicationResponse < Aws::EmptyStructure; end

    # Defines the storage configuration for a runtime environment.
    #
    # @note StorageConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note StorageConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of StorageConfiguration corresponding to the set member.
    #
    # @!attribute [rw] efs
    #   Defines the storage configuration for an Amazon EFS file system.
    #   @return [Types::EfsStorageConfiguration]
    #
    # @!attribute [rw] fsx
    #   Defines the storage configuration for an Amazon FSx file system.
    #   @return [Types::FsxStorageConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/StorageConfiguration AWS API Documentation
    #
    class StorageConfiguration < Struct.new(
      :efs,
      :fsx,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Efs < StorageConfiguration; end
      class Fsx < StorageConfiguration; end
      class Unknown < StorageConfiguration; end
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The number of requests made exceeds the limit.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The identifier of the throttled reuqest.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds to wait before retrying the request.
    #   @return [Integer]
    #
    # @!attribute [rw] service_code
    #   The identifier of the service that the throttled request was made
    #   to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :quota_code,
      :retry_after_seconds,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the tags to remove.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_id
    #   The unique identifier of the application you want to update.
    #   @return [String]
    #
    # @!attribute [rw] current_application_version
    #   The current version of the application to update.
    #   @return [Integer]
    #
    # @!attribute [rw] definition
    #   The application definition for this application. You can specify
    #   either inline JSON or an S3 bucket location.
    #   @return [Types::Definition]
    #
    # @!attribute [rw] description
    #   The description of the application to update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/UpdateApplicationRequest AWS API Documentation
    #
    class UpdateApplicationRequest < Struct.new(
      :application_id,
      :current_application_version,
      :definition,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_version
    #   The new version of the application.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/UpdateApplicationResponse AWS API Documentation
    #
    class UpdateApplicationResponse < Struct.new(
      :application_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] apply_during_maintenance_window
    #   Indicates whether to update the runtime environment during the
    #   maintenance window. The default is false. Currently, Amazon Web
    #   Services Mainframe Modernization accepts the `engineVersion`
    #   parameter only if `applyDuringMaintenanceWindow` is true. If any
    #   parameter other than `engineVersion` is provided in
    #   `UpdateEnvironmentRequest`, it will fail if
    #   `applyDuringMaintenanceWindow` is set to true.
    #   @return [Boolean]
    #
    # @!attribute [rw] desired_capacity
    #   The desired capacity for the runtime environment to update.
    #   @return [Integer]
    #
    # @!attribute [rw] engine_version
    #   The version of the runtime engine for the runtime environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_id
    #   The unique identifier of the runtime environment that you want to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   The instance type for the runtime environment to update.
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   Configures the maintenance window you want for the runtime
    #   environment. If you do not provide a value, a random
    #   system-generated value will be assigned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/UpdateEnvironmentRequest AWS API Documentation
    #
    class UpdateEnvironmentRequest < Struct.new(
      :apply_during_maintenance_window,
      :desired_capacity,
      :engine_version,
      :environment_id,
      :instance_type,
      :preferred_maintenance_window)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment_id
    #   The unique identifier of the runtime environment that was updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/UpdateEnvironmentResponse AWS API Documentation
    #
    class UpdateEnvironmentResponse < Struct.new(
      :environment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more parameters provided in the request is not valid.
    #
    # @!attribute [rw] field_list
    #   The list of fields that failed service validation.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason why it failed service validation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :field_list,
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a validation exception field.
    #
    # @!attribute [rw] message
    #   The message of the exception field.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the exception field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :message,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The attributes of a VSAM type data set.
    #
    # @!attribute [rw] alternate_keys
    #   The alternate key definitions, if any. A legacy dataset might not
    #   have any alternate key defined, but if those alternate keys
    #   definitions exist, provide them as some applications will make use
    #   of them.
    #   @return [Array<Types::AlternateKey>]
    #
    # @!attribute [rw] compressed
    #   Indicates whether indexes for this dataset are stored as compressed
    #   values. If you have a large data set (typically &gt; 100 Mb),
    #   consider setting this flag to True.
    #   @return [Boolean]
    #
    # @!attribute [rw] encoding
    #   The character set used by the data set. Can be ASCII, EBCDIC, or
    #   unknown.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The record format of the data set.
    #   @return [String]
    #
    # @!attribute [rw] primary_key
    #   The primary key of the data set.
    #   @return [Types::PrimaryKey]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/VsamAttributes AWS API Documentation
    #
    class VsamAttributes < Struct.new(
      :alternate_keys,
      :compressed,
      :encoding,
      :format,
      :primary_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # The attributes of a VSAM type data set.
    #
    # @!attribute [rw] alternate_keys
    #   The alternate key definitions, if any. A legacy dataset might not
    #   have any alternate key defined, but if those alternate keys
    #   definitions exist, provide them as some applications will make use
    #   of them.
    #   @return [Array<Types::AlternateKey>]
    #
    # @!attribute [rw] cache_at_startup
    #   If set to True, enforces loading the data set into cache before it’s
    #   used by the application.
    #   @return [Boolean]
    #
    # @!attribute [rw] compressed
    #   Indicates whether indexes for this dataset are stored as compressed
    #   values. If you have a large data set (typically &gt; 100 Mb),
    #   consider setting this flag to True.
    #   @return [Boolean]
    #
    # @!attribute [rw] encoding
    #   The character set used by the data set. Can be ASCII, EBCDIC, or
    #   unknown.
    #   @return [String]
    #
    # @!attribute [rw] primary_key
    #   The primary key of the data set.
    #   @return [Types::PrimaryKey]
    #
    # @!attribute [rw] record_format
    #   The record format of the data set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/m2-2021-04-28/VsamDetailAttributes AWS API Documentation
    #
    class VsamDetailAttributes < Struct.new(
      :alternate_keys,
      :cache_at_startup,
      :compressed,
      :encoding,
      :primary_key,
      :record_format)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
