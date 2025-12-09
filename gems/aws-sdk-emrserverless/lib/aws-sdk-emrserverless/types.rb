# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EMRServerless
  module Types

    # Information about an application. Amazon EMR Serverless uses
    # applications to run jobs.
    #
    # @!attribute [rw] application_id
    #   The ID of the application.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the application.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the application.
    #   @return [String]
    #
    # @!attribute [rw] release_label
    #   The Amazon EMR release associated with the application.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of application, such as Spark or Hive.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the application.
    #   @return [String]
    #
    # @!attribute [rw] state_details
    #   The state details of the application.
    #   @return [String]
    #
    # @!attribute [rw] initial_capacity
    #   The initial capacity of the application.
    #   @return [Hash<String,Types::InitialCapacityConfig>]
    #
    # @!attribute [rw] maximum_capacity
    #   The maximum capacity of the application. This is cumulative across
    #   all workers at any given point in time during the lifespan of the
    #   application is created. No new resources will be created once any
    #   one of the defined limits is hit.
    #   @return [Types::MaximumAllowedResources]
    #
    # @!attribute [rw] created_at
    #   The date and time when the application run was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the application run was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the application.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] auto_start_configuration
    #   The configuration for an application to automatically start on job
    #   submission.
    #   @return [Types::AutoStartConfig]
    #
    # @!attribute [rw] auto_stop_configuration
    #   The configuration for an application to automatically stop after a
    #   certain amount of time being idle.
    #   @return [Types::AutoStopConfig]
    #
    # @!attribute [rw] network_configuration
    #   The network configuration for customer VPC connectivity for the
    #   application.
    #   @return [Types::NetworkConfiguration]
    #
    # @!attribute [rw] architecture
    #   The CPU architecture of an application.
    #   @return [String]
    #
    # @!attribute [rw] image_configuration
    #   The image configuration applied to all worker types.
    #   @return [Types::ImageConfiguration]
    #
    # @!attribute [rw] worker_type_specifications
    #   The specification applied to each worker type.
    #   @return [Hash<String,Types::WorkerTypeSpecification>]
    #
    # @!attribute [rw] runtime_configuration
    #   The [Configuration][1] specifications of an application. Each
    #   configuration consists of a classification and properties. You use
    #   this parameter when creating or updating an application. To see the
    #   runtimeConfiguration object of an application, run the
    #   [GetApplication][2] API operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/emr-serverless/latest/APIReference/API_Configuration.html
    #   [2]: https://docs.aws.amazon.com/emr-serverless/latest/APIReference/API_GetApplication.html
    #   @return [Array<Types::Configuration>]
    #
    # @!attribute [rw] monitoring_configuration
    #   The configuration setting for monitoring.
    #   @return [Types::MonitoringConfiguration]
    #
    # @!attribute [rw] interactive_configuration
    #   The interactive configuration object that enables the interactive
    #   use cases for an application.
    #   @return [Types::InteractiveConfiguration]
    #
    # @!attribute [rw] scheduler_configuration
    #   The scheduler configuration for batch and streaming jobs running on
    #   this application. Supported with release labels emr-7.0.0 and above.
    #   @return [Types::SchedulerConfiguration]
    #
    # @!attribute [rw] identity_center_configuration
    #   The IAM Identity Center configuration applied to enable trusted
    #   identity propagation.
    #   @return [Types::IdentityCenterConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/Application AWS API Documentation
    #
    class Application < Struct.new(
      :application_id,
      :name,
      :arn,
      :release_label,
      :type,
      :state,
      :state_details,
      :initial_capacity,
      :maximum_capacity,
      :created_at,
      :updated_at,
      :tags,
      :auto_start_configuration,
      :auto_stop_configuration,
      :network_configuration,
      :architecture,
      :image_configuration,
      :worker_type_specifications,
      :runtime_configuration,
      :monitoring_configuration,
      :interactive_configuration,
      :scheduler_configuration,
      :identity_center_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of attributes associated with an application.
    #
    # @!attribute [rw] id
    #   The ID of the application.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the application.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the application.
    #   @return [String]
    #
    # @!attribute [rw] release_label
    #   The Amazon EMR release associated with the application.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of application, such as Spark or Hive.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the application.
    #   @return [String]
    #
    # @!attribute [rw] state_details
    #   The state details of the application.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the application was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the application was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] architecture
    #   The CPU architecture of an application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/ApplicationSummary AWS API Documentation
    #
    class ApplicationSummary < Struct.new(
      :id,
      :name,
      :arn,
      :release_label,
      :type,
      :state,
      :state_details,
      :created_at,
      :updated_at,
      :architecture)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for an application to automatically start on job
    # submission.
    #
    # @!attribute [rw] enabled
    #   Enables the application to automatically start on job submission.
    #   Defaults to true.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/AutoStartConfig AWS API Documentation
    #
    class AutoStartConfig < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for an application to automatically stop after a
    # certain amount of time being idle.
    #
    # @!attribute [rw] enabled
    #   Enables the application to automatically stop after a certain amount
    #   of time being idle. Defaults to true.
    #   @return [Boolean]
    #
    # @!attribute [rw] idle_timeout_minutes
    #   The amount of idle time in minutes after which your application will
    #   automatically stop. Defaults to 15 minutes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/AutoStopConfig AWS API Documentation
    #
    class AutoStopConfig < Struct.new(
      :enabled,
      :idle_timeout_minutes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The ID of the application on which the job run will be canceled.
    #   @return [String]
    #
    # @!attribute [rw] job_run_id
    #   The ID of the job run to cancel.
    #   @return [String]
    #
    # @!attribute [rw] shutdown_grace_period_in_seconds
    #   The duration in seconds to wait before forcefully terminating the
    #   job after cancellation is requested.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/CancelJobRunRequest AWS API Documentation
    #
    class CancelJobRunRequest < Struct.new(
      :application_id,
      :job_run_id,
      :shutdown_grace_period_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The output contains the application ID on which the job run is
    #   cancelled.
    #   @return [String]
    #
    # @!attribute [rw] job_run_id
    #   The output contains the ID of the cancelled job run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/CancelJobRunResponse AWS API Documentation
    #
    class CancelJobRunResponse < Struct.new(
      :application_id,
      :job_run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon CloudWatch configuration for monitoring logs. You can
    # configure your jobs to send log information to CloudWatch.
    #
    # @!attribute [rw] enabled
    #   Enables CloudWatch logging.
    #   @return [Boolean]
    #
    # @!attribute [rw] log_group_name
    #   The name of the log group in Amazon CloudWatch Logs where you want
    #   to publish your logs.
    #   @return [String]
    #
    # @!attribute [rw] log_stream_name_prefix
    #   Prefix for the CloudWatch log stream name.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key_arn
    #   The Key Management Service (KMS) key ARN to encrypt the logs that
    #   you store in CloudWatch Logs.
    #   @return [String]
    #
    # @!attribute [rw] log_types
    #   The types of logs that you want to publish to CloudWatch. If you
    #   don't specify any log types, driver STDOUT and STDERR logs will be
    #   published to CloudWatch Logs by default. For more information
    #   including the supported worker types for Hive and Spark, see
    #   [Logging for EMR Serverless with CloudWatch][1].
    #
    #   * **Key Valid Values**: `SPARK_DRIVER`, `SPARK_EXECUTOR`,
    #     `HIVE_DRIVER`, `TEZ_TASK`
    #
    #   * **Array Members Valid Values**: `STDOUT`, `STDERR`, `HIVE_LOG`,
    #     `TEZ_AM`, `SYSTEM_LOGS`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/emr/latest/EMR-Serverless-UserGuide/logging.html#jobs-log-storage-cw
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/CloudWatchLoggingConfiguration AWS API Documentation
    #
    class CloudWatchLoggingConfiguration < Struct.new(
      :enabled,
      :log_group_name,
      :log_stream_name_prefix,
      :encryption_key_arn,
      :log_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # A configuration specification to be used when provisioning an
    # application. A configuration consists of a classification, properties,
    # and optional nested configurations. A classification refers to an
    # application-specific configuration file. Properties are the settings
    # you want to change in that file.
    #
    # @!attribute [rw] classification
    #   The classification within a configuration.
    #   @return [String]
    #
    # @!attribute [rw] properties
    #   A set of properties specified within a configuration classification.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] configurations
    #   A list of additional configurations to apply within a configuration
    #   object.
    #   @return [Array<Types::Configuration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/Configuration AWS API Documentation
    #
    class Configuration < Struct.new(
      :classification,
      :properties,
      :configurations)
      SENSITIVE = [:properties]
      include Aws::Structure
    end

    # A configuration specification to be used to override existing
    # configurations.
    #
    # @!attribute [rw] application_configuration
    #   The override configurations for the application.
    #   @return [Array<Types::Configuration>]
    #
    # @!attribute [rw] monitoring_configuration
    #   The override configurations for monitoring.
    #   @return [Types::MonitoringConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/ConfigurationOverrides AWS API Documentation
    #
    class ConfigurationOverrides < Struct.new(
      :application_configuration,
      :monitoring_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request could not be processed because of conflict in the current
    # state of the resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the application.
    #   @return [String]
    #
    # @!attribute [rw] release_label
    #   The Amazon EMR release associated with the application.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of application you want to start, such as Spark or Hive.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The client idempotency token of the application to create. Its value
    #   must be unique for each request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] initial_capacity
    #   The capacity to initialize when the application is created.
    #   @return [Hash<String,Types::InitialCapacityConfig>]
    #
    # @!attribute [rw] maximum_capacity
    #   The maximum capacity to allocate when the application is created.
    #   This is cumulative across all workers at any given point in time,
    #   not just when an application is created. No new resources will be
    #   created once any one of the defined limits is hit.
    #   @return [Types::MaximumAllowedResources]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the application.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] auto_start_configuration
    #   The configuration for an application to automatically start on job
    #   submission.
    #   @return [Types::AutoStartConfig]
    #
    # @!attribute [rw] auto_stop_configuration
    #   The configuration for an application to automatically stop after a
    #   certain amount of time being idle.
    #   @return [Types::AutoStopConfig]
    #
    # @!attribute [rw] network_configuration
    #   The network configuration for customer VPC connectivity.
    #   @return [Types::NetworkConfiguration]
    #
    # @!attribute [rw] architecture
    #   The CPU architecture of an application.
    #   @return [String]
    #
    # @!attribute [rw] image_configuration
    #   The image configuration for all worker types. You can either set
    #   this parameter or `imageConfiguration` for each worker type in
    #   `workerTypeSpecifications`.
    #   @return [Types::ImageConfigurationInput]
    #
    # @!attribute [rw] worker_type_specifications
    #   The key-value pairs that specify worker type to
    #   `WorkerTypeSpecificationInput`. This parameter must contain all
    #   valid worker types for a Spark or Hive application. Valid worker
    #   types include `Driver` and `Executor` for Spark applications and
    #   `HiveDriver` and `TezTask` for Hive applications. You can either set
    #   image details in this parameter for each worker type, or in
    #   `imageConfiguration` for all worker types.
    #   @return [Hash<String,Types::WorkerTypeSpecificationInput>]
    #
    # @!attribute [rw] runtime_configuration
    #   The [Configuration][1] specifications to use when creating an
    #   application. Each configuration consists of a classification and
    #   properties. This configuration is applied to all the job runs
    #   submitted under the application.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/emr-serverless/latest/APIReference/API_Configuration.html
    #   @return [Array<Types::Configuration>]
    #
    # @!attribute [rw] monitoring_configuration
    #   The configuration setting for monitoring.
    #   @return [Types::MonitoringConfiguration]
    #
    # @!attribute [rw] interactive_configuration
    #   The interactive configuration object that enables the interactive
    #   use cases to use when running an application.
    #   @return [Types::InteractiveConfiguration]
    #
    # @!attribute [rw] scheduler_configuration
    #   The scheduler configuration for batch and streaming jobs running on
    #   this application. Supported with release labels emr-7.0.0 and above.
    #   @return [Types::SchedulerConfiguration]
    #
    # @!attribute [rw] identity_center_configuration
    #   The IAM Identity Center Configuration accepts the Identity Center
    #   instance parameter required to enable trusted identity propagation.
    #   This configuration allows identity propagation between integrated
    #   services and the Identity Center instance.
    #   @return [Types::IdentityCenterConfigurationInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/CreateApplicationRequest AWS API Documentation
    #
    class CreateApplicationRequest < Struct.new(
      :name,
      :release_label,
      :type,
      :client_token,
      :initial_capacity,
      :maximum_capacity,
      :tags,
      :auto_start_configuration,
      :auto_stop_configuration,
      :network_configuration,
      :architecture,
      :image_configuration,
      :worker_type_specifications,
      :runtime_configuration,
      :monitoring_configuration,
      :interactive_configuration,
      :scheduler_configuration,
      :identity_center_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The output contains the application ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The output contains the name of the application.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The output contains the ARN of the application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/CreateApplicationResponse AWS API Documentation
    #
    class CreateApplicationResponse < Struct.new(
      :application_id,
      :name,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The ID of the application that will be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/DeleteApplicationRequest AWS API Documentation
    #
    class DeleteApplicationRequest < Struct.new(
      :application_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/DeleteApplicationResponse AWS API Documentation
    #
    class DeleteApplicationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_id
    #   The ID of the application that will be described.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/GetApplicationRequest AWS API Documentation
    #
    class GetApplicationRequest < Struct.new(
      :application_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application
    #   The output displays information about the specified application.
    #   @return [Types::Application]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/GetApplicationResponse AWS API Documentation
    #
    class GetApplicationResponse < Struct.new(
      :application)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The ID of the application.
    #   @return [String]
    #
    # @!attribute [rw] job_run_id
    #   The ID of the job run.
    #   @return [String]
    #
    # @!attribute [rw] attempt
    #   An optimal parameter that indicates the amount of attempts for the
    #   job. If not specified, this value defaults to the attempt of the
    #   latest job.
    #   @return [Integer]
    #
    # @!attribute [rw] access_system_profile_logs
    #   Allows access to system profile logs for Lake Formation-enabled
    #   jobs. Default is false.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/GetDashboardForJobRunRequest AWS API Documentation
    #
    class GetDashboardForJobRunRequest < Struct.new(
      :application_id,
      :job_run_id,
      :attempt,
      :access_system_profile_logs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] url
    #   The URL to view job run's dashboard.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/GetDashboardForJobRunResponse AWS API Documentation
    #
    class GetDashboardForJobRunResponse < Struct.new(
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The ID of the application on which the job run is submitted.
    #   @return [String]
    #
    # @!attribute [rw] job_run_id
    #   The ID of the job run.
    #   @return [String]
    #
    # @!attribute [rw] attempt
    #   An optimal parameter that indicates the amount of attempts for the
    #   job. If not specified, this value defaults to the attempt of the
    #   latest job.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/GetJobRunRequest AWS API Documentation
    #
    class GetJobRunRequest < Struct.new(
      :application_id,
      :job_run_id,
      :attempt)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_run
    #   The output displays information about the job run.
    #   @return [Types::JobRun]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/GetJobRunResponse AWS API Documentation
    #
    class GetJobRunResponse < Struct.new(
      :job_run)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configurations for the Hive job driver.
    #
    # @!attribute [rw] query
    #   The query for the Hive job run.
    #   @return [String]
    #
    # @!attribute [rw] init_query_file
    #   The query file for the Hive job run.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The parameters for the Hive job run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/Hive AWS API Documentation
    #
    class Hive < Struct.new(
      :query,
      :init_query_file,
      :parameters)
      SENSITIVE = [:query, :init_query_file, :parameters]
      include Aws::Structure
    end

    # The IAM Identity Center Configuration accepts the Identity Center
    # instance parameter required to enable trusted identity propagation.
    # This configuration allows identity propagation between integrated
    # services and the Identity Center instance.
    #
    # @!attribute [rw] identity_center_instance_arn
    #   The ARN of the IAM Identity Center instance.
    #   @return [String]
    #
    # @!attribute [rw] identity_center_application_arn
    #   The ARN of the EMR Serverless created IAM Identity Center
    #   Application that provides trusted-identity propagation.
    #   @return [String]
    #
    # @!attribute [rw] user_background_sessions_enabled
    #   Enables user background sessions for this application so Livy
    #   sessions can continue running after users log out of their
    #   interactive notebook or their Identity Center sessions expire.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/IdentityCenterConfiguration AWS API Documentation
    #
    class IdentityCenterConfiguration < Struct.new(
      :identity_center_instance_arn,
      :identity_center_application_arn,
      :user_background_sessions_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # The IAM Identity Center Configuration accepts the Identity Center
    # instance parameter required to enable trusted identity propagation.
    # This configuration allows identity propagation between integrated
    # services and the Identity Center instance.
    #
    # @!attribute [rw] identity_center_instance_arn
    #   The ARN of the IAM Identity Center instance.
    #   @return [String]
    #
    # @!attribute [rw] user_background_sessions_enabled
    #   Enables user background sessions for this application so Livy
    #   sessions can continue running after users log out of their
    #   interactive notebook or their Identity Center sessions expire.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/IdentityCenterConfigurationInput AWS API Documentation
    #
    class IdentityCenterConfigurationInput < Struct.new(
      :identity_center_instance_arn,
      :user_background_sessions_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # The applied image configuration.
    #
    # @!attribute [rw] image_uri
    #   The image URI.
    #   @return [String]
    #
    # @!attribute [rw] resolved_image_digest
    #   The SHA256 digest of the image URI. This indicates which specific
    #   image the application is configured for. The image digest doesn't
    #   exist until an application has started.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/ImageConfiguration AWS API Documentation
    #
    class ImageConfiguration < Struct.new(
      :image_uri,
      :resolved_image_digest)
      SENSITIVE = []
      include Aws::Structure
    end

    # The image configuration.
    #
    # @!attribute [rw] image_uri
    #   The URI of an image in the Amazon ECR registry. This field is
    #   required when you create a new application. If you leave this field
    #   blank in an update, Amazon EMR will remove the image configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/ImageConfigurationInput AWS API Documentation
    #
    class ImageConfigurationInput < Struct.new(
      :image_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # The initial capacity configuration per worker.
    #
    # @!attribute [rw] worker_count
    #   The number of workers in the initial capacity configuration.
    #   @return [Integer]
    #
    # @!attribute [rw] worker_configuration
    #   The resource configuration of the initial capacity configuration.
    #   @return [Types::WorkerResourceConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/InitialCapacityConfig AWS API Documentation
    #
    class InitialCapacityConfig < Struct.new(
      :worker_count,
      :worker_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration to use to enable the different types of interactive
    # use cases in an application.
    #
    # @!attribute [rw] studio_enabled
    #   Enables you to connect an application to Amazon EMR Studio to run
    #   interactive workloads in a notebook.
    #   @return [Boolean]
    #
    # @!attribute [rw] livy_endpoint_enabled
    #   Enables an Apache Livy endpoint that you can connect to and run
    #   interactive jobs.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/InteractiveConfiguration AWS API Documentation
    #
    class InteractiveConfiguration < Struct.new(
      :studio_enabled,
      :livy_endpoint_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request processing failed because of an error or failure with the
    # service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The driver that the job runs on.
    #
    # @note JobDriver is a union - when making an API calls you must set exactly one of the members.
    #
    # @note JobDriver is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of JobDriver corresponding to the set member.
    #
    # @!attribute [rw] spark_submit
    #   The job driver parameters specified for Spark.
    #   @return [Types::SparkSubmit]
    #
    # @!attribute [rw] hive
    #   The job driver parameters specified for Hive.
    #   @return [Types::Hive]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/JobDriver AWS API Documentation
    #
    class JobDriver < Struct.new(
      :spark_submit,
      :hive,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class SparkSubmit < JobDriver; end
      class Hive < JobDriver; end
      class Unknown < JobDriver; end
    end

    # Information about a job run. A job run is a unit of work, such as a
    # Spark JAR, Hive query, or SparkSQL query, that you submit to an Amazon
    # EMR Serverless application.
    #
    # @!attribute [rw] application_id
    #   The ID of the application the job is running on.
    #   @return [String]
    #
    # @!attribute [rw] job_run_id
    #   The ID of the job run.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The optional job run name. This doesn't have to be unique.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The execution role ARN of the job run.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   The user who created the job run.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the job run was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the job run was updated.
    #   @return [Time]
    #
    # @!attribute [rw] execution_role
    #   The execution role ARN of the job run.
    #   @return [String]
    #
    # @!attribute [rw] execution_iam_policy
    #   Optional IAM policy. The resulting job IAM role permissions will be
    #   an intersection of the policies passed and the policy associated
    #   with your job execution role.
    #   @return [Types::JobRunExecutionIamPolicy]
    #
    # @!attribute [rw] state
    #   The state of the job run.
    #   @return [String]
    #
    # @!attribute [rw] state_details
    #   The state details of the job run.
    #   @return [String]
    #
    # @!attribute [rw] release_label
    #   The Amazon EMR release associated with the application your job is
    #   running on.
    #   @return [String]
    #
    # @!attribute [rw] configuration_overrides
    #   The configuration settings that are used to override default
    #   configuration.
    #   @return [Types::ConfigurationOverrides]
    #
    # @!attribute [rw] job_driver
    #   The job driver for the job run.
    #   @return [Types::JobDriver]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the job run.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] total_resource_utilization
    #   The aggregate vCPU, memory, and storage resources used from the time
    #   the job starts to execute, until the time the job terminates,
    #   rounded up to the nearest second.
    #   @return [Types::TotalResourceUtilization]
    #
    # @!attribute [rw] network_configuration
    #   The network configuration for customer VPC connectivity.
    #   @return [Types::NetworkConfiguration]
    #
    # @!attribute [rw] total_execution_duration_seconds
    #   The job run total execution duration in seconds. This field is only
    #   available for job runs in a `COMPLETED`, `FAILED`, or `CANCELLED`
    #   state.
    #   @return [Integer]
    #
    # @!attribute [rw] execution_timeout_minutes
    #   Returns the job run timeout value from the `StartJobRun` call. If no
    #   timeout was specified, then it returns the default timeout of 720
    #   minutes.
    #   @return [Integer]
    #
    # @!attribute [rw] billed_resource_utilization
    #   The aggregate vCPU, memory, and storage that Amazon Web Services has
    #   billed for the job run. The billed resources include a 1-minute
    #   minimum usage for workers, plus additional storage over 20 GB per
    #   worker. Note that billed resources do not include usage for idle
    #   pre-initialized workers.
    #   @return [Types::ResourceUtilization]
    #
    # @!attribute [rw] mode
    #   The mode of the job run.
    #   @return [String]
    #
    # @!attribute [rw] retry_policy
    #   The retry policy of the job run.
    #   @return [Types::RetryPolicy]
    #
    # @!attribute [rw] attempt
    #   The attempt of the job run.
    #   @return [Integer]
    #
    # @!attribute [rw] attempt_created_at
    #   The date and time of when the job run attempt was created.
    #   @return [Time]
    #
    # @!attribute [rw] attempt_updated_at
    #   The date and time of when the job run attempt was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] started_at
    #   The date and time when the job moved to the RUNNING state.
    #   @return [Time]
    #
    # @!attribute [rw] ended_at
    #   The date and time when the job was terminated.
    #   @return [Time]
    #
    # @!attribute [rw] queued_duration_milliseconds
    #   The total time for a job in the QUEUED state in milliseconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/JobRun AWS API Documentation
    #
    class JobRun < Struct.new(
      :application_id,
      :job_run_id,
      :name,
      :arn,
      :created_by,
      :created_at,
      :updated_at,
      :execution_role,
      :execution_iam_policy,
      :state,
      :state_details,
      :release_label,
      :configuration_overrides,
      :job_driver,
      :tags,
      :total_resource_utilization,
      :network_configuration,
      :total_execution_duration_seconds,
      :execution_timeout_minutes,
      :billed_resource_utilization,
      :mode,
      :retry_policy,
      :attempt,
      :attempt_created_at,
      :attempt_updated_at,
      :started_at,
      :ended_at,
      :queued_duration_milliseconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of attributes associated with a job run attempt.
    #
    # @!attribute [rw] application_id
    #   The ID of the application the job is running on.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the job run attempt.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the job run attempt.
    #   @return [String]
    #
    # @!attribute [rw] mode
    #   The mode of the job run attempt.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the job run.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   The user who created the job run.
    #   @return [String]
    #
    # @!attribute [rw] job_created_at
    #   The date and time of when the job run was created.
    #   @return [Time]
    #
    # @!attribute [rw] created_at
    #   The date and time when the job run attempt was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time of when the job run attempt was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] execution_role
    #   The Amazon Resource Name (ARN) of the execution role of the job
    #   run..
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the job run attempt.
    #   @return [String]
    #
    # @!attribute [rw] state_details
    #   The state details of the job run attempt.
    #   @return [String]
    #
    # @!attribute [rw] release_label
    #   The Amazon EMR release label of the job run attempt.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the job run, such as Spark or Hive.
    #   @return [String]
    #
    # @!attribute [rw] attempt
    #   The attempt number of the job run execution.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/JobRunAttemptSummary AWS API Documentation
    #
    class JobRunAttemptSummary < Struct.new(
      :application_id,
      :id,
      :name,
      :mode,
      :arn,
      :created_by,
      :job_created_at,
      :created_at,
      :updated_at,
      :execution_role,
      :state,
      :state_details,
      :release_label,
      :type,
      :attempt)
      SENSITIVE = []
      include Aws::Structure
    end

    # Optional IAM policy. The resulting job IAM role permissions will be an
    # intersection of the policies passed and the policy associated with
    # your job execution role.
    #
    # @!attribute [rw] policy
    #   An IAM inline policy to use as an execution IAM policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_arns
    #   A list of Amazon Resource Names (ARNs) to use as an execution IAM
    #   policy.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/JobRunExecutionIamPolicy AWS API Documentation
    #
    class JobRunExecutionIamPolicy < Struct.new(
      :policy,
      :policy_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of attributes associated with a job run.
    #
    # @!attribute [rw] application_id
    #   The ID of the application the job is running on.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The ID of the job run.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The optional job run name. This doesn't have to be unique.
    #   @return [String]
    #
    # @!attribute [rw] mode
    #   The mode of the job run.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the job run.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   The user who created the job run.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the job run was created.
    #   @return [Time]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the job run was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] execution_role
    #   The execution role ARN of the job run.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the job run.
    #   @return [String]
    #
    # @!attribute [rw] state_details
    #   The state details of the job run.
    #   @return [String]
    #
    # @!attribute [rw] release_label
    #   The Amazon EMR release associated with the application your job is
    #   running on.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of job run, such as Spark or Hive.
    #   @return [String]
    #
    # @!attribute [rw] attempt
    #   The attempt number of the job run execution.
    #   @return [Integer]
    #
    # @!attribute [rw] attempt_created_at
    #   The date and time of when the job run attempt was created.
    #   @return [Time]
    #
    # @!attribute [rw] attempt_updated_at
    #   The date and time of when the job run attempt was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/JobRunSummary AWS API Documentation
    #
    class JobRunSummary < Struct.new(
      :application_id,
      :id,
      :name,
      :mode,
      :arn,
      :created_by,
      :created_at,
      :updated_at,
      :execution_role,
      :state,
      :state_details,
      :release_label,
      :type,
      :attempt,
      :attempt_created_at,
      :attempt_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of application results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of applications that can be listed.
    #   @return [Integer]
    #
    # @!attribute [rw] states
    #   An optional filter for application states. Note that if this filter
    #   contains multiple states, the resulting list will be grouped by the
    #   state.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/ListApplicationsRequest AWS API Documentation
    #
    class ListApplicationsRequest < Struct.new(
      :next_token,
      :max_results,
      :states)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] applications
    #   The output lists the specified applications.
    #   @return [Array<Types::ApplicationSummary>]
    #
    # @!attribute [rw] next_token
    #   The output displays the token for the next set of application
    #   results. This is required for pagination and is available as a
    #   response of the previous request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/ListApplicationsResponse AWS API Documentation
    #
    class ListApplicationsResponse < Struct.new(
      :applications,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The ID of the application for which to list job runs.
    #   @return [String]
    #
    # @!attribute [rw] job_run_id
    #   The ID of the job run to list.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of job run attempt results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of job run attempts to list.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/ListJobRunAttemptsRequest AWS API Documentation
    #
    class ListJobRunAttemptsRequest < Struct.new(
      :application_id,
      :job_run_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_run_attempts
    #   The array of the listed job run attempt objects.
    #   @return [Array<Types::JobRunAttemptSummary>]
    #
    # @!attribute [rw] next_token
    #   The output displays the token for the next set of application
    #   results. This is required for pagination and is available as a
    #   response of the previous request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/ListJobRunAttemptsResponse AWS API Documentation
    #
    class ListJobRunAttemptsResponse < Struct.new(
      :job_run_attempts,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The ID of the application for which to list the job run.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of job run results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of job runs that can be listed.
    #   @return [Integer]
    #
    # @!attribute [rw] created_at_after
    #   The lower bound of the option to filter by creation date and time.
    #   @return [Time]
    #
    # @!attribute [rw] created_at_before
    #   The upper bound of the option to filter by creation date and time.
    #   @return [Time]
    #
    # @!attribute [rw] states
    #   An optional filter for job run states. Note that if this filter
    #   contains multiple states, the resulting list will be grouped by the
    #   state.
    #   @return [Array<String>]
    #
    # @!attribute [rw] mode
    #   The mode of the job runs to list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/ListJobRunsRequest AWS API Documentation
    #
    class ListJobRunsRequest < Struct.new(
      :application_id,
      :next_token,
      :max_results,
      :created_at_after,
      :created_at_before,
      :states,
      :mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_runs
    #   The output lists information about the specified job runs.
    #   @return [Array<Types::JobRunSummary>]
    #
    # @!attribute [rw] next_token
    #   The output displays the token for the next set of job run results.
    #   This is required for pagination and is available as a response of
    #   the previous request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/ListJobRunsResponse AWS API Documentation
    #
    class ListJobRunsResponse < Struct.new(
      :job_runs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that identifies the resource to list
    #   the tags for. Currently, the supported resources are Amazon EMR
    #   Serverless applications and job runs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/ListTagsForResourceRequest AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The managed log persistence configuration for a job run.
    #
    # @!attribute [rw] enabled
    #   Enables managed logging and defaults to true. If set to false,
    #   managed logging will be turned off.
    #   @return [Boolean]
    #
    # @!attribute [rw] encryption_key_arn
    #   The KMS key ARN to encrypt the logs stored in managed log
    #   persistence.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/ManagedPersistenceMonitoringConfiguration AWS API Documentation
    #
    class ManagedPersistenceMonitoringConfiguration < Struct.new(
      :enabled,
      :encryption_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum allowed cumulative resources for an application. No new
    # resources will be created once the limit is hit.
    #
    # @!attribute [rw] cpu
    #   The maximum allowed CPU for an application.
    #   @return [String]
    #
    # @!attribute [rw] memory
    #   The maximum allowed resources for an application.
    #   @return [String]
    #
    # @!attribute [rw] disk
    #   The maximum allowed disk for an application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/MaximumAllowedResources AWS API Documentation
    #
    class MaximumAllowedResources < Struct.new(
      :cpu,
      :memory,
      :disk)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration setting for monitoring.
    #
    # @!attribute [rw] s3_monitoring_configuration
    #   The Amazon S3 configuration for monitoring log publishing.
    #   @return [Types::S3MonitoringConfiguration]
    #
    # @!attribute [rw] managed_persistence_monitoring_configuration
    #   The managed log persistence configuration for a job run.
    #   @return [Types::ManagedPersistenceMonitoringConfiguration]
    #
    # @!attribute [rw] cloud_watch_logging_configuration
    #   The Amazon CloudWatch configuration for monitoring logs. You can
    #   configure your jobs to send log information to CloudWatch.
    #   @return [Types::CloudWatchLoggingConfiguration]
    #
    # @!attribute [rw] prometheus_monitoring_configuration
    #   The monitoring configuration object you can configure to send
    #   metrics to Amazon Managed Service for Prometheus for a job run.
    #   @return [Types::PrometheusMonitoringConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/MonitoringConfiguration AWS API Documentation
    #
    class MonitoringConfiguration < Struct.new(
      :s3_monitoring_configuration,
      :managed_persistence_monitoring_configuration,
      :cloud_watch_logging_configuration,
      :prometheus_monitoring_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The network configuration for customer VPC connectivity.
    #
    # @!attribute [rw] subnet_ids
    #   The array of subnet Ids for customer VPC connectivity.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   The array of security group Ids for customer VPC connectivity.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/NetworkConfiguration AWS API Documentation
    #
    class NetworkConfiguration < Struct.new(
      :subnet_ids,
      :security_group_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # The monitoring configuration object you can configure to send metrics
    # to Amazon Managed Service for Prometheus for a job run.
    #
    # @!attribute [rw] remote_write_url
    #   The remote write URL in the Amazon Managed Service for Prometheus
    #   workspace to send metrics to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/PrometheusMonitoringConfiguration AWS API Documentation
    #
    class PrometheusMonitoringConfiguration < Struct.new(
      :remote_write_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource utilization for memory, storage, and vCPU for jobs.
    #
    # @!attribute [rw] v_cpu_hour
    #   The aggregated vCPU used per hour from the time the job starts
    #   executing until the job is terminated.
    #   @return [Float]
    #
    # @!attribute [rw] memory_gb_hour
    #   The aggregated memory used per hour from the time the job starts
    #   executing until the job is terminated.
    #   @return [Float]
    #
    # @!attribute [rw] storage_gb_hour
    #   The aggregated storage used per hour from the time the job starts
    #   executing until the job is terminated.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/ResourceUtilization AWS API Documentation
    #
    class ResourceUtilization < Struct.new(
      :v_cpu_hour,
      :memory_gb_hour,
      :storage_gb_hour)
      SENSITIVE = []
      include Aws::Structure
    end

    # The retry policy to use for a job run.
    #
    # @!attribute [rw] max_attempts
    #   Maximum number of attempts for the job run. This parameter is only
    #   applicable for `BATCH` mode.
    #   @return [Integer]
    #
    # @!attribute [rw] max_failed_attempts_per_hour
    #   Maximum number of failed attempts per hour. This \[arameter is only
    #   applicable for `STREAMING` mode.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/RetryPolicy AWS API Documentation
    #
    class RetryPolicy < Struct.new(
      :max_attempts,
      :max_failed_attempts_per_hour)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon S3 configuration for monitoring log publishing. You can
    # configure your jobs to send log information to Amazon S3.
    #
    # @!attribute [rw] log_uri
    #   The Amazon S3 destination URI for log publishing.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key_arn
    #   The KMS key ARN to encrypt the logs published to the given Amazon S3
    #   destination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/S3MonitoringConfiguration AWS API Documentation
    #
    class S3MonitoringConfiguration < Struct.new(
      :log_uri,
      :encryption_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The scheduler configuration for batch and streaming jobs running on
    # this application. Supported with release labels emr-7.0.0 and above.
    #
    # @!attribute [rw] queue_timeout_minutes
    #   The maximum duration in minutes for the job in QUEUED state. If
    #   scheduler configuration is enabled on your application, the default
    #   value is 360 minutes (6 hours). The valid range is from 15 to 720.
    #   @return [Integer]
    #
    # @!attribute [rw] max_concurrent_runs
    #   The maximum concurrent job runs on this application. If scheduler
    #   configuration is enabled on your application, the default value is
    #   15. The valid range is 1 to 1000.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/SchedulerConfiguration AWS API Documentation
    #
    class SchedulerConfiguration < Struct.new(
      :queue_timeout_minutes,
      :max_concurrent_runs)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum number of resources per account has been reached.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configurations for the Spark submit job driver.
    #
    # @!attribute [rw] entry_point
    #   The entry point for the Spark submit job run.
    #   @return [String]
    #
    # @!attribute [rw] entry_point_arguments
    #   The arguments for the Spark submit job run.
    #   @return [Array<String>]
    #
    # @!attribute [rw] spark_submit_parameters
    #   The parameters for the Spark submit job run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/SparkSubmit AWS API Documentation
    #
    class SparkSubmit < Struct.new(
      :entry_point,
      :entry_point_arguments,
      :spark_submit_parameters)
      SENSITIVE = [:entry_point, :entry_point_arguments, :spark_submit_parameters]
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The ID of the application to start.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/StartApplicationRequest AWS API Documentation
    #
    class StartApplicationRequest < Struct.new(
      :application_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/StartApplicationResponse AWS API Documentation
    #
    class StartApplicationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_id
    #   The ID of the application on which to run the job.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The client idempotency token of the job run to start. Its value must
    #   be unique for each request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] execution_role_arn
    #   The execution role ARN for the job run.
    #   @return [String]
    #
    # @!attribute [rw] execution_iam_policy
    #   You can pass an optional IAM policy. The resulting job IAM role
    #   permissions will be an intersection of this policy and the policy
    #   associated with your job execution role.
    #   @return [Types::JobRunExecutionIamPolicy]
    #
    # @!attribute [rw] job_driver
    #   The job driver for the job run.
    #   @return [Types::JobDriver]
    #
    # @!attribute [rw] configuration_overrides
    #   The configuration overrides for the job run.
    #   @return [Types::ConfigurationOverrides]
    #
    # @!attribute [rw] tags
    #   The tags assigned to the job run.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] execution_timeout_minutes
    #   The maximum duration for the job run to run. If the job run runs
    #   beyond this duration, it will be automatically cancelled.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The optional job run name. This doesn't have to be unique.
    #   @return [String]
    #
    # @!attribute [rw] mode
    #   The mode of the job run when it starts.
    #   @return [String]
    #
    # @!attribute [rw] retry_policy
    #   The retry policy when job run starts.
    #   @return [Types::RetryPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/StartJobRunRequest AWS API Documentation
    #
    class StartJobRunRequest < Struct.new(
      :application_id,
      :client_token,
      :execution_role_arn,
      :execution_iam_policy,
      :job_driver,
      :configuration_overrides,
      :tags,
      :execution_timeout_minutes,
      :name,
      :mode,
      :retry_policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   This output displays the application ID on which the job run was
    #   submitted.
    #   @return [String]
    #
    # @!attribute [rw] job_run_id
    #   The output contains the ID of the started job run.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   This output displays the ARN of the job run..
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/StartJobRunResponse AWS API Documentation
    #
    class StartJobRunResponse < Struct.new(
      :application_id,
      :job_run_id,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_id
    #   The ID of the application to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/StopApplicationRequest AWS API Documentation
    #
    class StopApplicationRequest < Struct.new(
      :application_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/StopApplicationResponse AWS API Documentation
    #
    class StopApplicationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that identifies the resource to list
    #   the tags for. Currently, the supported resources are Amazon EMR
    #   Serverless applications and job runs.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to the resource. A tag is an array of key-value
    #   pairs.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The aggregate vCPU, memory, and storage resources used from the time
    # job start executing till the time job is terminated, rounded up to the
    # nearest second.
    #
    # @!attribute [rw] v_cpu_hour
    #   The aggregated vCPU used per hour from the time job start executing
    #   till the time job is terminated.
    #   @return [Float]
    #
    # @!attribute [rw] memory_gb_hour
    #   The aggregated memory used per hour from the time job start
    #   executing till the time job is terminated.
    #   @return [Float]
    #
    # @!attribute [rw] storage_gb_hour
    #   The aggregated storage used per hour from the time job start
    #   executing till the time job is terminated.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/TotalResourceUtilization AWS API Documentation
    #
    class TotalResourceUtilization < Struct.new(
      :v_cpu_hour,
      :memory_gb_hour,
      :storage_gb_hour)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that identifies the resource to list
    #   the tags for. Currently, the supported resources are Amazon EMR
    #   Serverless applications and job runs.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the tags to be removed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] application_id
    #   The ID of the application to update.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The client idempotency token of the application to update. Its value
    #   must be unique for each request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] initial_capacity
    #   The capacity to initialize when the application is updated.
    #   @return [Hash<String,Types::InitialCapacityConfig>]
    #
    # @!attribute [rw] maximum_capacity
    #   The maximum capacity to allocate when the application is updated.
    #   This is cumulative across all workers at any given point in time
    #   during the lifespan of the application. No new resources will be
    #   created once any one of the defined limits is hit.
    #   @return [Types::MaximumAllowedResources]
    #
    # @!attribute [rw] auto_start_configuration
    #   The configuration for an application to automatically start on job
    #   submission.
    #   @return [Types::AutoStartConfig]
    #
    # @!attribute [rw] auto_stop_configuration
    #   The configuration for an application to automatically stop after a
    #   certain amount of time being idle.
    #   @return [Types::AutoStopConfig]
    #
    # @!attribute [rw] network_configuration
    #   The network configuration for customer VPC connectivity.
    #   @return [Types::NetworkConfiguration]
    #
    # @!attribute [rw] architecture
    #   The CPU architecture of an application.
    #   @return [String]
    #
    # @!attribute [rw] image_configuration
    #   The image configuration to be used for all worker types. You can
    #   either set this parameter or `imageConfiguration` for each worker
    #   type in `WorkerTypeSpecificationInput`.
    #   @return [Types::ImageConfigurationInput]
    #
    # @!attribute [rw] worker_type_specifications
    #   The key-value pairs that specify worker type to
    #   `WorkerTypeSpecificationInput`. This parameter must contain all
    #   valid worker types for a Spark or Hive application. Valid worker
    #   types include `Driver` and `Executor` for Spark applications and
    #   `HiveDriver` and `TezTask` for Hive applications. You can either set
    #   image details in this parameter for each worker type, or in
    #   `imageConfiguration` for all worker types.
    #   @return [Hash<String,Types::WorkerTypeSpecificationInput>]
    #
    # @!attribute [rw] interactive_configuration
    #   The interactive configuration object that contains new interactive
    #   use cases when the application is updated.
    #   @return [Types::InteractiveConfiguration]
    #
    # @!attribute [rw] release_label
    #   The Amazon EMR release label for the application. You can change the
    #   release label to use a different release of Amazon EMR.
    #   @return [String]
    #
    # @!attribute [rw] runtime_configuration
    #   The [Configuration][1] specifications to use when updating an
    #   application. Each configuration consists of a classification and
    #   properties. This configuration is applied across all the job runs
    #   submitted under the application.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/emr-serverless/latest/APIReference/API_Configuration.html
    #   @return [Array<Types::Configuration>]
    #
    # @!attribute [rw] monitoring_configuration
    #   The configuration setting for monitoring.
    #   @return [Types::MonitoringConfiguration]
    #
    # @!attribute [rw] scheduler_configuration
    #   The scheduler configuration for batch and streaming jobs running on
    #   this application. Supported with release labels emr-7.0.0 and above.
    #   @return [Types::SchedulerConfiguration]
    #
    # @!attribute [rw] identity_center_configuration
    #   Specifies the IAM Identity Center configuration used to enable or
    #   disable trusted identity propagation. When provided, this
    #   configuration determines how the application interacts with IAM
    #   Identity Center for user authentication and access control.
    #   @return [Types::IdentityCenterConfigurationInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/UpdateApplicationRequest AWS API Documentation
    #
    class UpdateApplicationRequest < Struct.new(
      :application_id,
      :client_token,
      :initial_capacity,
      :maximum_capacity,
      :auto_start_configuration,
      :auto_stop_configuration,
      :network_configuration,
      :architecture,
      :image_configuration,
      :worker_type_specifications,
      :interactive_configuration,
      :release_label,
      :runtime_configuration,
      :monitoring_configuration,
      :scheduler_configuration,
      :identity_center_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application
    #   Information about the updated application.
    #   @return [Types::Application]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/UpdateApplicationResponse AWS API Documentation
    #
    class UpdateApplicationResponse < Struct.new(
      :application)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to satisfy the constraints specified by an Amazon Web
    # Services service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The cumulative configuration requirements for every worker instance of
    # the worker type.
    #
    # @!attribute [rw] cpu
    #   The CPU requirements for every worker instance of the worker type.
    #   @return [String]
    #
    # @!attribute [rw] memory
    #   The memory requirements for every worker instance of the worker
    #   type.
    #   @return [String]
    #
    # @!attribute [rw] disk
    #   The disk requirements for every worker instance of the worker type.
    #   @return [String]
    #
    # @!attribute [rw] disk_type
    #   The disk type for every worker instance of the work type. Shuffle
    #   optimized disks have higher performance characteristics and are
    #   better for shuffle heavy workloads. Default is `STANDARD`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/WorkerResourceConfig AWS API Documentation
    #
    class WorkerResourceConfig < Struct.new(
      :cpu,
      :memory,
      :disk,
      :disk_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specifications for a worker type.
    #
    # @!attribute [rw] image_configuration
    #   The image configuration for a worker type.
    #   @return [Types::ImageConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/WorkerTypeSpecification AWS API Documentation
    #
    class WorkerTypeSpecification < Struct.new(
      :image_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specifications for a worker type.
    #
    # @!attribute [rw] image_configuration
    #   The image configuration for a worker type.
    #   @return [Types::ImageConfigurationInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/WorkerTypeSpecificationInput AWS API Documentation
    #
    class WorkerTypeSpecificationInput < Struct.new(
      :image_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

