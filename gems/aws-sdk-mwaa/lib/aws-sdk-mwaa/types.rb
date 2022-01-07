# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MWAA
  module Types

    # Access to the Apache Airflow Web UI or CLI has been denied due to
    # insufficient permissions. To learn more, see [Accessing an Amazon MWAA
    # environment][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/access-policies.html
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
    #   The name of the Amazon MWAA environment. For example,
    #   `MyMWAAEnvironment`.
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
    #   An Airflow CLI login token.
    #   @return [String]
    #
    # @!attribute [rw] web_server_hostname
    #   The Airflow web server hostname for the environment.
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
    #         schedulers: 1,
    #         source_bucket_arn: "S3BucketArn", # required
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         webserver_access_mode: "PRIVATE_ONLY", # accepts PRIVATE_ONLY, PUBLIC_ONLY
    #         weekly_maintenance_window_start: "WeeklyMaintenanceWindowStart",
    #       }
    #
    # @!attribute [rw] airflow_configuration_options
    #   A list of key-value pairs containing the Apache Airflow
    #   configuration options you want to attach to your environment. To
    #   learn more, see [Apache Airflow configuration options][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-env-variables.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] airflow_version
    #   The Apache Airflow version for your environment. If no value is
    #   specified, defaults to the latest version. Valid values: `1.10.12`,
    #   `2.0.2`. To learn more, see [Apache Airflow versions on Amazon
    #   Managed Workflows for Apache Airflow (MWAA)][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/airflow-versions.html
    #   @return [String]
    #
    # @!attribute [rw] dag_s3_path
    #   The relative path to the DAGs folder on your Amazon S3 bucket. For
    #   example, `dags`. To learn more, see [Adding or updating DAGs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-folder.html
    #   @return [String]
    #
    # @!attribute [rw] environment_class
    #   The environment class type. Valid values: `mw1.small`, `mw1.medium`,
    #   `mw1.large`. To learn more, see [Amazon MWAA environment class][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/environment-class.html
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the execution role for your
    #   environment. An execution role is an Amazon Web Services Identity
    #   and Access Management (IAM) role that grants MWAA permission to
    #   access Amazon Web Services services and resources used by your
    #   environment. For example,
    #   `arn:aws:iam::123456789:role/my-execution-role`. To learn more, see
    #   [Amazon MWAA Execution role][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-create-role.html
    #   @return [String]
    #
    # @!attribute [rw] kms_key
    #   The Amazon Web Services Key Management Service (KMS) key to encrypt
    #   the data in your environment. You can use an Amazon Web Services
    #   owned CMK, or a Customer managed CMK (advanced). To learn more, see
    #   [Create an Amazon MWAA environment][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/create-environment.html
    #   @return [String]
    #
    # @!attribute [rw] logging_configuration
    #   Defines the Apache Airflow logs to send to CloudWatch Logs.
    #   @return [Types::LoggingConfigurationInput]
    #
    # @!attribute [rw] max_workers
    #   The maximum number of workers that you want to run in your
    #   environment. MWAA scales the number of Apache Airflow workers up to
    #   the number you specify in the `MaxWorkers` field. For example, `20`.
    #   When there are no more tasks running, and no more in the queue, MWAA
    #   disposes of the extra workers leaving the one worker that is
    #   included with your environment, or the number you specify in
    #   `MinWorkers`.
    #   @return [Integer]
    #
    # @!attribute [rw] min_workers
    #   The minimum number of workers that you want to run in your
    #   environment. MWAA scales the number of Apache Airflow workers up to
    #   the number you specify in the `MaxWorkers` field. When there are no
    #   more tasks running, and no more in the queue, MWAA disposes of the
    #   extra workers leaving the worker count you specify in the
    #   `MinWorkers` field. For example, `2`.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the Amazon MWAA environment. For example,
    #   `MyMWAAEnvironment`.
    #   @return [String]
    #
    # @!attribute [rw] network_configuration
    #   The VPC networking components used to secure and enable network
    #   traffic between the Amazon Web Services resources for your
    #   environment. To learn more, see [About networking on Amazon
    #   MWAA][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/networking-about.html
    #   @return [Types::NetworkConfiguration]
    #
    # @!attribute [rw] plugins_s3_object_version
    #   The version of the plugins.zip file on your Amazon S3 bucket. A
    #   version must be specified each time a plugins.zip file is updated.
    #   To learn more, see [How S3 Versioning works][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html
    #   @return [String]
    #
    # @!attribute [rw] plugins_s3_path
    #   The relative path to the `plugins.zip` file on your Amazon S3
    #   bucket. For example, `plugins.zip`. If specified, then the
    #   plugins.zip version is required. To learn more, see [Installing
    #   custom plugins][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import-plugins.html
    #   @return [String]
    #
    # @!attribute [rw] requirements_s3_object_version
    #   The version of the requirements.txt file on your Amazon S3 bucket. A
    #   version must be specified each time a requirements.txt file is
    #   updated. To learn more, see [How S3 Versioning works][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html
    #   @return [String]
    #
    # @!attribute [rw] requirements_s3_path
    #   The relative path to the `requirements.txt` file on your Amazon S3
    #   bucket. For example, `requirements.txt`. If specified, then a file
    #   version is required. To learn more, see [Installing Python
    #   dependencies][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/working-dags-dependencies.html
    #   @return [String]
    #
    # @!attribute [rw] schedulers
    #   The number of Apache Airflow schedulers to run in your environment.
    #   Valid values:
    #
    #   * v2.0.2 - Accepts between 2 to 5. Defaults to 2.
    #
    #   * v1.10.12 - Accepts 1.
    #   @return [Integer]
    #
    # @!attribute [rw] source_bucket_arn
    #   The Amazon Resource Name (ARN) of the Amazon S3 bucket where your
    #   DAG code and supporting files are stored. For example,
    #   `arn:aws:s3:::my-airflow-bucket-unique-name`. To learn more, see
    #   [Create an Amazon S3 bucket for Amazon MWAA][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-s3-bucket.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value tag pairs you want to associate to your environment.
    #   For example, `"Environment": "Staging"`. To learn more, see [Tagging
    #   Amazon Web Services resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] webserver_access_mode
    #   The Apache Airflow *Web server* access mode. To learn more, see
    #   [Apache Airflow access modes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-networking.html
    #   @return [String]
    #
    # @!attribute [rw] weekly_maintenance_window_start
    #   The day and time of the week in Coordinated Universal Time (UTC)
    #   24-hour standard time to start weekly maintenance updates of your
    #   environment in the following format: `DAY:HH:MM`. For example:
    #   `TUE:03:30`. You can specify a start time in 30 minute increments
    #   only.
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
      :schedulers,
      :source_bucket_arn,
      :tags,
      :webserver_access_mode,
      :weekly_maintenance_window_start)
      SENSITIVE = [:airflow_configuration_options]
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) returned in the response for the
    #   environment.
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
    #   The name of the Amazon MWAA environment. For example,
    #   `MyMWAAEnvironment`.
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
    #   The Airflow web server hostname for the environment.
    #   @return [String]
    #
    # @!attribute [rw] web_token
    #   An Airflow web server login token.
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
    #   The name of the Amazon MWAA environment. For example,
    #   `MyMWAAEnvironment`.
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

    # **Internal only**. Represents the dimensions of a metric. To learn
    # more about the metrics published to Amazon CloudWatch, see [Amazon
    # MWAA performance metrics in Amazon CloudWatch][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/cw-metrics.html
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
    #   **Internal only**. The name of the dimension.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   **Internal only**. The value of the dimension.
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

    # Describes an Amazon Managed Workflows for Apache Airflow (MWAA)
    # environment.
    #
    # @!attribute [rw] airflow_configuration_options
    #   A list of key-value pairs containing the Apache Airflow
    #   configuration options attached to your environment. To learn more,
    #   see [Apache Airflow configuration options][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-env-variables.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] airflow_version
    #   The Apache Airflow version on your environment. Valid values:
    #   `1.10.12`, `2.0.2`.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the Amazon MWAA environment.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The day and time the environment was created.
    #   @return [Time]
    #
    # @!attribute [rw] dag_s3_path
    #   The relative path to the DAGs folder on your Amazon S3 bucket. For
    #   example, `dags`. To learn more, see [Adding or updating DAGs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-folder.html
    #   @return [String]
    #
    # @!attribute [rw] environment_class
    #   The environment class type. Valid values: `mw1.small`, `mw1.medium`,
    #   `mw1.large`. To learn more, see [Amazon MWAA environment class][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/environment-class.html
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the execution role in IAM that
    #   allows MWAA to access Amazon Web Services resources in your
    #   environment. For example,
    #   `arn:aws:iam::123456789:role/my-execution-role`. To learn more, see
    #   [Amazon MWAA Execution role][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-create-role.html
    #   @return [String]
    #
    # @!attribute [rw] kms_key
    #   The Amazon Web Services Key Management Service (KMS) encryption key
    #   used to encrypt the data in your environment.
    #   @return [String]
    #
    # @!attribute [rw] last_update
    #   The status of the last update on the environment.
    #   @return [Types::LastUpdate]
    #
    # @!attribute [rw] logging_configuration
    #   The Apache Airflow logs published to CloudWatch Logs.
    #   @return [Types::LoggingConfiguration]
    #
    # @!attribute [rw] max_workers
    #   The maximum number of workers that run in your environment. For
    #   example, `20`.
    #   @return [Integer]
    #
    # @!attribute [rw] min_workers
    #   The minimum number of workers that run in your environment. For
    #   example, `2`.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the Amazon MWAA environment. For example,
    #   `MyMWAAEnvironment`.
    #   @return [String]
    #
    # @!attribute [rw] network_configuration
    #   Describes the VPC networking components used to secure and enable
    #   network traffic between the Amazon Web Services resources for your
    #   environment. To learn more, see [About networking on Amazon
    #   MWAA][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/networking-about.html
    #   @return [Types::NetworkConfiguration]
    #
    # @!attribute [rw] plugins_s3_object_version
    #   The version of the plugins.zip file on your Amazon S3 bucket. To
    #   learn more, see [Installing custom plugins][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import-plugins.html
    #   @return [String]
    #
    # @!attribute [rw] plugins_s3_path
    #   The relative path to the `plugins.zip` file on your Amazon S3
    #   bucket. For example, `plugins.zip`. To learn more, see [Installing
    #   custom plugins][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import-plugins.html
    #   @return [String]
    #
    # @!attribute [rw] requirements_s3_object_version
    #   The version of the requirements.txt file on your Amazon S3 bucket.
    #   To learn more, see [Installing Python dependencies][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/working-dags-dependencies.html
    #   @return [String]
    #
    # @!attribute [rw] requirements_s3_path
    #   The relative path to the `requirements.txt` file on your Amazon S3
    #   bucket. For example, `requirements.txt`. To learn more, see
    #   [Installing Python dependencies][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/working-dags-dependencies.html
    #   @return [String]
    #
    # @!attribute [rw] schedulers
    #   The number of Apache Airflow schedulers that run in your Amazon MWAA
    #   environment.
    #   @return [Integer]
    #
    # @!attribute [rw] service_role_arn
    #   The Amazon Resource Name (ARN) for the service-linked role of the
    #   environment. To learn more, see [Amazon MWAA Service-linked
    #   role][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-slr.html
    #   @return [String]
    #
    # @!attribute [rw] source_bucket_arn
    #   The Amazon Resource Name (ARN) of the Amazon S3 bucket where your
    #   DAG code and supporting files are stored. For example,
    #   `arn:aws:s3:::my-airflow-bucket-unique-name`. To learn more, see
    #   [Create an Amazon S3 bucket for Amazon MWAA][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-s3-bucket.html
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Amazon MWAA environment. Valid values:
    #
    #   * `CREATING` - Indicates the request to create the environment is in
    #     progress.
    #
    #   * `CREATE_FAILED` - Indicates the request to create the environment
    #     failed, and the environment could not be created.
    #
    #   * `AVAILABLE` - Indicates the request was successful and the
    #     environment is ready to use.
    #
    #   * `UPDATING` - Indicates the request to update the environment is in
    #     progress.
    #
    #   * `DELETING` - Indicates the request to delete the environment is in
    #     progress.
    #
    #   * `DELETED` - Indicates the request to delete the environment is
    #     complete, and the environment has been deleted.
    #
    #   * `UNAVAILABLE` - Indicates the request failed, but the environment
    #     was unable to rollback and is not in a stable state.
    #
    #   * `UPDATE_FAILED` - Indicates the request to update the environment
    #     failed, and the environment has rolled back successfully and is
    #     ready to use.
    #
    #   We recommend reviewing our troubleshooting guide for a list of
    #   common errors and their solutions. To learn more, see [Amazon MWAA
    #   troubleshooting][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/troubleshooting.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value tag pairs associated to your environment. For example,
    #   `"Environment": "Staging"`. To learn more, see [Tagging Amazon Web
    #   Services resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] webserver_access_mode
    #   The Apache Airflow *Web server* access mode. To learn more, see
    #   [Apache Airflow access modes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-networking.html
    #   @return [String]
    #
    # @!attribute [rw] webserver_url
    #   The Apache Airflow *Web server* host name for the Amazon MWAA
    #   environment. To learn more, see [Accessing the Apache Airflow
    #   UI][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/access-airflow-ui.html
    #   @return [String]
    #
    # @!attribute [rw] weekly_maintenance_window_start
    #   The day and time of the week in Coordinated Universal Time (UTC)
    #   24-hour standard time that weekly maintenance updates are scheduled.
    #   For example: `TUE:03:30`.
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
      :schedulers,
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
    #   The name of the Amazon MWAA environment. For example,
    #   `MyMWAAEnvironment`.
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
    #   An object containing all available details about the environment.
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

    # Describes the status of the last update on the environment, and any
    # errors that were encountered.
    #
    # @!attribute [rw] created_at
    #   The day and time of the last update on the environment.
    #   @return [Time]
    #
    # @!attribute [rw] error
    #   The error that was encountered during the last update of the
    #   environment.
    #   @return [Types::UpdateError]
    #
    # @!attribute [rw] source
    #   The source of the last update to the environment. Includes internal
    #   processes by Amazon MWAA, such as an environment maintenance update.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the last update on the environment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/LastUpdate AWS API Documentation
    #
    class LastUpdate < Struct.new(
      :created_at,
      :error,
      :source,
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
    #   The maximum number of results to retrieve per page. For example, `5`
    #   environments per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Retrieves the next page of the results.
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
    #   Returns a list of Amazon MWAA environments.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   Retrieves the next page of the results.
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
    #   The Amazon Resource Name (ARN) of the Amazon MWAA environment. For
    #   example,
    #   `arn:aws:airflow:us-east-1:123456789012:environment/MyMWAAEnvironment`.
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
    #   The key-value tag pairs associated to your environment. To learn
    #   more, see [Tagging Amazon Web Services resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the Apache Airflow log types that are published to
    # CloudWatch Logs.
    #
    # @!attribute [rw] dag_processing_logs
    #   The Airflow DAG processing logs published to CloudWatch Logs and the
    #   log level.
    #   @return [Types::ModuleLoggingConfiguration]
    #
    # @!attribute [rw] scheduler_logs
    #   The Airflow scheduler logs published to CloudWatch Logs and the log
    #   level.
    #   @return [Types::ModuleLoggingConfiguration]
    #
    # @!attribute [rw] task_logs
    #   The Airflow task logs published to CloudWatch Logs and the log
    #   level.
    #   @return [Types::ModuleLoggingConfiguration]
    #
    # @!attribute [rw] webserver_logs
    #   The Airflow web server logs published to CloudWatch Logs and the log
    #   level.
    #   @return [Types::ModuleLoggingConfiguration]
    #
    # @!attribute [rw] worker_logs
    #   The Airflow worker logs published to CloudWatch Logs and the log
    #   level.
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

    # Defines the Apache Airflow log types to send to CloudWatch Logs.
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
    #   Publishes Airflow DAG processing logs to CloudWatch Logs.
    #   @return [Types::ModuleLoggingConfigurationInput]
    #
    # @!attribute [rw] scheduler_logs
    #   Publishes Airflow scheduler logs to CloudWatch Logs.
    #   @return [Types::ModuleLoggingConfigurationInput]
    #
    # @!attribute [rw] task_logs
    #   Publishes Airflow task logs to CloudWatch Logs.
    #   @return [Types::ModuleLoggingConfigurationInput]
    #
    # @!attribute [rw] webserver_logs
    #   Publishes Airflow web server logs to CloudWatch Logs.
    #   @return [Types::ModuleLoggingConfigurationInput]
    #
    # @!attribute [rw] worker_logs
    #   Publishes Airflow worker logs to CloudWatch Logs.
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

    # **Internal only**. Collects Apache Airflow metrics. To learn more
    # about the metrics published to Amazon CloudWatch, see [Amazon MWAA
    # performance metrics in Amazon CloudWatch][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/cw-metrics.html
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
    #   **Internal only**. The dimensions associated with the metric.
    #   @return [Array<Types::Dimension>]
    #
    # @!attribute [rw] metric_name
    #   **Internal only**. The name of the metric.
    #   @return [String]
    #
    # @!attribute [rw] statistic_values
    #   **Internal only**. The statistical values for the metric.
    #   @return [Types::StatisticSet]
    #
    # @!attribute [rw] timestamp
    #   **Internal only**. The time the metric data was received.
    #   @return [Time]
    #
    # @!attribute [rw] unit
    #   **Internal only**. The unit used to store the metric.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   **Internal only**. The value for the metric.
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

    # Describes the Apache Airflow log details for the log type (e.g.
    # `DagProcessingLogs`).
    #
    # @!attribute [rw] cloud_watch_log_group_arn
    #   The Amazon Resource Name (ARN) for the CloudWatch Logs group where
    #   the Apache Airflow log type (e.g. `DagProcessingLogs`) is published.
    #   For example,
    #   `arn:aws:logs:us-east-1:123456789012:log-group:airflow-MyMWAAEnvironment-MwaaEnvironment-DAGProcessing:*`.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Indicates whether the Apache Airflow log type (e.g.
    #   `DagProcessingLogs`) is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] log_level
    #   The Apache Airflow log level for the log type (e.g.
    #   `DagProcessingLogs`).
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

    # Enables the Apache Airflow log type (e.g. `DagProcessingLogs`) and
    # defines the log level to send to CloudWatch Logs (e.g. `INFO`).
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
    #   Indicates whether to enable the Apache Airflow log type (e.g.
    #   `DagProcessingLogs`).
    #   @return [Boolean]
    #
    # @!attribute [rw] log_level
    #   Defines the Apache Airflow log level (e.g. `INFO`) to send to
    #   CloudWatch Logs.
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

    # Describes the VPC networking components used to secure and enable
    # network traffic between the Amazon Web Services resources for your
    # environment. To learn more, see [About networking on Amazon MWAA][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/networking-about.html
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
    #   A list of security group IDs. To learn more, see [Security in your
    #   VPC on Amazon MWAA][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/vpc-security.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_ids
    #   A list of subnet IDs. To learn more, see [About networking on Amazon
    #   MWAA][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/networking-about.html
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
    #   **Internal only**. The name of the environment.
    #   @return [String]
    #
    # @!attribute [rw] metric_data
    #   **Internal only**. Publishes metrics to Amazon CloudWatch. To learn
    #   more about the metrics published to Amazon CloudWatch, see [Amazon
    #   MWAA performance metrics in Amazon CloudWatch][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/cw-metrics.html
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

    # **Internal only**. Represents a set of statistics that describe a
    # specific metric. To learn more about the metrics published to Amazon
    # CloudWatch, see [Amazon MWAA performance metrics in Amazon
    # CloudWatch][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/cw-metrics.html
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
    #   **Internal only**. The maximum value of the sample set.
    #   @return [Float]
    #
    # @!attribute [rw] minimum
    #   **Internal only**. The minimum value of the sample set.
    #   @return [Float]
    #
    # @!attribute [rw] sample_count
    #   **Internal only**. The number of samples used for the statistic set.
    #   @return [Integer]
    #
    # @!attribute [rw] sum
    #   **Internal only**. The sum of values for the sample set.
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
    #   The Amazon Resource Name (ARN) of the Amazon MWAA environment. For
    #   example,
    #   `arn:aws:airflow:us-east-1:123456789012:environment/MyMWAAEnvironment`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The key-value tag pairs you want to associate to your environment.
    #   For example, `"Environment": "Staging"`. To learn more, see [Tagging
    #   Amazon Web Services resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
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
    #   The Amazon Resource Name (ARN) of the Amazon MWAA environment. For
    #   example,
    #   `arn:aws:airflow:us-east-1:123456789012:environment/MyMWAAEnvironment`.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The key-value tag pair you want to remove. For example,
    #   `"Environment": "Staging"`.
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
    #         schedulers: 1,
    #         source_bucket_arn: "S3BucketArn",
    #         webserver_access_mode: "PRIVATE_ONLY", # accepts PRIVATE_ONLY, PUBLIC_ONLY
    #         weekly_maintenance_window_start: "WeeklyMaintenanceWindowStart",
    #       }
    #
    # @!attribute [rw] airflow_configuration_options
    #   A list of key-value pairs containing the Apache Airflow
    #   configuration options you want to attach to your environment. To
    #   learn more, see [Apache Airflow configuration options][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-env-variables.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] airflow_version
    #   The Apache Airflow version for your environment. If no value is
    #   specified, defaults to the latest version. Valid values: `1.10.12`,
    #   `2.0.2`.
    #   @return [String]
    #
    # @!attribute [rw] dag_s3_path
    #   The relative path to the DAGs folder on your Amazon S3 bucket. For
    #   example, `dags`. To learn more, see [Adding or updating DAGs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-folder.html
    #   @return [String]
    #
    # @!attribute [rw] environment_class
    #   The environment class type. Valid values: `mw1.small`, `mw1.medium`,
    #   `mw1.large`. To learn more, see [Amazon MWAA environment class][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/environment-class.html
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The Amazon Resource Name (ARN) of the execution role in IAM that
    #   allows MWAA to access Amazon Web Services resources in your
    #   environment. For example,
    #   `arn:aws:iam::123456789:role/my-execution-role`. To learn more, see
    #   [Amazon MWAA Execution role][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-create-role.html
    #   @return [String]
    #
    # @!attribute [rw] logging_configuration
    #   The Apache Airflow log types to send to CloudWatch Logs.
    #   @return [Types::LoggingConfigurationInput]
    #
    # @!attribute [rw] max_workers
    #   The maximum number of workers that you want to run in your
    #   environment. MWAA scales the number of Apache Airflow workers up to
    #   the number you specify in the `MaxWorkers` field. For example, `20`.
    #   When there are no more tasks running, and no more in the queue, MWAA
    #   disposes of the extra workers leaving the one worker that is
    #   included with your environment, or the number you specify in
    #   `MinWorkers`.
    #   @return [Integer]
    #
    # @!attribute [rw] min_workers
    #   The minimum number of workers that you want to run in your
    #   environment. MWAA scales the number of Apache Airflow workers up to
    #   the number you specify in the `MaxWorkers` field. When there are no
    #   more tasks running, and no more in the queue, MWAA disposes of the
    #   extra workers leaving the worker count you specify in the
    #   `MinWorkers` field. For example, `2`.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of your Amazon MWAA environment. For example,
    #   `MyMWAAEnvironment`.
    #   @return [String]
    #
    # @!attribute [rw] network_configuration
    #   The VPC networking components used to secure and enable network
    #   traffic between the Amazon Web Services resources for your
    #   environment. To learn more, see [About networking on Amazon
    #   MWAA][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/networking-about.html
    #   @return [Types::UpdateNetworkConfigurationInput]
    #
    # @!attribute [rw] plugins_s3_object_version
    #   The version of the plugins.zip file on your Amazon S3 bucket. A
    #   version must be specified each time a plugins.zip file is updated.
    #   To learn more, see [How S3 Versioning works][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html
    #   @return [String]
    #
    # @!attribute [rw] plugins_s3_path
    #   The relative path to the `plugins.zip` file on your Amazon S3
    #   bucket. For example, `plugins.zip`. If specified, then the
    #   plugins.zip version is required. To learn more, see [Installing
    #   custom plugins][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import-plugins.html
    #   @return [String]
    #
    # @!attribute [rw] requirements_s3_object_version
    #   The version of the requirements.txt file on your Amazon S3 bucket. A
    #   version must be specified each time a requirements.txt file is
    #   updated. To learn more, see [How S3 Versioning works][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html
    #   @return [String]
    #
    # @!attribute [rw] requirements_s3_path
    #   The relative path to the `requirements.txt` file on your Amazon S3
    #   bucket. For example, `requirements.txt`. If specified, then a file
    #   version is required. To learn more, see [Installing Python
    #   dependencies][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/working-dags-dependencies.html
    #   @return [String]
    #
    # @!attribute [rw] schedulers
    #   The number of Apache Airflow schedulers to run in your Amazon MWAA
    #   environment.
    #   @return [Integer]
    #
    # @!attribute [rw] source_bucket_arn
    #   The Amazon Resource Name (ARN) of the Amazon S3 bucket where your
    #   DAG code and supporting files are stored. For example,
    #   `arn:aws:s3:::my-airflow-bucket-unique-name`. To learn more, see
    #   [Create an Amazon S3 bucket for Amazon MWAA][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-s3-bucket.html
    #   @return [String]
    #
    # @!attribute [rw] webserver_access_mode
    #   The Apache Airflow *Web server* access mode. To learn more, see
    #   [Apache Airflow access modes][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-networking.html
    #   @return [String]
    #
    # @!attribute [rw] weekly_maintenance_window_start
    #   The day and time of the week in Coordinated Universal Time (UTC)
    #   24-hour standard time to start weekly maintenance updates of your
    #   environment in the following format: `DAY:HH:MM`. For example:
    #   `TUE:03:30`. You can specify a start time in 30 minute increments
    #   only.
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
      :schedulers,
      :source_bucket_arn,
      :webserver_access_mode,
      :weekly_maintenance_window_start)
      SENSITIVE = [:airflow_configuration_options]
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the Amazon MWAA environment. For
    #   example,
    #   `arn:aws:airflow:us-east-1:123456789012:environment/MyMWAAEnvironment`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mwaa-2020-07-01/UpdateEnvironmentOutput AWS API Documentation
    #
    class UpdateEnvironmentOutput < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the error(s) encountered with the last update of the
    # environment.
    #
    # @!attribute [rw] error_code
    #   The error code that corresponds to the error with the last update.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message that corresponds to the error code.
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

    # Defines the VPC networking components used to secure and enable
    # network traffic between the Amazon Web Services resources for your
    # environment. To learn more, see [About networking on Amazon MWAA][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/networking-about.html
    #
    # @note When making an API call, you may pass UpdateNetworkConfigurationInput
    #   data as a hash:
    #
    #       {
    #         security_group_ids: ["SecurityGroupId"], # required
    #       }
    #
    # @!attribute [rw] security_group_ids
    #   A list of security group IDs. A security group must be attached to
    #   the same VPC as the subnets. To learn more, see [Security in your
    #   VPC on Amazon MWAA][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/mwaa/latest/userguide/vpc-security.html
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
