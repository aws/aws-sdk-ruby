# frozen_string_literal: true

# This is generated code!

module Aws::MWAA
  # This module contains the types returned by client operations.
  module Types

    # <p>Access to the Apache Airflow Web UI or CLI has been denied due to insufficient permissions. To learn more, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/access-policies.html">Accessing an Amazon MWAA environment</a>.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the Amazon MWAA environment. For example, <code>MyMWAAEnvironment</code>.</p>
    #   @return [String]
    class CreateCliTokenInput < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cli_token
    #   <p>An Airflow CLI login token.</p>
    #   @return [String]
    # @!attribute web_server_hostname
    #   <p>The Airflow web server hostname for the environment.</p>
    #   @return [String]
    class CreateCliTokenOutput < Struct.new(
      :cli_token,
      :web_server_hostname,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This section contains the Amazon Managed Workflows for Apache Airflow (Amazon MWAA) API reference documentation to create an environment. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/get-started.html">Get started with Amazon Managed Workflows for Apache Airflow</a>.</p>
    # @!attribute name
    #   <p>The name of the Amazon MWAA environment. For example, <code>MyMWAAEnvironment</code>.</p>
    #   @return [String]
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the execution role for your environment. An execution role is an Amazon Web Services Identity and Access Management (IAM) role that grants MWAA permission to access Amazon Web Services services and resources used by your environment. For example, <code>arn:aws:iam::123456789:role/my-execution-role</code>. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-create-role.html">Amazon MWAA Execution role</a>.</p>
    #   @return [String]
    # @!attribute source_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon S3 bucket where your DAG code and supporting files are stored. For example, <code>arn:aws:s3:::my-airflow-bucket-unique-name</code>. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-s3-bucket.html">Create an Amazon S3 bucket for Amazon MWAA</a>.</p>
    #   @return [String]
    # @!attribute dag_s3_path
    #   <p>The relative path to the DAGs folder on your Amazon S3 bucket. For example, <code>dags</code>. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-folder.html">Adding or updating DAGs</a>.</p>
    #   @return [String]
    # @!attribute network_configuration
    #   <p>The VPC networking components used to secure and enable network traffic between the Amazon Web Services resources for your environment. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/networking-about.html">About networking on Amazon MWAA</a>.</p>
    #   @return [Types::NetworkConfiguration]
    # @!attribute plugins_s3_path
    #   <p>The relative path to the <code>plugins.zip</code> file on your Amazon S3 bucket. For example, <code>plugins.zip</code>. If specified, then the <code>plugins.zip</code> version is required. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import-plugins.html">Installing custom plugins</a>.</p>
    #   @return [String]
    # @!attribute plugins_s3_object_version
    #   <p>The version of the plugins.zip file on your Amazon S3 bucket. You must specify a version each time a plugins.zip file is updated. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html">How S3 Versioning works</a>.</p>
    #   @return [String]
    # @!attribute requirements_s3_path
    #   <p>The relative path to the <code>requirements.txt</code> file on your Amazon S3 bucket. For example, <code>requirements.txt</code>. If specified, then a version is required. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/working-dags-dependencies.html">Installing Python dependencies</a>.</p>
    #   @return [String]
    # @!attribute requirements_s3_object_version
    #   <p>The version of the <code>requirements.txt</code> file on your Amazon S3 bucket. You must specify a version each time a requirements.txt file is updated. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html">How S3 Versioning works</a>.</p>
    #   @return [String]
    # @!attribute startup_script_s3_path
    #   <p>The relative path to the startup shell script in your Amazon S3 bucket. For example, <code>s3://mwaa-environment/startup.sh</code>.</p>
    #            <p>
    #               Amazon MWAA runs the script as your environment starts, and before running the Apache Airflow process.
    #               You can use this script to install dependencies, modify Apache Airflow configuration options, and set environment variables. For more information, see
    #               <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/using-startup-script.html">Using a startup script</a>.
    #           </p>
    #   @return [String]
    # @!attribute startup_script_s3_object_version
    #   <p>The version of the startup shell script in your Amazon S3 bucket. You must specify the <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html">version ID</a> that Amazon S3 assigns to the file
    #               every time you update the script.
    #           </p>
    #            <p>
    #               Version IDs are Unicode, UTF-8 encoded, URL-ready, opaque strings that are no more than 1,024 bytes long. The following is an example:
    #           </p>
    #            <p>
    #               <code>3sL4kqtJlcpXroDTDmJ+rmSpXd3dIbrHY+MTRCxf3vjVBH40Nr8X8gdRQBpUMLUo</code>
    #            </p>
    #            <p>
    #               For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/using-startup-script.html">Using a startup script</a>.
    #           </p>
    #   @return [String]
    # @!attribute airflow_configuration_options
    #   <p>A list of key-value pairs containing the Apache Airflow configuration options you want to attach to your environment. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-env-variables.html">Apache Airflow configuration options</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute environment_class
    #   <p>The environment class type. Valid values: <code>mw1.micro</code>, <code>mw1.small</code>, <code>mw1.medium</code>, <code>mw1.large</code>, <code>mw1.xlarge</code>, and <code>mw1.2xlarge</code>. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/environment-class.html">Amazon MWAA environment class</a>.</p>
    #   @return [String]
    # @!attribute max_workers
    #   <p>The maximum number of workers that you want to run in your environment. MWAA scales the number of Apache Airflow workers up to the number you specify in the <code>MaxWorkers</code> field. For example, <code>20</code>. When there are no more tasks running, and no more in the queue, MWAA disposes of the extra workers leaving the one worker that is included with your environment, or the number you specify in <code>MinWorkers</code>.</p>
    #   @return [Integer]
    # @!attribute kms_key
    #   <p>The Amazon Web Services Key Management Service (KMS) key to encrypt the data in your environment. You can use an Amazon Web Services owned CMK, or a Customer managed CMK (advanced). For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/create-environment.html">Create an Amazon MWAA environment</a>.</p>
    #   @return [String]
    # @!attribute airflow_version
    #   <p>The Apache Airflow version for your environment. If no value is specified, it defaults to the latest version.
    #               For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/airflow-versions.html">Apache Airflow versions on Amazon Managed Workflows for Apache Airflow (Amazon MWAA)</a>.</p>
    #            <p>Valid values: <code>1.10.12</code>, <code>2.0.2</code>, <code>2.2.2</code>,
    #                   <code>2.4.3</code>, <code>2.5.1</code>, <code>2.6.3</code>, <code>2.7.2</code>,
    #               <code>2.8.1</code>, <code>2.9.2</code>, <code>2.10.1</code>, and <code>2.10.3</code>.</p>
    #   @return [String]
    # @!attribute logging_configuration
    #   <p>Defines the Apache Airflow logs to send to CloudWatch Logs.</p>
    #   @return [Types::LoggingConfigurationInput]
    # @!attribute weekly_maintenance_window_start
    #   <p>The day and time of the week in Coordinated Universal Time (UTC) 24-hour standard time to start weekly maintenance updates of your environment in the following format: <code>DAY:HH:MM</code>. For example: <code>TUE:03:30</code>. You can specify a start time in 30 minute increments only.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The key-value tag pairs you want to associate to your environment. For example, <code>"Environment": "Staging"</code>. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute webserver_access_mode
    #   <p>Defines the access mode for the Apache Airflow <i>web server</i>. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-networking.html">Apache Airflow access modes</a>.</p>
    #   @return [String]
    # @!attribute min_workers
    #   <p>The minimum number of workers that you want to run in your environment. MWAA scales the number of Apache Airflow workers up to the number you specify in the <code>MaxWorkers</code> field. When there are no more tasks running, and no more in the queue, MWAA disposes of the extra workers leaving the worker count you specify in the <code>MinWorkers</code> field. For example, <code>2</code>.</p>
    #   @return [Integer]
    # @!attribute schedulers
    #   <p>The number of Apache Airflow schedulers to run in your environment. Valid values:</p>
    #            <ul>
    #               <li>
    #                  <p>v2 - For environments larger than mw1.micro, accepts values from
    #                           <code>2</code> to <code>5</code>. Defaults to <code>2</code> for all
    #                       environment sizes except mw1.micro, which defaults to <code>1</code>.</p>
    #               </li>
    #               <li>
    #                  <p>v1 - Accepts <code>1</code>.</p>
    #               </li>
    #            </ul>
    #   @return [Integer]
    # @!attribute endpoint_management
    #   <p>Defines whether the VPC endpoints configured for the environment are created, and managed, by the customer or by Amazon MWAA. If set to <code>SERVICE</code>, Amazon MWAA will create and manage the required VPC endpoints in
    #           your VPC. If set to <code>CUSTOMER</code>, you must create, and manage, the VPC endpoints for your VPC. If you choose to create an environment in a shared VPC, you must set this value to <code>CUSTOMER</code>.
    #           In a shared VPC deployment, the environment will remain in <code>PENDING</code> status until you create the VPC endpoints. If you do not take action to
    #               create the endpoints within 72 hours, the status will change to <code>CREATE_FAILED</code>. You can delete the failed environment and create a new one.</p>
    #   @return [String]
    # @!attribute min_webservers
    #   <p>
    #               The minimum number of web servers that you want to run in your environment.
    #               Amazon MWAA scales the number of Apache Airflow web servers up to the number you specify for <code>MaxWebservers</code>
    #               when you interact with your Apache Airflow environment using Apache Airflow REST API, or
    #               the Apache Airflow CLI. As the transaction-per-second rate, and the network load, decrease,
    #               Amazon MWAA disposes of the additional web servers, and scales down to the number set in <code>MinxWebserers</code>.
    #           </p>
    #            <p>Valid values: For environments larger than mw1.micro, accepts values from
    #                   <code>2</code> to <code>5</code>. Defaults to <code>2</code> for all environment
    #               sizes except mw1.micro, which defaults to <code>1</code>.</p>
    #   @return [Integer]
    # @!attribute max_webservers
    #   <p>
    #               The maximum number of web servers that you want to run in your environment.
    #               Amazon MWAA scales the number of Apache Airflow web servers up to the number you specify for <code>MaxWebservers</code>
    #               when you interact with your Apache Airflow environment using Apache Airflow REST API, or
    #               the Apache Airflow CLI. For example, in scenarios where your workload requires network calls to the Apache Airflow REST API with a high transaction-per-second (TPS)
    #               rate, Amazon MWAA will increase the number of web servers up to the number set in <code>MaxWebserers</code>. As TPS rates decrease
    #               Amazon MWAA disposes of the additional web servers, and scales down to the number set in <code>MinxWebserers</code>.
    #           </p>
    #            <p>Valid values: For environments larger than mw1.micro, accepts values from
    #                   <code>2</code> to <code>5</code>. Defaults to <code>2</code> for all environment
    #               sizes except mw1.micro, which defaults to <code>1</code>.</p>
    #   @return [Integer]
    class CreateEnvironmentOperationInput < Struct.new(
      :name,
      :execution_role_arn,
      :source_bucket_arn,
      :dag_s3_path,
      :network_configuration,
      :plugins_s3_path,
      :plugins_s3_object_version,
      :requirements_s3_path,
      :requirements_s3_object_version,
      :startup_script_s3_path,
      :startup_script_s3_object_version,
      :airflow_configuration_options,
      :environment_class,
      :max_workers,
      :kms_key,
      :airflow_version,
      :logging_configuration,
      :weekly_maintenance_window_start,
      :tags,
      :webserver_access_mode,
      :min_workers,
      :schedulers,
      :endpoint_management,
      :min_webservers,
      :max_webservers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) returned in the response for the environment.</p>
    #   @return [String]
    class CreateEnvironmentOperationOutput < Struct.new(
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the Amazon MWAA environment. For example, <code>MyMWAAEnvironment</code>.</p>
    #   @return [String]
    class CreateWebLoginTokenInput < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute web_token
    #   <p>An Airflow web server login token.</p>
    #   @return [String]
    # @!attribute web_server_hostname
    #   <p>The Airflow web server hostname for the environment.</p>
    #   @return [String]
    # @!attribute iam_identity
    #   <p>The name of the IAM identity creating the web login token. This might be an IAM user, or an assumed or federated identity. For example, <code>assumed-role/Admin/your-name</code>.</p>
    #   @return [String]
    # @!attribute airflow_identity
    #   <p>The user name of the Apache Airflow identity creating the web login token.</p>
    #   @return [String]
    class CreateWebLoginTokenOutput < Struct.new(
      :web_token,
      :web_server_hostname,
      :iam_identity,
      :airflow_identity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the Amazon MWAA environment. For example, <code>MyMWAAEnvironment</code>.</p>
    #   @return [String]
    class DeleteEnvironmentOperationInput < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteEnvironmentOperationOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             <b>Internal only</b>. Represents the dimensions of a metric. To learn more about the metrics published to Amazon CloudWatch, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/cw-metrics.html">Amazon MWAA performance metrics in Amazon CloudWatch</a>.</p>
    # @deprecated
    #   This type is for internal use and not meant for public use. Data set for this type will be ignored.
    # @!attribute name
    #   <p>
    #               <b>Internal only</b>. The name of the dimension.</p>
    #   @return [String]
    # @!attribute value
    #   <p>
    #               <b>Internal only</b>. The value of the dimension.</p>
    #   @return [String]
    class Dimension < Struct.new(
      :name,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes an Amazon Managed Workflows for Apache Airflow (MWAA) environment.</p>
    # @!attribute name
    #   <p>The name of the Amazon MWAA environment. For example, <code>MyMWAAEnvironment</code>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the Amazon MWAA environment.</p>
    #            <p>Valid values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATING</code> - Indicates the request to create the environment is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATING_SNAPSHOT</code> - Indicates the request to update environment details, or upgrade the environment version, is in progress and Amazon MWAA is creating a storage volume snapshot of the Amazon RDS
    #                       database cluster associated with the environment. A database snapshot is a backup created at a specific point in time. Amazon MWAA uses snapshots to recover environment metadata if the process to update or upgrade
    #                       an environment fails.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CREATE_FAILED</code> - Indicates the request to create the environment failed, and the environment could not be created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AVAILABLE</code> - Indicates the request was successful and the environment is ready to use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code> - Indicates the request was successful, but the process to create the environment is paused until you create the required
    #                       VPC endpoints in your VPC. After you create the VPC endpoints, the process resumes.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATING</code> - Indicates the request to update the environment is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ROLLING_BACK</code> - Indicates the request to update environment details, or upgrade the environment version, failed and Amazon MWAA is restoring the environment using the latest storage volume snapshot.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETING</code> - Indicates the request to delete the environment is in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DELETED</code> - Indicates the request to delete the environment is complete, and the environment has been deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNAVAILABLE</code> - Indicates the request failed, but the environment did not return to its previous state and is not stable.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_FAILED</code> - Indicates the request to update the environment failed, and the environment was restored to its previous state successfully and is ready to use.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MAINTENANCE</code> - Indicates that the environment is undergoing maintenance. Depending on the type of work Amazon MWAA is performing,
    #                 your environment might become unavailable during this process. After all operations are done, your environment will return to its status prior to mainteneace operations.
    #               </p>
    #               </li>
    #            </ul>
    #            <p>We recommend reviewing our troubleshooting guide for a list of common errors and their solutions. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/troubleshooting.html">Amazon MWAA troubleshooting</a>.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon MWAA environment.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The day and time the environment was created.</p>
    #   @return [Time]
    # @!attribute webserver_url
    #   <p>The Apache Airflow <i>web server</i> host name for the Amazon MWAA environment. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/access-airflow-ui.html">Accessing the Apache Airflow UI</a>.</p>
    #   @return [String]
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the execution role in IAM that allows MWAA to access Amazon Web Services resources in your environment. For example, <code>arn:aws:iam::123456789:role/my-execution-role</code>. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-create-role.html">Amazon MWAA Execution role</a>.</p>
    #   @return [String]
    # @!attribute service_role_arn
    #   <p>The Amazon Resource Name (ARN) for the service-linked role of the environment. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-slr.html">Amazon MWAA Service-linked role</a>.</p>
    #   @return [String]
    # @!attribute kms_key
    #   <p>The KMS encryption key used to encrypt the data in your environment.</p>
    #   @return [String]
    # @!attribute airflow_version
    #   <p>The Apache Airflow version on your environment.</p>
    #            <p>Valid values: <code>1.10.12</code>, <code>2.0.2</code>, <code>2.2.2</code>,
    #                   <code>2.4.3</code>, <code>2.5.1</code>, <code>2.6.3</code>, <code>2.7.2</code>,
    #               <code>2.8.1</code>, <code>2.9.2</code>, <code>2.10.1</code>, and <code>2.10.3</code>.</p>
    #   @return [String]
    # @!attribute source_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon S3 bucket where your DAG code and supporting files are stored. For example, <code>arn:aws:s3:::my-airflow-bucket-unique-name</code>. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-s3-bucket.html">Create an Amazon S3 bucket for Amazon MWAA</a>.</p>
    #   @return [String]
    # @!attribute dag_s3_path
    #   <p>The relative path to the DAGs folder in your Amazon S3 bucket. For example, <code>s3://mwaa-environment/dags</code>. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-folder.html">Adding or updating DAGs</a>.</p>
    #   @return [String]
    # @!attribute plugins_s3_path
    #   <p>The relative path to the file in your Amazon S3 bucket. For example, <code>s3://mwaa-environment/plugins.zip</code>. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import-plugins.html">Installing custom plugins</a>.</p>
    #   @return [String]
    # @!attribute plugins_s3_object_version
    #   <p>The version of the <code>plugins.zip</code> file in your Amazon S3 bucket. You must specify the <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html">version ID</a> that Amazon S3 assigns to the file.</p>
    #            <p>
    #               Version IDs are Unicode, UTF-8 encoded, URL-ready, opaque strings that are no more than 1,024 bytes long. The following is an example:
    #           </p>
    #            <p>
    #               <code>3sL4kqtJlcpXroDTDmJ+rmSpXd3dIbrHY+MTRCxf3vjVBH40Nr8X8gdRQBpUMLUo</code>
    #            </p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import-plugins.html">Installing custom plugins</a>.</p>
    #   @return [String]
    # @!attribute requirements_s3_path
    #   <p>The relative path to the <code>requirements.txt</code> file in your Amazon S3 bucket. For example, <code>s3://mwaa-environment/requirements.txt</code>. For more information, see
    #               <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/working-dags-dependencies.html">Installing Python dependencies</a>.</p>
    #   @return [String]
    # @!attribute requirements_s3_object_version
    #   <p>The version of the <code>requirements.txt </code> file on your Amazon S3 bucket. You must specify the <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html">version ID</a> that Amazon S3 assigns to the file.</p>
    #            <p>
    #               Version IDs are Unicode, UTF-8 encoded, URL-ready, opaque strings that are no more than 1,024 bytes long. The following is an example:
    #           </p>
    #            <p>
    #               <code>3sL4kqtJlcpXroDTDmJ+rmSpXd3dIbrHY+MTRCxf3vjVBH40Nr8X8gdRQBpUMLUo</code>
    #            </p>
    #            <p>
    #               For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/working-dags-dependencies.html">Installing Python dependencies</a>.
    #           </p>
    #   @return [String]
    # @!attribute startup_script_s3_path
    #   <p>The relative path to the startup shell script in your Amazon S3 bucket. For example, <code>s3://mwaa-environment/startup.sh</code>.</p>
    #            <p>
    #               Amazon MWAA runs the script as your environment starts, and before running the Apache Airflow process.
    #               You can use this script to install dependencies, modify Apache Airflow configuration options, and set environment variables. For more information, see
    #               <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/using-startup-script.html">Using a startup script</a>.
    #           </p>
    #   @return [String]
    # @!attribute startup_script_s3_object_version
    #   <p>The version of the startup shell script in your Amazon S3 bucket. You must specify the <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html">version ID</a> that Amazon S3 assigns to the file.</p>
    #            <p>
    #               Version IDs are Unicode, UTF-8 encoded, URL-ready, opaque strings that are no more than 1,024 bytes long. The following is an example:
    #           </p>
    #            <p>
    #               <code>3sL4kqtJlcpXroDTDmJ+rmSpXd3dIbrHY+MTRCxf3vjVBH40Nr8X8gdRQBpUMLUo</code>
    #            </p>
    #            <p>
    #               For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/using-startup-script.html">Using a startup script</a>.
    #           </p>
    #   @return [String]
    # @!attribute airflow_configuration_options
    #   <p>A list of key-value pairs containing the Apache Airflow configuration options attached to your environment. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-env-variables.html">Apache Airflow configuration options</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute environment_class
    #   <p>The environment class type. Valid values: <code>mw1.micro</code>, <code>mw1.small</code>, <code>mw1.medium</code>, <code>mw1.large</code>, <code>mw1.xlarge</code>, and <code>mw1.2xlarge</code>. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/environment-class.html">Amazon MWAA environment class</a>.</p>
    #   @return [String]
    # @!attribute max_workers
    #   <p>The maximum number of workers that run in your environment. For example, <code>20</code>.</p>
    #   @return [Integer]
    # @!attribute network_configuration
    #   <p>Describes the VPC networking components used to secure and enable network traffic between the Amazon Web Services resources for your environment. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/networking-about.html">About networking on Amazon MWAA</a>.</p>
    #   @return [Types::NetworkConfiguration]
    # @!attribute logging_configuration
    #   <p>The Apache Airflow logs published to CloudWatch Logs.</p>
    #   @return [Types::LoggingConfiguration]
    # @!attribute last_update
    #   <p>The status of the last update on the environment.</p>
    #   @return [Types::LastUpdate]
    # @!attribute weekly_maintenance_window_start
    #   <p>The day and time of the week in Coordinated Universal Time (UTC) 24-hour standard time that weekly maintenance updates are scheduled. For example: <code>TUE:03:30</code>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The key-value tag pairs associated to your environment. For example, <code>"Environment": "Staging"</code>. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute webserver_access_mode
    #   <p>The Apache Airflow <i>web server</i> access mode. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-networking.html">Apache Airflow access modes</a>.</p>
    #   @return [String]
    # @!attribute min_workers
    #   <p>The minimum number of workers that run in your environment. For example, <code>2</code>.</p>
    #   @return [Integer]
    # @!attribute schedulers
    #   <p>The number of Apache Airflow schedulers that run in your Amazon MWAA environment.</p>
    #   @return [Integer]
    # @!attribute webserver_vpc_endpoint_service
    #   <p>The VPC endpoint for the environment's web server.</p>
    #   @return [String]
    # @!attribute database_vpc_endpoint_service
    #   <p>The VPC endpoint for the environment's Amazon RDS database.</p>
    #   @return [String]
    # @!attribute celery_executor_queue
    #   <p>The queue ARN for the environment's <a href="https://airflow.apache.org/docs/apache-airflow/stable/core-concepts/executor/celery.html">Celery Executor</a>. Amazon MWAA uses a Celery Executor
    #               to distribute tasks across multiple workers. When you create an environment in a shared VPC, you must provide access to the Celery Executor queue from your VPC.</p>
    #   @return [String]
    # @!attribute endpoint_management
    #   <p>Defines whether the VPC endpoints configured for the environment are created, and managed, by the customer or by Amazon MWAA. If set to <code>SERVICE</code>, Amazon MWAA will create and manage the required VPC endpoints in
    #               your VPC. If set to <code>CUSTOMER</code>, you must create, and manage, the VPC endpoints in your VPC.</p>
    #   @return [String]
    # @!attribute min_webservers
    #   <p>
    #               The minimum number of web servers that you want to run in your environment.
    #               Amazon MWAA scales the number of Apache Airflow web servers up to the number you specify for <code>MaxWebservers</code>
    #               when you interact with your Apache Airflow environment using Apache Airflow REST API, or
    #               the Apache Airflow CLI. As the transaction-per-second rate, and the network load, decrease,
    #               Amazon MWAA disposes of the additional web servers, and scales down to the number set in <code>MinxWebserers</code>.
    #           </p>
    #            <p>Valid values: For environments larger than mw1.micro, accepts values from
    #                   <code>2</code> to <code>5</code>. Defaults to <code>2</code> for all environment
    #               sizes except mw1.micro, which defaults to <code>1</code>.</p>
    #   @return [Integer]
    # @!attribute max_webservers
    #   <p>
    #               The maximum number of web servers that you want to run in your environment.
    #               Amazon MWAA scales the number of Apache Airflow web servers up to the number you specify for <code>MaxWebservers</code>
    #               when you interact with your Apache Airflow environment using Apache Airflow REST API, or
    #               the Apache Airflow CLI. For example, in scenarios where your workload requires network calls to the Apache Airflow REST API with a high transaction-per-second (TPS)
    #               rate, Amazon MWAA will increase the number of web servers up to the number set in <code>MaxWebserers</code>. As TPS rates decrease
    #               Amazon MWAA disposes of the additional web servers, and scales down to the number set in <code>MinxWebserers</code>.
    #           </p>
    #            <p>Valid values: For environments larger than mw1.micro, accepts values from
    #                   <code>2</code> to <code>5</code>. Defaults to <code>2</code> for all environment
    #               sizes except mw1.micro, which defaults to <code>1</code>.</p>
    #   @return [Integer]
    class Environment < Struct.new(
      :name,
      :status,
      :arn,
      :created_at,
      :webserver_url,
      :execution_role_arn,
      :service_role_arn,
      :kms_key,
      :airflow_version,
      :source_bucket_arn,
      :dag_s3_path,
      :plugins_s3_path,
      :plugins_s3_object_version,
      :requirements_s3_path,
      :requirements_s3_object_version,
      :startup_script_s3_path,
      :startup_script_s3_object_version,
      :airflow_configuration_options,
      :environment_class,
      :max_workers,
      :network_configuration,
      :logging_configuration,
      :last_update,
      :weekly_maintenance_window_start,
      :tags,
      :webserver_access_mode,
      :min_workers,
      :schedulers,
      :webserver_vpc_endpoint_service,
      :database_vpc_endpoint_service,
      :celery_executor_queue,
      :endpoint_management,
      :min_webservers,
      :max_webservers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the Amazon MWAA environment. For example, <code>MyMWAAEnvironment</code>.</p>
    #   @return [String]
    class GetEnvironmentOperationInput < Struct.new(
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute environment
    #   <p>An object containing all available details about the environment.</p>
    #   @return [Types::Environment]
    class GetEnvironmentOperationOutput < Struct.new(
      :environment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>InternalServerException: An internal error has occurred.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the Amazon MWAA environment. For example, <code>MyMWAAEnvironment</code>.</p>
    #   @return [String]
    # @!attribute path
    #   <p>The Apache Airflow REST API endpoint path to be called. For example,
    #               <code>/dags/123456/clearTaskInstances</code>. For more information, see <a href="https://airflow.apache.org/docs/apache-airflow/stable/stable-rest-api-ref.html">Apache Airflow API</a>
    #            </p>
    #   @return [String]
    # @!attribute method
    #   <p>The HTTP method used for making Airflow REST API calls. For example,
    #               <code>POST</code>. </p>
    #   @return [String]
    # @!attribute query_parameters
    #   <p>Query parameters to be included in the Apache Airflow REST API call, provided as a
    #               JSON object. </p>
    #   @return [JSON]
    # @!attribute body
    #   <p>The request body for the Apache Airflow REST API call, provided as a JSON
    #               object.</p>
    #   @return [JSON]
    class InvokeRestApiRequest < Struct.new(
      :name,
      :path,
      :method,
      :query_parameters,
      :body,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rest_api_status_code
    #   <p>The HTTP status code returned by the Apache Airflow REST API call.</p>
    #   @return [Integer]
    # @!attribute rest_api_response
    #   <p>The response data from the Apache Airflow REST API call, provided as a JSON
    #               object.</p>
    #   @return [JSON]
    class InvokeRestApiResponse < Struct.new(
      :rest_api_status_code,
      :rest_api_response,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the status of the last update on the environment, and any errors that were encountered.</p>
    # @!attribute status
    #   <p>The status of the last update on the environment.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The day and time of the last update on the environment.</p>
    #   @return [Time]
    # @!attribute error
    #   <p>The error that was encountered during the last update of the environment.</p>
    #   @return [Types::UpdateError]
    # @!attribute source
    #   <p>The source of the last update to the environment. Includes internal processes by Amazon MWAA, such as an environment maintenance update.</p>
    #   @return [String]
    # @!attribute worker_replacement_strategy
    #   <p>The worker replacement strategy used in the last update of the environment.</p>
    #   @return [String]
    class LastUpdate < Struct.new(
      :status,
      :created_at,
      :error,
      :source,
      :worker_replacement_strategy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Retrieves the next page of the results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to retrieve per page. For example, <code>5</code> environments per page.</p>
    #   @return [Integer]
    class ListEnvironmentsOperationInput < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute environments
    #   <p>Returns a list of Amazon MWAA environments.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>Retrieves the next page of the results.</p>
    #   @return [String]
    class ListEnvironmentsOperationOutput < Struct.new(
      :environments,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon MWAA environment. For example, <code>arn:aws:airflow:us-east-1:123456789012:environment/MyMWAAEnvironment</code>.</p>
    #   @return [String]
    class ListTagsForResourceOperationInput < Struct.new(
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The key-value tag pairs associated to your environment. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOperationOutput < Struct.new(
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the Apache Airflow log types that are published to CloudWatch Logs.</p>
    # @!attribute dag_processing_logs
    #   <p>The Airflow DAG processing logs published to CloudWatch Logs and the log level.</p>
    #   @return [Types::ModuleLoggingConfiguration]
    # @!attribute scheduler_logs
    #   <p>The Airflow scheduler logs published to CloudWatch Logs and the log level.</p>
    #   @return [Types::ModuleLoggingConfiguration]
    # @!attribute webserver_logs
    #   <p>The Airflow web server logs published to CloudWatch Logs and the log level.</p>
    #   @return [Types::ModuleLoggingConfiguration]
    # @!attribute worker_logs
    #   <p>The Airflow worker logs published to CloudWatch Logs and the log level.</p>
    #   @return [Types::ModuleLoggingConfiguration]
    # @!attribute task_logs
    #   <p>The Airflow task logs published to CloudWatch Logs and the log level.</p>
    #   @return [Types::ModuleLoggingConfiguration]
    class LoggingConfiguration < Struct.new(
      :dag_processing_logs,
      :scheduler_logs,
      :webserver_logs,
      :worker_logs,
      :task_logs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the Apache Airflow log types to send to CloudWatch Logs.</p>
    # @!attribute dag_processing_logs
    #   <p>Publishes Airflow DAG processing logs to CloudWatch Logs.</p>
    #   @return [Types::ModuleLoggingConfigurationInput]
    # @!attribute scheduler_logs
    #   <p>Publishes Airflow scheduler logs to CloudWatch Logs.</p>
    #   @return [Types::ModuleLoggingConfigurationInput]
    # @!attribute webserver_logs
    #   <p>Publishes Airflow web server logs to CloudWatch Logs.</p>
    #   @return [Types::ModuleLoggingConfigurationInput]
    # @!attribute worker_logs
    #   <p>Publishes Airflow worker logs to CloudWatch Logs.</p>
    #   @return [Types::ModuleLoggingConfigurationInput]
    # @!attribute task_logs
    #   <p>Publishes Airflow task logs to CloudWatch Logs.</p>
    #   @return [Types::ModuleLoggingConfigurationInput]
    class LoggingConfigurationInput < Struct.new(
      :dag_processing_logs,
      :scheduler_logs,
      :webserver_logs,
      :worker_logs,
      :task_logs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             <b>Internal only</b>. Collects Apache Airflow metrics. To learn more about the metrics published to Amazon CloudWatch, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/cw-metrics.html">Amazon MWAA performance metrics in Amazon CloudWatch</a>.</p>
    # @deprecated
    #   This type is for internal use and not meant for public use. Data set for this type will be ignored.
    # @!attribute metric_name
    #   <p>
    #               <b>Internal only</b>. The name of the metric.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>
    #               <b>Internal only</b>. The time the metric data was received.</p>
    #   @return [Time]
    # @!attribute dimensions
    #   <p>
    #               <b>Internal only</b>. The dimensions associated with the metric.</p>
    #   @return [Array<Types::Dimension>]
    # @!attribute value
    #   <p>
    #               <b>Internal only</b>. The value for the metric.</p>
    #   @return [Float]
    # @!attribute unit
    #   <p>
    #               <b>Internal only</b>. The unit used to store the metric.</p>
    #   @return [String]
    # @!attribute statistic_values
    #   <p>
    #               <b>Internal only</b>. The statistical values for the metric.</p>
    #   @return [Types::StatisticSet]
    class MetricDatum < Struct.new(
      :metric_name,
      :timestamp,
      :dimensions,
      :value,
      :unit,
      :statistic_values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the Apache Airflow log details for the log type (e.g. <code>DagProcessingLogs</code>).</p>
    # @!attribute enabled
    #   <p>Indicates whether the Apache Airflow log type (e.g. <code>DagProcessingLogs</code>) is enabled.</p>
    #   @return [Boolean]
    # @!attribute log_level
    #   <p>The Apache Airflow log level for the log type (e.g. <code>DagProcessingLogs</code>). </p>
    #   @return [String]
    # @!attribute cloud_watch_log_group_arn
    #   <p>The Amazon Resource Name (ARN) for the CloudWatch Logs group where the Apache Airflow log type (e.g. <code>DagProcessingLogs</code>) is published. For example, <code>arn:aws:logs:us-east-1:123456789012:log-group:airflow-MyMWAAEnvironment-MwaaEnvironment-DAGProcessing:*</code>.</p>
    #   @return [String]
    class ModuleLoggingConfiguration < Struct.new(
      :enabled,
      :log_level,
      :cloud_watch_log_group_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Enables the Apache Airflow log type (e.g. <code>DagProcessingLogs</code>) and defines the log level to send to CloudWatch Logs (e.g. <code>INFO</code>).</p>
    # @!attribute enabled
    #   <p>Indicates whether to enable the Apache Airflow log type (e.g. <code>DagProcessingLogs</code>).</p>
    #   @return [Boolean]
    # @!attribute log_level
    #   <p>Defines the Apache Airflow log level (e.g. <code>INFO</code>) to send to CloudWatch Logs.</p>
    #   @return [String]
    class ModuleLoggingConfigurationInput < Struct.new(
      :enabled,
      :log_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the VPC networking components used to secure and enable network traffic between the Amazon Web Services resources for your environment. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/networking-about.html">About networking on Amazon MWAA</a>.</p>
    # @!attribute subnet_ids
    #   <p>A list of subnet IDs. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/networking-about.html">About networking on Amazon MWAA</a>.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>A list of security group IDs. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/vpc-security.html">Security in your VPC on Amazon MWAA</a>.</p>
    #   @return [Array<String>]
    class NetworkConfiguration < Struct.new(
      :subnet_ids,
      :security_group_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @deprecated
    #   This type is for internal use and not meant for public use. Data set for this type will be ignored.
    # @!attribute environment_name
    #   <p>
    #               <b>Internal only</b>. The name of the environment.</p>
    #   @return [String]
    # @!attribute metric_data
    #   <p>
    #               <b>Internal only</b>. Publishes metrics to Amazon CloudWatch. To learn more about the metrics published to Amazon CloudWatch, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/cw-metrics.html">Amazon MWAA performance metrics in Amazon CloudWatch</a>.</p>
    #   @return [Array<Types::MetricDatum>]
    class PublishMetricsOperationInput < Struct.new(
      :environment_name,
      :metric_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @deprecated
    #   This type is for internal use and not meant for public use. Data set for this type will be ignored.
    class PublishMetricsOperationOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>ResourceNotFoundException: The resource is not available.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An exception indicating that a client-side error occurred during the Apache Airflow
    #             REST API call.</p>
    # @!attribute rest_api_status_code
    #   <p>The HTTP status code returned by the Apache Airflow REST API call.</p>
    #   @return [Integer]
    # @!attribute rest_api_response
    #   <p>The error response data from the Apache Airflow REST API call, provided as a JSON
    #               object.</p>
    #   @return [JSON]
    class RestApiClientException < Struct.new(
      :rest_api_status_code,
      :rest_api_response,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An exception indicating that a server-side error occurred during the Apache Airflow
    #             REST API call.</p>
    # @!attribute rest_api_status_code
    #   <p>The HTTP status code returned by the Apache Airflow REST API call.</p>
    #   @return [Integer]
    # @!attribute rest_api_response
    #   <p>The error response data from the Apache Airflow REST API call, provided as a JSON
    #               object.</p>
    #   @return [JSON]
    class RestApiServerException < Struct.new(
      :rest_api_status_code,
      :rest_api_response,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>
    #             <b>Internal only</b>. Represents a set of statistics that describe a specific metric. To learn more about the metrics published to Amazon CloudWatch, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/cw-metrics.html">Amazon MWAA performance metrics in Amazon CloudWatch</a>.</p>
    # @deprecated
    #   This type is for internal use and not meant for public use. Data set for this type will be ignored.
    # @!attribute sample_count
    #   <p>
    #               <b>Internal only</b>. The number of samples used for the statistic set.</p>
    #   @return [Integer]
    # @!attribute sum
    #   <p>
    #               <b>Internal only</b>. The sum of values for the sample set.</p>
    #   @return [Float]
    # @!attribute minimum
    #   <p>
    #               <b>Internal only</b>. The minimum value of the sample set.</p>
    #   @return [Float]
    # @!attribute maximum
    #   <p>
    #               <b>Internal only</b>. The maximum value of the sample set.</p>
    #   @return [Float]
    class StatisticSet < Struct.new(
      :sample_count,
      :sum,
      :minimum,
      :maximum,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon MWAA environment. For example, <code>arn:aws:airflow:us-east-1:123456789012:environment/MyMWAAEnvironment</code>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The key-value tag pairs you want to associate to your environment. For example, <code>"Environment": "Staging"</code>. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
    #   @return [Hash<String, String>]
    class TagResourceOperationInput < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceOperationOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon MWAA environment. For example, <code>arn:aws:airflow:us-east-1:123456789012:environment/MyMWAAEnvironment</code>.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The key-value tag pair you want to remove. For example, <code>"Environment": "Staging"</code>. </p>
    #   @return [Array<String>]
    class UntagResourceOperationInput < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOperationOutput < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of your Amazon MWAA environment. For example, <code>MyMWAAEnvironment</code>.</p>
    #   @return [String]
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the execution role in IAM that allows MWAA to access Amazon Web Services resources in your environment. For example, <code>arn:aws:iam::123456789:role/my-execution-role</code>. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-create-role.html">Amazon MWAA Execution role</a>.</p>
    #   @return [String]
    # @!attribute airflow_configuration_options
    #   <p>A list of key-value pairs containing the Apache Airflow configuration options you want to attach to your environment. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-env-variables.html">Apache Airflow configuration options</a>.</p>
    #   @return [Hash<String, String>]
    # @!attribute airflow_version
    #   <p>The Apache Airflow version for your environment. To upgrade your environment, specify a newer version of Apache Airflow supported by Amazon MWAA.</p>
    #            <p>Before you upgrade an environment, make sure your requirements, DAGs, plugins, and other resources used in your workflows are compatible with the new Apache Airflow version. For more information about updating
    #               your resources, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/upgrading-environment.html">Upgrading an Amazon MWAA environment</a>.</p>
    #            <p>Valid values: <code>1.10.12</code>, <code>2.0.2</code>, <code>2.2.2</code>,
    #                   <code>2.4.3</code>, <code>2.5.1</code>, <code>2.6.3</code>, <code>2.7.2</code>,
    #               <code>2.8.1</code>, <code>2.9.2</code>, <code>2.10.1</code>, and <code>2.10.3</code>.</p>
    #   @return [String]
    # @!attribute dag_s3_path
    #   <p>The relative path to the DAGs folder on your Amazon S3 bucket. For example, <code>dags</code>. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-folder.html">Adding or updating DAGs</a>.</p>
    #   @return [String]
    # @!attribute environment_class
    #   <p>The environment class type. Valid values: <code>mw1.micro</code>,
    #                   <code>mw1.small</code>, <code>mw1.medium</code>, <code>mw1.large</code>,
    #                   <code>mw1.xlarge</code>, and <code>mw1.2xlarge</code>. For more information, see
    #                   <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/environment-class.html">Amazon MWAA environment class</a>. </p>
    #   @return [String]
    # @!attribute logging_configuration
    #   <p>The Apache Airflow log types to send to CloudWatch Logs.</p>
    #   @return [Types::LoggingConfigurationInput]
    # @!attribute max_workers
    #   <p>The maximum number of workers that you want to run in your environment. MWAA scales the number of Apache Airflow workers up to the number you specify in the <code>MaxWorkers</code> field. For example, <code>20</code>. When there are no more tasks running, and no more in the queue, MWAA disposes of the extra workers leaving the one worker that is included with your environment, or the number you specify in <code>MinWorkers</code>.</p>
    #   @return [Integer]
    # @!attribute min_workers
    #   <p>The minimum number of workers that you want to run in your environment. MWAA scales the number of Apache Airflow workers up to the number you specify in the <code>MaxWorkers</code> field. When there are no more tasks running, and no more in the queue, MWAA disposes of the extra workers leaving the worker count you specify in the <code>MinWorkers</code> field. For example, <code>2</code>.</p>
    #   @return [Integer]
    # @!attribute max_webservers
    #   <p>
    #               The maximum number of web servers that you want to run in your environment.
    #               Amazon MWAA scales the number of Apache Airflow web servers up to the number you specify for <code>MaxWebservers</code>
    #               when you interact with your Apache Airflow environment using Apache Airflow REST API, or
    #               the Apache Airflow CLI. For example, in scenarios where your workload requires network calls to the Apache Airflow REST API with a high transaction-per-second (TPS)
    #               rate, Amazon MWAA will increase the number of web servers up to the number set in <code>MaxWebserers</code>. As TPS rates decrease
    #               Amazon MWAA disposes of the additional web servers, and scales down to the number set in <code>MinxWebserers</code>.
    #           </p>
    #            <p>Valid values: For environments larger than mw1.micro, accepts values from
    #                   <code>2</code> to <code>5</code>. Defaults to <code>2</code> for all environment
    #               sizes except mw1.micro, which defaults to <code>1</code>.</p>
    #   @return [Integer]
    # @!attribute min_webservers
    #   <p>
    #               The minimum number of web servers that you want to run in your environment.
    #               Amazon MWAA scales the number of Apache Airflow web servers up to the number you specify for <code>MaxWebservers</code>
    #               when you interact with your Apache Airflow environment using Apache Airflow REST API, or
    #               the Apache Airflow CLI. As the transaction-per-second rate, and the network load, decrease,
    #               Amazon MWAA disposes of the additional web servers, and scales down to the number set in <code>MinxWebserers</code>.
    #           </p>
    #            <p>Valid values: For environments larger than mw1.micro, accepts values from
    #                   <code>2</code> to <code>5</code>. Defaults to <code>2</code> for all environment
    #               sizes except mw1.micro, which defaults to <code>1</code>.</p>
    #   @return [Integer]
    # @!attribute worker_replacement_strategy
    #   <p>The worker replacement strategy to use when updating the environment.</p>
    #            <p>You can select one of the following strategies:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Forced -</b> Stops and replaces Apache Airflow workers without waiting for tasks to 
    #                       complete before an update.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Graceful -</b> Allows Apache Airflow workers to complete running tasks for up to 12 hours during an update before 
    #                       they're stopped and replaced.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute network_configuration
    #   <p>The VPC networking components used to secure and enable network traffic between the Amazon Web Services resources for your environment. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/networking-about.html">About networking on Amazon MWAA</a>.</p>
    #   @return [Types::UpdateNetworkConfigurationInput]
    # @!attribute plugins_s3_path
    #   <p>The relative path to the <code>plugins.zip</code> file on your Amazon S3 bucket. For example, <code>plugins.zip</code>. If specified, then the plugins.zip version is required. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import-plugins.html">Installing custom plugins</a>.</p>
    #   @return [String]
    # @!attribute plugins_s3_object_version
    #   <p>The version of the plugins.zip file on your Amazon S3 bucket. You must specify a version each time a <code>plugins.zip</code> file is updated. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html">How S3 Versioning works</a>.</p>
    #   @return [String]
    # @!attribute requirements_s3_path
    #   <p>The relative path to the <code>requirements.txt</code> file on your Amazon S3 bucket. For example, <code>requirements.txt</code>. If specified, then a file version is required. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/working-dags-dependencies.html">Installing Python dependencies</a>.</p>
    #   @return [String]
    # @!attribute requirements_s3_object_version
    #   <p>The version of the requirements.txt file on your Amazon S3 bucket. You must specify a version each time a <code>requirements.txt</code> file is updated. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html">How S3 Versioning works</a>.</p>
    #   @return [String]
    # @!attribute schedulers
    #   <p>The number of Apache Airflow schedulers to run in your Amazon MWAA environment.</p>
    #   @return [Integer]
    # @!attribute source_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon S3 bucket where your DAG code and supporting files are stored. For example, <code>arn:aws:s3:::my-airflow-bucket-unique-name</code>. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-s3-bucket.html">Create an Amazon S3 bucket for Amazon MWAA</a>.</p>
    #   @return [String]
    # @!attribute startup_script_s3_path
    #   <p>The relative path to the startup shell script in your Amazon S3 bucket. For example, <code>s3://mwaa-environment/startup.sh</code>.</p>
    #            <p>
    #               Amazon MWAA runs the script as your environment starts, and before running the Apache Airflow process.
    #               You can use this script to install dependencies, modify Apache Airflow configuration options, and set environment variables. For more information, see
    #               <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/using-startup-script.html">Using a startup script</a>.
    #           </p>
    #   @return [String]
    # @!attribute startup_script_s3_object_version
    #   <p>
    #               The version of the startup shell script in your Amazon S3 bucket. You must specify the <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html">version ID</a> that Amazon S3 assigns to the file
    #               every time you update the script.
    #           </p>
    #            <p>
    #               Version IDs are Unicode, UTF-8 encoded, URL-ready, opaque strings that are no more than 1,024 bytes long. The following is an example:
    #           </p>
    #            <p>
    #               <code>3sL4kqtJlcpXroDTDmJ+rmSpXd3dIbrHY+MTRCxf3vjVBH40Nr8X8gdRQBpUMLUo</code>
    #            </p>
    #            <p>
    #               For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/using-startup-script.html">Using a startup script</a>.
    #           </p>
    #   @return [String]
    # @!attribute webserver_access_mode
    #   <p>The Apache Airflow <i>Web server</i> access mode. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-networking.html">Apache Airflow access modes</a>.</p>
    #   @return [String]
    # @!attribute weekly_maintenance_window_start
    #   <p>The day and time of the week in Coordinated Universal Time (UTC) 24-hour standard time to start weekly maintenance updates of your environment in the following format: <code>DAY:HH:MM</code>. For example: <code>TUE:03:30</code>. You can specify a start time in 30 minute increments only.</p>
    #   @return [String]
    class UpdateEnvironmentOperationInput < Struct.new(
      :name,
      :execution_role_arn,
      :airflow_configuration_options,
      :airflow_version,
      :dag_s3_path,
      :environment_class,
      :logging_configuration,
      :max_workers,
      :min_workers,
      :max_webservers,
      :min_webservers,
      :worker_replacement_strategy,
      :network_configuration,
      :plugins_s3_path,
      :plugins_s3_object_version,
      :requirements_s3_path,
      :requirements_s3_object_version,
      :schedulers,
      :source_bucket_arn,
      :startup_script_s3_path,
      :startup_script_s3_object_version,
      :webserver_access_mode,
      :weekly_maintenance_window_start,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon MWAA environment. For example, <code>arn:aws:airflow:us-east-1:123456789012:environment/MyMWAAEnvironment</code>.</p>
    #   @return [String]
    class UpdateEnvironmentOperationOutput < Struct.new(
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the error(s) encountered with the last update of the environment.</p>
    # @!attribute error_code
    #   <p>The error code that corresponds to the error with the last update.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>The error message that corresponds to the error code.</p>
    #   @return [String]
    class UpdateError < Struct.new(
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the VPC networking components used to secure and enable network traffic between the Amazon Web Services resources for your environment. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/networking-about.html">About networking on Amazon MWAA</a>.</p>
    # @!attribute security_group_ids
    #   <p>A list of security group IDs. A security group must be attached to the same VPC as the subnets. For more information, see <a href="https://docs.aws.amazon.com/mwaa/latest/userguide/vpc-security.html">Security in your VPC on Amazon MWAA</a>.</p>
    #   @return [Array<String>]
    class UpdateNetworkConfigurationInput < Struct.new(
      :security_group_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>ValidationException: The provided input is not valid.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
