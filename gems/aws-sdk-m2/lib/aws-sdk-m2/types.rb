# frozen_string_literal: true

# This is generated code!

module Aws::M2
  # This module contains the types returned by client operations.
  module Types

    # <p>The account or role doesn't have the right permissions to make the request.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines an alternate key. This value is optional. A legacy data set might not have any
    #          alternate key defined but if those alternate keys definitions exist, provide them, as some
    #          applications will make use of them.</p>
    # @!attribute name
    #   <p>The name of the alternate key.</p>
    #   @return [String]
    # @!attribute offset
    #   <p>A positive integer value representing the offset to mark the start of the alternate key
    #            part in the record byte array.</p>
    #   @return [Integer]
    # @!attribute length
    #   <p>A strictly positive integer value representing the length of the alternate key.</p>
    #   @return [Integer]
    # @!attribute allow_duplicates
    #   <p>Indicates whether the alternate key values are supposed to be unique for the given data
    #            set.</p>
    #   @return [Boolean]
    class AlternateKey < Struct.new(
      nil,
      :name,
      :offset,
      :length,
      :allow_duplicates,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:offset] = 0 unless options.key?(:offset)
        options[:length] = 0 unless options.key?(:length)
        options[:allow_duplicates] = false unless options.key?(:allow_duplicates)
        super
      end
    end

    # <p>A subset of the possible application attributes. Used in the application list.</p>
    # @!attribute name
    #   <p>The name of the application.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the application.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>The unique identifier of the application.</p>
    #   @return [String]
    # @!attribute application_arn
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    #   @return [String]
    # @!attribute application_version
    #   <p>The version of the application.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the application.</p>
    #   @return [String]
    # @!attribute engine_type
    #   <p>The type of the target platform for this application.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The timestamp when the application was created.</p>
    #   @return [Time]
    # @!attribute environment_id
    #   <p>The unique identifier of the runtime environment that hosts this application.</p>
    #   @return [String]
    # @!attribute last_start_time
    #   <p>The timestamp when you last started the application. Null until the application runs for
    #            the first time.</p>
    #   @return [Time]
    # @!attribute version_status
    #   <p>Indicates the status of the latest version of the application.</p>
    #   @return [String]
    # @!attribute deployment_status
    #   <p>Indicates either an ongoing deployment or if the application has ever deployed
    #            successfully.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the role associated with the application.</p>
    #   @return [String]
    class ApplicationSummary < Struct.new(
      nil,
      :name,
      :description,
      :application_id,
      :application_arn,
      :application_version,
      :status,
      :engine_type,
      :creation_time,
      :environment_id,
      :last_start_time,
      :version_status,
      :deployment_status,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines an application version summary.</p>
    # @!attribute application_version
    #   <p>The application version.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the application.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the reported status.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The timestamp when the application version was created.</p>
    #   @return [Time]
    class ApplicationVersionSummary < Struct.new(
      nil,
      :application_version,
      :status,
      :status_reason,
      :creation_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the details of a batch job.</p>
    # @!attribute file_batch_job_definition
    #   <p>Specifies a file containing a batch job definition.</p>
    #   @return [Types::FileBatchJobDefinition]
    # @!attribute script_batch_job_definition
    #   <p>A script containing a batch job definition.</p>
    #   @return [Types::ScriptBatchJobDefinition]
    class BatchJobDefinition < Struct.new(
      :file_batch_job_definition,
      :script_batch_job_definition,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class FileBatchJobDefinition < BatchJobDefinition; end
      class ScriptBatchJobDefinition < BatchJobDefinition; end
      class Unknown < BatchJobDefinition; end
    end

    # <p>A subset of the possible batch job attributes. Used in the batch job list.</p>
    # @!attribute execution_id
    #   <p>The unique identifier of this execution of the batch job.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>The unique identifier of the application that hosts this batch job.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The unique identifier of a particular batch job.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The name of a particular batch job.</p>
    #   @return [String]
    # @!attribute job_type
    #   <p>The type of a particular batch job execution.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of a particular batch job execution.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The timestamp when a particular batch job execution started.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The timestamp when this batch job execution ended.</p>
    #   @return [Time]
    # @!attribute return_code
    #   <p>The batch job return code from either the Blu Age or Micro Focus runtime engines. For more
    #            information, see <a href="https://www.ibm.com/docs/en/was/8.5.5?topic=model-batch-return-codes">Batch return
    #               codes</a> in the <i>IBM WebSphere Application Server</i>
    #            documentation.</p>
    #   @return [String]
    # @!attribute batch_job_identifier
    #   <p>The unique identifier of this batch job.</p>
    #   @return [Types::BatchJobIdentifier]
    class BatchJobExecutionSummary < Struct.new(
      nil,
      :execution_id,
      :application_id,
      :job_id,
      :job_name,
      :job_type,
      :status,
      :start_time,
      :end_time,
      :return_code,
      :batch_job_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Identifies a specific batch job.</p>
    # @!attribute file_batch_job_identifier
    #   <p>Specifies a file associated with a specific batch job.</p>
    #   @return [Types::FileBatchJobIdentifier]
    # @!attribute script_batch_job_identifier
    #   <p>A batch job identifier in which the batch job to run is identified by the script
    #            name.</p>
    #   @return [Types::ScriptBatchJobIdentifier]
    # @!attribute s3_batch_job_identifier
    #   <p>Specifies an Amazon S3 location that identifies the batch jobs that you want to run. Use this identifier to run ad hoc batch jobs.</p>
    #   @return [Types::S3BatchJobIdentifier]
    # @!attribute restart_batch_job_identifier
    #   <p>Specifies the required information for restart, including <code>executionId</code> and <code>JobStepRestartMarker</code>.</p>
    #   @return [Types::RestartBatchJobIdentifier]
    class BatchJobIdentifier < Struct.new(
      :file_batch_job_identifier,
      :script_batch_job_identifier,
      :s3_batch_job_identifier,
      :restart_batch_job_identifier,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class FileBatchJobIdentifier < BatchJobIdentifier; end
      class ScriptBatchJobIdentifier < BatchJobIdentifier; end
      class S3BatchJobIdentifier < BatchJobIdentifier; end
      class RestartBatchJobIdentifier < BatchJobIdentifier; end
      class Unknown < BatchJobIdentifier; end
    end

    # @!attribute application_id
    #   <p>The unique identifier of the application.</p>
    #   @return [String]
    # @!attribute execution_id
    #   <p>The unique identifier of the batch job execution.</p>
    #   @return [String]
    # @!attribute auth_secrets_manager_arn
    #   <p>The Amazon Web Services Secrets Manager containing user's credentials for authentication and authorization for Cancel Batch Job Execution operation.</p>
    #   @return [String]
    class CancelBatchJobExecutionInput < Struct.new(
      nil,
      :application_id,
      :execution_id,
      :auth_secrets_manager_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CancelBatchJobExecutionOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The parameters provided in the request conflict with existing resources.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the conflicting resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the conflicting resource.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The unique identifier of the application.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the application.</p>
    #   @return [String]
    # @!attribute engine_type
    #   <p>The type of the target platform for this application.</p>
    #   @return [String]
    # @!attribute definition
    #   <p>The application definition for this application. You can specify either inline JSON or
    #            an S3 bucket location.</p>
    #   @return [Types::Definition]
    # @!attribute tags
    #   <p>A list of tags to apply to the application.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A client token is a unique, case-sensitive string of up to 128 ASCII characters with ASCII values of 33-126 inclusive.
    #            It's generated by the client to ensure idempotent operations, allowing for safe retries without unintended side effects.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The identifier of a customer managed key.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) that identifies a role that the application uses to access Amazon Web Services resources
    #            that are not part of the application or are in a different Amazon Web Services account.</p>
    #   @return [String]
    class CreateApplicationInput < Struct.new(
      nil,
      :name,
      :description,
      :engine_type,
      :definition,
      :tags,
      :client_token,
      :kms_key_id,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_arn
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>The unique application identifier.</p>
    #   @return [String]
    # @!attribute application_version
    #   <p>The version number of the application.</p>
    #   @return [Integer]
    class CreateApplicationOutput < Struct.new(
      nil,
      :application_arn,
      :application_id,
      :application_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier of the application for which you want to export data sets.</p>
    #   @return [String]
    # @!attribute export_config
    #   <p>The data set export task configuration.</p>
    #   @return [Types::DataSetExportConfig]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure the idempotency of the request to create a data set export. The service generates the clientToken when the API call is triggered. The token expires after one hour, so if you retry the API within this timeframe with the same clientToken, you will get the same response. The service also handles deleting the clientToken after it expires.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The identifier of a customer managed key.</p>
    #   @return [String]
    class CreateDataSetExportTaskRequest < Struct.new(
      nil,
      :application_id,
      :export_config,
      :client_token,
      :kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>The task identifier. This operation is asynchronous. Use this identifier with the <a>GetDataSetExportTask</a> operation to obtain the status of this task.</p>
    #   @return [String]
    class CreateDataSetExportTaskResponse < Struct.new(
      nil,
      :task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier of the application for which you want to import data sets.</p>
    #   @return [String]
    # @!attribute import_config
    #   <p>The data set import task configuration.</p>
    #   @return [Types::DataSetImportConfig]
    # @!attribute client_token
    #   <p> Unique, case-sensitive identifier you provide to ensure the idempotency of the request
    #            to create a data set import. The service generates the clientToken when the API call is
    #            triggered. The token expires after one hour, so if you retry the API within this timeframe
    #            with the same clientToken, you will get the same response. The service also handles
    #            deleting the clientToken after it expires. </p>
    #   @return [String]
    class CreateDataSetImportTaskInput < Struct.new(
      nil,
      :application_id,
      :import_config,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>The task identifier. This operation is asynchronous. Use this identifier with the <a>GetDataSetImportTask</a> operation to obtain the status of this task.</p>
    #   @return [String]
    class CreateDataSetImportTaskOutput < Struct.new(
      nil,
      :task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>The identifier of the runtime environment where you want to deploy this
    #            application.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>The application identifier.</p>
    #   @return [String]
    # @!attribute application_version
    #   <p>The version of the application to deploy.</p>
    #   @return [Integer]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure the idempotency of the request
    #            to create a deployment. The service generates the clientToken when the API call is
    #            triggered. The token expires after one hour, so if you retry the API within this timeframe
    #            with the same clientToken, you will get the same response. The service also handles
    #            deleting the clientToken after it expires. </p>
    #   @return [String]
    class CreateDeploymentInput < Struct.new(
      nil,
      :environment_id,
      :application_id,
      :application_version,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute deployment_id
    #   <p>The unique identifier of the deployment.</p>
    #   @return [String]
    class CreateDeploymentOutput < Struct.new(
      nil,
      :deployment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the runtime environment. Must be unique within the account.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The type of instance for the runtime environment.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the runtime environment.</p>
    #   @return [String]
    # @!attribute engine_type
    #   <p>The engine type for the runtime environment.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The version of the engine type for the runtime environment.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>The list of subnets associated with the VPC for this runtime environment.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>The list of security groups for the VPC associated with this runtime environment.</p>
    #   @return [Array<String>]
    # @!attribute storage_configurations
    #   <p>Optional. The storage configurations for this runtime environment.</p>
    #   @return [Array<Types::StorageConfiguration>]
    # @!attribute publicly_accessible
    #   <p>Specifies whether the runtime environment is publicly accessible.</p>
    #   @return [Boolean]
    # @!attribute high_availability_config
    #   <p>The details of a high availability configuration for this runtime environment.</p>
    #   @return [Types::HighAvailabilityConfig]
    # @!attribute tags
    #   <p>The tags for the runtime environment.</p>
    #   @return [Hash<String, String>]
    # @!attribute preferred_maintenance_window
    #   <p>Configures the maintenance window that you want for the runtime environment. The maintenance window must have the format <code>ddd:hh24:mi-ddd:hh24:mi</code> and must be less than 24 hours. The following two examples are valid maintenance windows: <code>sun:23:45-mon:00:15</code> or <code>sat:01:00-sat:03:00</code>. </p>
    #            <p>If you do not provide a value, a random system-generated value will be assigned.</p>
    #   @return [String]
    # @!attribute network_type
    #   <p>The network type required for the runtime environment.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure the idempotency of the request
    #            to create an environment. The service generates the clientToken when the API call is
    #            triggered. The token expires after one hour, so if you retry the API within this timeframe
    #            with the same clientToken, you will get the same response. The service also handles
    #            deleting the clientToken after it expires. </p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The identifier of a customer managed key.</p>
    #   @return [String]
    class CreateEnvironmentInput < Struct.new(
      nil,
      :name,
      :instance_type,
      :description,
      :engine_type,
      :engine_version,
      :subnet_ids,
      :security_group_ids,
      :storage_configurations,
      :publicly_accessible,
      :high_availability_config,
      :tags,
      :preferred_maintenance_window,
      :network_type,
      :client_token,
      :kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>The unique identifier of the runtime environment.</p>
    #   @return [String]
    class CreateEnvironmentOutput < Struct.new(
      nil,
      :environment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a data set.</p>
    # @!attribute storage_type
    #   <p>The storage type of the data set: database or file system. For Micro Focus, database
    #            corresponds to datastore and file system corresponds to EFS/FSX. For Blu Age, there is no
    #            support of file system and database corresponds to Blusam. </p>
    #   @return [String]
    # @!attribute dataset_name
    #   <p>The logical identifier for a specific data set (in mainframe format).</p>
    #   @return [String]
    # @!attribute dataset_org
    #   <p>The type of dataset. The only supported value is VSAM.</p>
    #   @return [Types::DatasetOrgAttributes]
    # @!attribute relative_path
    #   <p>The relative location of the data set in the database or file system. </p>
    #   @return [String]
    # @!attribute record_length
    #   <p>The length of a record.</p>
    #   @return [Types::RecordLength]
    class DataSet < Struct.new(
      nil,
      :storage_type,
      :dataset_name,
      :dataset_org,
      :relative_path,
      :record_length,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Identifies one or more data sets you want to import with the <a>CreateDataSetExportTask</a> operation.</p>
    # @!attribute s3_location
    #   <p>The Amazon S3 location of the data sets.</p>
    #   @return [String]
    # @!attribute data_sets
    #   <p>The data sets.</p>
    #   @return [Array<Types::DataSetExportItem>]
    class DataSetExportConfig < Struct.new(
      :s3_location,
      :data_sets,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class S3Location < DataSetExportConfig; end
      class DataSets < DataSetExportConfig; end
      class Unknown < DataSetExportConfig; end
    end

    # <p>Identifies a specific data set to export from an external location.</p>
    # @!attribute dataset_name
    #   <p>The data set.</p>
    #   @return [String]
    # @!attribute external_location
    #   <p>The location of the data set.</p>
    #   @return [Types::ExternalLocation]
    class DataSetExportItem < Struct.new(
      nil,
      :dataset_name,
      :external_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a summary of data set exports.</p>
    # @!attribute total
    #   <p>The total number of data set exports.</p>
    #   @return [Integer]
    # @!attribute succeeded
    #   <p>The number of data set exports that have succeeded.</p>
    #   @return [Integer]
    # @!attribute failed
    #   <p>The number of data set exports that have failed.</p>
    #   @return [Integer]
    # @!attribute pending
    #   <p>The number of data set exports that are pending.</p>
    #   @return [Integer]
    # @!attribute in_progress
    #   <p>The number of data set exports that are in progress.</p>
    #   @return [Integer]
    class DataSetExportSummary < Struct.new(
      nil,
      :total,
      :succeeded,
      :failed,
      :pending,
      :in_progress,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:total] = 0 unless options.key?(:total)
        options[:succeeded] = 0 unless options.key?(:succeeded)
        options[:failed] = 0 unless options.key?(:failed)
        options[:pending] = 0 unless options.key?(:pending)
        options[:in_progress] = 0 unless options.key?(:in_progress)
        super
      end
    end

    # <p>Contains information about a data set export task.</p>
    # @!attribute task_id
    #   <p>The identifier of the data set export task.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the data set export task.</p>
    #   @return [String]
    # @!attribute summary
    #   <p>A summary of the data set export task.</p>
    #   @return [Types::DataSetExportSummary]
    # @!attribute status_reason
    #   <p>If dataset exports failed, the failure reason will show here.</p>
    #   @return [String]
    class DataSetExportTask < Struct.new(
      nil,
      :task_id,
      :status,
      :summary,
      :status_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Identifies one or more data sets you want to import with the <a>CreateDataSetImportTask</a> operation.</p>
    # @!attribute s3_location
    #   <p>The Amazon S3 location of the data sets.</p>
    #   @return [String]
    # @!attribute data_sets
    #   <p>The data sets.</p>
    #   @return [Array<Types::DataSetImportItem>]
    class DataSetImportConfig < Struct.new(
      :s3_location,
      :data_sets,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class S3Location < DataSetImportConfig; end
      class DataSets < DataSetImportConfig; end
      class Unknown < DataSetImportConfig; end
    end

    # <p>Identifies a specific data set to import from an external location.</p>
    # @!attribute data_set
    #   <p>The data set.</p>
    #   @return [Types::DataSet]
    # @!attribute external_location
    #   <p>The location of the data set.</p>
    #   @return [Types::ExternalLocation]
    class DataSetImportItem < Struct.new(
      nil,
      :data_set,
      :external_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a summary of data set imports.</p>
    # @!attribute total
    #   <p>The total number of data set imports.</p>
    #   @return [Integer]
    # @!attribute succeeded
    #   <p>The number of data set imports that have succeeded.</p>
    #   @return [Integer]
    # @!attribute failed
    #   <p>The number of data set imports that have failed.</p>
    #   @return [Integer]
    # @!attribute pending
    #   <p>The number of data set imports that are pending.</p>
    #   @return [Integer]
    # @!attribute in_progress
    #   <p>The number of data set imports that are in progress.</p>
    #   @return [Integer]
    class DataSetImportSummary < Struct.new(
      nil,
      :total,
      :succeeded,
      :failed,
      :pending,
      :in_progress,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:total] = 0 unless options.key?(:total)
        options[:succeeded] = 0 unless options.key?(:succeeded)
        options[:failed] = 0 unless options.key?(:failed)
        options[:pending] = 0 unless options.key?(:pending)
        options[:in_progress] = 0 unless options.key?(:in_progress)
        super
      end
    end

    # <p>Contains information about a data set import task.</p>
    # @!attribute task_id
    #   <p>The identifier of the data set import task.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the data set import task.</p>
    #   @return [String]
    # @!attribute summary
    #   <p>A summary of the data set import task.</p>
    #   @return [Types::DataSetImportSummary]
    # @!attribute status_reason
    #   <p>If dataset import failed, the failure reason will show here.</p>
    #   @return [String]
    class DataSetImportTask < Struct.new(
      nil,
      :task_id,
      :status,
      :summary,
      :status_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A subset of the possible data set attributes.</p>
    # @!attribute data_set_name
    #   <p>The name of the data set.</p>
    #   @return [String]
    # @!attribute data_set_org
    #   <p>The type of data set. The only supported value is VSAM.</p>
    #   @return [String]
    # @!attribute format
    #   <p>The format of the data set. </p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The timestamp when the data set was created.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The last time the data set was updated.</p>
    #   @return [Time]
    # @!attribute last_referenced_time
    #   <p>The last time the data set was referenced.</p>
    #   @return [Time]
    class DataSetSummary < Struct.new(
      nil,
      :data_set_name,
      :data_set_org,
      :format,
      :creation_time,
      :last_updated_time,
      :last_referenced_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Additional details about the data set. Different attributes correspond to different data
    #          set organizations. The values are populated based on datasetOrg, storageType and backend
    #          (Blu Age or Micro Focus).</p>
    # @!attribute vsam
    #   <p>The details of a VSAM data set.</p>
    #   @return [Types::VsamDetailAttributes]
    # @!attribute gdg
    #   <p>The generation data group of the data set.</p>
    #   @return [Types::GdgDetailAttributes]
    # @!attribute po
    #   <p>The details of a PO type data set.</p>
    #   @return [Types::PoDetailAttributes]
    # @!attribute ps
    #   <p>The details of a PS type data set.</p>
    #   @return [Types::PsDetailAttributes]
    class DatasetDetailOrgAttributes < Struct.new(
      :vsam,
      :gdg,
      :po,
      :ps,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Vsam < DatasetDetailOrgAttributes; end
      class Gdg < DatasetDetailOrgAttributes; end
      class Po < DatasetDetailOrgAttributes; end
      class Ps < DatasetDetailOrgAttributes; end
      class Unknown < DatasetDetailOrgAttributes; end
    end

    # <p>Additional details about the data set. Different attributes correspond to different data
    #          set organizations. The values are populated based on datasetOrg, storageType and backend
    #          (Blu Age or Micro Focus).</p>
    # @!attribute vsam
    #   <p>The details of a VSAM data set.</p>
    #   @return [Types::VsamAttributes]
    # @!attribute gdg
    #   <p>The generation data group of the data set.</p>
    #   @return [Types::GdgAttributes]
    # @!attribute po
    #   <p>The details of a PO type data set.</p>
    #   @return [Types::PoAttributes]
    # @!attribute ps
    #   <p>The details of a PS type data set.</p>
    #   @return [Types::PsAttributes]
    class DatasetOrgAttributes < Struct.new(
      :vsam,
      :gdg,
      :po,
      :ps,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Vsam < DatasetOrgAttributes; end
      class Gdg < DatasetOrgAttributes; end
      class Po < DatasetOrgAttributes; end
      class Ps < DatasetOrgAttributes; end
      class Unknown < DatasetOrgAttributes; end
    end

    # <p>The application definition for a particular application. </p>
    # @!attribute s3_location
    #   <p>The S3 bucket that contains the application definition.</p>
    #   @return [String]
    # @!attribute content
    #   <p>The content of the application definition. This is a JSON object that contains the
    #            resource configuration/definitions that identify an application.</p>
    #   @return [String]
    class Definition < Struct.new(
      :s3_location,
      :content,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class S3Location < Definition; end
      class Content < Definition; end
      class Unknown < Definition; end
    end

    # @!attribute application_id
    #   <p>The unique identifier of the application you want to delete.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The unique identifier of the runtime environment where the application was previously
    #            deployed.</p>
    #   @return [String]
    class DeleteApplicationFromEnvironmentInput < Struct.new(
      nil,
      :application_id,
      :environment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteApplicationFromEnvironmentOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier of the application you want to delete.</p>
    #   @return [String]
    class DeleteApplicationInput < Struct.new(
      nil,
      :application_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteApplicationOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>The unique identifier of the runtime environment you want to delete.</p>
    #   @return [String]
    class DeleteEnvironmentInput < Struct.new(
      nil,
      :environment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteEnvironmentOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a summary of a deployed application.</p>
    # @!attribute application_version
    #   <p>The version of the deployed application.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the deployment.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the reported status.</p>
    #   @return [String]
    class DeployedVersionSummary < Struct.new(
      nil,
      :application_version,
      :status,
      :status_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A subset of information about a specific deployment.</p>
    # @!attribute deployment_id
    #   <p>The unique identifier of the deployment.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>The unique identifier of the application.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The unique identifier of the runtime environment.</p>
    #   @return [String]
    # @!attribute application_version
    #   <p>The version of the application.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The current status of the deployment.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The timestamp when the deployment was created.</p>
    #   @return [Time]
    # @!attribute status_reason
    #   <p>The reason for the reported status.</p>
    #   @return [String]
    class DeploymentSummary < Struct.new(
      nil,
      :deployment_id,
      :application_id,
      :environment_id,
      :application_version,
      :status,
      :creation_time,
      :status_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the storage configuration for an Amazon EFS file system.</p>
    # @!attribute file_system_id
    #   <p>The file system identifier.</p>
    #   @return [String]
    # @!attribute mount_point
    #   <p>The mount point for the file system.</p>
    #   @return [String]
    class EfsStorageConfiguration < Struct.new(
      nil,
      :file_system_id,
      :mount_point,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A subset of information about the engine version for a specific application.</p>
    # @!attribute engine_type
    #   <p>The type of target platform for the application.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The version of the engine type used by the application.</p>
    #   @return [String]
    class EngineVersionsSummary < Struct.new(
      nil,
      :engine_type,
      :engine_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains a subset of the possible runtime environment attributes. Used in the
    #          environment list.</p>
    # @!attribute name
    #   <p>The name of the runtime environment.</p>
    #   @return [String]
    # @!attribute environment_arn
    #   <p>The Amazon Resource Name (ARN) of a particular runtime environment.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The unique identifier of a particular runtime environment.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The instance type of the runtime environment.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the runtime environment</p>
    #   @return [String]
    # @!attribute engine_type
    #   <p>The target platform for the runtime environment.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The version of the runtime engine.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The timestamp when the runtime environment was created.</p>
    #   @return [Time]
    # @!attribute network_type
    #   <p>The network type supported by the runtime environment.</p>
    #   @return [String]
    class EnvironmentSummary < Struct.new(
      nil,
      :name,
      :environment_arn,
      :environment_id,
      :instance_type,
      :status,
      :engine_type,
      :engine_version,
      :creation_time,
      :network_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Failed to connect to server, or didn’t receive response within expected time period.</p>
    # @!attribute message
    #   @return [String]
    class ExecutionTimeoutException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines an external storage location.</p>
    # @!attribute s3_location
    #   <p>The URI of the Amazon S3 bucket.</p>
    #   @return [String]
    class ExternalLocation < Struct.new(
      :s3_location,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class S3Location < ExternalLocation; end
      class Unknown < ExternalLocation; end
    end

    # <p>A file containing a batch job definition.</p>
    # @!attribute file_name
    #   <p>The name of the file containing the batch job definition.</p>
    #   @return [String]
    # @!attribute folder_path
    #   <p>The path to the file containing the batch job definition.</p>
    #   @return [String]
    class FileBatchJobDefinition < Struct.new(
      nil,
      :file_name,
      :folder_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A batch job identifier in which the batch job to run is identified by the file name and
    #          the relative path to the file name.</p>
    # @!attribute file_name
    #   <p>The file name for the batch job identifier.</p>
    #   @return [String]
    # @!attribute folder_path
    #   <p>The relative path to the file name for the batch job identifier.</p>
    #   @return [String]
    class FileBatchJobIdentifier < Struct.new(
      nil,
      :file_name,
      :folder_path,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the storage configuration for an Amazon FSx file system.</p>
    # @!attribute file_system_id
    #   <p>The file system identifier.</p>
    #   @return [String]
    # @!attribute mount_point
    #   <p>The mount point for the file system.</p>
    #   @return [String]
    class FsxStorageConfiguration < Struct.new(
      nil,
      :file_system_id,
      :mount_point,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The required attributes for a generation data group data set. A generation data set is
    #          one of a collection of successive, historically related, catalogued data sets that together
    #          are known as a generation data group (GDG). Use this structure when you want to import a
    #          GDG. For more information on GDG, see <a href="https://www.ibm.com/docs/en/zos/2.3.0?topic=guide-generation-data-sets">Generation
    #             data sets</a>.</p>
    # @!attribute limit
    #   <p>The maximum number of generation data sets, up to 255, in a GDG.</p>
    #   @return [Integer]
    # @!attribute roll_disposition
    #   <p>The disposition of the data set in the catalog.</p>
    #   @return [String]
    class GdgAttributes < Struct.new(
      nil,
      :limit,
      :roll_disposition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:limit] = 0 unless options.key?(:limit)
        super
      end
    end

    # <p>The required attributes for a generation data group data set. A generation data set is
    #          one of a collection of successive, historically related, catalogued data sets that together
    #          are known as a generation data group (GDG). Use this structure when you want to import a
    #          GDG. For more information on GDG, see <a href="https://www.ibm.com/docs/en/zos/2.3.0?topic=guide-generation-data-sets">Generation
    #             data sets</a>.</p>
    # @!attribute limit
    #   <p>The maximum number of generation data sets, up to 255, in a GDG.</p>
    #   @return [Integer]
    # @!attribute roll_disposition
    #   <p>The disposition of the data set in the catalog.</p>
    #   @return [String]
    class GdgDetailAttributes < Struct.new(
      nil,
      :limit,
      :roll_disposition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:limit] = 0 unless options.key?(:limit)
        super
      end
    end

    # @!attribute application_id
    #   <p>The identifier of the application.</p>
    #   @return [String]
    class GetApplicationInput < Struct.new(
      nil,
      :application_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The unique identifier of the application.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the application.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>The identifier of the application.</p>
    #   @return [String]
    # @!attribute application_arn
    #   <p>The Amazon Resource Name (ARN) of the application.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the application.</p>
    #   @return [String]
    # @!attribute latest_version
    #   <p>The latest version of the application.</p>
    #   @return [Types::ApplicationVersionSummary]
    # @!attribute deployed_version
    #   <p>The version of the application that is deployed.</p>
    #   @return [Types::DeployedVersionSummary]
    # @!attribute engine_type
    #   <p>The type of the target platform for the application.</p>
    #   @return [String]
    # @!attribute log_groups
    #   <p>The list of log summaries. Each log summary includes the log type as well as the log
    #            group identifier. These are CloudWatch logs. Amazon Web Services Mainframe Modernization pushes the application log to CloudWatch under
    #            the customer's account.</p>
    #   @return [Array<Types::LogGroupSummary>]
    # @!attribute creation_time
    #   <p>The timestamp when this application was created.</p>
    #   @return [Time]
    # @!attribute last_start_time
    #   <p>The timestamp when you last started the application. Null until the application runs for
    #            the first time.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>A list of tags associated with the application.</p>
    #   @return [Hash<String, String>]
    # @!attribute environment_id
    #   <p>The identifier of the runtime environment where you want to deploy the
    #            application.</p>
    #   @return [String]
    # @!attribute target_group_arns
    #   <p>Returns the Amazon Resource Names (ARNs) of the target groups that are attached to the
    #            network load balancer.</p>
    #   @return [Array<String>]
    # @!attribute listener_arns
    #   <p>The Amazon Resource Name (ARN) for the network load balancer listener created in your
    #            Amazon Web Services account. Amazon Web Services Mainframe Modernization creates this listener for you the first time you deploy an
    #            application.</p>
    #   @return [Array<String>]
    # @!attribute listener_ports
    #   <p>The port associated with the network load balancer listener created in your Amazon Web Services
    #            account.</p>
    #   @return [Array<Integer>]
    # @!attribute load_balancer_dns_name
    #   <p>The public DNS name of the load balancer created in your Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the reported status.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The identifier of a customer managed key.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the role associated with the application.</p>
    #   @return [String]
    class GetApplicationOutput < Struct.new(
      nil,
      :name,
      :description,
      :application_id,
      :application_arn,
      :status,
      :latest_version,
      :deployed_version,
      :engine_type,
      :log_groups,
      :creation_time,
      :last_start_time,
      :tags,
      :environment_id,
      :target_group_arns,
      :listener_arns,
      :listener_ports,
      :load_balancer_dns_name,
      :status_reason,
      :kms_key_id,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier of the application.</p>
    #   @return [String]
    # @!attribute application_version
    #   <p>The specific version of the application.</p>
    #   @return [Integer]
    class GetApplicationVersionInput < Struct.new(
      nil,
      :application_id,
      :application_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the application version.</p>
    #   @return [String]
    # @!attribute application_version
    #   <p>The specific version of the application.</p>
    #   @return [Integer]
    # @!attribute description
    #   <p>The application description.</p>
    #   @return [String]
    # @!attribute definition_content
    #   <p>The content of the application definition. This is a JSON object that contains the
    #            resource configuration and definitions that identify an application.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the application version.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The timestamp when the application version was created.</p>
    #   @return [Time]
    # @!attribute status_reason
    #   <p>The reason for the reported status.</p>
    #   @return [String]
    class GetApplicationVersionOutput < Struct.new(
      nil,
      :name,
      :application_version,
      :description,
      :definition_content,
      :status,
      :creation_time,
      :status_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The identifier of the application.</p>
    #   @return [String]
    # @!attribute execution_id
    #   <p>The unique identifier of the batch job execution.</p>
    #   @return [String]
    class GetBatchJobExecutionInput < Struct.new(
      nil,
      :application_id,
      :execution_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute execution_id
    #   <p>The unique identifier for this batch job execution.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>The identifier of the application.</p>
    #   @return [String]
    # @!attribute job_id
    #   <p>The unique identifier for this batch job.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The name of this batch job.</p>
    #   @return [String]
    # @!attribute job_user
    #   <p>The user for the job.</p>
    #   @return [String]
    # @!attribute job_type
    #   <p>The type of job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the batch job execution.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The timestamp when the batch job execution started.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The timestamp when the batch job execution ended.</p>
    #   @return [Time]
    # @!attribute status_reason
    #   <p>The reason for the reported status.</p>
    #   @return [String]
    # @!attribute return_code
    #   <p>The batch job return code from either the Blu Age or Micro Focus runtime engines. For more
    #            information, see <a href="https://www.ibm.com/docs/en/was/8.5.5?topic=model-batch-return-codes">Batch return
    #               codes</a> in the <i>IBM WebSphere Application Server</i>
    #            documentation.</p>
    #   @return [String]
    # @!attribute batch_job_identifier
    #   <p>The unique identifier of this batch job.</p>
    #   @return [Types::BatchJobIdentifier]
    # @!attribute job_step_restart_marker
    #   <p>The step/procedure step information for the restart batch job operation.</p>
    #   @return [Types::JobStepRestartMarker]
    class GetBatchJobExecutionOutput < Struct.new(
      nil,
      :execution_id,
      :application_id,
      :job_id,
      :job_name,
      :job_user,
      :job_type,
      :status,
      :start_time,
      :end_time,
      :status_reason,
      :return_code,
      :batch_job_identifier,
      :job_step_restart_marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier of the application that this data set is associated with.</p>
    #   @return [String]
    # @!attribute data_set_name
    #   <p>The name of the data set.</p>
    #   @return [String]
    class GetDataSetDetailsRequest < Struct.new(
      nil,
      :application_id,
      :data_set_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_set_name
    #   <p>The name of the data set.</p>
    #   @return [String]
    # @!attribute data_set_org
    #   <p>The type of data set. The only supported value is VSAM.</p>
    #   @return [Types::DatasetDetailOrgAttributes]
    # @!attribute record_length
    #   <p>The length of records in the data set.</p>
    #   @return [Integer]
    # @!attribute location
    #   <p>The location where the data set is stored.</p>
    #   @return [String]
    # @!attribute blocksize
    #   <p>The size of the block on disk. </p>
    #   @return [Integer]
    # @!attribute creation_time
    #   <p>The timestamp when the data set was created.</p>
    #   @return [Time]
    # @!attribute last_updated_time
    #   <p>The last time the data set was updated.</p>
    #   @return [Time]
    # @!attribute last_referenced_time
    #   <p>The last time the data set was referenced.</p>
    #   @return [Time]
    # @!attribute file_size
    #   <p>File size of the dataset.</p>
    #   @return [Integer]
    class GetDataSetDetailsResponse < Struct.new(
      nil,
      :data_set_name,
      :data_set_org,
      :record_length,
      :location,
      :blocksize,
      :creation_time,
      :last_updated_time,
      :last_referenced_time,
      :file_size,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:record_length] = nil unless options.key?(:record_length)
        options[:blocksize] = nil unless options.key?(:blocksize)
        options[:file_size] = nil unless options.key?(:file_size)
        super
      end
    end

    # @!attribute application_id
    #   <p>The application identifier.</p>
    #   @return [String]
    # @!attribute task_id
    #   <p>The task identifier returned by the <a>CreateDataSetExportTask</a> operation.</p>
    #   @return [String]
    class GetDataSetExportTaskRequest < Struct.new(
      nil,
      :application_id,
      :task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>The task identifier.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the task.</p>
    #   @return [String]
    # @!attribute summary
    #   <p>A summary of the status of the task.</p>
    #   @return [Types::DataSetExportSummary]
    # @!attribute status_reason
    #   <p>If dataset export failed, the failure reason will show here.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The identifier of a customer managed key used for exported data set encryption.</p>
    #   @return [String]
    class GetDataSetExportTaskResponse < Struct.new(
      nil,
      :task_id,
      :status,
      :summary,
      :status_reason,
      :kms_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The application identifier.</p>
    #   @return [String]
    # @!attribute task_id
    #   <p>The task identifier returned by the <a>CreateDataSetImportTask</a> operation.
    #         </p>
    #   @return [String]
    class GetDataSetImportTaskInput < Struct.new(
      nil,
      :application_id,
      :task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute task_id
    #   <p>The task identifier.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the task.</p>
    #   @return [String]
    # @!attribute summary
    #   <p>A summary of the status of the task.</p>
    #   @return [Types::DataSetImportSummary]
    class GetDataSetImportTaskOutput < Struct.new(
      nil,
      :task_id,
      :status,
      :summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute deployment_id
    #   <p>The unique identifier for the deployment.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>The unique identifier of the application.</p>
    #   @return [String]
    class GetDeploymentInput < Struct.new(
      nil,
      :deployment_id,
      :application_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute deployment_id
    #   <p>The unique identifier of the deployment.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>The unique identifier of the application.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The unique identifier of the runtime environment.</p>
    #   @return [String]
    # @!attribute application_version
    #   <p>The application version.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the deployment.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The timestamp when the deployment was created.</p>
    #   @return [Time]
    # @!attribute status_reason
    #   <p>The reason for the reported status.</p>
    #   @return [String]
    class GetDeploymentOutput < Struct.new(
      nil,
      :deployment_id,
      :application_id,
      :environment_id,
      :application_version,
      :status,
      :creation_time,
      :status_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>The unique identifier of the runtime environment.</p>
    #   @return [String]
    class GetEnvironmentInput < Struct.new(
      nil,
      :environment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the runtime environment. Must be unique within the account.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the runtime environment.</p>
    #   @return [String]
    # @!attribute environment_arn
    #   <p>The Amazon Resource Name (ARN) of the runtime environment.</p>
    #   @return [String]
    # @!attribute environment_id
    #   <p>The unique identifier of the runtime environment.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>The type of instance underlying the runtime environment.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the runtime environment. If the Amazon Web Services Mainframe Modernization environment is missing a connection to
    #            the customer owned dependent resource, the status will be <code>Unhealthy</code>.</p>
    #   @return [String]
    # @!attribute engine_type
    #   <p>The target platform for the runtime environment.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The version of the runtime engine.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The unique identifier for the VPC used with this runtime environment.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>The unique identifiers of the subnets assigned to this runtime environment.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>The unique identifiers of the security groups assigned to this runtime
    #            environment.</p>
    #   @return [Array<String>]
    # @!attribute creation_time
    #   <p>The timestamp when the runtime environment was created.</p>
    #   @return [Time]
    # @!attribute storage_configurations
    #   <p>The storage configurations defined for the runtime environment.</p>
    #   @return [Array<Types::StorageConfiguration>]
    # @!attribute tags
    #   <p>The tags defined for this runtime environment.</p>
    #   @return [Hash<String, String>]
    # @!attribute high_availability_config
    #   <p>The desired capacity of the high availability configuration for the runtime
    #            environment.</p>
    #   @return [Types::HighAvailabilityConfig]
    # @!attribute publicly_accessible
    #   <p>Whether applications running in this runtime environment are publicly accessible.
    #         </p>
    #   @return [Boolean]
    # @!attribute actual_capacity
    #   <p>The number of instances included in the runtime environment. A standalone runtime
    #            environment has a maximum of one instance. Currently, a high availability runtime
    #            environment has a maximum of two instances. </p>
    #   @return [Integer]
    # @!attribute load_balancer_arn
    #   <p>The Amazon Resource Name (ARN) for the load balancer used with the runtime
    #            environment.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The reason for the reported status.</p>
    #   @return [String]
    # @!attribute preferred_maintenance_window
    #   <p>The maintenance window for the runtime environment. If you don't
    #            provide a value for the maintenance window, the service assigns a random value.</p>
    #   @return [String]
    # @!attribute pending_maintenance
    #   <p>Indicates the pending maintenance scheduled on this environment.</p>
    #   @return [Types::PendingMaintenance]
    # @!attribute kms_key_id
    #   <p>The identifier of a customer managed key.</p>
    #   @return [String]
    # @!attribute network_type
    #   <p>The network type supported by the runtime environment.</p>
    #   @return [String]
    class GetEnvironmentOutput < Struct.new(
      nil,
      :name,
      :description,
      :environment_arn,
      :environment_id,
      :instance_type,
      :status,
      :engine_type,
      :engine_version,
      :vpc_id,
      :subnet_ids,
      :security_group_ids,
      :creation_time,
      :storage_configurations,
      :tags,
      :high_availability_config,
      :publicly_accessible,
      :actual_capacity,
      :load_balancer_arn,
      :status_reason,
      :preferred_maintenance_window,
      :pending_maintenance,
      :kms_key_id,
      :network_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:publicly_accessible] = false unless options.key?(:publicly_accessible)
        super
      end
    end

    # @!attribute signed_bi_url
    #   <p>Single sign-on AWS Blu Insights URL.</p>
    #   @return [String]
    class GetSignedBluinsightsUrlResponse < Struct.new(
      nil,
      :signed_bi_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the details of a high availability configuration.</p>
    # @!attribute desired_capacity
    #   <p>The number of instances in a high availability configuration. The minimum possible value is 1 and the maximum is 100.</p>
    #   @return [Integer]
    class HighAvailabilityConfig < Struct.new(
      nil,
      :desired_capacity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An unexpected error occurred during the processing of the request.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds to wait before retrying the request.</p>
    #   @return [Integer]
    class InternalServerException < Struct.new(
      nil,
      :message,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:retry_after_seconds] = 0 unless options.key?(:retry_after_seconds)
        super
      end
    end

    # <p>Identifies a specific batch job.</p>
    # @!attribute file_name
    #   <p>The name of the file that contains the batch job definition.</p>
    #   @return [String]
    # @!attribute script_name
    #   <p>The name of the script that contains the batch job definition.</p>
    #   @return [String]
    class JobIdentifier < Struct.new(
      :file_name,
      :script_name,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class FileName < JobIdentifier; end
      class ScriptName < JobIdentifier; end
      class Unknown < JobIdentifier; end
    end

    # <p>Provides information related to a job step.</p>
    # @!attribute step_number
    #   <p>The number of a step.</p>
    #   @return [Integer]
    # @!attribute step_name
    #   <p>The name of a step.</p>
    #   @return [String]
    # @!attribute proc_step_number
    #   <p>The number of a procedure step.</p>
    #   @return [Integer]
    # @!attribute proc_step_name
    #   <p>The name of a procedure step.</p>
    #   @return [String]
    # @!attribute step_cond_code
    #   <p>The condition code of a step.</p>
    #   @return [String]
    # @!attribute step_restartable
    #   <p>Specifies if a step can be restarted or not.</p>
    #   @return [Boolean]
    # @!attribute step_checkpoint
    #   <p>A registered step-level checkpoint identifier that can be used for restarting an Amazon Web Services Blu Age application batch job.</p>
    #   @return [Integer]
    # @!attribute step_checkpoint_status
    #   <p>The step-level checkpoint status for an Amazon Web Services Blu Age application batch job.</p>
    #   @return [String]
    # @!attribute step_checkpoint_time
    #   <p>The step-level checkpoint status for an Amazon Web Services Blu Age application batch job.</p>
    #   @return [Time]
    class JobStep < Struct.new(
      nil,
      :step_number,
      :step_name,
      :proc_step_number,
      :proc_step_name,
      :step_cond_code,
      :step_restartable,
      :step_checkpoint,
      :step_checkpoint_status,
      :step_checkpoint_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:step_number] = 0 unless options.key?(:step_number)
        options[:proc_step_number] = 0 unless options.key?(:proc_step_number)
        options[:step_restartable] = false unless options.key?(:step_restartable)
        options[:step_checkpoint] = nil unless options.key?(:step_checkpoint)
        super
      end
    end

    # <p>Provides step/procedure step information for a restart batch job operation.</p>
    # @!attribute from_step
    #   <p>The step name that a batch job was restarted from.</p>
    #   @return [String]
    # @!attribute from_proc_step
    #   <p>The procedure step name that a batch job was restarted from.</p>
    #   @return [String]
    # @!attribute to_step
    #   <p>The step name that a batch job was restarted to.</p>
    #   @return [String]
    # @!attribute to_proc_step
    #   <p>The procedure step name that a batch job was restarted to.</p>
    #   @return [String]
    # @!attribute step_checkpoint
    #   <p>Skip selected step and issue a restart from immediate successor step for an Amazon Web Services Blu Age application batch job.</p>
    #   @return [Integer]
    # @!attribute skip
    #   <p>The step-level checkpoint timestamp (creation or last modification) for an Amazon Web Services Blu Age application batch job.</p>
    #   @return [Boolean]
    class JobStepRestartMarker < Struct.new(
      nil,
      :from_step,
      :from_proc_step,
      :to_step,
      :to_proc_step,
      :step_checkpoint,
      :skip,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:step_checkpoint] = nil unless options.key?(:step_checkpoint)
        options[:skip] = nil unless options.key?(:skip)
        super
      end
    end

    # @!attribute next_token
    #   <p>A pagination token returned from a previous call to
    #     this operation. This specifies the next item to return. To return to the beginning of the 
    #     list, exclude this parameter.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of application versions to return.</p>
    #   @return [Integer]
    # @!attribute application_id
    #   <p>The unique identifier of the application.</p>
    #   @return [String]
    class ListApplicationVersionsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :application_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_versions
    #   <p>The list of application versions.</p>
    #   @return [Array<Types::ApplicationVersionSummary>]
    # @!attribute next_token
    #   <p>If there are more items to return, this contains a token 
    #     that is passed to a subsequent call to this operation to retrieve the next set of items.</p>
    #   @return [String]
    class ListApplicationVersionsResponse < Struct.new(
      nil,
      :application_versions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token to control the number of applications displayed in the list.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of applications to return.</p>
    #   @return [Integer]
    # @!attribute names
    #   <p>The names of the applications.</p>
    #   @return [Array<String>]
    # @!attribute environment_id
    #   <p>The unique identifier of the runtime environment where the applications are
    #            deployed.</p>
    #   @return [String]
    class ListApplicationsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :names,
      :environment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute applications
    #   <p>Returns a list of summary details for all the applications in a runtime
    #            environment.</p>
    #   @return [Array<Types::ApplicationSummary>]
    # @!attribute next_token
    #   <p>A pagination token that's returned when the response doesn't contain all
    #            applications.</p>
    #   @return [String]
    class ListApplicationsResponse < Struct.new(
      nil,
      :applications,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token returned from a previous call to
    #     this operation. This specifies the next item to return. To return to the beginning of the 
    #     list, exclude this parameter.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of batch job definitions to return.</p>
    #   @return [Integer]
    # @!attribute application_id
    #   <p>The identifier of the application.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>If the batch job definition is a FileBatchJobDefinition, the prefix allows you to search
    #            on the file names of FileBatchJobDefinitions.</p>
    #   @return [String]
    class ListBatchJobDefinitionsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :application_id,
      :prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute batch_job_definitions
    #   <p>The list of batch job definitions.</p>
    #   @return [Array<Types::BatchJobDefinition>]
    # @!attribute next_token
    #   <p>If there are more items to return, this contains a token 
    #     that is passed to a subsequent call to this operation to retrieve the next set of items.</p>
    #   @return [String]
    class ListBatchJobDefinitionsResponse < Struct.new(
      nil,
      :batch_job_definitions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token to control the number of batch job executions displayed in the
    #            list.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of batch job executions to return.</p>
    #   @return [Integer]
    # @!attribute application_id
    #   <p>The unique identifier of the application.</p>
    #   @return [String]
    # @!attribute execution_ids
    #   <p>The unique identifier of each batch job execution.</p>
    #   @return [Array<String>]
    # @!attribute job_name
    #   <p>The name of each batch job execution.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the batch job executions.</p>
    #   @return [String]
    # @!attribute started_after
    #   <p>The time after which the batch job executions started.</p>
    #   @return [Time]
    # @!attribute started_before
    #   <p>The time before the batch job executions started.</p>
    #   @return [Time]
    class ListBatchJobExecutionsInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      :application_id,
      :execution_ids,
      :job_name,
      :status,
      :started_after,
      :started_before,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute batch_job_executions
    #   <p>Returns a list of batch job executions for an application.</p>
    #   @return [Array<Types::BatchJobExecutionSummary>]
    # @!attribute next_token
    #   <p>A pagination token that's returned when the response doesn't contain all batch job
    #            executions.</p>
    #   @return [String]
    class ListBatchJobExecutionsOutput < Struct.new(
      nil,
      :batch_job_executions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier of the application.</p>
    #   @return [String]
    # @!attribute execution_id
    #   <p>The unique identifier of the batch job execution.</p>
    #   @return [String]
    # @!attribute auth_secrets_manager_arn
    #   <p>The Amazon Web Services Secrets Manager containing user's credentials for authentication and authorization for List Batch Job Restart Points operation.</p>
    #   @return [String]
    class ListBatchJobRestartPointsRequest < Struct.new(
      nil,
      :application_id,
      :execution_id,
      :auth_secrets_manager_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute batch_job_steps
    #   <p>Returns all the batch job steps and related information for a batch job that previously ran.</p>
    #   @return [Array<Types::JobStep>]
    class ListBatchJobRestartPointsResponse < Struct.new(
      nil,
      :batch_job_steps,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token returned from a previous call to
    #     this operation. This specifies the next item to return. To return to the beginning of the 
    #     list, exclude this parameter.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects to return.</p>
    #   @return [Integer]
    # @!attribute application_id
    #   <p>The unique identifier of the application.</p>
    #   @return [String]
    class ListDataSetExportHistoryRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :application_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_set_export_tasks
    #   <p>The data set export tasks.</p>
    #   @return [Array<Types::DataSetExportTask>]
    # @!attribute next_token
    #   <p>If there are more items to return, this contains a token 
    #     that is passed to a subsequent call to this operation to retrieve the next set of items.</p>
    #   @return [String]
    class ListDataSetExportHistoryResponse < Struct.new(
      nil,
      :data_set_export_tasks,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token returned from a previous call to
    #     this operation. This specifies the next item to return. To return to the beginning of the 
    #     list, exclude this parameter.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects to return.</p>
    #   @return [Integer]
    # @!attribute application_id
    #   <p>The unique identifier of the application.</p>
    #   @return [String]
    class ListDataSetImportHistoryRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :application_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_set_import_tasks
    #   <p>The data set import tasks.</p>
    #   @return [Array<Types::DataSetImportTask>]
    # @!attribute next_token
    #   <p>If there are more items to return, this contains a token 
    #     that is passed to a subsequent call to this operation to retrieve the next set of items.</p>
    #   @return [String]
    class ListDataSetImportHistoryResponse < Struct.new(
      nil,
      :data_set_import_tasks,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier of the application for which you want to list the associated data
    #            sets.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A pagination token returned from a previous call to
    #     this operation. This specifies the next item to return. To return to the beginning of the 
    #     list, exclude this parameter.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects to return.</p>
    #   @return [Integer]
    # @!attribute prefix
    #   <p>The prefix of the data set name, which you can use to filter the list of data
    #            sets.</p>
    #   @return [String]
    # @!attribute name_filter
    #   <p>Filter dataset name matching the specified pattern. Can use * and % as wild cards.</p>
    #   @return [String]
    class ListDataSetsRequest < Struct.new(
      nil,
      :application_id,
      :next_token,
      :max_results,
      :prefix,
      :name_filter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_sets
    #   <p>The list of data sets, containing information including the creation time, the data set
    #            name, the data set organization, the data set format, and the last time the data set was
    #            referenced or updated.</p>
    #   @return [Array<Types::DataSetSummary>]
    # @!attribute next_token
    #   <p>If there are more items to return, this contains a token 
    #     that is passed to a subsequent call to this operation to retrieve the next set of items.</p>
    #   @return [String]
    class ListDataSetsResponse < Struct.new(
      nil,
      :data_sets,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token returned from a previous call to
    #     this operation. This specifies the next item to return. To return to the beginning of the 
    #     list, exclude this parameter.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects to return.</p>
    #   @return [Integer]
    # @!attribute application_id
    #   <p>The application identifier.</p>
    #   @return [String]
    class ListDeploymentsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :application_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute deployments
    #   <p>The list of deployments that is returned.</p>
    #   @return [Array<Types::DeploymentSummary>]
    # @!attribute next_token
    #   <p>If there are more items to return, this contains a token 
    #     that is passed to a subsequent call to this operation to retrieve the next set of items.</p>
    #   @return [String]
    class ListDeploymentsResponse < Struct.new(
      nil,
      :deployments,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute engine_type
    #   <p>The type of target platform.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A pagination token returned from a previous call to
    #     this operation. This specifies the next item to return. To return to the beginning of the 
    #     list, exclude this parameter.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of objects to return.</p>
    #   @return [Integer]
    class ListEngineVersionsInput < Struct.new(
      nil,
      :engine_type,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute engine_versions
    #   <p>Returns the engine versions.</p>
    #   @return [Array<Types::EngineVersionsSummary>]
    # @!attribute next_token
    #   <p>If there are more items to return, this contains a token 
    #     that is passed to a subsequent call to this operation to retrieve the next set of items.</p>
    #   @return [String]
    class ListEngineVersionsOutput < Struct.new(
      nil,
      :engine_versions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A pagination token to control the number of runtime environments displayed in the
    #            list.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of runtime environments to return.</p>
    #   @return [Integer]
    # @!attribute names
    #   <p>The names of the runtime environments. Must be unique within the account.</p>
    #   @return [Array<String>]
    # @!attribute engine_type
    #   <p>The engine type for the runtime environment.</p>
    #   @return [String]
    class ListEnvironmentsRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :names,
      :engine_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute environments
    #   <p>Returns a list of summary details for all the runtime environments in your account.
    #         </p>
    #   @return [Array<Types::EnvironmentSummary>]
    # @!attribute next_token
    #   <p>A pagination token that's returned when the response doesn't contain all the runtime
    #            environments.</p>
    #   @return [String]
    class ListEnvironmentsResponse < Struct.new(
      nil,
      :environments,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags for the resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A subset of the attributes that describe a log group. In CloudWatch a log group is a group of
    #          log streams that share the same retention, monitoring, and access control settings.</p>
    # @!attribute log_type
    #   <p>The type of log.</p>
    #   @return [String]
    # @!attribute log_group_name
    #   <p>The name of the log group.</p>
    #   @return [String]
    class LogGroupSummary < Struct.new(
      nil,
      :log_type,
      :log_group_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The information about the maintenance schedule.</p>
    # @!attribute start_time
    #   <p>The time the scheduled maintenance is to start.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time the scheduled maintenance is to end.</p>
    #   @return [Time]
    class MaintenanceSchedule < Struct.new(
      nil,
      :start_time,
      :end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The scheduled maintenance for a runtime engine.</p>
    # @!attribute schedule
    #   <p>The maintenance schedule for the runtime engine version.</p>
    #   @return [Types::MaintenanceSchedule]
    # @!attribute engine_version
    #   <p>The specific runtime engine that the maintenance schedule applies to.</p>
    #   @return [String]
    class PendingMaintenance < Struct.new(
      nil,
      :schedule,
      :engine_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The supported properties for a PO type data set.</p>
    # @!attribute format
    #   <p>The format of the data set records.</p>
    #   @return [String]
    # @!attribute encoding
    #   <p>The character set encoding of the data set.</p>
    #   @return [String]
    # @!attribute member_file_extensions
    #   <p>An array containing one or more filename extensions, allowing you to specify which files
    #            to be included as PDS member.</p>
    #   @return [Array<String>]
    class PoAttributes < Struct.new(
      nil,
      :format,
      :encoding,
      :member_file_extensions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The supported properties for a PO type data set.</p>
    # @!attribute format
    #   <p>The format of the data set records.</p>
    #   @return [String]
    # @!attribute encoding
    #   <p>The character set encoding of the data set.</p>
    #   @return [String]
    class PoDetailAttributes < Struct.new(
      nil,
      :format,
      :encoding,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The primary key for a KSDS data set.</p>
    # @!attribute name
    #   <p>A name for the Primary Key.</p>
    #   @return [String]
    # @!attribute offset
    #   <p>A positive integer value representing the offset to mark the start of the primary key in
    #            the record byte array.</p>
    #   @return [Integer]
    # @!attribute length
    #   <p>A strictly positive integer value representing the length of the primary key. </p>
    #   @return [Integer]
    class PrimaryKey < Struct.new(
      nil,
      :name,
      :offset,
      :length,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:offset] = 0 unless options.key?(:offset)
        options[:length] = 0 unless options.key?(:length)
        super
      end
    end

    # <p>The supported properties for a PS type data set.</p>
    # @!attribute format
    #   <p>The format of the data set records.</p>
    #   @return [String]
    # @!attribute encoding
    #   <p>The character set encoding of the data set.</p>
    #   @return [String]
    class PsAttributes < Struct.new(
      nil,
      :format,
      :encoding,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The supported properties for a PS type data set.</p>
    # @!attribute format
    #   <p>The format of the data set records.</p>
    #   @return [String]
    # @!attribute encoding
    #   <p>The character set encoding of the data set.</p>
    #   @return [String]
    class PsDetailAttributes < Struct.new(
      nil,
      :format,
      :encoding,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The length of the records in the data set.</p>
    # @!attribute min
    #   <p>The minimum record length of a record.</p>
    #   @return [Integer]
    # @!attribute max
    #   <p>The maximum record length. In case of fixed, both minimum and maximum are the
    #            same.</p>
    #   @return [Integer]
    class RecordLength < Struct.new(
      nil,
      :min,
      :max,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:min] = 0 unless options.key?(:min)
        options[:max] = 0 unless options.key?(:max)
        super
      end
    end

    # <p>The specified resource was not found.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the missing resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the missing resource.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An identifier for the <code>StartBatchJob</code> API to show that it is a restart operation.</p>
    # @!attribute execution_id
    #   <p>The <code>executionId</code> from the <code>StartBatchJob</code> response when the job ran for the first time.</p>
    #   @return [String]
    # @!attribute job_step_restart_marker
    #   <p>The step/procedure step information for a restart batch job operation.</p>
    #   @return [Types::JobStepRestartMarker]
    class RestartBatchJobIdentifier < Struct.new(
      nil,
      :execution_id,
      :job_step_restart_marker,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A batch job identifier in which the batch jobs to run are identified by an Amazon S3 location.</p>
    # @!attribute bucket
    #   <p>The Amazon S3 bucket that contains the batch job definitions.</p>
    #   @return [String]
    # @!attribute key_prefix
    #   <p>The key prefix that specifies the path to the folder in the S3 bucket that has the batch job definitions.</p>
    #   @return [String]
    # @!attribute identifier
    #   <p>Identifies the batch job definition. This identifier can also point to any batch job definition that already exists in the application or to one of the batch job definitions within the directory that is specified in <code>keyPrefix</code>.</p>
    #   @return [Types::JobIdentifier]
    class S3BatchJobIdentifier < Struct.new(
      nil,
      :bucket,
      :key_prefix,
      :identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A batch job definition contained in a script.</p>
    # @!attribute script_name
    #   <p>The name of the script containing the batch job definition.</p>
    #   @return [String]
    class ScriptBatchJobDefinition < Struct.new(
      nil,
      :script_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A batch job identifier in which the batch job to run is identified by the script
    #          name.</p>
    # @!attribute script_name
    #   <p>The name of the script containing the batch job definition.</p>
    #   @return [String]
    class ScriptBatchJobIdentifier < Struct.new(
      nil,
      :script_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>One or more quotas for Amazon Web Services Mainframe Modernization exceeds the limit.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource that is exceeding the quota limit.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource that is exceeding the quota limit for Amazon Web Services Mainframe Modernization.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>A code that identifies the service that the exceeded quota belongs to.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The identifier of the exceeded quota.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Server cannot process the request at the moment.</p>
    # @!attribute message
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier of the application you want to start.</p>
    #   @return [String]
    class StartApplicationInput < Struct.new(
      nil,
      :application_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StartApplicationOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier of the application associated with this batch job.</p>
    #   @return [String]
    # @!attribute batch_job_identifier
    #   <p>The unique identifier of the batch job.</p>
    #   @return [Types::BatchJobIdentifier]
    # @!attribute job_params
    #   <p>The collection of batch job parameters. For details about limits for keys and values,
    #            see <a href="https://www.ibm.com/docs/en/workload-automation/9.3.0?topic=zos-coding-variables-in-jcl">Coding variables in JCL</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute auth_secrets_manager_arn
    #   <p>The Amazon Web Services Secrets Manager containing user's credentials for authentication and authorization for Start Batch Job execution operation.</p>
    #   @return [String]
    class StartBatchJobInput < Struct.new(
      nil,
      :application_id,
      :batch_job_identifier,
      :job_params,
      :auth_secrets_manager_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute execution_id
    #   <p>The unique identifier of this execution of the batch job.</p>
    #   @return [String]
    class StartBatchJobOutput < Struct.new(
      nil,
      :execution_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier of the application you want to stop.</p>
    #   @return [String]
    # @!attribute force_stop
    #   <p>Stopping an application process can take a long time. Setting this parameter to true
    #            lets you force stop the application so you don't need to wait until the process finishes to
    #            apply another action on the application. The default value is false.</p>
    #   @return [Boolean]
    class StopApplicationInput < Struct.new(
      nil,
      :application_id,
      :force_stop,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StopApplicationOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the storage configuration for a runtime environment.</p>
    # @!attribute efs
    #   <p>Defines the storage configuration for an Amazon EFS file system.</p>
    #   @return [Types::EfsStorageConfiguration]
    # @!attribute fsx
    #   <p>Defines the storage configuration for an Amazon FSx file system.</p>
    #   @return [Types::FsxStorageConfiguration]
    class StorageConfiguration < Struct.new(
      :efs,
      :fsx,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Efs < StorageConfiguration; end
      class Fsx < StorageConfiguration; end
      class Unknown < StorageConfiguration; end
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to add to the resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The number of requests made exceeds the limit.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute service_code
    #   <p>The identifier of the service that the throttled request was made to.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The identifier of the throttled request.</p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds to wait before retrying the request.</p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:retry_after_seconds] = 0 unless options.key?(:retry_after_seconds)
        super
      end
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The keys of the tags to remove.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The unique identifier of the application you want to update.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the application to update.</p>
    #   @return [String]
    # @!attribute current_application_version
    #   <p>The current version of the application to update.</p>
    #   @return [Integer]
    # @!attribute definition
    #   <p>The application definition for this application. You can specify either inline JSON or
    #            an S3 bucket location.</p>
    #   @return [Types::Definition]
    class UpdateApplicationInput < Struct.new(
      nil,
      :application_id,
      :description,
      :current_application_version,
      :definition,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_version
    #   <p>The new version of the application.</p>
    #   @return [Integer]
    class UpdateApplicationOutput < Struct.new(
      nil,
      :application_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>The unique identifier of the runtime environment that you want to update.</p>
    #   @return [String]
    # @!attribute desired_capacity
    #   <p>The desired capacity for the runtime environment to update. The minimum possible value is 0 and the maximum is 100.</p>
    #   @return [Integer]
    # @!attribute instance_type
    #   <p>The instance type for the runtime environment to update.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The version of the runtime engine for the runtime environment.</p>
    #   @return [String]
    # @!attribute preferred_maintenance_window
    #   <p>Configures the maintenance window that you want for the runtime environment. The maintenance window must have the format <code>ddd:hh24:mi-ddd:hh24:mi</code> and must be less than 24 hours. The following two examples are valid maintenance windows: <code>sun:23:45-mon:00:15</code> or <code>sat:01:00-sat:03:00</code>. </p>
    #            <p>If you do not provide a value, a random system-generated value will be assigned.</p>
    #   @return [String]
    # @!attribute apply_during_maintenance_window
    #   <p>Indicates whether to update the runtime environment during the maintenance window. The
    #            default is false. Currently, Amazon Web Services Mainframe Modernization accepts the <code>engineVersion</code> parameter
    #            only if <code>applyDuringMaintenanceWindow</code> is true. If any parameter other than
    #               <code>engineVersion</code> is provided in <code>UpdateEnvironmentRequest</code>, it will
    #            fail if <code>applyDuringMaintenanceWindow</code> is set to true.</p>
    #   @return [Boolean]
    # @!attribute force_update
    #   <p>Forces the updates on the environment. This option is needed if the applications in the environment are not stopped or if there are ongoing application-related activities in the environment.</p>
    #            <p>If you use this option, be aware that it could lead to data corruption in the applications, and that you might need to perform repair and recovery procedures for the applications.</p>
    #            <p>This option is not needed if the attribute being updated is <code>preferredMaintenanceWindow</code>.</p>
    #   @return [Boolean]
    class UpdateEnvironmentInput < Struct.new(
      nil,
      :environment_id,
      :desired_capacity,
      :instance_type,
      :engine_version,
      :preferred_maintenance_window,
      :apply_during_maintenance_window,
      :force_update,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment_id
    #   <p>The unique identifier of the runtime environment that was updated.</p>
    #   @return [String]
    class UpdateEnvironmentOutput < Struct.new(
      nil,
      :environment_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>One or more parameters provided in the request is not valid.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason why it failed service validation.</p>
    #   @return [String]
    # @!attribute field_list
    #   <p>The list of fields that failed service validation.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      nil,
      :message,
      :reason,
      :field_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about a validation exception field.</p>
    # @!attribute name
    #   <p>The name of the exception field.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message of the exception field.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The attributes of a VSAM type data set.</p>
    # @!attribute format
    #   <p>The record format of the data set.</p>
    #   @return [String]
    # @!attribute encoding
    #   <p>The character set used by the data set. Can be ASCII, EBCDIC, or unknown.</p>
    #   @return [String]
    # @!attribute compressed
    #   <p>Indicates whether indexes for this dataset are stored as compressed values. If you have
    #            a large data set (typically &gt; 100 Mb), consider setting this flag to True.</p>
    #   @return [Boolean]
    # @!attribute primary_key
    #   <p>The primary key of the data set.</p>
    #   @return [Types::PrimaryKey]
    # @!attribute alternate_keys
    #   <p>The alternate key definitions, if any. A legacy dataset might not have any alternate key
    #            defined, but if those alternate keys definitions exist, provide them as some applications
    #            will make use of them.</p>
    #   @return [Array<Types::AlternateKey>]
    class VsamAttributes < Struct.new(
      nil,
      :format,
      :encoding,
      :compressed,
      :primary_key,
      :alternate_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:compressed] = false unless options.key?(:compressed)
        super
      end
    end

    # <p>The attributes of a VSAM type data set.</p>
    # @!attribute encoding
    #   <p>The character set used by the data set. Can be ASCII, EBCDIC, or unknown.</p>
    #   @return [String]
    # @!attribute record_format
    #   <p>The record format of the data set.</p>
    #   @return [String]
    # @!attribute compressed
    #   <p>Indicates whether indexes for this dataset are stored as compressed values. If you have
    #            a large data set (typically &gt; 100 Mb), consider setting this flag to True.</p>
    #   @return [Boolean]
    # @!attribute cache_at_startup
    #   <p>If set to True, enforces loading the data set into cache before it’s used by the
    #            application.</p>
    #   @return [Boolean]
    # @!attribute primary_key
    #   <p>The primary key of the data set.</p>
    #   @return [Types::PrimaryKey]
    # @!attribute alternate_keys
    #   <p>The alternate key definitions, if any. A legacy dataset might not have any alternate key
    #            defined, but if those alternate keys definitions exist, provide them as some applications
    #            will make use of them.</p>
    #   @return [Array<Types::AlternateKey>]
    class VsamDetailAttributes < Struct.new(
      nil,
      :encoding,
      :record_format,
      :compressed,
      :cache_at_startup,
      :primary_key,
      :alternate_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:compressed] = nil unless options.key?(:compressed)
        options[:cache_at_startup] = nil unless options.key?(:cache_at_startup)
        super
      end
    end

  end
end
