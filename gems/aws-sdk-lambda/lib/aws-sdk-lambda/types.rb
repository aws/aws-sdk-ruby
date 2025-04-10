# frozen_string_literal: true

# This is generated code!

module Aws
  module Lambda
    # This module contains the types returned by client operations.
    module Types
      # <p>Limits that are related to concurrency and storage. All file and storage sizes are in bytes.</p>
      AccountLimit = Struct.new(
        :total_code_size,
        :code_size_unzipped,
        :code_size_zipped,
        :concurrent_executions,
        :unreserved_concurrent_executions,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>The number of functions and amount of storage in use.</p>
      AccountUsage = Struct.new(
        :total_code_size,
        :function_count,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      AddLayerVersionPermissionRequest = Struct.new(
        :layer_name,
        :version_number,
        :statement_id,
        :action,
        :principal,
        :organization_id,
        :revision_id,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      AddLayerVersionPermissionResponse = Struct.new(
        :statement,
        :revision_id,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      AddPermissionRequest = Struct.new(
        :function_name,
        :statement_id,
        :action,
        :principal,
        :source_arn,
        :source_account,
        :event_source_token,
        :qualifier,
        :revision_id,
        :principal_org_id,
        :function_url_auth_type,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      AddPermissionResponse = Struct.new(
        :statement,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>Provides configuration information about a Lambda function <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html">alias</a>.</p>
      AliasConfiguration = Struct.new(
        :alias_arn,
        :name,
        :function_version,
        :description,
        :routing_config,
        :revision_id,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>The <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-traffic-shifting-using-aliases.html">traffic-shifting</a> configuration of a Lambda function alias.</p>
      AliasRoutingConfiguration = Struct.new(
        :additional_version_weights,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>List of signing profiles that can sign a code package. </p>
      AllowedPublishers = Struct.new(
        :signing_profile_version_arns,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>Specific configuration settings for an Amazon Managed Streaming for Apache Kafka (Amazon MSK) event source.</p>
      AmazonManagedKafkaEventSourceConfig = Struct.new(
        :consumer_group_id,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>Details about a <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-codesigning.html">Code signing configuration</a>. </p>
      CodeSigningConfig = Struct.new(
        :code_signing_config_id,
        :code_signing_config_arn,
        :description,
        :allowed_publishers,
        :code_signing_policies,
        :last_modified,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>The specified code signing configuration does not exist.</p>
      CodeSigningConfigNotFoundException = Struct.new(
        :type,
        :message,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>Code signing configuration <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-codesigning.html#config-codesigning-policies">policies</a> specify the validation failure action for signature mismatch or
      #        expiry.</p>
      CodeSigningPolicies = Struct.new(
        :untrusted_artifact_on_deployment,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>Your Amazon Web Services account has exceeded its maximum total code size. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-limits.html">Lambda quotas</a>.</p>
      CodeStorageExceededException = Struct.new(
        :type,
        :message,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>The code signature failed one or more of the validation checks for signature mismatch or expiry, and the code
      #       signing policy is set to ENFORCE. Lambda blocks the deployment.</p>
      CodeVerificationFailedException = Struct.new(
        :type,
        :message,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      Concurrency = Struct.new(
        :reserved_concurrent_executions,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>The <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS">cross-origin resource sharing
      #         (CORS)</a> settings for your Lambda function URL. Use CORS to grant access to your function URL
      #       from any origin. You can also use CORS to control access for specific HTTP headers and methods in requests to your
      #       function URL.</p>
      Cors = Struct.new(
        :allow_credentials,
        :allow_headers,
        :allow_methods,
        :allow_origins,
        :expose_headers,
        :max_age,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      CreateAliasRequest = Struct.new(
        :function_name,
        :name,
        :function_version,
        :description,
        :routing_config,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      CreateCodeSigningConfigRequest = Struct.new(
        :description,
        :allowed_publishers,
        :code_signing_policies,
        :tags,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      CreateCodeSigningConfigResponse = Struct.new(
        :code_signing_config,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      CreateEventSourceMappingRequest = Struct.new(
        :event_source_arn,
        :function_name,
        :enabled,
        :batch_size,
        :filter_criteria,
        :maximum_batching_window_in_seconds,
        :parallelization_factor,
        :starting_position,
        :starting_position_timestamp,
        :destination_config,
        :maximum_record_age_in_seconds,
        :bisect_batch_on_function_error,
        :maximum_retry_attempts,
        :tags,
        :tumbling_window_in_seconds,
        :topics,
        :queues,
        :source_access_configurations,
        :self_managed_event_source,
        :function_response_types,
        :amazon_managed_kafka_event_source_config,
        :self_managed_kafka_event_source_config,
        :scaling_config,
        :document_db_event_source_config,
        :kms_key_arn,
        :metrics_config,
        :provisioned_poller_config,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      CreateFunctionRequest = Struct.new(
        :function_name,
        :runtime,
        :role,
        :handler,
        :code,
        :description,
        :timeout,
        :memory_size,
        :publish,
        :vpc_config,
        :package_type,
        :dead_letter_config,
        :environment,
        :kms_key_arn,
        :tracing_config,
        :tags,
        :layers,
        :file_system_configs,
        :image_config,
        :code_signing_config_arn,
        :architectures,
        :ephemeral_storage,
        :snap_start,
        :logging_config,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      CreateFunctionUrlConfigRequest = Struct.new(
        :function_name,
        :qualifier,
        :auth_type,
        :cors,
        :invoke_mode,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      CreateFunctionUrlConfigResponse = Struct.new(
        :function_url,
        :function_arn,
        :auth_type,
        :cors,
        :creation_time,
        :invoke_mode,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>The <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#dlq">dead-letter queue</a> for
      #       failed asynchronous invocations.</p>
      DeadLetterConfig = Struct.new(
        :target_arn,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      DeleteAliasRequest = Struct.new(
        :function_name,
        :name,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      DeleteCodeSigningConfigRequest = Struct.new(
        :code_signing_config_arn,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      DeleteCodeSigningConfigResponse = Struct.new(
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      DeleteEventSourceMappingRequest = Struct.new(
        :uuid,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      DeleteFunctionCodeSigningConfigRequest = Struct.new(
        :function_name,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      DeleteFunctionConcurrencyRequest = Struct.new(
        :function_name,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      DeleteFunctionEventInvokeConfigRequest = Struct.new(
        :function_name,
        :qualifier,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      DeleteFunctionRequest = Struct.new(
        :function_name,
        :qualifier,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      DeleteFunctionUrlConfigRequest = Struct.new(
        :function_name,
        :qualifier,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      DeleteLayerVersionRequest = Struct.new(
        :layer_name,
        :version_number,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      DeleteProvisionedConcurrencyConfigRequest = Struct.new(
        :function_name,
        :qualifier,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>A configuration object that specifies the destination of an event after Lambda processes it.</p>
      DestinationConfig = Struct.new(
        :on_success,
        :on_failure,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>
      #       Specific configuration settings for a DocumentDB event source.
      #     </p>
      DocumentDBEventSourceConfig = Struct.new(
        :database_name,
        :collection_name,
        :full_document,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>Need additional permissions to configure VPC settings.</p>
      EC2AccessDeniedException = Struct.new(
        :type,
        :message,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>Amazon EC2 throttled Lambda during Lambda function initialization using
      #       the execution role provided for the function.</p>
      EC2ThrottledException = Struct.new(
        :type,
        :message,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>Lambda received an unexpected Amazon EC2 client exception while setting up for the
      #         Lambda function.</p>
      EC2UnexpectedException = Struct.new(
        :type,
        :message,
        :ec2_error_code,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>An error occurred when reading from or writing to a connected file system.</p>
      EFSIOException = Struct.new(
        :type,
        :message,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>The Lambda function couldn't make a network connection to the configured file system.</p>
      EFSMountConnectivityException = Struct.new(
        :type,
        :message,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>The Lambda function couldn't mount the configured file system due to a permission or configuration
      #       issue.</p>
      EFSMountFailureException = Struct.new(
        :type,
        :message,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>The Lambda function made a network connection to the configured file system, but the mount
      #       operation timed out.</p>
      EFSMountTimeoutException = Struct.new(
        :type,
        :message,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>Lambda couldn't create an elastic network interface in the VPC, specified as part of Lambda function configuration, because the limit for network interfaces has been reached. For more
      #       information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-limits.html">Lambda
      #         quotas</a>.</p>
      ENILimitReachedException = Struct.new(
        :type,
        :message,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>A function's environment variable settings. You can use environment variables to adjust your function's
      #       behavior without updating code. An environment variable is a pair of strings that are stored in a function's
      #       version-specific configuration.</p>
      Environment = Struct.new(
        :variables,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>Error messages for environment variables that couldn't be applied.</p>
      EnvironmentError = Struct.new(
        :error_code,
        :message,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>The results of an operation to update or read environment variables. If the operation succeeds, the response
      #       contains the environment variables. If it fails, the response contains details about the error.</p>
      EnvironmentResponse = Struct.new(
        :variables,
        :error,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>The size of the function's <code>/tmp</code> directory in MB. The default value is 512, but can be any whole
      #   number between 512 and 10,240 MB. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-function-common.html#configuration-ephemeral-storage">Configuring ephemeral storage (console)</a>.</p>
      EphemeralStorage = Struct.new(
        :size,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>A mapping between an Amazon Web Services resource and a Lambda function. For details, see <a>CreateEventSourceMapping</a>.</p>
      EventSourceMappingConfiguration = Struct.new(
        :uuid,
        :starting_position,
        :starting_position_timestamp,
        :batch_size,
        :maximum_batching_window_in_seconds,
        :parallelization_factor,
        :event_source_arn,
        :filter_criteria,
        :function_arn,
        :last_modified,
        :last_processing_result,
        :state,
        :state_transition_reason,
        :destination_config,
        :topics,
        :queues,
        :source_access_configurations,
        :self_managed_event_source,
        :maximum_record_age_in_seconds,
        :bisect_batch_on_function_error,
        :maximum_retry_attempts,
        :tumbling_window_in_seconds,
        :function_response_types,
        :amazon_managed_kafka_event_source_config,
        :self_managed_kafka_event_source_config,
        :scaling_config,
        :document_db_event_source_config,
        :kms_key_arn,
        :filter_criteria_error,
        :event_source_mapping_arn,
        :metrics_config,
        :provisioned_poller_config,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>The metrics configuration for your event source. Use this configuration object to define which metrics you want your
      #       event source mapping to produce.</p>
      EventSourceMappingMetricsConfig = Struct.new(
        :metrics,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>Details about the connection between a Lambda function and an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-filesystem.html">Amazon EFS file system</a>.</p>
      FileSystemConfig = Struct.new(
        :arn,
        :local_mount_path,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>
      #       A structure within a <code>FilterCriteria</code> object that defines an event filtering pattern.
      #     </p>
      Filter = Struct.new(
        :pattern,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>
      #       An object that contains the filters for an event source.
      #     </p>
      FilterCriteria = Struct.new(
        :filters,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>An object that contains details about an error related to filter criteria encryption.</p>
      FilterCriteriaError = Struct.new(
        :error_code,
        :message,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>The code for the Lambda function. You can either specify an object in Amazon S3, upload a
      #       .zip file archive deployment package directly, or specify the URI of a container image.</p>
      FunctionCode = Struct.new(
        :zip_file,
        :s3_bucket,
        :s3_key,
        :s3_object_version,
        :image_uri,
        :source_kms_key_arn,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>Details about a function's deployment package.</p>
      FunctionCodeLocation = Struct.new(
        :repository_type,
        :location,
        :image_uri,
        :resolved_image_uri,
        :source_kms_key_arn,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>Details about a function's configuration.</p>
      FunctionConfiguration = Struct.new(
        :function_name,
        :function_arn,
        :runtime,
        :role,
        :handler,
        :code_size,
        :description,
        :timeout,
        :memory_size,
        :last_modified,
        :code_sha256,
        :version,
        :vpc_config,
        :dead_letter_config,
        :environment,
        :kms_key_arn,
        :tracing_config,
        :master_arn,
        :revision_id,
        :layers,
        :state,
        :state_reason,
        :state_reason_code,
        :last_update_status,
        :last_update_status_reason,
        :last_update_status_reason_code,
        :file_system_configs,
        :package_type,
        :image_config_response,
        :signing_profile_version_arn,
        :signing_job_arn,
        :architectures,
        :ephemeral_storage,
        :snap_start,
        :runtime_version_config,
        :logging_config,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      FunctionEventInvokeConfig = Struct.new(
        :last_modified,
        :function_arn,
        :maximum_retry_attempts,
        :maximum_event_age_in_seconds,
        :destination_config,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>Details about a Lambda function URL.</p>
      FunctionUrlConfig = Struct.new(
        :function_url,
        :function_arn,
        :creation_time,
        :last_modified_time,
        :cors,
        :auth_type,
        :invoke_mode,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      GetAccountSettingsRequest = Struct.new(
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      GetAccountSettingsResponse = Struct.new(
        :account_limit,
        :account_usage,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      GetAliasRequest = Struct.new(
        :function_name,
        :name,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      GetCodeSigningConfigRequest = Struct.new(
        :code_signing_config_arn,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      GetCodeSigningConfigResponse = Struct.new(
        :code_signing_config,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      GetEventSourceMappingRequest = Struct.new(
        :uuid,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      GetFunctionCodeSigningConfigRequest = Struct.new(
        :function_name,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      GetFunctionCodeSigningConfigResponse = Struct.new(
        :code_signing_config_arn,
        :function_name,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      GetFunctionConcurrencyRequest = Struct.new(
        :function_name,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      GetFunctionConcurrencyResponse = Struct.new(
        :reserved_concurrent_executions,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      GetFunctionConfigurationRequest = Struct.new(
        :function_name,
        :qualifier,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      GetFunctionEventInvokeConfigRequest = Struct.new(
        :function_name,
        :qualifier,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      GetFunctionRecursionConfigRequest = Struct.new(
        :function_name,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      GetFunctionRecursionConfigResponse = Struct.new(
        :recursive_loop,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      GetFunctionRequest = Struct.new(
        :function_name,
        :qualifier,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      GetFunctionResponse = Struct.new(
        :configuration,
        :code,
        :tags,
        :tags_error,
        :concurrency,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      GetFunctionUrlConfigRequest = Struct.new(
        :function_name,
        :qualifier,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      GetFunctionUrlConfigResponse = Struct.new(
        :function_url,
        :function_arn,
        :auth_type,
        :cors,
        :creation_time,
        :last_modified_time,
        :invoke_mode,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      GetLayerVersionByArnRequest = Struct.new(
        :arn,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      GetLayerVersionPolicyRequest = Struct.new(
        :layer_name,
        :version_number,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      GetLayerVersionPolicyResponse = Struct.new(
        :policy,
        :revision_id,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      GetLayerVersionRequest = Struct.new(
        :layer_name,
        :version_number,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      GetLayerVersionResponse = Struct.new(
        :content,
        :layer_arn,
        :layer_version_arn,
        :description,
        :created_date,
        :version,
        :compatible_runtimes,
        :license_info,
        :compatible_architectures,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      GetPolicyRequest = Struct.new(
        :function_name,
        :qualifier,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      GetPolicyResponse = Struct.new(
        :policy,
        :revision_id,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      GetProvisionedConcurrencyConfigRequest = Struct.new(
        :function_name,
        :qualifier,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      GetProvisionedConcurrencyConfigResponse = Struct.new(
        :requested_provisioned_concurrent_executions,
        :available_provisioned_concurrent_executions,
        :allocated_provisioned_concurrent_executions,
        :status,
        :status_reason,
        :last_modified,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      GetRuntimeManagementConfigRequest = Struct.new(
        :function_name,
        :qualifier,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      GetRuntimeManagementConfigResponse = Struct.new(
        :update_runtime_on,
        :runtime_version_arn,
        :function_arn,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>Configuration values that override the container image Dockerfile settings. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/images-create.html#images-parms">Container image
      #       settings</a>.</p>
      ImageConfig = Struct.new(
        :entry_point,
        :command,
        :working_directory,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>Error response to <code>GetFunctionConfiguration</code>.</p>
      ImageConfigError = Struct.new(
        :error_code,
        :message,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>Response to a <code>GetFunctionConfiguration</code> request.</p>
      ImageConfigResponse = Struct.new(
        :image_config,
        :error,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>The code signature failed the integrity check. If the integrity check fails, then Lambda blocks
      #       deployment, even if the code signing policy is set to WARN.</p>
      InvalidCodeSignatureException = Struct.new(
        :type,
        :message,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>One of the parameters in the request is not valid.</p>
      InvalidParameterValueException = Struct.new(
        :type,
        :message,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>The request body could not be parsed as JSON, or a request header is invalid. For example, the 'x-amzn-RequestId'
      #       header is not a valid UUID string.</p>
      InvalidRequestContentException = Struct.new(
        :type,
        :message,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>The runtime or runtime version specified is not supported.</p>
      InvalidRuntimeException = Struct.new(
        :type,
        :message,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>The security group ID provided in the Lambda function VPC configuration is not valid.</p>
      InvalidSecurityGroupIDException = Struct.new(
        :type,
        :message,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>The subnet ID provided in the Lambda function VPC configuration is not valid.</p>
      InvalidSubnetIDException = Struct.new(
        :type,
        :message,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>Lambda could not unzip the deployment package.</p>
      InvalidZipFileException = Struct.new(
        :type,
        :message,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      InvocationRequest = Struct.new(
        :function_name,
        :invocation_type,
        :log_type,
        :client_context,
        :payload,
        :qualifier,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      InvocationResponse = Struct.new(
        :status_code,
        :function_error,
        :log_result,
        :payload,
        :executed_version,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      InvokeAsyncRequest = Struct.new(
        :function_name,
        :invoke_args,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>A success response (<code>202 Accepted</code>) indicates that the request is queued for invocation.</p>
      InvokeAsyncResponse = Struct.new(
        :status,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>A chunk of the streamed response payload.</p>
      InvokeResponseStreamUpdate = Struct.new(
        :payload,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>A response confirming that the event stream is complete.</p>
      InvokeWithResponseStreamCompleteEvent = Struct.new(
        :error_code,
        :error_details,
        :log_result,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      InvokeWithResponseStreamRequest = Struct.new(
        :function_name,
        :invocation_type,
        :log_type,
        :client_context,
        :qualifier,
        :payload,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      InvokeWithResponseStreamResponse = Struct.new(
        :status_code,
        :executed_version,
        :event_stream,
        :response_stream_content_type,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>An object that includes a chunk of the response payload. When the stream has ended, Lambda includes a <code>InvokeComplete</code> object.</p>
      class InvokeWithResponseStreamResponseEvent < Smithy::Schema::Union
        class PayloadChunk < InvokeWithResponseStreamResponseEvent
          def to_h
            { payload_chunk: super(__getobj__) }
          end
        end

        class InvokeComplete < InvokeWithResponseStreamResponseEvent
          def to_h
            { invoke_complete: super(__getobj__) }
          end
        end

        class Unknown < InvokeWithResponseStreamResponseEvent
          def initialize(name, value)
            super({ name: name, value: value })
          end

          def to_h
            { unknown: super(__getobj__) }
          end
        end
      end

      # <p>Lambda couldn't decrypt the environment variables because KMS access was denied.
      #       Check the Lambda function's KMS permissions.</p>
      KMSAccessDeniedException = Struct.new(
        :type,
        :message,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>Lambda couldn't decrypt the environment variables because the KMS key used is
      #       disabled. Check the Lambda function's KMS key settings.</p>
      KMSDisabledException = Struct.new(
        :type,
        :message,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>Lambda couldn't decrypt the environment variables because the state of the KMS key used is not valid for Decrypt. Check the function's KMS key settings.</p>
      KMSInvalidStateException = Struct.new(
        :type,
        :message,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>Lambda couldn't decrypt the environment variables because the KMS key was not
      #       found. Check the function's KMS key settings.</p>
      KMSNotFoundException = Struct.new(
        :type,
        :message,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>An <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">Lambda
      #         layer</a>.</p>
      Layer = Struct.new(
        :arn,
        :code_size,
        :signing_profile_version_arn,
        :signing_job_arn,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>A ZIP archive that contains the contents of an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">Lambda
      #         layer</a>. You can specify either an Amazon S3 location,
      #       or upload a layer archive directly.</p>
      LayerVersionContentInput = Struct.new(
        :s3_bucket,
        :s3_key,
        :s3_object_version,
        :zip_file,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>Details about a version of an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">Lambda
      #         layer</a>.</p>
      LayerVersionContentOutput = Struct.new(
        :location,
        :code_sha256,
        :code_size,
        :signing_profile_version_arn,
        :signing_job_arn,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>Details about a version of an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">Lambda
      #         layer</a>.</p>
      LayerVersionsListItem = Struct.new(
        :layer_version_arn,
        :version,
        :description,
        :created_date,
        :compatible_runtimes,
        :license_info,
        :compatible_architectures,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>Details about an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">Lambda
      #         layer</a>.</p>
      LayersListItem = Struct.new(
        :layer_name,
        :layer_arn,
        :latest_matching_version,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      ListAliasesRequest = Struct.new(
        :function_name,
        :function_version,
        :marker,
        :max_items,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      ListAliasesResponse = Struct.new(
        :next_marker,
        :aliases,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      ListCodeSigningConfigsRequest = Struct.new(
        :marker,
        :max_items,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      ListCodeSigningConfigsResponse = Struct.new(
        :next_marker,
        :code_signing_configs,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      ListEventSourceMappingsRequest = Struct.new(
        :event_source_arn,
        :function_name,
        :marker,
        :max_items,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      ListEventSourceMappingsResponse = Struct.new(
        :next_marker,
        :event_source_mappings,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      ListFunctionEventInvokeConfigsRequest = Struct.new(
        :function_name,
        :marker,
        :max_items,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      ListFunctionEventInvokeConfigsResponse = Struct.new(
        :function_event_invoke_configs,
        :next_marker,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      ListFunctionUrlConfigsRequest = Struct.new(
        :function_name,
        :marker,
        :max_items,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      ListFunctionUrlConfigsResponse = Struct.new(
        :function_url_configs,
        :next_marker,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      ListFunctionsByCodeSigningConfigRequest = Struct.new(
        :code_signing_config_arn,
        :marker,
        :max_items,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      ListFunctionsByCodeSigningConfigResponse = Struct.new(
        :next_marker,
        :function_arns,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      ListFunctionsRequest = Struct.new(
        :master_region,
        :function_version,
        :marker,
        :max_items,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>A list of Lambda functions.</p>
      ListFunctionsResponse = Struct.new(
        :next_marker,
        :functions,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      ListLayerVersionsRequest = Struct.new(
        :compatible_runtime,
        :layer_name,
        :marker,
        :max_items,
        :compatible_architecture,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      ListLayerVersionsResponse = Struct.new(
        :next_marker,
        :layer_versions,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      ListLayersRequest = Struct.new(
        :compatible_runtime,
        :marker,
        :max_items,
        :compatible_architecture,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      ListLayersResponse = Struct.new(
        :next_marker,
        :layers,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      ListProvisionedConcurrencyConfigsRequest = Struct.new(
        :function_name,
        :marker,
        :max_items,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      ListProvisionedConcurrencyConfigsResponse = Struct.new(
        :provisioned_concurrency_configs,
        :next_marker,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      ListTagsRequest = Struct.new(
        :resource,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      ListTagsResponse = Struct.new(
        :tags,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      ListVersionsByFunctionRequest = Struct.new(
        :function_name,
        :marker,
        :max_items,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      ListVersionsByFunctionResponse = Struct.new(
        :next_marker,
        :versions,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>The function's Amazon CloudWatch Logs configuration settings.</p>
      LoggingConfig = Struct.new(
        :log_format,
        :application_log_level,
        :system_log_level,
        :log_group,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>A destination for events that failed processing.</p>
      OnFailure = Struct.new(
        :destination,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>A destination for events that were processed successfully.</p>
      #          <p>To retain records of successful <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-async-destinations">asynchronous invocations</a>,
      #       you can configure an Amazon SNS topic, Amazon SQS queue, Lambda function,
      #       or Amazon EventBridge event bus as the destination.</p>
      OnSuccess = Struct.new(
        :destination,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>The permissions policy for the resource is too large. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-limits.html">Lambda quotas</a>.</p>
      PolicyLengthExceededException = Struct.new(
        :type,
        :message,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>The RevisionId provided does not match the latest RevisionId for the Lambda function or alias.</p>
      #          <ul>
      #             <li>
      #                <p>
      #                   <b>For AddPermission and RemovePermission API operations:</b> Call <code>GetPolicy</code> to retrieve the latest RevisionId for your resource.</p>
      #             </li>
      #             <li>
      #                <p>
      #                   <b>For all other API operations:</b> Call <code>GetFunction</code> or <code>GetAlias</code> to retrieve the latest RevisionId for your resource.</p>
      #             </li>
      #          </ul>
      PreconditionFailedException = Struct.new(
        :type,
        :message,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>Details about the provisioned concurrency configuration for a function alias or version.</p>
      ProvisionedConcurrencyConfigListItem = Struct.new(
        :function_arn,
        :requested_provisioned_concurrent_executions,
        :available_provisioned_concurrent_executions,
        :allocated_provisioned_concurrent_executions,
        :status,
        :status_reason,
        :last_modified,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>The specified configuration does not exist.</p>
      ProvisionedConcurrencyConfigNotFoundException = Struct.new(
        :type,
        :message,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>The <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventsourcemapping.html#invocation-eventsourcemapping-provisioned-mode">
      #       provisioned mode</a> configuration for the event source. Use Provisioned Mode to customize the minimum and maximum number of event pollers
      #       for your event source. An event poller is a compute unit that provides approximately 5 MBps of throughput.</p>
      ProvisionedPollerConfig = Struct.new(
        :minimum_pollers,
        :maximum_pollers,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      PublishLayerVersionRequest = Struct.new(
        :layer_name,
        :description,
        :content,
        :compatible_runtimes,
        :license_info,
        :compatible_architectures,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      PublishLayerVersionResponse = Struct.new(
        :content,
        :layer_arn,
        :layer_version_arn,
        :description,
        :created_date,
        :version,
        :compatible_runtimes,
        :license_info,
        :compatible_architectures,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      PublishVersionRequest = Struct.new(
        :function_name,
        :code_sha256,
        :description,
        :revision_id,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      PutFunctionCodeSigningConfigRequest = Struct.new(
        :code_signing_config_arn,
        :function_name,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      PutFunctionCodeSigningConfigResponse = Struct.new(
        :code_signing_config_arn,
        :function_name,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      PutFunctionConcurrencyRequest = Struct.new(
        :function_name,
        :reserved_concurrent_executions,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      PutFunctionEventInvokeConfigRequest = Struct.new(
        :function_name,
        :qualifier,
        :maximum_retry_attempts,
        :maximum_event_age_in_seconds,
        :destination_config,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      PutFunctionRecursionConfigRequest = Struct.new(
        :function_name,
        :recursive_loop,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      PutFunctionRecursionConfigResponse = Struct.new(
        :recursive_loop,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      PutProvisionedConcurrencyConfigRequest = Struct.new(
        :function_name,
        :qualifier,
        :provisioned_concurrent_executions,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      PutProvisionedConcurrencyConfigResponse = Struct.new(
        :requested_provisioned_concurrent_executions,
        :available_provisioned_concurrent_executions,
        :allocated_provisioned_concurrent_executions,
        :status,
        :status_reason,
        :last_modified,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      PutRuntimeManagementConfigRequest = Struct.new(
        :function_name,
        :qualifier,
        :update_runtime_on,
        :runtime_version_arn,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      PutRuntimeManagementConfigResponse = Struct.new(
        :update_runtime_on,
        :function_arn,
        :runtime_version_arn,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>Lambda has detected your function being invoked in a recursive loop with other Amazon Web Services resources and stopped your function's invocation.</p>
      RecursiveInvocationException = Struct.new(
        :type,
        :message,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      RemoveLayerVersionPermissionRequest = Struct.new(
        :layer_name,
        :version_number,
        :statement_id,
        :revision_id,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      RemovePermissionRequest = Struct.new(
        :function_name,
        :statement_id,
        :qualifier,
        :revision_id,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>The request payload exceeded the <code>Invoke</code> request body JSON input quota. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-limits.html">Lambda
      #       quotas</a>.</p>
      RequestTooLargeException = Struct.new(
        :type,
        :message,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>The resource already exists, or another operation is in progress.</p>
      ResourceConflictException = Struct.new(
        :type,
        :message,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>The operation conflicts with the resource's availability. For example, you tried to update an event source
      #       mapping in the CREATING state, or you tried to delete an event source mapping currently UPDATING.</p>
      ResourceInUseException = Struct.new(
        :type,
        :message,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>The resource specified in the request does not exist.</p>
      ResourceNotFoundException = Struct.new(
        :type,
        :message,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>The function is inactive and its VPC connection is no longer available. Wait for the VPC connection to
      #       reestablish and try again.</p>
      ResourceNotReadyException = Struct.new(
        :type,
        :message,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>The ARN of the runtime and any errors that occured.</p>
      RuntimeVersionConfig = Struct.new(
        :runtime_version_arn,
        :error,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>Any error returned when the runtime version information for the function could not be retrieved.</p>
      RuntimeVersionError = Struct.new(
        :error_code,
        :message,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>(Amazon SQS only) The scaling configuration for the event source. To remove the configuration, pass an empty value.</p>
      ScalingConfig = Struct.new(
        :maximum_concurrency,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>The self-managed Apache Kafka cluster for your event source.</p>
      SelfManagedEventSource = Struct.new(
        :endpoints,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>Specific configuration settings for a self-managed Apache Kafka event source.</p>
      SelfManagedKafkaEventSourceConfig = Struct.new(
        :consumer_group_id,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>The Lambda service encountered an internal error.</p>
      ServiceException = Struct.new(
        :type,
        :message,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/snapstart.html">Lambda SnapStart</a> setting. Set <code>ApplyOn</code> to <code>PublishedVersions</code> to create a
      #       snapshot of the initialized execution environment when you publish a function version.</p>
      SnapStart = Struct.new(
        :apply_on,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>The <code>afterRestore()</code>
      #             <a href="https://docs.aws.amazon.com/lambda/latest/dg/snapstart-runtime-hooks.html">runtime hook</a> encountered an error. For more information, check the Amazon CloudWatch logs.</p>
      SnapStartException = Struct.new(
        :type,
        :message,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>Lambda is initializing your function. You can invoke the function when the <a href="https://docs.aws.amazon.com/lambda/latest/dg/functions-states.html">function state</a> becomes <code>Active</code>.</p>
      SnapStartNotReadyException = Struct.new(
        :type,
        :message,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/snapstart.html">SnapStart</a> setting.</p>
      SnapStartResponse = Struct.new(
        :apply_on,
        :optimization_status,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>Lambda couldn't restore the snapshot within the timeout limit.</p>
      SnapStartTimeoutException = Struct.new(
        :type,
        :message,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>To secure and define access to your event source, you can specify the authentication protocol, VPC components, or virtual host.</p>
      SourceAccessConfiguration = Struct.new(
        :type,
        :uri,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>Lambda couldn't set up VPC access for the Lambda function because one or more
      #       configured subnets has no available IP addresses.</p>
      SubnetIPAddressLimitReachedException = Struct.new(
        :type,
        :message,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      TagResourceRequest = Struct.new(
        :resource,
        :tags,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>An object that contains details about an error related to retrieving tags.</p>
      TagsError = Struct.new(
        :error_code,
        :message,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>The request throughput limit was exceeded. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-limits.html#api-requests">Lambda quotas</a>.</p>
      TooManyRequestsException = Struct.new(
        :retry_after_seconds,
        :type,
        :message,
        :reason,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/services-xray.html">X-Ray</a> tracing configuration.
      #       To sample and record incoming requests, set <code>Mode</code> to <code>Active</code>.</p>
      TracingConfig = Struct.new(
        :mode,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>The function's X-Ray tracing configuration.</p>
      TracingConfigResponse = Struct.new(
        :mode,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>The content type of the <code>Invoke</code> request body is not JSON.</p>
      UnsupportedMediaTypeException = Struct.new(
        :type,
        :message,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      UntagResourceRequest = Struct.new(
        :resource,
        :tag_keys,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      UpdateAliasRequest = Struct.new(
        :function_name,
        :name,
        :function_version,
        :description,
        :routing_config,
        :revision_id,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      UpdateCodeSigningConfigRequest = Struct.new(
        :code_signing_config_arn,
        :description,
        :allowed_publishers,
        :code_signing_policies,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      UpdateCodeSigningConfigResponse = Struct.new(
        :code_signing_config,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      UpdateEventSourceMappingRequest = Struct.new(
        :uuid,
        :function_name,
        :enabled,
        :batch_size,
        :filter_criteria,
        :maximum_batching_window_in_seconds,
        :destination_config,
        :maximum_record_age_in_seconds,
        :bisect_batch_on_function_error,
        :maximum_retry_attempts,
        :parallelization_factor,
        :source_access_configurations,
        :tumbling_window_in_seconds,
        :function_response_types,
        :scaling_config,
        :document_db_event_source_config,
        :kms_key_arn,
        :metrics_config,
        :provisioned_poller_config,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      UpdateFunctionCodeRequest = Struct.new(
        :function_name,
        :zip_file,
        :s3_bucket,
        :s3_key,
        :s3_object_version,
        :image_uri,
        :publish,
        :dry_run,
        :revision_id,
        :architectures,
        :source_kms_key_arn,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      UpdateFunctionConfigurationRequest = Struct.new(
        :function_name,
        :role,
        :handler,
        :description,
        :timeout,
        :memory_size,
        :vpc_config,
        :environment,
        :runtime,
        :dead_letter_config,
        :kms_key_arn,
        :tracing_config,
        :revision_id,
        :layers,
        :file_system_configs,
        :image_config,
        :ephemeral_storage,
        :snap_start,
        :logging_config,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      UpdateFunctionEventInvokeConfigRequest = Struct.new(
        :function_name,
        :qualifier,
        :maximum_retry_attempts,
        :maximum_event_age_in_seconds,
        :destination_config,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      UpdateFunctionUrlConfigRequest = Struct.new(
        :function_name,
        :qualifier,
        :auth_type,
        :cors,
        :invoke_mode,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      UpdateFunctionUrlConfigResponse = Struct.new(
        :function_url,
        :function_arn,
        :auth_type,
        :cors,
        :creation_time,
        :last_modified_time,
        :invoke_mode,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>The VPC security groups and subnets that are attached to a Lambda function. For more information,
      #       see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html">Configuring a Lambda
      #         function to access resources in a VPC</a>.</p>
      VpcConfig = Struct.new(
        :subnet_ids,
        :security_group_ids,
        :ipv6_allowed_for_dual_stack,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end

      # <p>The VPC security groups and subnets that are attached to a Lambda function.</p>
      VpcConfigResponse = Struct.new(
        :subnet_ids,
        :security_group_ids,
        :vpc_id,
        :ipv6_allowed_for_dual_stack,
        keyword_init: true
      ) do
        include Smithy::Schema::Structure
      end
    end
  end
end
