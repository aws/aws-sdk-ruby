# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MWAA
  module Types

    # Access to the Airflow Web UI or CLI has been Denied. Please follow the
    # MWAA user guide to setup permissions to access the Web UI and CLI
    # functionality.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateCliTokenRequest
    #   data as a hash:
    #
    #       {
    #         name: "EnvironmentName", # required
    #       }
    #
    # @!attribute [rw] name
    #   Create a CLI token request for a MWAA environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/CreateCliTokenRequest AWS API Documentation
    #
    class CreateCliTokenRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cli_token
    #   Create an Airflow CLI login token response for the provided JWT
    #   token.
    #   @return [String]
    #
    # @!attribute [rw] web_server_hostname
    #   Create an Airflow CLI login token response for the provided
    #   webserver hostname.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/CreateCliTokenResponse AWS API Documentation
    #
    class CreateCliTokenResponse < Struct.new(
      :cli_token,
      :web_server_hostname)
      SENSITIVE = [:cli_token]
      include Aws::Structure
    end

    # This section contains the Amazon Managed Workflows for Apache Airflow
    # (MWAA) API reference documentation to create an environment. For more
    # information, see [Get started with Amazon Managed Workflows for Apache
    # Airflow][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/get-started.html
    #
    # @note When making an API call, you may pass CreateEnvironmentInput
    #   data as a hash:
    #
    #       {
    #         airflow_configuration_options: {
    #           "ConfigKey" => "ConfigValue",
    #         },
    #         airflow_version: "AirflowVersion",
    #         dag_s3_path: "RelativePath", # required
    #         environment_class: "EnvironmentClass",
    #         execution_role_arn: "IamRoleArn", # required
    #         kms_key: "KmsKey",
    #         logging_configuration: {
    #           dag_processing_logs: {
    #             enabled: false, # required
    #             log_level: "CRITICAL", # required, accepts CRITICAL, ERROR, WARNING, INFO, DEBUG
    #           },
    #           scheduler_logs: {
    #             enabled: false, # required
    #             log_level: "CRITICAL", # required, accepts CRITICAL, ERROR, WARNING, INFO, DEBUG
    #           },
    #           task_logs: {
    #             enabled: false, # required
    #             log_level: "CRITICAL", # required, accepts CRITICAL, ERROR, WARNING, INFO, DEBUG
    #           },
    #           webserver_logs: {
    #             enabled: false, # required
    #             log_level: "CRITICAL", # required, accepts CRITICAL, ERROR, WARNING, INFO, DEBUG
    #           },
    #           worker_logs: {
    #             enabled: false, # required
    #             log_level: "CRITICAL", # required, accepts CRITICAL, ERROR, WARNING, INFO, DEBUG
    #           },
    #         },
    #         max_workers: 1,
    #         min_workers: 1,
    #         name: "EnvironmentName", # required
    #         network_configuration: { # required
    #           security_group_ids: ["SecurityGroupId"],
    #           subnet_ids: ["SubnetId"],
    #         },
    #         plugins_s3_object_version: "S3ObjectVersion",
    #         plugins_s3_path: "RelativePath",
    #         requirements_s3_object_version: "S3ObjectVersion",
    #         requirements_s3_path: "RelativePath",
    #         source_bucket_arn: "S3BucketArn", # required
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         webserver_access_mode: "PRIVATE_ONLY", # accepts PRIVATE_ONLY, PUBLIC_ONLY
    #         weekly_maintenance_window_start: "WeeklyMaintenanceWindowStart",
    #       }
    #
    # @!attribute [rw] airflow_configuration_options
    #   The Apache Airflow configuration setting you want to override in
    #   your environment. For more information, see [Environment
    #   configuration][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-env-variables.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] airflow_version
    #   The Apache Airflow version you want to use for your environment.
    #   @return [String]
    #
    # @!attribute [rw] dag_s3_path
    #   The relative path to the DAG folder on your Amazon S3 storage
    #   bucket. For example, `dags`. For more information, see [Importing
    #   DAGs on Amazon MWAA][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import.html
    #   @return [String]
    #
    # @!attribute [rw] environment_class
    #   The environment class you want to use for your environment. The
    #   environment class determines the size of the containers and database
    #   used for your Apache Airflow services.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the execution role for your
    #   environment. An execution role is an AWS Identity and Access
    #   Management (IAM) role that grants MWAA permission to access AWS
    #   services and resources used by your environment. For example,
    #   `arn:aws:iam::123456789:role/my-execution-role`. For more
    #   information, see [Managing access to Amazon Managed Workflows for
    #   Apache Airflow][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/manage-access.html
    #   @return [String]
    #
    # @!attribute [rw] kms_key
    #   The AWS Key Management Service (KMS) key to encrypt and decrypt the
    #   data in your environment. You can use an AWS KMS key managed by
    #   MWAA, or a custom KMS key (advanced). For more information, see
    #   [Customer master keys (CMKs)][1] in the AWS KMS developer guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html?icmpid=docs_console_unmapped#master_keys
    #   @return [String]
    #
    # @!attribute [rw] logging_configuration
    #   The Apache Airflow logs you want to send to Amazon CloudWatch Logs.
    #   @return [Types::LoggingConfigurationInput]
    #
    # @!attribute [rw] max_workers
    #   The maximum number of workers that you want to run in your
    #   environment. MWAA scales the number of Apache Airflow workers and
    #   the Fargate containers that run your tasks up to the number you
    #   specify in this field. When there are no more tasks running, and no
    #   more in the queue, MWAA disposes of the extra containers leaving the
    #   one worker that is included with your environment.
    #   @return [Integer]
    #
    # @!attribute [rw] min_workers
    #   The minimum number of workers that you want to run in your
    #   environment. MWAA scales the number of Apache Airflow workers and
    #   the Fargate containers that run your tasks up to the number you
    #   specify in the `MaxWorkers` field. When there are no more tasks
    #   running, and no more in the queue, MWAA disposes of the extra
    #   containers leaving the worker count you specify in the `MinWorkers`
    #   field.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of your MWAA environment.
    #   @return [String]
    #
    # @!attribute [rw] network_configuration
    #   The VPC networking components you want to use for your environment.
    #   At least two private subnet identifiers and one VPC security group
    #   identifier are required to create an environment. For more
    #   information, see [Creating the VPC network for a MWAA
    #   environment][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/vpc-mwaa.html
    #   @return [Types::NetworkConfiguration]
    #
    # @!attribute [rw] plugins_s3_object_version
    #   The `plugins.zip` file version you want to use.
    #   @return [String]
    #
    # @!attribute [rw] plugins_s3_path
    #   The relative path to the `plugins.zip` file on your Amazon S3
    #   storage bucket. For example, `plugins.zip`. If a relative path is
    #   provided in the request, then `PluginsS3ObjectVersion` is required.
    #   For more information, see [Importing DAGs on Amazon MWAA][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import.html
    #   @return [String]
    #
    # @!attribute [rw] requirements_s3_object_version
    #   The `requirements.txt` file version you want to use.
    #   @return [String]
    #
    # @!attribute [rw] requirements_s3_path
    #   The relative path to the `requirements.txt` file on your Amazon S3
    #   storage bucket. For example, `requirements.txt`. If a relative path
    #   is provided in the request, then `RequirementsS3ObjectVersion` is
    #   required. For more information, see [Importing DAGs on Amazon
    #   MWAA][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import.html
    #   @return [String]
    #
    # @!attribute [rw] source_bucket_arn
    #   The Amazon Resource Name (ARN) of your Amazon S3 storage bucket. For
    #   example, `arn:aws:s3:::airflow-mybucketname`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The metadata tags you want to attach to your environment. For more
    #   information, see [Tagging AWS resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] webserver_access_mode
    #   The networking access of your Apache Airflow web server. A public
    #   network allows your Airflow UI to be accessed over the Internet by
    #   users granted access in your IAM policy. A private network limits
    #   access of your Airflow UI to users within your VPC. For more
    #   information, see [Creating the VPC network for a MWAA
    #   environment][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/vpc-mwaa.html
    #   @return [String]
    #
    # @!attribute [rw] weekly_maintenance_window_start
    #   The day and time you want MWAA to start weekly maintenance updates
    #   on your environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/CreateEnvironmentInput AWS API Documentation
    #
    class CreateEnvironmentInput < Struct.new(
      :airflow_configuration_options,
      :airflow_version,
      :dag_s3_path,
      :environment_class,
      :execution_role_arn,
      :kms_key,
      :logging_configuration,
      :max_workers,
      :min_workers,
      :name,
      :network_configuration,
      :plugins_s3_object_version,
      :plugins_s3_path,
      :requirements_s3_object_version,
      :requirements_s3_path,
      :source_bucket_arn,
      :tags,
      :webserver_access_mode,
      :weekly_maintenance_window_start)
      SENSITIVE = [:airflow_configuration_options]
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The resulting Amazon MWAA envirnonment ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/CreateEnvironmentOutput AWS API Documentation
    #
    class CreateEnvironmentOutput < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateWebLoginTokenRequest
    #   data as a hash:
    #
    #       {
    #         name: "EnvironmentName", # required
    #       }
    #
    # @!attribute [rw] name
    #   Create an Airflow Web UI login token request for a MWAA environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/CreateWebLoginTokenRequest AWS API Documentation
    #
    class CreateWebLoginTokenRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] web_server_hostname
    #   Create an Airflow Web UI login token response for the provided
    #   webserver hostname.
    #   @return [String]
    #
    # @!attribute [rw] web_token
    #   Create an Airflow Web UI login token response for the provided JWT
    #   token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/CreateWebLoginTokenResponse AWS API Documentation
    #
    class CreateWebLoginTokenResponse < Struct.new(
      :web_server_hostname,
      :web_token)
      SENSITIVE = [:web_token]
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteEnvironmentInput
    #   data as a hash:
    #
    #       {
    #         name: "EnvironmentName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the environment to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/DeleteEnvironmentInput AWS API Documentation
    #
    class DeleteEnvironmentInput < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/DeleteEnvironmentOutput AWS API Documentation
    #
    class DeleteEnvironmentOutput < Aws::EmptyStructure; end

    # Internal only API.
    #
    # @note When making an API call, you may pass Dimension
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #         value: "String", # required
    #       }
    #
    # @!attribute [rw] name
    #   Internal only API.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Internal only API.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/Dimension AWS API Documentation
    #
    class Dimension < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Amazon MWAA environment.
    #
    # @!attribute [rw] airflow_configuration_options
    #   The Airflow Configuration Options of the Amazon MWAA Environment.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] airflow_version
    #   The AirflowV ersion of the Amazon MWAA Environment.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the Amazon MWAA Environment.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The Created At date of the Amazon MWAA Environment.
    #   @return [Time]
    #
    # @!attribute [rw] dag_s3_path
    #   The Dags S3 Path of the Amazon MWAA Environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_class
    #   The Environment Class (size) of the Amazon MWAA Environment.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The Execution Role ARN of the Amazon MWAA Environment.
    #   @return [String]
    #
    # @!attribute [rw] kms_key
    #   The Kms Key of the Amazon MWAA Environment.
    #   @return [String]
    #
    # @!attribute [rw] last_update
    #   Last update information for the environment.
    #   @return [Types::LastUpdate]
    #
    # @!attribute [rw] logging_configuration
    #   The Logging Configuration of the Amazon MWAA Environment.
    #   @return [Types::LoggingConfiguration]
    #
    # @!attribute [rw] max_workers
    #   The maximum number of workers to run in your Amazon MWAA
    #   Environment.
    #   @return [Integer]
    #
    # @!attribute [rw] min_workers
    #   The minimum number of workers to run in your Amazon MWAA
    #   Environment.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the Amazon MWAA Environment.
    #   @return [String]
    #
    # @!attribute [rw] network_configuration
    #   Provide the security group and subnet IDs for the workers and
    #   scheduler.
    #   @return [Types::NetworkConfiguration]
    #
    # @!attribute [rw] plugins_s3_object_version
    #   The Plugins.zip S3 Object Version of the Amazon MWAA Environment.
    #   @return [String]
    #
    # @!attribute [rw] plugins_s3_path
    #   The Plugins.zip S3 Path of the Amazon MWAA Environment.
    #   @return [String]
    #
    # @!attribute [rw] requirements_s3_object_version
    #   The Requirements.txt file S3 Object Version of the Amazon MWAA
    #   Environment.
    #   @return [String]
    #
    # @!attribute [rw] requirements_s3_path
    #   The Requirement.txt S3 Path of the Amazon MWAA Environment.
    #   @return [String]
    #
    # @!attribute [rw] service_role_arn
    #   The Service Role ARN of the Amazon MWAA Environment.
    #   @return [String]
    #
    # @!attribute [rw] source_bucket_arn
    #   The Source S3 Bucket ARN of the Amazon MWAA Environment.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Amazon MWAA Environment.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The Tags of the Amazon MWAA Environment.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] webserver_access_mode
    #   The Webserver Access Mode of the Amazon MWAA Environment (public or
    #   private only).
    #   @return [String]
    #
    # @!attribute [rw] webserver_url
    #   The Webserver URL of the Amazon MWAA Environment.
    #   @return [String]
    #
    # @!attribute [rw] weekly_maintenance_window_start
    #   The Weekly Maintenance Window Start of the Amazon MWAA Environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/Environment AWS API Documentation
    #
    class Environment < Struct.new(
      :airflow_configuration_options,
      :airflow_version,
      :arn,
      :created_at,
      :dag_s3_path,
      :environment_class,
      :execution_role_arn,
      :kms_key,
      :last_update,
      :logging_configuration,
      :max_workers,
      :min_workers,
      :name,
      :network_configuration,
      :plugins_s3_object_version,
      :plugins_s3_path,
      :requirements_s3_object_version,
      :requirements_s3_path,
      :service_role_arn,
      :source_bucket_arn,
      :status,
      :tags,
      :webserver_access_mode,
      :webserver_url,
      :weekly_maintenance_window_start)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetEnvironmentInput
    #   data as a hash:
    #
    #       {
    #         name: "EnvironmentName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the environment to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/GetEnvironmentInput AWS API Documentation
    #
    class GetEnvironmentInput < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environment
    #   A JSON blob with environment details.
    #   @return [Types::Environment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/GetEnvironmentOutput AWS API Documentation
    #
    class GetEnvironmentOutput < Struct.new(
      :environment)
      SENSITIVE = []
      include Aws::Structure
    end

    # InternalServerException: An internal error has occurred.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Last update information for the environment.
    #
    # @!attribute [rw] created_at
    #   Time that last update occurred.
    #   @return [Time]
    #
    # @!attribute [rw] error
    #   Error string of last update, if applicable.
    #   @return [Types::UpdateError]
    #
    # @!attribute [rw] status
    #   Status of last update of SUCCESS, FAILED, CREATING, DELETING.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/LastUpdate AWS API Documentation
    #
    class LastUpdate < Struct.new(
      :created_at,
      :error,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListEnvironmentsInput
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] max_results
    #   The maximum results when listing MWAA environments.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The Next Token when listing MWAA environments.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/ListEnvironmentsInput AWS API Documentation
    #
    class ListEnvironmentsInput < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] environments
    #   The list of Amazon MWAA Environments.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The Next Token when listing MWAA environments.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/ListEnvironmentsOutput AWS API Documentation
    #
    class ListEnvironmentsOutput < Struct.new(
      :environments,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "EnvironmentArn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the MWAA environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags of the MWAA environments.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Logging Configuration of your Amazon MWAA environment.
    #
    # @!attribute [rw] dag_processing_logs
    #   A JSON blob that provides configuration to use for logging with
    #   respect to the various Apache Airflow services: DagProcessingLogs,
    #   SchedulerLogs, TaskLogs, WebserverLogs, and WorkerLogs.
    #   @return [Types::ModuleLoggingConfiguration]
    #
    # @!attribute [rw] scheduler_logs
    #   A JSON blob that provides configuration to use for logging with
    #   respect to the various Apache Airflow services: DagProcessingLogs,
    #   SchedulerLogs, TaskLogs, WebserverLogs, and WorkerLogs.
    #   @return [Types::ModuleLoggingConfiguration]
    #
    # @!attribute [rw] task_logs
    #   A JSON blob that provides configuration to use for logging with
    #   respect to the various Apache Airflow services: DagProcessingLogs,
    #   SchedulerLogs, TaskLogs, WebserverLogs, and WorkerLogs.
    #   @return [Types::ModuleLoggingConfiguration]
    #
    # @!attribute [rw] webserver_logs
    #   A JSON blob that provides configuration to use for logging with
    #   respect to the various Apache Airflow services: DagProcessingLogs,
    #   SchedulerLogs, TaskLogs, WebserverLogs, and WorkerLogs.
    #   @return [Types::ModuleLoggingConfiguration]
    #
    # @!attribute [rw] worker_logs
    #   A JSON blob that provides configuration to use for logging with
    #   respect to the various Apache Airflow services: DagProcessingLogs,
    #   SchedulerLogs, TaskLogs, WebserverLogs, and WorkerLogs.
    #   @return [Types::ModuleLoggingConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/LoggingConfiguration AWS API Documentation
    #
    class LoggingConfiguration < Struct.new(
      :dag_processing_logs,
      :scheduler_logs,
      :task_logs,
      :webserver_logs,
      :worker_logs)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Logging Configuration of your Amazon MWAA environment.
    #
    # @note When making an API call, you may pass LoggingConfigurationInput
    #   data as a hash:
    #
    #       {
    #         dag_processing_logs: {
    #           enabled: false, # required
    #           log_level: "CRITICAL", # required, accepts CRITICAL, ERROR, WARNING, INFO, DEBUG
    #         },
    #         scheduler_logs: {
    #           enabled: false, # required
    #           log_level: "CRITICAL", # required, accepts CRITICAL, ERROR, WARNING, INFO, DEBUG
    #         },
    #         task_logs: {
    #           enabled: false, # required
    #           log_level: "CRITICAL", # required, accepts CRITICAL, ERROR, WARNING, INFO, DEBUG
    #         },
    #         webserver_logs: {
    #           enabled: false, # required
    #           log_level: "CRITICAL", # required, accepts CRITICAL, ERROR, WARNING, INFO, DEBUG
    #         },
    #         worker_logs: {
    #           enabled: false, # required
    #           log_level: "CRITICAL", # required, accepts CRITICAL, ERROR, WARNING, INFO, DEBUG
    #         },
    #       }
    #
    # @!attribute [rw] dag_processing_logs
    #   A JSON blob that provides configuration to use for logging with
    #   respect to the various Apache Airflow services: DagProcessingLogs,
    #   SchedulerLogs, TaskLogs, WebserverLogs, and WorkerLogs.
    #   @return [Types::ModuleLoggingConfigurationInput]
    #
    # @!attribute [rw] scheduler_logs
    #   A JSON blob that provides configuration to use for logging with
    #   respect to the various Apache Airflow services: DagProcessingLogs,
    #   SchedulerLogs, TaskLogs, WebserverLogs, and WorkerLogs.
    #   @return [Types::ModuleLoggingConfigurationInput]
    #
    # @!attribute [rw] task_logs
    #   A JSON blob that provides configuration to use for logging with
    #   respect to the various Apache Airflow services: DagProcessingLogs,
    #   SchedulerLogs, TaskLogs, WebserverLogs, and WorkerLogs.
    #   @return [Types::ModuleLoggingConfigurationInput]
    #
    # @!attribute [rw] webserver_logs
    #   A JSON blob that provides configuration to use for logging with
    #   respect to the various Apache Airflow services: DagProcessingLogs,
    #   SchedulerLogs, TaskLogs, WebserverLogs, and WorkerLogs.
    #   @return [Types::ModuleLoggingConfigurationInput]
    #
    # @!attribute [rw] worker_logs
    #   A JSON blob that provides configuration to use for logging with
    #   respect to the various Apache Airflow services: DagProcessingLogs,
    #   SchedulerLogs, TaskLogs, WebserverLogs, and WorkerLogs.
    #   @return [Types::ModuleLoggingConfigurationInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/LoggingConfigurationInput AWS API Documentation
    #
    class LoggingConfigurationInput < Struct.new(
      :dag_processing_logs,
      :scheduler_logs,
      :task_logs,
      :webserver_logs,
      :worker_logs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Internal only API.
    #
    # @note When making an API call, you may pass MetricDatum
    #   data as a hash:
    #
    #       {
    #         dimensions: [
    #           {
    #             name: "String", # required
    #             value: "String", # required
    #           },
    #         ],
    #         metric_name: "String", # required
    #         statistic_values: {
    #           maximum: 1.0,
    #           minimum: 1.0,
    #           sample_count: 1,
    #           sum: 1.0,
    #         },
    #         timestamp: Time.now, # required
    #         unit: "Seconds", # accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
    #         value: 1.0,
    #       }
    #
    # @!attribute [rw] dimensions
    #   Internal only API.
    #   @return [Array<Types::Dimension>]
    #
    # @!attribute [rw] metric_name
    #   Internal only API.
    #   @return [String]
    #
    # @!attribute [rw] statistic_values
    #   Internal only API.
    #   @return [Types::StatisticSet]
    #
    # @!attribute [rw] timestamp
    #   Internal only API.
    #   @return [Time]
    #
    # @!attribute [rw] unit
    #   Unit
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Internal only API.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/MetricDatum AWS API Documentation
    #
    class MetricDatum < Struct.new(
      :dimensions,
      :metric_name,
      :statistic_values,
      :timestamp,
      :unit,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON blob that provides configuration to use for logging with
    # respect to the various Apache Airflow services: DagProcessingLogs,
    # SchedulerLogs, TaskLogs, WebserverLogs, and WorkerLogs.
    #
    # @!attribute [rw] cloud_watch_log_group_arn
    #   Provides the ARN for the CloudWatch group where the logs will be
    #   published.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Defines that the logging module is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] log_level
    #   Defines the log level, which can be CRITICAL, ERROR, WARNING, or
    #   INFO.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/ModuleLoggingConfiguration AWS API Documentation
    #
    class ModuleLoggingConfiguration < Struct.new(
      :cloud_watch_log_group_arn,
      :enabled,
      :log_level)
      SENSITIVE = []
      include Aws::Structure
    end

    # A JSON blob that provides configuration to use for logging with
    # respect to the various Apache Airflow services: DagProcessingLogs,
    # SchedulerLogs, TaskLogs, WebserverLogs, and WorkerLogs.
    #
    # @note When making an API call, you may pass ModuleLoggingConfigurationInput
    #   data as a hash:
    #
    #       {
    #         enabled: false, # required
    #         log_level: "CRITICAL", # required, accepts CRITICAL, ERROR, WARNING, INFO, DEBUG
    #       }
    #
    # @!attribute [rw] enabled
    #   Defines that the logging module is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] log_level
    #   Defines the log level, which can be CRITICAL, ERROR, WARNING, or
    #   INFO.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/ModuleLoggingConfigurationInput AWS API Documentation
    #
    class ModuleLoggingConfigurationInput < Struct.new(
      :enabled,
      :log_level)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provide the security group and subnet IDs for the workers and
    # scheduler.
    #
    # @note When making an API call, you may pass NetworkConfiguration
    #   data as a hash:
    #
    #       {
    #         security_group_ids: ["SecurityGroupId"],
    #         subnet_ids: ["SubnetId"],
    #       }
    #
    # @!attribute [rw] security_group_ids
    #   A JSON list of 1 or more security groups IDs by name, in the same
    #   VPC as the subnets.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_ids
    #   Provide a JSON list of 2 subnet IDs by name. These must be private
    #   subnets, in the same VPC, in two different availability zones.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/NetworkConfiguration AWS API Documentation
    #
    class NetworkConfiguration < Struct.new(
      :security_group_ids,
      :subnet_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PublishMetricsInput
    #   data as a hash:
    #
    #       {
    #         environment_name: "EnvironmentName", # required
    #         metric_data: [ # required
    #           {
    #             dimensions: [
    #               {
    #                 name: "String", # required
    #                 value: "String", # required
    #               },
    #             ],
    #             metric_name: "String", # required
    #             statistic_values: {
    #               maximum: 1.0,
    #               minimum: 1.0,
    #               sample_count: 1,
    #               sum: 1.0,
    #             },
    #             timestamp: Time.now, # required
    #             unit: "Seconds", # accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
    #             value: 1.0,
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] environment_name
    #   Publishes environment metric data to Amazon CloudWatch.
    #   @return [String]
    #
    # @!attribute [rw] metric_data
    #   Publishes metric data points to Amazon CloudWatch. CloudWatch
    #   associates the data points with the specified metrica.
    #   @return [Array<Types::MetricDatum>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/PublishMetricsInput AWS API Documentation
    #
    class PublishMetricsInput < Struct.new(
      :environment_name,
      :metric_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/PublishMetricsOutput AWS API Documentation
    #
    class PublishMetricsOutput < Aws::EmptyStructure; end

    # ResourceNotFoundException: The resource is not available.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Internal only API.
    #
    # @note When making an API call, you may pass StatisticSet
    #   data as a hash:
    #
    #       {
    #         maximum: 1.0,
    #         minimum: 1.0,
    #         sample_count: 1,
    #         sum: 1.0,
    #       }
    #
    # @!attribute [rw] maximum
    #   Internal only API.
    #   @return [Float]
    #
    # @!attribute [rw] minimum
    #   Internal only API.
    #   @return [Float]
    #
    # @!attribute [rw] sample_count
    #   Internal only API.
    #   @return [Integer]
    #
    # @!attribute [rw] sum
    #   Internal only API.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/StatisticSet AWS API Documentation
    #
    class StatisticSet < Struct.new(
      :maximum,
      :minimum,
      :sample_count,
      :sum)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "EnvironmentArn", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The tag resource ARN of the MWAA environments.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag resource tag of the MWAA environments.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/TagResourceOutput AWS API Documentation
    #
    class TagResourceOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UntagResourceInput
    #   data as a hash:
    #
    #       {
    #         resource_arn: "EnvironmentArn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The tag resource ARN of the MWAA environments.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag resource key of the MWAA environments.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/UntagResourceOutput AWS API Documentation
    #
    class UntagResourceOutput < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateEnvironmentInput
    #   data as a hash:
    #
    #       {
    #         airflow_configuration_options: {
    #           "ConfigKey" => "ConfigValue",
    #         },
    #         airflow_version: "AirflowVersion",
    #         dag_s3_path: "RelativePath",
    #         environment_class: "EnvironmentClass",
    #         execution_role_arn: "IamRoleArn",
    #         logging_configuration: {
    #           dag_processing_logs: {
    #             enabled: false, # required
    #             log_level: "CRITICAL", # required, accepts CRITICAL, ERROR, WARNING, INFO, DEBUG
    #           },
    #           scheduler_logs: {
    #             enabled: false, # required
    #             log_level: "CRITICAL", # required, accepts CRITICAL, ERROR, WARNING, INFO, DEBUG
    #           },
    #           task_logs: {
    #             enabled: false, # required
    #             log_level: "CRITICAL", # required, accepts CRITICAL, ERROR, WARNING, INFO, DEBUG
    #           },
    #           webserver_logs: {
    #             enabled: false, # required
    #             log_level: "CRITICAL", # required, accepts CRITICAL, ERROR, WARNING, INFO, DEBUG
    #           },
    #           worker_logs: {
    #             enabled: false, # required
    #             log_level: "CRITICAL", # required, accepts CRITICAL, ERROR, WARNING, INFO, DEBUG
    #           },
    #         },
    #         max_workers: 1,
    #         min_workers: 1,
    #         name: "EnvironmentName", # required
    #         network_configuration: {
    #           security_group_ids: ["SecurityGroupId"], # required
    #         },
    #         plugins_s3_object_version: "S3ObjectVersion",
    #         plugins_s3_path: "RelativePath",
    #         requirements_s3_object_version: "S3ObjectVersion",
    #         requirements_s3_path: "RelativePath",
    #         source_bucket_arn: "S3BucketArn",
    #         webserver_access_mode: "PRIVATE_ONLY", # accepts PRIVATE_ONLY, PUBLIC_ONLY
    #         weekly_maintenance_window_start: "WeeklyMaintenanceWindowStart",
    #       }
    #
    # @!attribute [rw] airflow_configuration_options
    #   The Airflow Configuration Options to update of your Amazon MWAA
    #   environment.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] airflow_version
    #   The Airflow Version to update of your Amazon MWAA environment.
    #   @return [String]
    #
    # @!attribute [rw] dag_s3_path
    #   The Dags folder S3 Path to update of your Amazon MWAA environment.
    #   @return [String]
    #
    # @!attribute [rw] environment_class
    #   The Environment Class to update of your Amazon MWAA environment.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The Executio Role ARN to update of your Amazon MWAA environment.
    #   @return [String]
    #
    # @!attribute [rw] logging_configuration
    #   The Logging Configuration to update of your Amazon MWAA environment.
    #   @return [Types::LoggingConfigurationInput]
    #
    # @!attribute [rw] max_workers
    #   The maximum number of workers to update of your Amazon MWAA
    #   environment.
    #   @return [Integer]
    #
    # @!attribute [rw] min_workers
    #   The minimum number of workers to update of your Amazon MWAA
    #   environment.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of your Amazon MWAA environment that you wish to update.
    #   @return [String]
    #
    # @!attribute [rw] network_configuration
    #   The Network Configuration to update of your Amazon MWAA environment.
    #   @return [Types::UpdateNetworkConfigurationInput]
    #
    # @!attribute [rw] plugins_s3_object_version
    #   The Plugins.zip S3 Object Version to update of your Amazon MWAA
    #   environment.
    #   @return [String]
    #
    # @!attribute [rw] plugins_s3_path
    #   The Plugins.zip S3 Path to update of your Amazon MWAA environment.
    #   @return [String]
    #
    # @!attribute [rw] requirements_s3_object_version
    #   The Requirements.txt S3 ObjectV ersion to update of your Amazon MWAA
    #   environment.
    #   @return [String]
    #
    # @!attribute [rw] requirements_s3_path
    #   The Requirements.txt S3 Path to update of your Amazon MWAA
    #   environment.
    #   @return [String]
    #
    # @!attribute [rw] source_bucket_arn
    #   The S3 Source Bucket ARN to update of your Amazon MWAA environment.
    #   @return [String]
    #
    # @!attribute [rw] webserver_access_mode
    #   The Webserver Access Mode to update of your Amazon MWAA environment.
    #   @return [String]
    #
    # @!attribute [rw] weekly_maintenance_window_start
    #   The Weekly Maintenance Window Start to update of your Amazon MWAA
    #   environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/UpdateEnvironmentInput AWS API Documentation
    #
    class UpdateEnvironmentInput < Struct.new(
      :airflow_configuration_options,
      :airflow_version,
      :dag_s3_path,
      :environment_class,
      :execution_role_arn,
      :logging_configuration,
      :max_workers,
      :min_workers,
      :name,
      :network_configuration,
      :plugins_s3_object_version,
      :plugins_s3_path,
      :requirements_s3_object_version,
      :requirements_s3_path,
      :source_bucket_arn,
      :webserver_access_mode,
      :weekly_maintenance_window_start)
      SENSITIVE = [:airflow_configuration_options]
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN to update of your Amazon MWAA environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/UpdateEnvironmentOutput AWS API Documentation
    #
    class UpdateEnvironmentOutput < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Error information of update, if applicable.
    #
    # @!attribute [rw] error_code
    #   Error code of update.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   Error message of update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/UpdateError AWS API Documentation
    #
    class UpdateError < Struct.new(
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provide the security group and subnet IDs for the workers and
    # scheduler.
    #
    # @note When making an API call, you may pass UpdateNetworkConfigurationInput
    #   data as a hash:
    #
    #       {
    #         security_group_ids: ["SecurityGroupId"], # required
    #       }
    #
    # @!attribute [rw] security_group_ids
    #   Provide a JSON list of 1 or more security groups IDs by name, in the
    #   same VPC as the subnets.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/UpdateNetworkConfigurationInput AWS API Documentation
    #
    class UpdateNetworkConfigurationInput < Struct.new(
      :security_group_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # ValidationException: The provided input is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
