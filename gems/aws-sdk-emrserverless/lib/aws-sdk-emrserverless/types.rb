# frozen_string_literal: true

# This is generated code!

module Aws::EMRServerless
  # This module contains the types returned by client operations.
  module Types

    # <p>Information about an application. Amazon EMR Serverless uses applications to run jobs.</p>
    # @!attribute application_id
    #   <p>The ID of the application.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the application.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the application.</p>
    #   @return [String]
    # @!attribute release_label
    #   <p>The Amazon EMR release associated with the application.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of application, such as Spark or Hive.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the application.</p>
    #   @return [String]
    # @!attribute state_details
    #   <p>The state details of the application.</p>
    #   @return [String]
    # @!attribute initial_capacity
    #   <p>The initial capacity of the application.</p>
    #   @return [Hash<String, Types::InitialCapacityConfig>]
    # @!attribute maximum_capacity
    #   <p>The maximum capacity of the application. This is cumulative across all workers at any given point in time during the lifespan of the application is created. No new resources will be created once any one of the defined limits is hit.</p>
    #   @return [Types::MaximumAllowedResources]
    # @!attribute created_at
    #   <p>The date and time when the application run was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time when the application run was last updated.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>The tags assigned to the application.</p>
    #   @return [Hash<String, String>]
    # @!attribute auto_start_configuration
    #   <p>The configuration for an application to automatically start on job submission.</p>
    #   @return [Types::AutoStartConfig]
    # @!attribute auto_stop_configuration
    #   <p>The configuration for an application to automatically stop after a certain amount of time being idle.</p>
    #   @return [Types::AutoStopConfig]
    # @!attribute network_configuration
    #   <p>The network configuration for customer VPC connectivity for the application.</p>
    #   @return [Types::NetworkConfiguration]
    # @!attribute architecture
    #   <p>The CPU architecture of an application.</p>
    #   @return [String]
    # @!attribute image_configuration
    #   <p>The image configuration applied to all worker types.</p>
    #   @return [Types::ImageConfiguration]
    # @!attribute worker_type_specifications
    #   <p>The specification applied to each worker type.</p>
    #   @return [Hash<String, Types::WorkerTypeSpecification>]
    # @!attribute runtime_configuration
    #   <p>The <a href="https://docs.aws.amazon.com/emr-serverless/latest/APIReference/API_Configuration.html">Configuration</a> specifications of an application. Each configuration consists of a classification and properties. You use this parameter when creating or updating an application. To see the runtimeConfiguration object of an application, run the <a href="https://docs.aws.amazon.com/emr-serverless/latest/APIReference/API_GetApplication.html">GetApplication</a> API operation.</p>
    #   @return [Array<Types::Configuration>]
    # @!attribute monitoring_configuration
    #   <p>The configuration setting for monitoring.</p>
    #   @return [Types::MonitoringConfiguration]
    # @!attribute disk_encryption_configuration
    #   <p>The configuration object that allows encrypting local disks.</p>
    #   @return [Types::DiskEncryptionConfiguration]
    # @!attribute interactive_configuration
    #   <p>The interactive configuration object that enables the interactive use cases for an application.</p>
    #   @return [Types::InteractiveConfiguration]
    # @!attribute scheduler_configuration
    #   <p>The scheduler configuration for batch and streaming jobs running on this application. Supported with release labels emr-7.0.0 and above.</p>
    #   @return [Types::SchedulerConfiguration]
    # @!attribute identity_center_configuration
    #   <p>The IAM Identity Center configuration applied to enable trusted identity propagation.</p>
    #   @return [Types::IdentityCenterConfiguration]
    # @!attribute job_level_cost_allocation_configuration
    #   <p>The configuration object that enables job level cost allocation.</p>
    #   @return [Types::JobLevelCostAllocationConfiguration]
    class Application < Struct.new(
      nil,
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
      :disk_encryption_configuration,
      :interactive_configuration,
      :scheduler_configuration,
      :identity_center_configuration,
      :job_level_cost_allocation_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The summary of attributes associated with an application.</p>
    # @!attribute id
    #   <p>The ID of the application.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the application.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the application.</p>
    #   @return [String]
    # @!attribute release_label
    #   <p>The Amazon EMR release associated with the application.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of application, such as Spark or Hive.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the application.</p>
    #   @return [String]
    # @!attribute state_details
    #   <p>The state details of the application.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the application was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time when the application was last updated.</p>
    #   @return [Time]
    # @!attribute architecture
    #   <p>The CPU architecture of an application.</p>
    #   @return [String]
    class ApplicationSummary < Struct.new(
      nil,
      :id,
      :name,
      :arn,
      :release_label,
      :type,
      :state,
      :state_details,
      :created_at,
      :updated_at,
      :architecture,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for an application to automatically start on job submission.</p>
    # @!attribute enabled
    #   <p>Enables the application to automatically start on job submission. Defaults to true.</p>
    #   @return [Boolean]
    class AutoStartConfig < Struct.new(
      nil,
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for an application to automatically stop after a certain amount of time being idle.</p>
    # @!attribute enabled
    #   <p>Enables the application to automatically stop after a certain amount of time being idle. Defaults to true.</p>
    #   @return [Boolean]
    # @!attribute idle_timeout_minutes
    #   <p>The amount of idle time in minutes after which your application will automatically stop. Defaults to 15 minutes.</p>
    #   @return [Integer]
    class AutoStopConfig < Struct.new(
      nil,
      :enabled,
      :idle_timeout_minutes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:idle_timeout_minutes] = nil unless options.key?(:idle_timeout_minutes)
        super
      end
    end

    # @!attribute application_id
    #   <p>The ID of the application on which the job run will be canceled.</p>
    #   @return [String]
    # @!attribute job_run_id
    #   <p>The ID of the job run to cancel.</p>
    #   @return [String]
    # @!attribute shutdown_grace_period_in_seconds
    #   <p>The duration in seconds to wait before forcefully terminating the job after cancellation is requested.</p>
    #   @return [Integer]
    class CancelJobRunInput < Struct.new(
      nil,
      :application_id,
      :job_run_id,
      :shutdown_grace_period_in_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The output contains the application ID on which the job run is cancelled.</p>
    #   @return [String]
    # @!attribute job_run_id
    #   <p>The output contains the ID of the cancelled job run.</p>
    #   @return [String]
    class CancelJobRunOutput < Struct.new(
      nil,
      :application_id,
      :job_run_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon CloudWatch configuration for monitoring logs. You can configure your jobs to send log information to CloudWatch.</p>
    # @!attribute enabled
    #   <p>Enables CloudWatch logging.</p>
    #   @return [Boolean]
    # @!attribute log_group_name
    #   <p>The name of the log group in Amazon CloudWatch Logs where you want to publish your logs.</p>
    #   @return [String]
    # @!attribute log_stream_name_prefix
    #   <p>Prefix for the CloudWatch log stream name.</p>
    #   @return [String]
    # @!attribute encryption_key_arn
    #   <p>The Key Management Service (KMS) key ARN to encrypt the logs that you store in CloudWatch Logs.</p>
    #   @return [String]
    # @!attribute log_types
    #   <p>The types of logs that you want to publish to CloudWatch. If you don't specify any log types, driver STDOUT and STDERR logs will be published to CloudWatch Logs by default. For more information including the supported worker types for Hive and Spark, see <a href="https://docs.aws.amazon.com/emr/latest/EMR-Serverless-UserGuide/logging.html#jobs-log-storage-cw">Logging for EMR Serverless with CloudWatch</a>.</p> <ul> <li> <p> <b>Key Valid Values</b>: <code>SPARK_DRIVER</code>, <code>SPARK_EXECUTOR</code>, <code>HIVE_DRIVER</code>, <code>TEZ_TASK</code> </p> </li> <li> <p> <b>Array Members Valid Values</b>: <code>STDOUT</code>, <code>STDERR</code>, <code>HIVE_LOG</code>, <code>TEZ_AM</code>, <code>SYSTEM_LOGS</code> </p> </li> </ul>
    #   @return [Hash<String, Array<String>>]
    class CloudWatchLoggingConfiguration < Struct.new(
      nil,
      :enabled,
      :log_group_name,
      :log_stream_name_prefix,
      :encryption_key_arn,
      :log_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A configuration specification to be used when provisioning an application. A configuration consists of a classification, properties, and optional nested configurations. A classification refers to an application-specific configuration file. Properties are the settings you want to change in that file.</p>
    # @!attribute classification
    #   <p>The classification within a configuration.</p>
    #   @return [String]
    # @!attribute properties
    #   <p>A set of properties specified within a configuration classification.</p>
    #   @return [Hash<String, String>]
    # @!attribute configurations
    #   <p>A list of additional configurations to apply within a configuration object.</p>
    #   @return [Array<Types::Configuration>]
    class Configuration < Struct.new(
      nil,
      :classification,
      :properties,
      :configurations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A configuration specification to be used to override existing configurations.</p>
    # @!attribute application_configuration
    #   <p>The override configurations for the application.</p>
    #   @return [Array<Types::Configuration>]
    # @!attribute monitoring_configuration
    #   <p>The override configurations for monitoring.</p>
    #   @return [Types::MonitoringConfiguration]
    # @!attribute disk_encryption_configuration
    #   <p>The override configuration to encrypt local disks.</p>
    #   @return [Types::DiskEncryptionConfiguration]
    class ConfigurationOverrides < Struct.new(
      nil,
      :application_configuration,
      :monitoring_configuration,
      :disk_encryption_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request could not be processed because of conflict in the current state of the resource.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the application.</p>
    #   @return [String]
    # @!attribute release_label
    #   <p>The Amazon EMR release associated with the application.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of application you want to start, such as Spark or Hive.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The client idempotency token of the application to create. Its value must be unique for each request.</p>
    #   @return [String]
    # @!attribute initial_capacity
    #   <p>The capacity to initialize when the application is created.</p>
    #   @return [Hash<String, Types::InitialCapacityConfig>]
    # @!attribute maximum_capacity
    #   <p>The maximum capacity to allocate when the application is created. This is cumulative across all workers at any given point in time, not just when an application is created. No new resources will be created once any one of the defined limits is hit.</p>
    #   @return [Types::MaximumAllowedResources]
    # @!attribute tags
    #   <p>The tags assigned to the application.</p>
    #   @return [Hash<String, String>]
    # @!attribute auto_start_configuration
    #   <p>The configuration for an application to automatically start on job submission.</p>
    #   @return [Types::AutoStartConfig]
    # @!attribute auto_stop_configuration
    #   <p>The configuration for an application to automatically stop after a certain amount of time being idle.</p>
    #   @return [Types::AutoStopConfig]
    # @!attribute network_configuration
    #   <p>The network configuration for customer VPC connectivity.</p>
    #   @return [Types::NetworkConfiguration]
    # @!attribute architecture
    #   <p>The CPU architecture of an application.</p>
    #   @return [String]
    # @!attribute image_configuration
    #   <p>The image configuration for all worker types. You can either set this parameter or <code>imageConfiguration</code> for each worker type in <code>workerTypeSpecifications</code>.</p>
    #   @return [Types::ImageConfigurationInput]
    # @!attribute worker_type_specifications
    #   <p>The key-value pairs that specify worker type to <code>WorkerTypeSpecificationInput</code>. This parameter must contain all valid worker types for a Spark or Hive application. Valid worker types include <code>Driver</code> and <code>Executor</code> for Spark applications and <code>HiveDriver</code> and <code>TezTask</code> for Hive applications. You can either set image details in this parameter for each worker type, or in <code>imageConfiguration</code> for all worker types.</p>
    #   @return [Hash<String, Types::WorkerTypeSpecificationInput>]
    # @!attribute runtime_configuration
    #   <p>The <a href="https://docs.aws.amazon.com/emr-serverless/latest/APIReference/API_Configuration.html">Configuration</a> specifications to use when creating an application. Each configuration consists of a classification and properties. This configuration is applied to all the job runs submitted under the application.</p>
    #   @return [Array<Types::Configuration>]
    # @!attribute monitoring_configuration
    #   <p>The configuration setting for monitoring.</p>
    #   @return [Types::MonitoringConfiguration]
    # @!attribute disk_encryption_configuration
    #   <p>The configuration object that allows encrypting local disks.</p>
    #   @return [Types::DiskEncryptionConfiguration]
    # @!attribute interactive_configuration
    #   <p>The interactive configuration object that enables the interactive use cases to use when running an application.</p>
    #   @return [Types::InteractiveConfiguration]
    # @!attribute scheduler_configuration
    #   <p>The scheduler configuration for batch and streaming jobs running on this application. Supported with release labels emr-7.0.0 and above.</p>
    #   @return [Types::SchedulerConfiguration]
    # @!attribute identity_center_configuration
    #   <p>The IAM Identity Center Configuration accepts the Identity Center instance parameter required to enable trusted identity propagation. This configuration allows identity propagation between integrated services and the Identity Center instance.</p>
    #   @return [Types::IdentityCenterConfigurationInput]
    # @!attribute job_level_cost_allocation_configuration
    #   <p>The configuration object that enables job level cost allocation.</p>
    #   @return [Types::JobLevelCostAllocationConfiguration]
    class CreateApplicationInput < Struct.new(
      nil,
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
      :disk_encryption_configuration,
      :interactive_configuration,
      :scheduler_configuration,
      :identity_center_configuration,
      :job_level_cost_allocation_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The output contains the application ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The output contains the name of the application.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The output contains the ARN of the application.</p>
    #   @return [String]
    class CreateApplicationOutput < Struct.new(
      nil,
      :application_id,
      :name,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The ID of the application that will be deleted.</p>
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

    # <p>The configuration object that allows encrypting local disks.</p>
    # @!attribute encryption_context
    #   <p>Specifies the optional encryption context that will be used when encrypting the data. An encryption context is a collection of non-secret key-value pairs that represent additional authenticated data. </p>
    #   @return [Hash<String, String>]
    # @!attribute encryption_key_arn
    #   <p>The KMS key ARN to encrypt local disks.</p>
    #   @return [String]
    class DiskEncryptionConfiguration < Struct.new(
      nil,
      :encryption_context,
      :encryption_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The ID of the application that will be described.</p>
    #   @return [String]
    class GetApplicationInput < Struct.new(
      nil,
      :application_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application
    #   <p>The output displays information about the specified application.</p>
    #   @return [Types::Application]
    class GetApplicationOutput < Struct.new(
      nil,
      :application,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The ID of the application.</p>
    #   @return [String]
    # @!attribute job_run_id
    #   <p>The ID of the job run.</p>
    #   @return [String]
    # @!attribute attempt
    #   <p>An optimal parameter that indicates the amount of attempts for the job. If not specified, this value defaults to the attempt of the latest job.</p>
    #   @return [Integer]
    # @!attribute access_system_profile_logs
    #   <p>Allows access to system profile logs for Lake Formation-enabled jobs. Default is false.</p>
    #   @return [Boolean]
    class GetDashboardForJobRunInput < Struct.new(
      nil,
      :application_id,
      :job_run_id,
      :attempt,
      :access_system_profile_logs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute url
    #   <p>The URL to view job run's dashboard.</p>
    #   @return [String]
    class GetDashboardForJobRunOutput < Struct.new(
      nil,
      :url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The ID of the application on which the job run is submitted.</p>
    #   @return [String]
    # @!attribute job_run_id
    #   <p>The ID of the job run.</p>
    #   @return [String]
    # @!attribute attempt
    #   <p>An optimal parameter that indicates the amount of attempts for the job. If not specified, this value defaults to the attempt of the latest job.</p>
    #   @return [Integer]
    class GetJobRunInput < Struct.new(
      nil,
      :application_id,
      :job_run_id,
      :attempt,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_run
    #   <p>The output displays information about the job run.</p>
    #   @return [Types::JobRun]
    class GetJobRunOutput < Struct.new(
      nil,
      :job_run,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The ID of the application that the resource belongs to.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource to access the dashboard for. Currently, only <code>Session</code> is supported.</p>
    #   @return [String]
    # @!attribute access_system_profile_logs
    #   <p>Allows access to system profile logs for Lake Formation-enabled sessions. Default is false.</p>
    #   @return [Boolean]
    class GetResourceDashboardRequest < Struct.new(
      nil,
      :application_id,
      :resource_id,
      :resource_type,
      :access_system_profile_logs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute url
    #   <p>A URL to the resource dashboard. For an active resource, this URL opens the live application UI. For a terminated resource, this URL opens the persistent application UI. This value is not included in the response if the URL is not available.</p>
    #   @return [String]
    class GetResourceDashboardResponse < Struct.new(
      nil,
      :url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The ID of the application that the session belongs to.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The ID of the session.</p>
    #   @return [String]
    class GetSessionEndpointRequest < Struct.new(
      nil,
      :application_id,
      :session_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The output contains the ID of the application.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The output contains the ID of the session.</p>
    #   @return [String]
    # @!attribute endpoint
    #   <p>The endpoint URL for connecting to the session.</p>
    #   @return [String]
    # @!attribute auth_token
    #   <p>The authentication token for connecting to the session endpoint. Call <code>GetSessionEndpoint</code> again to obtain a new token before it expires.</p>
    #   @return [String]
    # @!attribute auth_token_expires_at
    #   <p>The expiration time of the authentication token.</p>
    #   @return [Time]
    class GetSessionEndpointResponse < Struct.new(
      nil,
      :application_id,
      :session_id,
      :endpoint,
      :auth_token,
      :auth_token_expires_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The ID of the application that the session belongs to.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The ID of the session.</p>
    #   @return [String]
    class GetSessionRequest < Struct.new(
      nil,
      :application_id,
      :session_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute session
    #   <p>The output displays information about the session.</p>
    #   @return [Types::Session]
    class GetSessionResponse < Struct.new(
      nil,
      :session,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configurations for the Hive job driver.</p>
    # @!attribute query
    #   <p>The query for the Hive job run.</p>
    #   @return [String]
    # @!attribute init_query_file
    #   <p>The query file for the Hive job run.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The parameters for the Hive job run.</p>
    #   @return [String]
    class Hive < Struct.new(
      nil,
      :query,
      :init_query_file,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The IAM Identity Center Configuration accepts the Identity Center instance parameter required to enable trusted identity propagation. This configuration allows identity propagation between integrated services and the Identity Center instance.</p>
    # @!attribute identity_center_instance_arn
    #   <p>The ARN of the IAM Identity Center instance.</p>
    #   @return [String]
    # @!attribute identity_center_application_arn
    #   <p>The ARN of the EMR Serverless created IAM Identity Center Application that provides trusted-identity propagation.</p>
    #   @return [String]
    # @!attribute user_background_sessions_enabled
    #   <p>Enables user background sessions for this application so Livy sessions can continue running after users log out of their interactive notebook or their Identity Center sessions expire.</p>
    #   @return [Boolean]
    class IdentityCenterConfiguration < Struct.new(
      nil,
      :identity_center_instance_arn,
      :identity_center_application_arn,
      :user_background_sessions_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The IAM Identity Center Configuration accepts the Identity Center instance parameter required to enable trusted identity propagation. This configuration allows identity propagation between integrated services and the Identity Center instance.</p>
    # @!attribute identity_center_instance_arn
    #   <p>The ARN of the IAM Identity Center instance.</p>
    #   @return [String]
    # @!attribute user_background_sessions_enabled
    #   <p>Enables user background sessions for this application so Livy sessions can continue running after users log out of their interactive notebook or their Identity Center sessions expire.</p>
    #   @return [Boolean]
    class IdentityCenterConfigurationInput < Struct.new(
      nil,
      :identity_center_instance_arn,
      :user_background_sessions_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The applied image configuration.</p>
    # @!attribute image_uri
    #   <p>The image URI.</p>
    #   @return [String]
    # @!attribute resolved_image_digest
    #   <p>The SHA256 digest of the image URI. This indicates which specific image the application is configured for. The image digest doesn't exist until an application has started.</p>
    #   @return [String]
    # @!attribute application_level_digest_resolution
    #   <p>Boolean value indicating if the digest resolution is application level or workload level. If true, a custom image URI is resolved at application start time and all workloads submitted will use that image digest. If false, the custom image URI is resolved at the workload submission time.</p>
    #   @return [Boolean]
    class ImageConfiguration < Struct.new(
      nil,
      :image_uri,
      :resolved_image_digest,
      :application_level_digest_resolution,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The image configuration.</p>
    # @!attribute image_uri
    #   <p>The URI of an image in the Amazon ECR registry. This field is required when you create a new application. If you leave this field blank in an update, Amazon EMR will remove the image configuration.</p>
    #   @return [String]
    # @!attribute application_level_digest_resolution
    #   <p>Boolean value indicating if the digest resolution is application level or workload level. If true, a custom image URI is resolved at application start time and all workloads submitted will use that image digest. If false, the custom image URI is resolved at the workload submission time.</p>
    #   @return [Boolean]
    class ImageConfigurationInput < Struct.new(
      nil,
      :image_uri,
      :application_level_digest_resolution,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The initial capacity configuration per worker.</p>
    # @!attribute worker_count
    #   <p>The number of workers in the initial capacity configuration.</p>
    #   @return [Integer]
    # @!attribute worker_configuration
    #   <p>The resource configuration of the initial capacity configuration.</p>
    #   @note
    #     This shape is recommended
    #   @return [Types::WorkerResourceConfig]
    class InitialCapacityConfig < Struct.new(
      nil,
      :worker_count,
      :worker_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:worker_count] = 0 unless options.key?(:worker_count)
        super
      end
    end

    # <p>The configuration to use to enable the different types of interactive use cases in an application.</p>
    # @!attribute studio_enabled
    #   <p>Enables you to connect an application to Amazon EMR Studio to run interactive workloads in a notebook.</p>
    #   @return [Boolean]
    # @!attribute livy_endpoint_enabled
    #   <p>Enables an Apache Livy endpoint that you can connect to and run interactive jobs.</p>
    #   @return [Boolean]
    # @!attribute session_enabled
    #   <p>Enables interactive sessions on the application. When set to <code>true</code>, you can start interactive sessions using the <code>StartSession</code> operation.</p>
    #   @return [Boolean]
    class InteractiveConfiguration < Struct.new(
      nil,
      :studio_enabled,
      :livy_endpoint_enabled,
      :session_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request processing failed because of an error or failure with the service.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The driver that the job runs on.</p>
    # @!attribute spark_submit
    #   <p>The job driver parameters specified for Spark.</p>
    #   @return [Types::SparkSubmit]
    # @!attribute hive
    #   <p>The job driver parameters specified for Hive.</p>
    #   @return [Types::Hive]
    class JobDriver < Struct.new(
      :spark_submit,
      :hive,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class SparkSubmit < JobDriver; end
      class Hive < JobDriver; end
      class Unknown < JobDriver; end
    end

    # <p>The configuration object that enables job level cost allocation.</p>
    # @!attribute enabled
    #   <p>Enables job level cost allocation for the application.</p>
    #   @return [Boolean]
    class JobLevelCostAllocationConfiguration < Struct.new(
      nil,
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a job run. A job run is a unit of work, such as a Spark JAR, Hive query, or SparkSQL query, that you submit to an Amazon EMR Serverless application.</p>
    # @!attribute application_id
    #   <p>The ID of the application the job is running on.</p>
    #   @return [String]
    # @!attribute job_run_id
    #   <p>The ID of the job run.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The optional job run name. This doesn't have to be unique.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The execution role ARN of the job run.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The user who created the job run.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the job run was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time when the job run was updated.</p>
    #   @return [Time]
    # @!attribute execution_role
    #   <p>The execution role ARN of the job run.</p>
    #   @return [String]
    # @!attribute execution_iam_policy
    #   <p>Optional IAM policy. The resulting job IAM role permissions will be an intersection of the policies passed and the policy associated with your job execution role.</p>
    #   @return [Types::JobRunExecutionIamPolicy]
    # @!attribute state
    #   <p>The state of the job run.</p>
    #   @return [String]
    # @!attribute state_details
    #   <p>The state details of the job run.</p>
    #   @return [String]
    # @!attribute release_label
    #   <p>The Amazon EMR release associated with the application your job is running on.</p>
    #   @return [String]
    # @!attribute configuration_overrides
    #   <p>The configuration settings that are used to override default configuration.</p>
    #   @return [Types::ConfigurationOverrides]
    # @!attribute job_driver
    #   <p>The job driver for the job run.</p>
    #   @return [Types::JobDriver]
    # @!attribute tags
    #   <p>The tags assigned to the job run.</p>
    #   @return [Hash<String, String>]
    # @!attribute total_resource_utilization
    #   <p>The aggregate vCPU, memory, and storage resources used from the time the job starts to execute, until the time the job terminates, rounded up to the nearest second.</p>
    #   @return [Types::TotalResourceUtilization]
    # @!attribute network_configuration
    #   <p>The network configuration for customer VPC connectivity.</p>
    #   @return [Types::NetworkConfiguration]
    # @!attribute total_execution_duration_seconds
    #   <p>The job run total execution duration in seconds. This field is only available for job runs in a <code>COMPLETED</code>, <code>FAILED</code>, or <code>CANCELLED</code> state.</p>
    #   @return [Integer]
    # @!attribute execution_timeout_minutes
    #   <p>Returns the job run timeout value from the <code>StartJobRun</code> call. If you didn't specify a timeout, this value defaults to 720 minutes.</p> <p>For BATCH mode job runs, the maximum value is 10080 minutes (7 days) starting with Amazon EMR release 7.11.</p>
    #   @return [Integer]
    # @!attribute billed_resource_utilization
    #   <p>The aggregate vCPU, memory, and storage that Amazon Web Services has billed for the job run. The billed resources include a 1-minute minimum usage for workers, plus additional storage over 20 GB per worker. Note that billed resources do not include usage for idle pre-initialized workers.</p>
    #   @return [Types::ResourceUtilization]
    # @!attribute mode
    #   <p>The mode of the job run.</p>
    #   @return [String]
    # @!attribute retry_policy
    #   <p>The retry policy of the job run.</p>
    #   @return [Types::RetryPolicy]
    # @!attribute attempt
    #   <p>The attempt of the job run.</p>
    #   @return [Integer]
    # @!attribute attempt_created_at
    #   <p>The date and time of when the job run attempt was created.</p>
    #   @return [Time]
    # @!attribute attempt_updated_at
    #   <p>The date and time of when the job run attempt was last updated.</p>
    #   @return [Time]
    # @!attribute started_at
    #   <p>The date and time when the job moved to the RUNNING state.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The date and time when the job was terminated.</p>
    #   @return [Time]
    # @!attribute queued_duration_milliseconds
    #   <p>The total time for a job in the QUEUED state in milliseconds.</p>
    #   @return [Integer]
    # @!attribute image_configuration
    #   <p>The applied image configuration.</p>
    #   @return [Types::ImageConfiguration]
    # @!attribute worker_type_specifications
    #   <p>The specification applied to each worker type. Includes the JobRun-level ImageConfiguration when the applicationLevelDigestResolution is false for the application.</p>
    #   @return [Hash<String, Types::WorkerTypeSpecification>]
    class JobRun < Struct.new(
      nil,
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
      :queued_duration_milliseconds,
      :image_configuration,
      :worker_type_specifications,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:execution_timeout_minutes] = nil unless options.key?(:execution_timeout_minutes)
        super
      end
    end

    # <p>The summary of attributes associated with a job run attempt.</p>
    # @!attribute application_id
    #   <p>The ID of the application the job is running on.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the job run attempt.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the job run attempt.</p>
    #   @return [String]
    # @!attribute mode
    #   <p>The mode of the job run attempt.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the job run.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The user who created the job run.</p>
    #   @return [String]
    # @!attribute job_created_at
    #   <p>The date and time of when the job run was created.</p>
    #   @return [Time]
    # @!attribute created_at
    #   <p>The date and time when the job run attempt was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time of when the job run attempt was last updated.</p>
    #   @return [Time]
    # @!attribute execution_role
    #   <p>The Amazon Resource Name (ARN) of the execution role of the job run..</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the job run attempt.</p>
    #   @return [String]
    # @!attribute state_details
    #   <p>The state details of the job run attempt.</p>
    #   @return [String]
    # @!attribute release_label
    #   <p>The Amazon EMR release label of the job run attempt.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the job run, such as Spark or Hive.</p>
    #   @return [String]
    # @!attribute attempt
    #   <p>The attempt number of the job run execution.</p>
    #   @return [Integer]
    class JobRunAttemptSummary < Struct.new(
      nil,
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
      :attempt,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Optional IAM policy. The resulting job IAM role permissions will be an intersection of the policies passed and the policy associated with your job execution role.</p>
    # @!attribute policy
    #   <p>An IAM inline policy to use as an execution IAM policy.</p>
    #   @return [String]
    # @!attribute policy_arns
    #   <p>A list of Amazon Resource Names (ARNs) to use as an execution IAM policy.</p>
    #   @return [Array<String>]
    class JobRunExecutionIamPolicy < Struct.new(
      nil,
      :policy,
      :policy_arns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The summary of attributes associated with a job run.</p>
    # @!attribute application_id
    #   <p>The ID of the application the job is running on.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The ID of the job run.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The optional job run name. This doesn't have to be unique.</p>
    #   @return [String]
    # @!attribute mode
    #   <p>The mode of the job run.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The ARN of the job run.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The user who created the job run.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the job run was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time when the job run was last updated.</p>
    #   @return [Time]
    # @!attribute execution_role
    #   <p>The execution role ARN of the job run.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the job run.</p>
    #   @return [String]
    # @!attribute state_details
    #   <p>The state details of the job run.</p>
    #   @return [String]
    # @!attribute release_label
    #   <p>The Amazon EMR release associated with the application your job is running on.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of job run, such as Spark or Hive.</p>
    #   @return [String]
    # @!attribute attempt
    #   <p>The attempt number of the job run execution.</p>
    #   @return [Integer]
    # @!attribute attempt_created_at
    #   <p>The date and time of when the job run attempt was created.</p>
    #   @return [Time]
    # @!attribute attempt_updated_at
    #   <p>The date and time of when the job run attempt was last updated.</p>
    #   @return [Time]
    class JobRunSummary < Struct.new(
      nil,
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
      :attempt_updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of application results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of applications that can be listed.</p>
    #   @return [Integer]
    # @!attribute states
    #   <p>An optional filter for application states. Note that if this filter contains multiple states, the resulting list will be grouped by the state.</p>
    #   @return [Array<String>]
    class ListApplicationsInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      :states,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute applications
    #   <p>The output lists the specified applications.</p>
    #   @return [Array<Types::ApplicationSummary>]
    # @!attribute next_token
    #   <p>The output displays the token for the next set of application results. This is required for pagination and is available as a response of the previous request.</p>
    #   @return [String]
    class ListApplicationsOutput < Struct.new(
      nil,
      :applications,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The ID of the application for which to list job runs.</p>
    #   @return [String]
    # @!attribute job_run_id
    #   <p>The ID of the job run to list.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of job run attempt results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of job run attempts to list.</p>
    #   @return [Integer]
    class ListJobRunAttemptsRequest < Struct.new(
      nil,
      :application_id,
      :job_run_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_run_attempts
    #   <p>The array of the listed job run attempt objects.</p>
    #   @return [Array<Types::JobRunAttemptSummary>]
    # @!attribute next_token
    #   <p>The output displays the token for the next set of application results. This is required for pagination and is available as a response of the previous request.</p>
    #   @return [String]
    class ListJobRunAttemptsResponse < Struct.new(
      nil,
      :job_run_attempts,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The ID of the application for which to list the job run.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of job run results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of job runs that can be listed.</p>
    #   @return [Integer]
    # @!attribute created_at_after
    #   <p>The lower bound of the option to filter by creation date and time.</p>
    #   @return [Time]
    # @!attribute created_at_before
    #   <p>The upper bound of the option to filter by creation date and time.</p>
    #   @return [Time]
    # @!attribute states
    #   <p>An optional filter for job run states. Note that if this filter contains multiple states, the resulting list will be grouped by the state.</p>
    #   @return [Array<String>]
    # @!attribute mode
    #   <p>The mode of the job runs to list.</p>
    #   @return [String]
    class ListJobRunsInput < Struct.new(
      nil,
      :application_id,
      :next_token,
      :max_results,
      :created_at_after,
      :created_at_before,
      :states,
      :mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_runs
    #   <p>The output lists information about the specified job runs.</p>
    #   @return [Array<Types::JobRunSummary>]
    # @!attribute next_token
    #   <p>The output displays the token for the next set of job run results. This is required for pagination and is available as a response of the previous request.</p>
    #   @return [String]
    class ListJobRunsOutput < Struct.new(
      nil,
      :job_runs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The ID of the application to list sessions for.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token for the next set of session results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of sessions to return in each page of results.</p>
    #   @return [Integer]
    # @!attribute states
    #   <p>An optional filter for session states. Note that if this filter contains multiple states, the resulting list will be grouped by the state.</p>
    #   @return [Array<String>]
    # @!attribute created_at_after
    #   <p>The lower bound of the option to filter by creation date and time.</p>
    #   @return [Time]
    # @!attribute created_at_before
    #   <p>The upper bound of the option to filter by creation date and time.</p>
    #   @return [Time]
    class ListSessionsRequest < Struct.new(
      nil,
      :application_id,
      :next_token,
      :max_results,
      :states,
      :created_at_after,
      :created_at_before,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sessions
    #   <p>The output lists information about the specified sessions.</p>
    #   @return [Array<Types::SessionSummary>]
    # @!attribute next_token
    #   <p>The output displays the token for the next set of session results. This is required for pagination and is available as a response of the previous request.</p>
    #   @return [String]
    class ListSessionsResponse < Struct.new(
      nil,
      :sessions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource to list the tags for. Currently, the supported resources are Amazon EMR Serverless applications and job runs.</p>
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

    # <p>The managed log persistence configuration for a job run.</p>
    # @!attribute enabled
    #   <p>Enables managed logging and defaults to true. If set to false, managed logging will be turned off.</p>
    #   @return [Boolean]
    # @!attribute encryption_key_arn
    #   <p>The KMS key ARN to encrypt the logs stored in managed log persistence.</p>
    #   @return [String]
    class ManagedPersistenceMonitoringConfiguration < Struct.new(
      nil,
      :enabled,
      :encryption_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum allowed cumulative resources for an application. No new resources will be created once the limit is hit.</p>
    # @!attribute cpu
    #   <p>The maximum allowed CPU for an application.</p>
    #   @return [String]
    # @!attribute memory
    #   <p>The maximum allowed resources for an application.</p>
    #   @return [String]
    # @!attribute disk
    #   <p>The maximum allowed disk for an application.</p>
    #   @return [String]
    class MaximumAllowedResources < Struct.new(
      nil,
      :cpu,
      :memory,
      :disk,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration setting for monitoring.</p>
    # @!attribute s3_monitoring_configuration
    #   <p>The Amazon S3 configuration for monitoring log publishing.</p>
    #   @return [Types::S3MonitoringConfiguration]
    # @!attribute managed_persistence_monitoring_configuration
    #   <p>The managed log persistence configuration for a job run.</p>
    #   @return [Types::ManagedPersistenceMonitoringConfiguration]
    # @!attribute cloud_watch_logging_configuration
    #   <p>The Amazon CloudWatch configuration for monitoring logs. You can configure your jobs to send log information to CloudWatch.</p>
    #   @return [Types::CloudWatchLoggingConfiguration]
    # @!attribute prometheus_monitoring_configuration
    #   <p>The monitoring configuration object you can configure to send metrics to Amazon Managed Service for Prometheus for a job run.</p>
    #   @return [Types::PrometheusMonitoringConfiguration]
    class MonitoringConfiguration < Struct.new(
      nil,
      :s3_monitoring_configuration,
      :managed_persistence_monitoring_configuration,
      :cloud_watch_logging_configuration,
      :prometheus_monitoring_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The network configuration for customer VPC connectivity.</p>
    # @!attribute subnet_ids
    #   <p>The array of subnet Ids for customer VPC connectivity.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>The array of security group Ids for customer VPC connectivity.</p>
    #   @return [Array<String>]
    class NetworkConfiguration < Struct.new(
      nil,
      :subnet_ids,
      :security_group_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The monitoring configuration object you can configure to send metrics to Amazon Managed Service for Prometheus for a job run.</p>
    # @!attribute remote_write_url
    #   <p>The remote write URL in the Amazon Managed Service for Prometheus workspace to send metrics to.</p>
    #   @return [String]
    class PrometheusMonitoringConfiguration < Struct.new(
      nil,
      :remote_write_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource was not found.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource utilization for memory, storage, and vCPU for jobs.</p>
    # @!attribute v_cpu_hour
    #   <p>The aggregated vCPU used per hour from the time the job starts executing until the job is terminated.</p>
    #   @return [Float]
    # @!attribute memory_gb_hour
    #   <p>The aggregated memory used per hour from the time the job starts executing until the job is terminated.</p>
    #   @return [Float]
    # @!attribute storage_gb_hour
    #   <p>The aggregated storage used per hour from the time the job starts executing until the job is terminated.</p>
    #   @return [Float]
    class ResourceUtilization < Struct.new(
      nil,
      :v_cpu_hour,
      :memory_gb_hour,
      :storage_gb_hour,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The retry policy to use for a job run.</p>
    # @!attribute max_attempts
    #   <p>Maximum number of attempts for the job run. This parameter is only applicable for <code>BATCH</code> mode.</p>
    #   @return [Integer]
    # @!attribute max_failed_attempts_per_hour
    #   <p>Maximum number of failed attempts per hour. This [arameter is only applicable for <code>STREAMING</code> mode.</p>
    #   @return [Integer]
    class RetryPolicy < Struct.new(
      nil,
      :max_attempts,
      :max_failed_attempts_per_hour,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:max_failed_attempts_per_hour] = nil unless options.key?(:max_failed_attempts_per_hour)
        super
      end
    end

    # <p>The Amazon S3 configuration for monitoring log publishing. You can configure your jobs to send log information to Amazon S3.</p>
    # @!attribute log_uri
    #   <p>The Amazon S3 destination URI for log publishing.</p>
    #   @return [String]
    # @!attribute encryption_key_arn
    #   <p>The KMS key ARN to encrypt the logs published to the given Amazon S3 destination.</p>
    #   @return [String]
    class S3MonitoringConfiguration < Struct.new(
      nil,
      :log_uri,
      :encryption_key_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The scheduler configuration for batch and streaming jobs running on this application. Supported with release labels emr-7.0.0 and above.</p>
    # @!attribute queue_timeout_minutes
    #   <p>The maximum duration in minutes for the job in QUEUED state. If scheduler configuration is enabled on your application, the default value is 360 minutes (6 hours). The valid range is from 15 to 720.</p>
    #   @return [Integer]
    # @!attribute max_concurrent_runs
    #   <p>The maximum concurrent job runs on this application. If scheduler configuration is enabled on your application, the default value is 15. The valid range is 1 to 1000.</p>
    #   @return [Integer]
    class SchedulerConfiguration < Struct.new(
      nil,
      :queue_timeout_minutes,
      :max_concurrent_runs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The maximum number of resources per account has been reached.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a session, including the session state, configuration, and timestamps.</p>
    # @!attribute application_id
    #   <p>The ID of the application that the session belongs to.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The ID of the session.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the session.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The optional name of the session.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the session.</p>
    #   @return [String]
    # @!attribute state_details
    #   <p>Additional details about the current state of the session.</p>
    #   @return [String]
    # @!attribute release_label
    #   <p>The Amazon EMR release label associated with the session.</p>
    #   @return [String]
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the execution role for the session.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The IAM principal that created the session.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the session was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time that the session was last updated.</p>
    #   @return [Time]
    # @!attribute started_at
    #   <p>The date and time that the session moved to a running state.</p>
    #   @return [Time]
    # @!attribute ended_at
    #   <p>The date and time that the session was terminated or failed.</p>
    #   @return [Time]
    # @!attribute idle_since
    #   <p>The date and time that the session became idle.</p>
    #   @return [Time]
    # @!attribute configuration_overrides
    #   <p>The configuration overrides for the session, including runtime configuration properties.</p>
    #   @return [Types::SessionConfigurationOverrides]
    # @!attribute network_configuration
    #   <p>The network configuration for customer VPC connectivity for the session.</p>
    #   @return [Types::NetworkConfiguration]
    # @!attribute idle_timeout_minutes
    #   <p>The idle timeout in minutes for the session. After the session remains idle for this duration, it is automatically terminated.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>The tags assigned to the session.</p>
    #   @return [Hash<String, String>]
    # @!attribute total_resource_utilization
    #   <p>The aggregate vCPU, memory, and storage resources used from the time the session starts to execute, until the time the session terminates, rounded up to the nearest second.</p>
    #   @return [Types::TotalResourceUtilization]
    # @!attribute billed_resource_utilization
    #   <p>The aggregate vCPU, memory, and storage that Amazon Web Services has billed for the session. The billed resources include a 1-minute minimum usage for workers, plus additional storage over 20 GB per worker. Note that billed resources do not include usage for idle pre-initialized workers.</p>
    #   @return [Types::ResourceUtilization]
    # @!attribute total_execution_duration_seconds
    #   <p>The total execution duration of the session in seconds.</p>
    #   @return [Integer]
    class Session < Struct.new(
      nil,
      :application_id,
      :session_id,
      :arn,
      :name,
      :state,
      :state_details,
      :release_label,
      :execution_role_arn,
      :created_by,
      :created_at,
      :updated_at,
      :started_at,
      :ended_at,
      :idle_since,
      :configuration_overrides,
      :network_configuration,
      :idle_timeout_minutes,
      :tags,
      :total_resource_utilization,
      :billed_resource_utilization,
      :total_execution_duration_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:idle_timeout_minutes] = nil unless options.key?(:idle_timeout_minutes)
        super
      end
    end

    # <p>The configuration overrides for a session.</p>
    # @!attribute runtime_configuration
    #   <p>The runtime configuration for the session. Contains Spark configuration properties specified at session creation time.</p>
    #   @return [Array<Types::Configuration>]
    class SessionConfigurationOverrides < Struct.new(
      nil,
      :runtime_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The summary of attributes associated with a session.</p>
    # @!attribute application_id
    #   <p>The ID of the application that the session belongs to.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The ID of the session.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the session.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The optional name of the session.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the session.</p>
    #   @return [String]
    # @!attribute state_details
    #   <p>Additional details about the current state of the session.</p>
    #   @return [String]
    # @!attribute release_label
    #   <p>The Amazon EMR release label associated with the session.</p>
    #   @return [String]
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the execution role for the session.</p>
    #   @return [String]
    # @!attribute created_by
    #   <p>The IAM principal that created the session.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the session was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time that the session was last updated.</p>
    #   @return [Time]
    class SessionSummary < Struct.new(
      nil,
      :application_id,
      :session_id,
      :arn,
      :name,
      :state,
      :state_details,
      :release_label,
      :execution_role_arn,
      :created_by,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configurations for the Spark submit job driver.</p>
    # @!attribute entry_point
    #   <p>The entry point for the Spark submit job run.</p>
    #   @return [String]
    # @!attribute entry_point_arguments
    #   <p>The arguments for the Spark submit job run.</p>
    #   @return [Array<String>]
    # @!attribute spark_submit_parameters
    #   <p>The parameters for the Spark submit job run.</p>
    #   @return [String]
    class SparkSubmit < Struct.new(
      nil,
      :entry_point,
      :entry_point_arguments,
      :spark_submit_parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The ID of the application to start.</p>
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
    #   <p>The ID of the application on which to run the job.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The client idempotency token of the job run to start. Its value must be unique for each request.</p>
    #   @return [String]
    # @!attribute execution_role_arn
    #   <p>The execution role ARN for the job run.</p>
    #   @return [String]
    # @!attribute execution_iam_policy
    #   <p>You can pass an optional IAM policy. The resulting job IAM role permissions will be an intersection of this policy and the policy associated with your job execution role.</p>
    #   @return [Types::JobRunExecutionIamPolicy]
    # @!attribute job_driver
    #   <p>The job driver for the job run.</p>
    #   @return [Types::JobDriver]
    # @!attribute configuration_overrides
    #   <p>The configuration overrides for the job run.</p>
    #   @return [Types::ConfigurationOverrides]
    # @!attribute tags
    #   <p>The tags assigned to the job run.</p>
    #   @return [Hash<String, String>]
    # @!attribute execution_timeout_minutes
    #   <p>The maximum duration, in minutes, for the job run. If the job run exceeds this duration, Amazon EMR Serverless cancels it automatically.</p> <p>For BATCH mode job runs, the maximum value is 10080 minutes (7 days) starting with Amazon EMR release 7.11. Setting a value of 0 to disable the timeout is no longer supported for BATCH mode job runs.</p>
    #   @return [Integer]
    # @!attribute name
    #   <p>The optional job run name. This doesn't have to be unique.</p>
    #   @return [String]
    # @!attribute mode
    #   <p>The mode of the job run when it starts.</p>
    #   @return [String]
    # @!attribute retry_policy
    #   <p>The retry policy when job run starts.</p>
    #   @return [Types::RetryPolicy]
    class StartJobRunInput < Struct.new(
      nil,
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
      :retry_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>This output displays the application ID on which the job run was submitted.</p>
    #   @return [String]
    # @!attribute job_run_id
    #   <p>The output contains the ID of the started job run.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>This output displays the ARN of the job run..</p>
    #   @return [String]
    class StartJobRunOutput < Struct.new(
      nil,
      :application_id,
      :job_run_id,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The ID of the application on which to start the session.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you retry a request that completed successfully using the same client token, the server returns the successful response without performing the operation again.</p>
    #   @return [String]
    # @!attribute execution_role_arn
    #   <p>The execution role ARN for the session. Amazon EMR Serverless uses this role to access Amazon Web Services resources on your behalf during session execution.</p>
    #   @return [String]
    # @!attribute configuration_overrides
    #   <p>The configuration overrides for the session. Only runtime configuration overrides are supported.</p>
    #   @return [Types::SessionConfigurationOverrides]
    # @!attribute tags
    #   <p>The tags to assign to the session.</p>
    #   @return [Hash<String, String>]
    # @!attribute idle_timeout_minutes
    #   <p>The idle timeout in minutes for the session. After the session remains idle for this duration, Amazon EMR Serverless automatically terminates it.</p>
    #   @return [Integer]
    # @!attribute name
    #   <p>The optional name for the session.</p>
    #   @return [String]
    class StartSessionRequest < Struct.new(
      nil,
      :application_id,
      :client_token,
      :execution_role_arn,
      :configuration_overrides,
      :tags,
      :idle_timeout_minutes,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The output contains the application ID on which the session was started.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The output contains the ID of the session.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The output contains the ARN of the session.</p>
    #   @return [String]
    class StartSessionResponse < Struct.new(
      nil,
      :application_id,
      :session_id,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The ID of the application to stop.</p>
    #   @return [String]
    class StopApplicationInput < Struct.new(
      nil,
      :application_id,
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

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource to list the tags for. Currently, the supported resources are Amazon EMR Serverless applications and job runs.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to add to the resource. A tag is an array of key-value pairs.</p>
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

    # @!attribute application_id
    #   <p>The ID of the application that the session belongs to.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The ID of the session to terminate.</p>
    #   @return [String]
    class TerminateSessionRequest < Struct.new(
      nil,
      :application_id,
      :session_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application_id
    #   <p>The output contains the application ID on which the session was terminated.</p>
    #   @return [String]
    # @!attribute session_id
    #   <p>The output contains the ID of the terminated session.</p>
    #   @return [String]
    class TerminateSessionResponse < Struct.new(
      nil,
      :application_id,
      :session_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The aggregate vCPU, memory, and storage resources used from the time job start executing till the time job is terminated, rounded up to the nearest second.</p>
    # @!attribute v_cpu_hour
    #   <p>The aggregated vCPU used per hour from the time job start executing till the time job is terminated.</p>
    #   @return [Float]
    # @!attribute memory_gb_hour
    #   <p>The aggregated memory used per hour from the time job start executing till the time job is terminated.</p>
    #   @return [Float]
    # @!attribute storage_gb_hour
    #   <p>The aggregated storage used per hour from the time job start executing till the time job is terminated.</p>
    #   @return [Float]
    class TotalResourceUtilization < Struct.new(
      nil,
      :v_cpu_hour,
      :memory_gb_hour,
      :storage_gb_hour,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the resource to list the tags for. Currently, the supported resources are Amazon EMR Serverless applications and job runs.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The keys of the tags to be removed.</p>
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
    #   <p>The ID of the application to update.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The client idempotency token of the application to update. Its value must be unique for each request.</p>
    #   @return [String]
    # @!attribute initial_capacity
    #   <p>The capacity to initialize when the application is updated.</p>
    #   @return [Hash<String, Types::InitialCapacityConfig>]
    # @!attribute maximum_capacity
    #   <p>The maximum capacity to allocate when the application is updated. This is cumulative across all workers at any given point in time during the lifespan of the application. No new resources will be created once any one of the defined limits is hit.</p>
    #   @return [Types::MaximumAllowedResources]
    # @!attribute auto_start_configuration
    #   <p>The configuration for an application to automatically start on job submission.</p>
    #   @return [Types::AutoStartConfig]
    # @!attribute auto_stop_configuration
    #   <p>The configuration for an application to automatically stop after a certain amount of time being idle.</p>
    #   @return [Types::AutoStopConfig]
    # @!attribute network_configuration
    #   <p>The network configuration for customer VPC connectivity.</p>
    #   @return [Types::NetworkConfiguration]
    # @!attribute architecture
    #   <p>The CPU architecture of an application.</p>
    #   @return [String]
    # @!attribute image_configuration
    #   <p>The image configuration to be used for all worker types. You can either set this parameter or <code>imageConfiguration</code> for each worker type in <code>WorkerTypeSpecificationInput</code>.</p>
    #   @return [Types::ImageConfigurationInput]
    # @!attribute worker_type_specifications
    #   <p>The key-value pairs that specify worker type to <code>WorkerTypeSpecificationInput</code>. This parameter must contain all valid worker types for a Spark or Hive application. Valid worker types include <code>Driver</code> and <code>Executor</code> for Spark applications and <code>HiveDriver</code> and <code>TezTask</code> for Hive applications. You can either set image details in this parameter for each worker type, or in <code>imageConfiguration</code> for all worker types.</p>
    #   @return [Hash<String, Types::WorkerTypeSpecificationInput>]
    # @!attribute interactive_configuration
    #   <p>The interactive configuration object that contains new interactive use cases when the application is updated.</p>
    #   @return [Types::InteractiveConfiguration]
    # @!attribute release_label
    #   <p>The Amazon EMR release label for the application. You can change the release label to use a different release of Amazon EMR.</p>
    #   @return [String]
    # @!attribute runtime_configuration
    #   <p>The <a href="https://docs.aws.amazon.com/emr-serverless/latest/APIReference/API_Configuration.html">Configuration</a> specifications to use when updating an application. Each configuration consists of a classification and properties. This configuration is applied across all the job runs submitted under the application.</p>
    #   @return [Array<Types::Configuration>]
    # @!attribute monitoring_configuration
    #   <p>The configuration setting for monitoring.</p>
    #   @return [Types::MonitoringConfiguration]
    # @!attribute disk_encryption_configuration
    #   <p>The configuration object that allows encrypting local disks.</p>
    #   @return [Types::DiskEncryptionConfiguration]
    # @!attribute scheduler_configuration
    #   <p>The scheduler configuration for batch and streaming jobs running on this application. Supported with release labels emr-7.0.0 and above.</p>
    #   @return [Types::SchedulerConfiguration]
    # @!attribute identity_center_configuration
    #   <p>Specifies the IAM Identity Center configuration used to enable or disable trusted identity propagation. When provided, this configuration determines how the application interacts with IAM Identity Center for user authentication and access control.</p>
    #   @return [Types::IdentityCenterConfigurationInput]
    # @!attribute job_level_cost_allocation_configuration
    #   <p>The configuration object that enables job level cost allocation.</p>
    #   @return [Types::JobLevelCostAllocationConfiguration]
    class UpdateApplicationInput < Struct.new(
      nil,
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
      :disk_encryption_configuration,
      :scheduler_configuration,
      :identity_center_configuration,
      :job_level_cost_allocation_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute application
    #   <p>Information about the updated application.</p>
    #   @return [Types::Application]
    class UpdateApplicationOutput < Struct.new(
      nil,
      :application,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The input fails to satisfy the constraints specified by an Amazon Web Services service.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The cumulative configuration requirements for every worker instance of the worker type.</p>
    # @!attribute cpu
    #   <p>The CPU requirements for every worker instance of the worker type.</p>
    #   @return [String]
    # @!attribute memory
    #   <p>The memory requirements for every worker instance of the worker type.</p>
    #   @return [String]
    # @!attribute disk
    #   <p>The disk requirements for every worker instance of the worker type.</p>
    #   @return [String]
    # @!attribute disk_type
    #   <p>The disk type for every worker instance of the work type. Shuffle optimized disks have higher performance characteristics and are better for shuffle heavy workloads. Default is <code>STANDARD</code>.</p>
    #   @return [String]
    class WorkerResourceConfig < Struct.new(
      nil,
      :cpu,
      :memory,
      :disk,
      :disk_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specifications for a worker type.</p>
    # @!attribute image_configuration
    #   <p>The image configuration for a worker type.</p>
    #   @return [Types::ImageConfiguration]
    class WorkerTypeSpecification < Struct.new(
      nil,
      :image_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specifications for a worker type.</p>
    # @!attribute image_configuration
    #   <p>The image configuration for a worker type.</p>
    #   @return [Types::ImageConfigurationInput]
    class WorkerTypeSpecificationInput < Struct.new(
      nil,
      :image_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
