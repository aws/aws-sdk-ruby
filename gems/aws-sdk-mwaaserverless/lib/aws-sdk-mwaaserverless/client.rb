# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/transport'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
require 'smithy-client/plugins/protocol'
require 'smithy-client/plugins/raise_response_errors'
require 'smithy-client/plugins/request_compression'
require 'smithy-client/plugins/resolve_auth'
require 'smithy-client/plugins/response_target'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/json_rpc'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:mwaaserverless)

module Aws::MWAAServerless
  # An API client for Aws::MWAAServerless.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonMWAAServerless
    @identifier = :mwaaserverless

    add_plugin(::Aws::MWAAServerless::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::Transport)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
    add_plugin(Smithy::Client::Plugins::Protocol)
    add_plugin(Smithy::Client::Plugins::RaiseResponseErrors)
    add_plugin(Smithy::Client::Plugins::RequestCompression)
    add_plugin(Smithy::Client::Plugins::ResolveAuth)
    add_plugin(Smithy::Client::Plugins::ResponseTarget)
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::TransferEncoding)
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::InvocationId)
    add_plugin(Aws::Core::Plugins::RecursionDetection)
    add_plugin(Aws::Core::Plugins::RetryErrors)
    add_plugin(Aws::Core::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SigV4)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [String] :account_id_endpoint_mode
    #  The account ID endpoint mode to use. This can be one of the following values:
    #  * `preferred` - (default) Use the account ID endpoint if available, otherwise use the standard endpoint.
    #  * `disabled` - Never use the account ID endpoint, only use the standard endpoint.
    #  * `required` - Always use the account ID endpoint. If the account ID cannot be retrieved from credentials, an error is raised.
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing.
    # @option options [Array<String>] :auth_scheme_preference
    #  An ordered list of preferred authentication schemes to use when making a request.
    #  The items in the list must be a fully qualified scheme IDs, such as `smithy.api#httpBearerAuth`.
    # @option options [Numeric] :connect_timeout
    #  The number of seconds to wait when opening a connection before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::MWAAServerless::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Boolean] :http_wire_trace
    #  When `true`, HTTP wire trace output is sent to the configured logger.
    # @option options [Smithy::Client::LogFormatter] :log_formatter (Aws::Log::Formatter.default)
    #  The log formatter used by the logger.
    # @option options [Symbol] :log_level (:info)
    #  The log level to send messages to the logger at.
    # @option options [Logger] :logger
    #  The Logger instance to send log messages to. If this option is not set, logging is disabled.
    # @option options [Integer] :max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt.
    # @option options [String] :profile (default)
    #  Used when loading credentials from the shared config file and credentials file
    #  at ~/.aws/config and ~/.aws/credentials, respectively.  When not specified, 'default' is used.
    # @option options [Symbol, Object] :protocol
    #  The protocol used for request serialization and response deserialization. Defaults to the service default protocol. May be a Symbol naming a supported protocol, or a custom object implementing the protocol interface.
    #  Supported protocols: +:json_rpc+ (defaults to +:json_rpc+).
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
    # @option options [Numeric] :read_timeout
    #  The number of seconds to wait for data to be read before timing out.
    #  Defaults to `nil`, which uses the transport's default; the default
    #  Net::HTTP transport uses 60 seconds.
    # @option options [String] :region
    #  The AWS region to connect to. The configured `:region` is used to determine the service `:endpoint`.
    #  When not provided, a default region is searched for in the following locations:
    #  * `Aws.config[:region]`
    #  * `ENV['AWS_REGION']`
    #  * `ENV['AWS_DEFAULT_REGION']`
    #  * `~/.aws/credentials` as `region` under a profile
    #  * `~/.aws/config` as `region` under a profile
    # @option options [Integer] :request_min_compression_size_bytes (10240)
    #  The minimum size in bytes that triggers compression for request bodies.
    #  The value must be non-negative integer value between 0 and 10,485,780 bytes inclusive.
    # @option options [String] :retry_mode (standard)
    #  Specifies which retry algorithm to use. Values are:
    #
    #  * `standard` - A standardized set of retry rules across the AWS SDKs.
    #    This includes support for retry quotas, which limit the number of
    #    unsuccessful retries a client can make. This is the default
    #    value if no retry mode is provided.
    #
    #  * `adaptive` - A retry mode that includes all the functionality of
    #    `standard` mode along with automatic client side throttling.
    # @option options [Object] :retry_strategy
    #  The retry strategy used by the client. If not provided, a default strategy is built
    #  based on `:retry_mode` — either `Standard` or `Adaptive`.
    #
    #  A custom strategy must respond to:
    #  * `#acquire_initial_retry_token` - returns a token
    #  * `#refresh_retry_token(token, error_info)` - returns a token or nil
    #  * `#record_success(token)` - records a successful request
    #  * `#request_bookkeeping(error_info = nil)` - updates internal state
    # @option options [String] :sdk_ua_app_id
    #  A unique and opaque application ID that is appended to the User-Agent header as app/sdk_ua_app_id.
    #  It should have a maximum length of 50. This variable is sourced from environment variable
    #  `AWS_SDK_UA_APP_ID` or the shared config profile attribute `sdk_ua_app_id`.
    # @option options [String] :secret_access_key
    # @option options [String] :session_token
    # @option options [String] :ssl_ca_bundle
    #  The path to a CA certificate bundle file in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [String] :ssl_ca_directory
    #  The path to a directory of CA certificates in PEM format used to verify peer
    #  certificates. Defaults to `nil`, which uses the transport's default trust store.
    # @option options [OpenSSL::X509::Store] :ssl_ca_store
    #  An in-memory TLS trust store used to verify peer certificates. Defaults to `nil`,
    #  which uses the transport's default trust store.
    # @option options [Boolean] :ssl_verify_peer (true)
    #  When `true` (default), the peer's TLS certificate is verified. Disable only
    #  for debugging, as it is insecure.
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
    # @option options [Smithy::Client::NetHTTP::Transport] :transport
    #  The transport used to send requests. Defaults to an HTTP/1.1 transport based on
    #  Net::HTTP ({Smithy::Client::NetHTTP::Transport}), constructed with the resolved
    #  common client transport options. Supply a custom object responding to
    #  `#transmit(request, sink)` and `#transmit_background(request, sink)` (both push
    #  the response into the sink; see {Smithy::Client::Transport}) to swap the transport,
    #  or a directly-constructed `NetHTTP::Transport` to set Net::HTTP-specific knobs. A
    #  caller-supplied transport instance is used as-is.
    # @option options [Boolean] :use_dualstack_endpoint
    #  When set to `true`, dualstack enabled endpoints (with `.aws` TLD) will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_DUALSTACK_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_dualstack_endpoint` under a profile
    #  * `~/.aws/config` as `use_dualstack_endpoint` under a profile
    # @option options [Boolean] :use_fips_endpoint
    #  When set to `true`, FIPS compatible endpoints will be used if available.
    #  This option can also be configured in the following locations:
    #  * `ENV['AWS_USE_FIPS_ENDPOINT']`
    #  * `~/.aws/credentials` as `use_fips_endpoint` under a profile
    #  * `~/.aws/config` as `use_fips_endpoint` under a profile
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Creates a new workflow in Amazon Managed Workflows for Apache Airflow Serverless. This operation initializes a workflow with the specified configuration including the workflow definition, execution role, and optional settings for encryption, logging, and networking. You must provide the workflow definition as a YAML file stored in Amazon S3 that defines the DAG structure using supported Amazon Web Services operators. Amazon Managed Workflows for Apache Airflow Serverless automatically creates the first version of the workflow and sets up the necessary execution environment with multi-tenant isolation and security controls.</p>
    # @param [Hash, Types::CreateWorkflowRequest] params
    # @option params [String] :name
    #   <p>The name of the workflow. You must use unique workflow names within your Amazon Web Services account. The service generates a unique identifier that is appended to ensure temporal uniqueness across the account lifecycle.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. This token prevents duplicate workflow creation requests.</p>
    # @option params [Types::DefinitionS3Location] :definition_s3_location
    #   <p>The Amazon S3 location where the workflow definition file is stored. This must point to a valid YAML file that defines the workflow structure using supported Amazon Web Services operators and tasks. Amazon Managed Workflows for Apache Airflow Serverless takes a snapshot of the definition at creation time, so subsequent changes to the Amazon S3 object will not affect the workflow unless you create a new version. In your YAML definition, include task dependencies, scheduling information, and operator configurations that are compatible with the Amazon Managed Workflows for Apache Airflow Serverless execution environment.</p>
    # @option params [Types::Code] :code
    #   <p>The location of code artifacts in Amazon S3 for the workflow. The service copies the code from this location at the time of the request.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that Amazon Managed Workflows for Apache Airflow Serverless assumes when executing the workflow. This role must have the necessary permissions to access the required Amazon Web Services services and resources that your workflow tasks will interact with. The role is used for task execution in the isolated, multi-tenant environment and should follow the principle of least privilege. Amazon Managed Workflows for Apache Airflow Serverless validates role access during workflow creation but runtime permission checks are performed by the target services.</p>
    # @option params [String] :description
    #   <p>An optional description of the workflow that you can use to provide additional context about the workflow's purpose and functionality.</p>
    # @option params [Types::EncryptionConfiguration] :encryption_configuration
    #   <p>The configuration for encrypting workflow data at rest and in transit. Specifies the encryption type and optional KMS key for customer-managed encryption.</p>
    # @option params [Types::LoggingConfiguration] :logging_configuration
    #   <p>The configuration for workflow logging. Specifies the CloudWatch log group where workflow execution logs are stored. Amazon Managed Workflows for Apache Airflow Serverless automatically exports worker logs and task-level information to the specified log group in your account using remote logging functionality. This provides comprehensive observability for debugging and monitoring workflow execution across the distributed, serverless environment.</p>
    # @option params [Integer] :engine_version
    #   <p>The version of the Amazon Managed Workflows for Apache Airflow Serverless engine that you want to use for this workflow. This determines the feature set, supported operators, and execution environment capabilities available to your workflow. Amazon Managed Workflows for Apache Airflow Serverless maintains backward compatibility across versions while introducing new features and improvements. Currently supports version 1 with plans for additional versions as the service evolves.</p>
    # @option params [Types::NetworkConfiguration] :network_configuration
    #   <p>Network configuration for the workflow execution environment, including VPC security groups and subnets for secure network access. When specified, Amazon Managed Workflows for Apache Airflow Serverless deploys ECS worker tasks in your customer VPC to provide secure connectivity to your resources. If not specified, tasks run in the service's default worker VPC with network isolation from other customers. This configuration enables secure access to VPC-only resources like RDS databases or private endpoints.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of tags to assign to the workflow resource. Tags are key-value pairs that are used for resource organization and cost allocation.</p>
    # @option params [String] :trigger_mode
    #   <p>The trigger mode for the workflow execution.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "NameString", # required
    #     client_token: "IdempotencyTokenString",
    #     definition_s3_location: { # required
    #       bucket: "String", # required
    #       object_key: "String", # required
    #       version_id: "String"
    #     },
    #     code: {
    #       # One of:
    #       s3_location: {
    #         bucket: "String", # required
    #         object_key: "String", # required
    #         version_id: "String"
    #       }
    #     },
    #     role_arn: "RoleARN", # required
    #     description: "DescriptionString",
    #     encryption_configuration: {
    #       type: "AWS_MANAGED_KEY" # One of: ["AWS_MANAGED_KEY", "CUSTOMER_MANAGED_KEY"], # required
    #       kms_key_id: "String"
    #     },
    #     logging_configuration: {
    #       log_group_name: "String", # required
    #     },
    #     engine_version: 1 # One of: [1],
    #     network_configuration: {
    #       security_group_ids: ["SecurityGroupString"],
    #       subnet_ids: ["SubnetString"]
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     trigger_mode: "GenericString"
    #   }
    #   options = {}
    #   response = client.create_workflow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workflow_arn: "WorkflowArn", # required
    #     created_at: Time.now,
    #     revision_id: "String",
    #     workflow_status: "READY" # One of: ["READY", "DELETING"],
    #     workflow_version: "WorkflowVersion",
    #     is_latest_version: false,
    #     warnings: ["String"]
    #   }
    # @return [Types::CreateWorkflowResponse]
    def create_workflow(params = {}, options = {})
      request = build_request(:create_workflow, params)
      request.send_request(options)
    end

    # <p>Deletes a workflow and all its versions. This operation permanently removes the workflow and cannot be undone. Amazon Managed Workflows for Apache Airflow Serverless ensures that all associated resources are properly cleaned up, including stopping any running executions, removing scheduled triggers, and cleaning up execution history. The deletion process respects the multi-tenant isolation boundaries and ensures that no residual data or configurations remain that could affect other customers or workflows.</p>
    # @param [Hash, Types::DeleteWorkflowRequest] params
    # @option params [String] :workflow_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow you want to delete.</p>
    # @option params [String] :workflow_version
    #   <p>Optional. The specific version of the workflow to delete. If not specified, all versions of the workflow are deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_arn: "WorkflowArn", # required
    #     workflow_version: "WorkflowVersion"
    #   }
    #   options = {}
    #   response = client.delete_workflow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workflow_arn: "WorkflowArn", # required
    #     workflow_version: "WorkflowVersion"
    #   }
    # @return [Types::DeleteWorkflowResponse]
    def delete_workflow(params = {}, options = {})
      request = build_request(:delete_workflow, params)
      request.send_request(options)
    end

    # <p>Retrieves detailed information about a specific task instance within a workflow run. Task instances represent individual tasks that are executed as part of a workflow in the Amazon Managed Workflows for Apache Airflow Serverless environment. Each task instance runs in an isolated ECS container with dedicated resources and security boundaries. The service tracks task execution state, retry attempts, and provides detailed timing and error information for troubleshooting and monitoring purposes.</p>
    # @param [Hash, Types::GetTaskInstanceRequest] params
    # @option params [String] :workflow_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow that contains the task instance.</p>
    # @option params [String] :task_instance_id
    #   <p>The unique identifier of the task instance to retrieve.</p>
    # @option params [String] :run_id
    #   <p>The unique identifier of the workflow run that contains the task instance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_arn: "WorkflowArn", # required
    #     task_instance_id: "IdString", # required
    #     run_id: "IdString", # required
    #   }
    #   options = {}
    #   response = client.get_task_instance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workflow_arn: "WorkflowArn", # required
    #     run_id: "IdString", # required
    #     task_instance_id: "IdString", # required
    #     workflow_version: "VersionId",
    #     status: "QUEUED" # One of: ["QUEUED", "FAILED", "SCHEDULED", "RUNNING", "SUCCESS", "UP_FOR_RESCHEDULE", "UP_FOR_RETRY", "UPSTREAM_FAILED", "REMOVED", "RESTARTING", "DEFERRED", "NONE", "CANCELLED", "TIMEOUT"],
    #     duration_in_seconds: 1,
    #     operator_name: "GenericString",
    #     modified_at: Time.now,
    #     ended_at: Time.now,
    #     started_at: Time.now,
    #     attempt_number: 1,
    #     error_message: "GenericString",
    #     task_id: "IdString",
    #     log_stream: "IdString",
    #     xcom: {
    #       "GenericString" => "GenericString"
    #     }
    #   }
    # @return [Types::GetTaskInstanceResponse]
    def get_task_instance(params = {}, options = {})
      request = build_request(:get_task_instance, params)
      request.send_request(options)
    end

    # <p>Retrieves detailed information about a workflow, including its configuration, status, and metadata.</p>
    # @param [Hash, Types::GetWorkflowRequest] params
    # @option params [String] :workflow_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow you want to retrieve.</p>
    # @option params [String] :workflow_version
    #   <p>Optional. The specific version of the workflow to retrieve. If not specified, the latest version is returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_arn: "WorkflowArn", # required
    #     workflow_version: "WorkflowVersion"
    #   }
    #   options = {}
    #   response = client.get_workflow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workflow_arn: "WorkflowArn", # required
    #     workflow_version: "WorkflowVersion",
    #     name: "NameString",
    #     description: "DescriptionString",
    #     created_at: Time.now,
    #     modified_at: Time.now,
    #     encryption_configuration: {
    #       type: "AWS_MANAGED_KEY" # One of: ["AWS_MANAGED_KEY", "CUSTOMER_MANAGED_KEY"], # required
    #       kms_key_id: "String"
    #     },
    #     logging_configuration: {
    #       log_group_name: "String", # required
    #     },
    #     engine_version: 1 # One of: [1],
    #     workflow_status: "READY" # One of: ["READY", "DELETING"],
    #     definition_s3_location: {
    #       bucket: "String", # required
    #       object_key: "String", # required
    #       version_id: "String"
    #     },
    #     code: {
    #       # One of:
    #       s3_location: {
    #         bucket: "String", # required
    #         object_key: "String", # required
    #         version_id: "String"
    #       }
    #     },
    #     code_snapshotted_at: Time.now,
    #     schedule_configuration: {
    #       cron_expression: "String"
    #     },
    #     role_arn: "RoleARN",
    #     network_configuration: {
    #       security_group_ids: ["SecurityGroupString"],
    #       subnet_ids: ["SubnetString"]
    #     },
    #     trigger_mode: "GenericString",
    #     workflow_definition: "GenericString"
    #   }
    # @return [Types::GetWorkflowResponse]
    def get_workflow(params = {}, options = {})
      request = build_request(:get_workflow, params)
      request.send_request(options)
    end

    # <p>Retrieves detailed information about a specific workflow run, including its status, execution details, and task instances.</p>
    # @param [Hash, Types::GetWorkflowRunRequest] params
    # @option params [String] :workflow_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow that contains the run.</p>
    # @option params [String] :run_id
    #   <p>The unique identifier of the workflow run to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_arn: "WorkflowArn", # required
    #     run_id: "IdString", # required
    #   }
    #   options = {}
    #   response = client.get_workflow_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workflow_arn: "WorkflowArn",
    #     workflow_version: "VersionId",
    #     run_id: "IdString",
    #     run_type: "ON_DEMAND" # One of: ["ON_DEMAND", "SCHEDULED"],
    #     override_parameters: {
    #       "String" => ""null""
    #     },
    #     run_detail: {
    #       workflow_arn: "WorkflowArn",
    #       workflow_version: "VersionId",
    #       run_id: "IdString",
    #       run_type: "ON_DEMAND" # One of: ["ON_DEMAND", "SCHEDULED"],
    #       started_on: Time.now,
    #       created_at: Time.now,
    #       completed_on: Time.now,
    #       modified_at: Time.now,
    #       duration: 1,
    #       error_message: "GenericString",
    #       task_instances: ["IdString"],
    #       run_state: "STARTING" # One of: ["STARTING", "QUEUED", "RUNNING", "SUCCESS", "FAILED", "TIMEOUT", "STOPPING", "STOPPED"]
    #     }
    #   }
    # @return [Types::GetWorkflowRunResponse]
    def get_workflow_run(params = {}, options = {})
      request = build_request(:get_workflow_run, params)
      request.send_request(options)
    end

    # <p>Lists all tags that are associated with a specified Amazon Managed Workflows for Apache Airflow Serverless resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which to list tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TaggableResourceArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Lists all task instances for a specific workflow run, with optional pagination support.</p>
    # @param [Hash, Types::ListTaskInstancesRequest] params
    # @option params [String] :workflow_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow that contains the run.</p>
    # @option params [String] :run_id
    #   <p>The unique identifier of the workflow run for which you want a list of task instances.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of task instances to return in a single response.</p>
    # @option params [String] :next_token
    #   <p>The pagination token you need to use to retrieve the next set of results. This value is returned from a previous call to <code>ListTaskInstances</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_arn: "WorkflowArn", # required
    #     run_id: "IdString", # required
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_task_instances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_instances: [
    #       {
    #         workflow_arn: "WorkflowArn",
    #         workflow_version: "VersionId",
    #         run_id: "IdString",
    #         task_instance_id: "IdString",
    #         status: "QUEUED" # One of: ["QUEUED", "FAILED", "SCHEDULED", "RUNNING", "SUCCESS", "UP_FOR_RESCHEDULE", "UP_FOR_RETRY", "UPSTREAM_FAILED", "REMOVED", "RESTARTING", "DEFERRED", "NONE", "CANCELLED", "TIMEOUT"],
    #         duration_in_seconds: 1,
    #         operator_name: "GenericString"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListTaskInstancesResponse]
    def list_task_instances(params = {}, options = {})
      request = build_request(:list_task_instances, params)
      request.send_request(options)
    end

    # <p>Lists all runs for a specified workflow, with optional pagination and filtering support.</p>
    # @param [Hash, Types::ListWorkflowRunsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of workflow runs to return in a single response.</p>
    # @option params [String] :next_token
    #   <p>The pagination token you need to use to retrieve the next set of results. This value is returned from a previous call to <code>ListWorkflowRuns</code>.</p>
    # @option params [String] :workflow_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow for which you want a list of runs.</p>
    # @option params [String] :workflow_version
    #   <p>Optional. The specific version of the workflow for which you want a list of runs. If not specified, runs for all versions are returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     workflow_arn: "WorkflowArn", # required
    #     workflow_version: "VersionId"
    #   }
    #   options = {}
    #   response = client.list_workflow_runs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workflow_runs: [
    #       {
    #         run_id: "IdString",
    #         workflow_arn: "WorkflowArn",
    #         workflow_version: "VersionId",
    #         run_type: "ON_DEMAND" # One of: ["ON_DEMAND", "SCHEDULED"],
    #         run_detail_summary: {
    #           status: "STARTING" # One of: ["STARTING", "QUEUED", "RUNNING", "SUCCESS", "FAILED", "TIMEOUT", "STOPPING", "STOPPED"],
    #           created_on: Time.now,
    #           started_at: Time.now,
    #           ended_at: Time.now
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListWorkflowRunsResponse]
    def list_workflow_runs(params = {}, options = {})
      request = build_request(:list_workflow_runs, params)
      request.send_request(options)
    end

    # <p>Lists all versions of a specified workflow, with optional pagination support.</p>
    # @param [Hash, Types::ListWorkflowVersionsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of workflow versions to return in a single response.</p>
    # @option params [String] :next_token
    #   <p>The pagination token you need to use to retrieve the next set of results. This value is returned from a previous call to <code>ListWorkflowVersions</code>.</p>
    # @option params [String] :workflow_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow for which you want to list versions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String",
    #     workflow_arn: "WorkflowArn", # required
    #   }
    #   options = {}
    #   response = client.list_workflow_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workflow_versions: [
    #       {
    #         workflow_version: "WorkflowVersion", # required
    #         workflow_arn: "WorkflowArn", # required
    #         is_latest_version: false,
    #         created_at: Time.now,
    #         modified_at: Time.now,
    #         definition_s3_location: {
    #           bucket: "String", # required
    #           object_key: "String", # required
    #           version_id: "String"
    #         },
    #         schedule_configuration: {
    #           cron_expression: "String"
    #         },
    #         trigger_mode: "GenericString"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListWorkflowVersionsResponse]
    def list_workflow_versions(params = {}, options = {})
      request = build_request(:list_workflow_versions, params)
      request.send_request(options)
    end

    # <p>Lists all workflows in your account, with optional pagination support. This operation returns summary information for workflows, showing only the most recently created version of each workflow. Amazon Managed Workflows for Apache Airflow Serverless maintains workflow metadata in a highly available, distributed storage system that enables efficient querying and filtering. The service implements proper access controls to ensure you can only view workflows that you have permissions to access, supporting both individual and team-based workflow management scenarios.</p>
    # @param [Hash, Types::ListWorkflowsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of workflows you want to return in a single response.</p>
    # @option params [String] :next_token
    #   <p>The pagination token you need to use to retrieve the next set of results. This value is returned from a previous call to <code>ListWorkflows</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_workflows(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workflows: [ # required
    #       {
    #         workflow_arn: "WorkflowArn", # required
    #         workflow_version: "WorkflowVersion",
    #         name: "NameString",
    #         description: "DescriptionString",
    #         created_at: Time.now,
    #         modified_at: Time.now,
    #         workflow_status: "READY" # One of: ["READY", "DELETING"],
    #         trigger_mode: "GenericString"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListWorkflowsResponse]
    def list_workflows(params = {}, options = {})
      request = build_request(:list_workflows, params)
      request.send_request(options)
    end

    # <p>Starts a new execution of a workflow. This operation creates a workflow run that executes the tasks that are defined in the workflow. Amazon Managed Workflows for Apache Airflow Serverless schedules the workflow execution across its managed Airflow environment, automatically scaling ECS worker tasks based on the workload. The service handles task isolation, dependency resolution, and provides comprehensive monitoring and logging throughout the execution lifecycle.</p>
    # @param [Hash, Types::StartWorkflowRunRequest] params
    # @option params [String] :workflow_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow you want to run.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. This token prevents duplicate workflow run requests.</p>
    # @option params [Hash<String, JSON>] :override_parameters
    #   <p>Optional parameters to override default workflow parameters for this specific run. These parameters are passed to the workflow during execution and can be used to customize behavior without modifying the workflow definition. Parameters are made available as environment variables to tasks and you can reference them within the YAML workflow definition using standard parameter substitution syntax.</p>
    # @option params [String] :workflow_version
    #   <p>Optional. The specific version of the workflow to execute. If not specified, the latest version is used.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_arn: "WorkflowArn", # required
    #     client_token: "IdempotencyTokenString",
    #     override_parameters: {
    #       "String" => ""null""
    #     },
    #     workflow_version: "VersionId"
    #   }
    #   options = {}
    #   response = client.start_workflow_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     run_id: "IdString",
    #     status: "STARTING" # One of: ["STARTING", "QUEUED", "RUNNING", "SUCCESS", "FAILED", "TIMEOUT", "STOPPING", "STOPPED"],
    #     started_at: Time.now
    #   }
    # @return [Types::StartWorkflowRunResponse]
    def start_workflow_run(params = {}, options = {})
      request = build_request(:start_workflow_run, params)
      request.send_request(options)
    end

    # <p>Stops a running workflow execution. This operation terminates all running tasks and prevents new tasks from starting. Amazon Managed Workflows for Apache Airflow Serverless gracefully shuts down the workflow execution by stopping task scheduling and terminating active ECS worker containers. The operation transitions the workflow run to a <code>STOPPING</code> state and then to <code>STOPPED</code> once all cleanup is complete. In-flight tasks may complete or be terminated depending on their current execution state.</p>
    # @param [Hash, Types::StopWorkflowRunRequest] params
    # @option params [String] :workflow_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow that contains the run you want to stop.</p>
    # @option params [String] :run_id
    #   <p>The unique identifier of the workflow run to stop.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_arn: "WorkflowArn", # required
    #     run_id: "IdString", # required
    #   }
    #   options = {}
    #   response = client.stop_workflow_run(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workflow_arn: "WorkflowArn",
    #     workflow_version: "VersionId",
    #     run_id: "IdString",
    #     status: "STARTING" # One of: ["STARTING", "QUEUED", "RUNNING", "SUCCESS", "FAILED", "TIMEOUT", "STOPPING", "STOPPED"]
    #   }
    # @return [Types::StopWorkflowRunResponse]
    def stop_workflow_run(params = {}, options = {})
      request = build_request(:stop_workflow_run, params)
      request.send_request(options)
    end

    # <p>Adds tags to an Amazon Managed Workflows for Apache Airflow Serverless resource. Tags are key-value pairs that help you organize and categorize your resources.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to which to add tags.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of tags to add to the resource. Each tag consists of a key-value pair.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TaggableResourceArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceResponse]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes tags from an Amazon Managed Workflows for Apache Airflow Serverless resource. This operation removes the specified tags from the resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource from which to remove tags.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tag keys to remove from the resource. Only the keys are required; the values are ignored.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "TaggableResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceResponse]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates an existing workflow with new configuration settings. This operation allows you to modify the workflow definition, role, and other settings. When you update a workflow, Amazon Managed Workflows for Apache Airflow Serverless automatically creates a new version with the updated configuration and disables scheduling on all previous versions to ensure only one version is actively scheduled at a time. The update operation maintains workflow history while providing a clean transition to the new configuration.</p>
    # @param [Hash, Types::UpdateWorkflowRequest] params
    # @option params [String] :workflow_arn
    #   <p>The Amazon Resource Name (ARN) of the workflow you want to update.</p>
    # @option params [Types::DefinitionS3Location] :definition_s3_location
    #   <p>The Amazon S3 location where the updated workflow definition file is stored.</p>
    # @option params [Types::Code] :code
    #   <p>The location of code artifacts in Amazon S3 for the updated workflow. The service copies the code from this location at the time of the request.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that Amazon Managed Workflows for Apache Airflow Serverless assumes when it executes the updated workflow.</p>
    # @option params [String] :description
    #   <p>An updated description for the workflow.</p>
    # @option params [Types::LoggingConfiguration] :logging_configuration
    #   <p>Updated logging configuration for the workflow.</p>
    # @option params [Integer] :engine_version
    #   <p>The version of the Amazon Managed Workflows for Apache Airflow Serverless engine that you want to use for the updated workflow.</p>
    # @option params [Types::NetworkConfiguration] :network_configuration
    #   <p>Updated network configuration for the workflow execution environment.</p>
    # @option params [String] :trigger_mode
    #   <p>The trigger mode for the workflow execution.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_arn: "WorkflowArn", # required
    #     definition_s3_location: { # required
    #       bucket: "String", # required
    #       object_key: "String", # required
    #       version_id: "String"
    #     },
    #     code: {
    #       # One of:
    #       s3_location: {
    #         bucket: "String", # required
    #         object_key: "String", # required
    #         version_id: "String"
    #       }
    #     },
    #     role_arn: "RoleARN", # required
    #     description: "DescriptionString",
    #     logging_configuration: {
    #       log_group_name: "String", # required
    #     },
    #     engine_version: 1 # One of: [1],
    #     network_configuration: {
    #       security_group_ids: ["SecurityGroupString"],
    #       subnet_ids: ["SubnetString"]
    #     },
    #     trigger_mode: "GenericString"
    #   }
    #   options = {}
    #   response = client.update_workflow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workflow_arn: "WorkflowArn", # required
    #     modified_at: Time.now,
    #     workflow_version: "WorkflowVersion",
    #     warnings: ["String"]
    #   }
    # @return [Types::UpdateWorkflowResponse]
    def update_workflow(params = {}, options = {})
      request = build_request(:update_workflow, params)
      request.send_request(options)
    end

    # Polls an API operation until a resource enters a desired state.
    #
    # ## Basic Usage
    #
    # A waiter will call an API operation until:
    #
    # * It is successful
    # * It enters a terminal state
    # * It reaches the maximum wait time allowed
    #
    # In between attempts, the waiter will sleep.
    #
    #     # polls in a loop, sleeping between attempts
    #     client.wait_until(waiter_name, params, options)
    #
    # ## Configuration
    #
    # You must configure the maximum amount of time in seconds a
    # waiter should wait for. You may also configure the minimum
    # and maximum amount of time in seconds to delay between
    # retries. You can pass these configuration as the final
    # arguments hash.
    #
    #     weather = Weather::Client.new
    #
    #     # poll for a maximum of 25 seconds
    #     weather.wait_until(:forecast_exists, { forecast_id: '1' }, {
    #       max_wait_time: 25,
    #       min_delay: 2,
    #       max_delay: 10
    #     })
    #
    # ## Handling Errors
    #
    # When a waiter is unsuccessful, it will raise an error.
    # All the failure errors extend from
    # {Smithy::Client::Waiters::WaiterFailed}.
    #
    #     weather = Weather::Client.new
    #     begin
    #       weather.wait_until(:forecast_exists, { forecast_id: '1' }, max_wait_time: 60)
    #     rescue Smithy::Client::Waiters::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    # @param [Symbol] waiter_name
    # @param [Hash] params ({})
    # @param [Hash] options ({})
    # @option options [Integer] :max_wait_time
    # @option options [Integer] :min_delay
    # @option options [Integer] :max_delay
    # @return [nil] Returns `nil` if the waiter was successful.
    # @raise [FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    # @raise [MaxWaitTimeExceededError] Raised when the configured
    #   maximum wait time is reached and the waiter is not yet successful.
    # @raise [UnexpectedError] Raised when an error that is not
    #   expected is encountered while polling for a resource.
    # @raise [NoSuchWaiterError] Raised when you request to wait
    #   for an unknown state.
    def wait_until(waiter_name, params = {}, options = {})
      waiter(waiter_name, options).wait(params)
    end

    # @api private
    def build_request(operation_name, params)
      handlers = @handlers.for(operation_name)
      context = Smithy::Client::HandlerContext.new(
        operation_name: operation_name,
        operation: config.service.operation(operation_name),
        client: self,
        config: config,
        params: params
      )
      context[:gem_name] = 'aws-sdk-mwaaserverless'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {}
    end

    class << self
      # @api private
      attr_reader :identifier

      # @api private
      def auth_parameters
        AuthParameters
      end

      # @api private
      def auth_resolver
        AuthResolver
      end

      # @api private
      def errors_module
        Errors
      end

      # @api private
      def protocols
        {
          json_rpc: Aws::Core::JsonRpc
        }
      end
    end
  end
end
