# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EMRServerless
  module Types

    # Information about an application. EMR Serverless uses applications to
    # run jobs.
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
    #   The EMR release version associated with the application.
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
      :network_configuration)
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
    #   The EMR release version associated with the application.
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
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for an application to automatically start on job
    # submission.
    #
    # @note When making an API call, you may pass AutoStartConfig
    #   data as a hash:
    #
    #       {
    #         enabled: false,
    #       }
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
    # @note When making an API call, you may pass AutoStopConfig
    #   data as a hash:
    #
    #       {
    #         enabled: false,
    #         idle_timeout_minutes: 1,
    #       }
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

    # @note When making an API call, you may pass CancelJobRunRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "ApplicationId", # required
    #         job_run_id: "JobRunId", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   The ID of the application on which the job run will be canceled.
    #   @return [String]
    #
    # @!attribute [rw] job_run_id
    #   The ID of the job run to cancel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/CancelJobRunRequest AWS API Documentation
    #
    class CancelJobRunRequest < Struct.new(
      :application_id,
      :job_run_id)
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

    # A configuration specification to be used when provisioning an
    # application. A configuration consists of a classification, properties,
    # and optional nested configurations. A classification refers to an
    # application-specific configuration file. Properties are the settings
    # you want to change in that file.
    #
    # @note When making an API call, you may pass Configuration
    #   data as a hash:
    #
    #       {
    #         classification: "String1024", # required
    #         properties: {
    #           "String1024" => "String1024",
    #         },
    #         configurations: [
    #           {
    #             classification: "String1024", # required
    #             properties: {
    #               "String1024" => "String1024",
    #             },
    #             configurations: {
    #               # recursive ConfigurationList
    #             },
    #           },
    #         ],
    #       }
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
    # @note When making an API call, you may pass ConfigurationOverrides
    #   data as a hash:
    #
    #       {
    #         application_configuration: [
    #           {
    #             classification: "String1024", # required
    #             properties: {
    #               "String1024" => "String1024",
    #             },
    #             configurations: {
    #               # recursive ConfigurationList
    #             },
    #           },
    #         ],
    #         monitoring_configuration: {
    #           s3_monitoring_configuration: {
    #             log_uri: "UriString",
    #             encryption_key_arn: "EncryptionKeyArn",
    #           },
    #           managed_persistence_monitoring_configuration: {
    #             enabled: false,
    #             encryption_key_arn: "EncryptionKeyArn",
    #           },
    #         },
    #       }
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

    # @note When making an API call, you may pass CreateApplicationRequest
    #   data as a hash:
    #
    #       {
    #         name: "ApplicationName",
    #         release_label: "ReleaseLabel", # required
    #         type: "EngineType", # required
    #         client_token: "ClientToken", # required
    #         initial_capacity: {
    #           "WorkerTypeString" => {
    #             worker_count: 1, # required
    #             worker_configuration: {
    #               cpu: "CpuSize", # required
    #               memory: "MemorySize", # required
    #               disk: "DiskSize",
    #             },
    #           },
    #         },
    #         maximum_capacity: {
    #           cpu: "CpuSize", # required
    #           memory: "MemorySize", # required
    #           disk: "DiskSize",
    #         },
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         auto_start_configuration: {
    #           enabled: false,
    #         },
    #         auto_stop_configuration: {
    #           enabled: false,
    #           idle_timeout_minutes: 1,
    #         },
    #         network_configuration: {
    #           subnet_ids: ["SubnetString"],
    #           security_group_ids: ["SecurityGroupString"],
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the application.
    #   @return [String]
    #
    # @!attribute [rw] release_label
    #   The EMR release version associated with the application.
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
      :network_configuration)
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

    # @note When making an API call, you may pass DeleteApplicationRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "ApplicationId", # required
    #       }
    #
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

    # @note When making an API call, you may pass GetApplicationRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "ApplicationId", # required
    #       }
    #
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

    # @note When making an API call, you may pass GetJobRunRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "ApplicationId", # required
    #         job_run_id: "JobRunId", # required
    #       }
    #
    # @!attribute [rw] application_id
    #   The ID of the application on which the job run is submitted.
    #   @return [String]
    #
    # @!attribute [rw] job_run_id
    #   The ID of the job run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/GetJobRunRequest AWS API Documentation
    #
    class GetJobRunRequest < Struct.new(
      :application_id,
      :job_run_id)
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
    # @note When making an API call, you may pass Hive
    #   data as a hash:
    #
    #       {
    #         query: "Query", # required
    #         init_query_file: "InitScriptPath",
    #         parameters: "HiveCliParameters",
    #       }
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

    # The initial capacity configuration per worker.
    #
    # @note When making an API call, you may pass InitialCapacityConfig
    #   data as a hash:
    #
    #       {
    #         worker_count: 1, # required
    #         worker_configuration: {
    #           cpu: "CpuSize", # required
    #           memory: "MemorySize", # required
    #           disk: "DiskSize",
    #         },
    #       }
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
    # Spark JAR, Hive query, or SparkSQL query, that you submit to an EMR
    # Serverless application.
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
    # @!attribute [rw] state
    #   The state of the job run.
    #   @return [String]
    #
    # @!attribute [rw] state_details
    #   The state details of the job run.
    #   @return [String]
    #
    # @!attribute [rw] release_label
    #   The EMR release version associated with the application your job is
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
    #   job start executing till the time job is terminated, rounded up to
    #   the nearest second.
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
      :state,
      :state_details,
      :release_label,
      :configuration_overrides,
      :job_driver,
      :tags,
      :total_resource_utilization,
      :network_configuration,
      :total_execution_duration_seconds)
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
    #   The EMR release version associated with the application your job is
    #   running on.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of job run, such as Spark or Hive.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/JobRunSummary AWS API Documentation
    #
    class JobRunSummary < Struct.new(
      :application_id,
      :id,
      :name,
      :arn,
      :created_by,
      :created_at,
      :updated_at,
      :execution_role,
      :state,
      :state_details,
      :release_label,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListApplicationsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         states: ["CREATING"], # accepts CREATING, CREATED, STARTING, STARTED, STOPPING, STOPPED, TERMINATED
    #       }
    #
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

    # @note When making an API call, you may pass ListJobRunsRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "ApplicationId", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #         created_at_after: Time.now,
    #         created_at_before: Time.now,
    #         states: ["SUBMITTED"], # accepts SUBMITTED, PENDING, SCHEDULED, RUNNING, SUCCESS, FAILED, CANCELLING, CANCELLED
    #       }
    #
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/ListJobRunsRequest AWS API Documentation
    #
    class ListJobRunsRequest < Struct.new(
      :application_id,
      :next_token,
      :max_results,
      :created_at_after,
      :created_at_before,
      :states)
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

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #       }
    #
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
    # @note When making an API call, you may pass ManagedPersistenceMonitoringConfiguration
    #   data as a hash:
    #
    #       {
    #         enabled: false,
    #         encryption_key_arn: "EncryptionKeyArn",
    #       }
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
    # @note When making an API call, you may pass MaximumAllowedResources
    #   data as a hash:
    #
    #       {
    #         cpu: "CpuSize", # required
    #         memory: "MemorySize", # required
    #         disk: "DiskSize",
    #       }
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
    # @note When making an API call, you may pass MonitoringConfiguration
    #   data as a hash:
    #
    #       {
    #         s3_monitoring_configuration: {
    #           log_uri: "UriString",
    #           encryption_key_arn: "EncryptionKeyArn",
    #         },
    #         managed_persistence_monitoring_configuration: {
    #           enabled: false,
    #           encryption_key_arn: "EncryptionKeyArn",
    #         },
    #       }
    #
    # @!attribute [rw] s3_monitoring_configuration
    #   The Amazon S3 configuration for monitoring log publishing.
    #   @return [Types::S3MonitoringConfiguration]
    #
    # @!attribute [rw] managed_persistence_monitoring_configuration
    #   The managed log persistence configuration for a job run.
    #   @return [Types::ManagedPersistenceMonitoringConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/MonitoringConfiguration AWS API Documentation
    #
    class MonitoringConfiguration < Struct.new(
      :s3_monitoring_configuration,
      :managed_persistence_monitoring_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # The network configuration for customer VPC connectivity.
    #
    # @note When making an API call, you may pass NetworkConfiguration
    #   data as a hash:
    #
    #       {
    #         subnet_ids: ["SubnetString"],
    #         security_group_ids: ["SecurityGroupString"],
    #       }
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

    # The Amazon S3 configuration for monitoring log publishing. You can
    # configure your jobs to send log information to Amazon S3.
    #
    # @note When making an API call, you may pass S3MonitoringConfiguration
    #   data as a hash:
    #
    #       {
    #         log_uri: "UriString",
    #         encryption_key_arn: "EncryptionKeyArn",
    #       }
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
    # @note When making an API call, you may pass SparkSubmit
    #   data as a hash:
    #
    #       {
    #         entry_point: "EntryPointPath", # required
    #         entry_point_arguments: ["EntryPointArgument"],
    #         spark_submit_parameters: "SparkSubmitParameters",
    #       }
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
      SENSITIVE = [:entry_point, :spark_submit_parameters]
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartApplicationRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "ApplicationId", # required
    #       }
    #
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

    # @note When making an API call, you may pass StartJobRunRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "ApplicationId", # required
    #         client_token: "ClientToken", # required
    #         execution_role_arn: "IAMRoleArn", # required
    #         job_driver: {
    #           spark_submit: {
    #             entry_point: "EntryPointPath", # required
    #             entry_point_arguments: ["EntryPointArgument"],
    #             spark_submit_parameters: "SparkSubmitParameters",
    #           },
    #           hive: {
    #             query: "Query", # required
    #             init_query_file: "InitScriptPath",
    #             parameters: "HiveCliParameters",
    #           },
    #         },
    #         configuration_overrides: {
    #           application_configuration: [
    #             {
    #               classification: "String1024", # required
    #               properties: {
    #                 "String1024" => "String1024",
    #               },
    #               configurations: {
    #                 # recursive ConfigurationList
    #               },
    #             },
    #           ],
    #           monitoring_configuration: {
    #             s3_monitoring_configuration: {
    #               log_uri: "UriString",
    #               encryption_key_arn: "EncryptionKeyArn",
    #             },
    #             managed_persistence_monitoring_configuration: {
    #               enabled: false,
    #               encryption_key_arn: "EncryptionKeyArn",
    #             },
    #           },
    #         },
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         execution_timeout_minutes: 1,
    #         name: "String256",
    #       }
    #
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/StartJobRunRequest AWS API Documentation
    #
    class StartJobRunRequest < Struct.new(
      :application_id,
      :client_token,
      :execution_role_arn,
      :job_driver,
      :configuration_overrides,
      :tags,
      :execution_timeout_minutes,
      :name)
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
    #   The output lists the execution role ARN of the job run.
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

    # @note When making an API call, you may pass StopApplicationRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "ApplicationId", # required
    #       }
    #
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

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
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

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
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

    # @note When making an API call, you may pass UpdateApplicationRequest
    #   data as a hash:
    #
    #       {
    #         application_id: "ApplicationId", # required
    #         client_token: "ClientToken", # required
    #         initial_capacity: {
    #           "WorkerTypeString" => {
    #             worker_count: 1, # required
    #             worker_configuration: {
    #               cpu: "CpuSize", # required
    #               memory: "MemorySize", # required
    #               disk: "DiskSize",
    #             },
    #           },
    #         },
    #         maximum_capacity: {
    #           cpu: "CpuSize", # required
    #           memory: "MemorySize", # required
    #           disk: "DiskSize",
    #         },
    #         auto_start_configuration: {
    #           enabled: false,
    #         },
    #         auto_stop_configuration: {
    #           enabled: false,
    #           idle_timeout_minutes: 1,
    #         },
    #         network_configuration: {
    #           subnet_ids: ["SubnetString"],
    #           security_group_ids: ["SecurityGroupString"],
    #         },
    #       }
    #
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/UpdateApplicationRequest AWS API Documentation
    #
    class UpdateApplicationRequest < Struct.new(
      :application_id,
      :client_token,
      :initial_capacity,
      :maximum_capacity,
      :auto_start_configuration,
      :auto_stop_configuration,
      :network_configuration)
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

    # The input fails to satisfy the constraints specified by an AWS
    # service.
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
    # @note When making an API call, you may pass WorkerResourceConfig
    #   data as a hash:
    #
    #       {
    #         cpu: "CpuSize", # required
    #         memory: "MemorySize", # required
    #         disk: "DiskSize",
    #       }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/emr-serverless-2021-07-13/WorkerResourceConfig AWS API Documentation
    #
    class WorkerResourceConfig < Struct.new(
      :cpu,
      :memory,
      :disk)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
