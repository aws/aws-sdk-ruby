# frozen_string_literal: true

# This is generated code!

require_relative 'plugins/endpoint'
require 'smithy-client/plugins/checksum_required'
require 'smithy-client/plugins/content_length'
require 'smithy-client/plugins/default_params'
require 'smithy-client/plugins/host_prefix'
require 'smithy-client/plugins/idempotency_token'
require 'smithy-client/plugins/logging'
require 'smithy-client/plugins/net_http'
require 'smithy-client/plugins/pageable_response'
require 'smithy-client/plugins/param_converter'
require 'smithy-client/plugins/param_validator'
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
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:m2)

module Aws::M2
  # An API client for Aws::M2.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AwsSupernovaControlPlaneService
    @identifier = :m2

    add_plugin(::Aws::M2::Plugins::Endpoint)
    add_plugin(Smithy::Client::Plugins::ChecksumRequired)
    add_plugin(Smithy::Client::Plugins::ContentLength)
    add_plugin(Smithy::Client::Plugins::DefaultParams)
    add_plugin(Smithy::Client::Plugins::HostPrefix)
    add_plugin(Smithy::Client::Plugins::IdempotencyToken)
    add_plugin(Smithy::Client::Plugins::Logging)
    add_plugin(Smithy::Client::Plugins::NetHTTP)
    add_plugin(Smithy::Client::Plugins::PageableResponse)
    add_plugin(Smithy::Client::Plugins::ParamConverter)
    add_plugin(Smithy::Client::Plugins::ParamValidator)
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
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)
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
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials_provider
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  The endpoint to send requests to.
    #  The endpoint should be a URI formatted like "http://example.com:123"'
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::M2::EndpointProvider)
    #  An object that provides an endpoint to use for the request.
    # @option options [String] :http_ca_file
    #  The path to a CA certification file in PEM format. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_file Net::HTTP#ca_file}.
    # @option options [String] :http_ca_path
    #  The path of to CA directory containing certification files in PEM format. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ca_path Net::HTTP#ca_path}.
    # @option options [OpenSSL::X509::Certificate] :http_cert
    #  Sets the OpenSSL::X509::Certificate object to be used for client certification. Defaults
    #  to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert Net::HTTP#cert}.
    # @option options [OpenSSL::X509::Store] :http_cert_store
    #  Sets the OpenSSL::X509::Store to be used for verifying peer certificate. Defaults to
    #  `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-cert_store Net::HTTP#cert_store}.
    # @option options [Numeric] :http_continue_timeout
    #  Sets the continue timeout value, which is the number of seconds to wait for an
    #  expected 100 Continue response. If the HTTP object does not receive a response
    #  in this many seconds it sends the request body. Defaults to `nil` which uses the
    #  Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-continue_timeout Net::HTTP#continue_timeout}.
    # @option options [Boolean] :http_debug_output
    #  When `true`, Net::HTTP debug output will be sent to the configured logger.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#method-i-set_debug_output Net::HTTP#set_debug_output}.
    # @option options [Numeric] :http_keep_alive_timeout
    #  The number of seconds to keep the connection open after a request is sent. If a
    #  new request is made during the given interval, the still-open connection is used;
    #  otherwise the connection will have been closed and a new connection is opened.
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-keep_alive_timeout Net::HTTP#keep_alive_timeout}.
    # @option options [OpenSSL::PKey::RSA, OpenSSL::PKey::DSA] :http_key
    #  Sets the OpenSSL::PKey object to be used for client private key. Defaults to `nil` which
    #  uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-key Net::HTTP#key}.
    # @option options [Numeric] :http_open_timeout
    #  The number of seconds to wait for a connection to open. If the connection is not
    #  made in the given interval, an exception is raised. Defaults to `nil` which uses
    #  the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-open_timeout Net::HTTP#open_timeout}.
    # @option options [URI::HTTP, String] :http_proxy
    #  A proxy to send requests through. Formatted like 'http://proxy.com:123'.
    # @option options [Numeric] :http_read_timeout
    #  The number of seconds to wait for one block to be read (via one read(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-read_timeout Net::HTTP#read_timeout}.
    # @option options [Numeric] :http_ssl_timeout
    #  Sets the SSL timeout seconds. Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-ssl_timeout Net::HTTP#ssl_timeout}.
    # @option options [Integer] :http_verify_mode (OpenSSL::SSL::VERIFY_PEER)
    #  Sets the verify mode for SSL. Defaults to `OpenSSL::SSL::VERIFY_PEER`.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-verify_mode Net::HTTP#verify_mode}.
    # @option options [Numeric] :http_write_timeout
    #  The number of seconds to wait for one block to be written (via one write(2) call).
    #  Defaults to `nil` which uses the Net::HTTP default value.
    #  See {https://docs.ruby-lang.org/en/master/Net/HTTP.html#attribute-i-write_timeout Net::HTTP#write_timeout}.
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
    # @option options [Boolean] :raise_response_errors (true)
    #  When `true`, response errors are raised. When `false`, the error is placed on the
    #  output in the {Smithy::Client::Response#error error accessor}.
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
    # @option options [Boolean] :stub_responses
    #  When `true`, the client will return stubbed responses instead of networking requests.
    #  By default fake responses are generated and returned. You can specify the response data
    #  to return or errors to raise by calling {Smithy::Client::Stubs#stub_responses}.
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

    # <p>Cancels the running of a specific batch job execution.</p>
    # @param [Hash, Types::CancelBatchJobExecutionInput] params
    # @option params [String] :application_id
    #   <p>The unique identifier of the application.</p>
    # @option params [String] :execution_id
    #   <p>The unique identifier of the batch job execution.</p>
    # @option params [String] :auth_secrets_manager_arn
    #   <p>The Amazon Web Services Secrets Manager containing user's credentials for authentication and authorization for Cancel Batch Job Execution operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "Identifier", # required
    #     execution_id: "Identifier", # required
    #     auth_secrets_manager_arn: "AuthSecretsManagerArn"
    #   }
    #   options = {}
    #   response = client.cancel_batch_job_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CancelBatchJobExecutionOutput]
    def cancel_batch_job_execution(params = {}, options = {})
      request = build_request(:cancel_batch_job_execution, params)
      request.send_request(options)
    end

    # <p>Creates a new application with given parameters. Requires an existing runtime
    #          environment and application definition file.</p>
    # @param [Hash, Types::CreateApplicationInput] params
    # @option params [String] :name
    #   <p>The unique identifier of the application.</p>
    # @option params [String] :description
    #   <p>The description of the application.</p>
    # @option params [String] :engine_type
    #   <p>The type of the target platform for this application.</p>
    # @option params [Types::Definition] :definition
    #   <p>The application definition for this application. You can specify either inline JSON or
    #            an S3 bucket location.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A list of tags to apply to the application.</p>
    # @option params [String] :client_token
    #   <p>A client token is a unique, case-sensitive string of up to 128 ASCII characters with ASCII values of 33-126 inclusive.
    #            It's generated by the client to ensure idempotent operations, allowing for safe retries without unintended side effects.</p>
    # @option params [String] :kms_key_id
    #   <p>The identifier of a customer managed key.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) that identifies a role that the application uses to access Amazon Web Services resources
    #            that are not part of the application or are in a different Amazon Web Services account.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EntityName", # required
    #     description: "EntityDescription",
    #     engine_type: "EngineType", # required
    #     definition: { # required
    #       # One of:
    #       s3_location: "String2000",
    #       content: "StringFree65000"
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken",
    #     kms_key_id: "String",
    #     role_arn: "Arn"
    #   }
    #   options = {}
    #   response = client.create_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_arn: "Arn", # required
    #     application_id: "Identifier", # required
    #     application_version: 1, # required
    #   }
    # @return [Types::CreateApplicationOutput]
    def create_application(params = {}, options = {})
      request = build_request(:create_application, params)
      request.send_request(options)
    end

    # <p>Starts a data set export task for a specific application.</p>
    # @param [Hash, Types::CreateDataSetExportTaskRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier of the application for which you want to export data sets.</p>
    # @option params [Types::DataSetExportConfig] :export_config
    #   <p>The data set export task configuration.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure the idempotency of the request to create a data set export. The service generates the clientToken when the API call is triggered. The token expires after one hour, so if you retry the API within this timeframe with the same clientToken, you will get the same response. The service also handles deleting the clientToken after it expires.</p>
    # @option params [String] :kms_key_id
    #   <p>The identifier of a customer managed key.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "Identifier", # required
    #     export_config: { # required
    #       # One of:
    #       s3_location: "String",
    #       data_sets: [
    #         {
    #           dataset_name: "String200", # required
    #           external_location: { # required
    #             # One of:
    #             s3_location: "String2000"
    #           }
    #         }
    #       ]
    #     },
    #     client_token: "ClientToken",
    #     kms_key_id: "KMSKeyId"
    #   }
    #   options = {}
    #   response = client.create_data_set_export_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_id: "Identifier", # required
    #   }
    # @return [Types::CreateDataSetExportTaskResponse]
    def create_data_set_export_task(params = {}, options = {})
      request = build_request(:create_data_set_export_task, params)
      request.send_request(options)
    end

    # <p>Starts a data set import task for a specific application.</p>
    # @param [Hash, Types::CreateDataSetImportTaskInput] params
    # @option params [String] :application_id
    #   <p>The unique identifier of the application for which you want to import data sets.</p>
    # @option params [Types::DataSetImportConfig] :import_config
    #   <p>The data set import task configuration.</p>
    # @option params [String] :client_token
    #   <p> Unique, case-sensitive identifier you provide to ensure the idempotency of the request
    #            to create a data set import. The service generates the clientToken when the API call is
    #            triggered. The token expires after one hour, so if you retry the API within this timeframe
    #            with the same clientToken, you will get the same response. The service also handles
    #            deleting the clientToken after it expires. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "Identifier", # required
    #     import_config: { # required
    #       # One of:
    #       s3_location: "String2000",
    #       data_sets: [
    #         {
    #           data_set: { # required
    #             storage_type: "String",
    #             dataset_name: "String", # required
    #             dataset_org: { # required
    #               # One of:
    #               vsam: {
    #                 format: "String", # required
    #                 encoding: "String",
    #                 compressed: false,
    #                 primary_key: {
    #                   name: "String",
    #                   offset: 1, # required
    #                   length: 1, # required
    #                 },
    #                 alternate_keys: [
    #                   {
    #                     name: "String",
    #                     offset: 1, # required
    #                     length: 1, # required
    #                     allow_duplicates: false
    #                   }
    #                 ]
    #               },
    #               gdg: {
    #                 limit: 1,
    #                 roll_disposition: "String"
    #               },
    #               po: {
    #                 format: "String", # required
    #                 encoding: "String",
    #                 member_file_extensions: ["String20"], # required
    #               },
    #               ps: {
    #                 format: "String", # required
    #                 encoding: "String"
    #               }
    #             },
    #             relative_path: "String",
    #             record_length: { # required
    #               min: 1, # required
    #               max: 1, # required
    #             }
    #           },
    #           external_location: { # required
    #             # One of:
    #             s3_location: "String2000"
    #           }
    #         }
    #       ]
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_data_set_import_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_id: "Identifier", # required
    #   }
    # @return [Types::CreateDataSetImportTaskOutput]
    def create_data_set_import_task(params = {}, options = {})
      request = build_request(:create_data_set_import_task, params)
      request.send_request(options)
    end

    # <p>Creates and starts a deployment to deploy an application into a runtime
    #          environment.</p>
    # @param [Hash, Types::CreateDeploymentInput] params
    # @option params [String] :environment_id
    #   <p>The identifier of the runtime environment where you want to deploy this
    #            application.</p>
    # @option params [String] :application_id
    #   <p>The application identifier.</p>
    # @option params [Integer] :application_version
    #   <p>The version of the application to deploy.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure the idempotency of the request
    #            to create a deployment. The service generates the clientToken when the API call is
    #            triggered. The token expires after one hour, so if you retry the API within this timeframe
    #            with the same clientToken, you will get the same response. The service also handles
    #            deleting the clientToken after it expires. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "Identifier", # required
    #     application_id: "Identifier", # required
    #     application_version: 1, # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deployment_id: "Identifier", # required
    #   }
    # @return [Types::CreateDeploymentOutput]
    def create_deployment(params = {}, options = {})
      request = build_request(:create_deployment, params)
      request.send_request(options)
    end

    # <p>Creates a runtime environment for a given runtime engine.</p>
    # @param [Hash, Types::CreateEnvironmentInput] params
    # @option params [String] :name
    #   <p>The name of the runtime environment. Must be unique within the account.</p>
    # @option params [String] :instance_type
    #   <p>The type of instance for the runtime environment.</p>
    # @option params [String] :description
    #   <p>The description of the runtime environment.</p>
    # @option params [String] :engine_type
    #   <p>The engine type for the runtime environment.</p>
    # @option params [String] :engine_version
    #   <p>The version of the engine type for the runtime environment.</p>
    # @option params [Array<String>] :subnet_ids
    #   <p>The list of subnets associated with the VPC for this runtime environment.</p>
    # @option params [Array<String>] :security_group_ids
    #   <p>The list of security groups for the VPC associated with this runtime environment.</p>
    # @option params [Array<Types::StorageConfiguration>] :storage_configurations
    #   <p>Optional. The storage configurations for this runtime environment.</p>
    # @option params [Boolean] :publicly_accessible
    #   <p>Specifies whether the runtime environment is publicly accessible.</p>
    # @option params [Types::HighAvailabilityConfig] :high_availability_config
    #   <p>The details of a high availability configuration for this runtime environment.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags for the runtime environment.</p>
    # @option params [String] :preferred_maintenance_window
    #   <p>Configures the maintenance window that you want for the runtime environment. The maintenance window must have the format <code>ddd:hh24:mi-ddd:hh24:mi</code> and must be less than 24 hours. The following two examples are valid maintenance windows: <code>sun:23:45-mon:00:15</code> or <code>sat:01:00-sat:03:00</code>. </p>
    #            <p>If you do not provide a value, a random system-generated value will be assigned.</p>
    # @option params [String] :network_type
    #   <p>The network type required for the runtime environment.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure the idempotency of the request
    #            to create an environment. The service generates the clientToken when the API call is
    #            triggered. The token expires after one hour, so if you retry the API within this timeframe
    #            with the same clientToken, you will get the same response. The service also handles
    #            deleting the clientToken after it expires. </p>
    # @option params [String] :kms_key_id
    #   <p>The identifier of a customer managed key.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "EntityName", # required
    #     instance_type: "String20", # required
    #     description: "EntityDescription",
    #     engine_type: "EngineType", # required
    #     engine_version: "EngineVersion",
    #     subnet_ids: ["String50"],
    #     security_group_ids: ["String50"],
    #     storage_configurations: [{
    #       # One of:
    #       efs: {
    #         file_system_id: "String200", # required
    #         mount_point: "String200", # required
    #       },
    #       fsx: {
    #         file_system_id: "String200", # required
    #         mount_point: "String200", # required
    #       }
    #     }],
    #     publicly_accessible: false,
    #     high_availability_config: {
    #       desired_capacity: 1, # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     preferred_maintenance_window: "String50",
    #     network_type: "NetworkType",
    #     client_token: "ClientToken",
    #     kms_key_id: "String"
    #   }
    #   options = {}
    #   response = client.create_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment_id: "Identifier", # required
    #   }
    # @return [Types::CreateEnvironmentOutput]
    def create_environment(params = {}, options = {})
      request = build_request(:create_environment, params)
      request.send_request(options)
    end

    # <p>Deletes a specific application. You cannot delete a running application.</p>
    # @param [Hash, Types::DeleteApplicationInput] params
    # @option params [String] :application_id
    #   <p>The unique identifier of the application you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "Identifier", # required
    #   }
    #   options = {}
    #   response = client.delete_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteApplicationOutput]
    def delete_application(params = {}, options = {})
      request = build_request(:delete_application, params)
      request.send_request(options)
    end

    # <p>Deletes a specific application from the specific runtime environment where it was
    #          previously deployed. You cannot delete a runtime environment using DeleteEnvironment if any
    #          application has ever been deployed to it. This API removes the association of the
    #          application with the runtime environment so you can delete the environment smoothly.</p>
    # @param [Hash, Types::DeleteApplicationFromEnvironmentInput] params
    # @option params [String] :application_id
    #   <p>The unique identifier of the application you want to delete.</p>
    # @option params [String] :environment_id
    #   <p>The unique identifier of the runtime environment where the application was previously
    #            deployed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "Identifier", # required
    #     environment_id: "Identifier", # required
    #   }
    #   options = {}
    #   response = client.delete_application_from_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteApplicationFromEnvironmentOutput]
    def delete_application_from_environment(params = {}, options = {})
      request = build_request(:delete_application_from_environment, params)
      request.send_request(options)
    end

    # <p>Deletes a specific runtime environment. The environment cannot contain deployed
    #          applications. If it does, you must delete those applications before you delete the
    #          environment.</p>
    # @param [Hash, Types::DeleteEnvironmentInput] params
    # @option params [String] :environment_id
    #   <p>The unique identifier of the runtime environment you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "Identifier", # required
    #   }
    #   options = {}
    #   response = client.delete_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteEnvironmentOutput]
    def delete_environment(params = {}, options = {})
      request = build_request(:delete_environment, params)
      request.send_request(options)
    end

    # <p>Describes the details of a specific application.</p>
    # @param [Hash, Types::GetApplicationInput] params
    # @option params [String] :application_id
    #   <p>The identifier of the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "Identifier", # required
    #   }
    #   options = {}
    #   response = client.get_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "EntityName", # required
    #     description: "EntityDescription",
    #     application_id: "Identifier", # required
    #     application_arn: "Arn", # required
    #     status: "ApplicationLifecycle", # required
    #     latest_version: { # required
    #       application_version: 1, # required
    #       status: "ApplicationVersionLifecycle", # required
    #       status_reason: "String",
    #       creation_time: Time.now, # required
    #     },
    #     deployed_version: {
    #       application_version: 1, # required
    #       status: "DeploymentLifecycle", # required
    #       status_reason: "String"
    #     },
    #     engine_type: "EngineType", # required
    #     log_groups: [
    #       {
    #         log_type: "String20", # required
    #         log_group_name: "LogGroupIdentifier", # required
    #       }
    #     ],
    #     creation_time: Time.now, # required
    #     last_start_time: Time.now,
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     environment_id: "Identifier",
    #     target_group_arns: ["Arn"],
    #     listener_arns: ["Arn"],
    #     listener_ports: [1],
    #     load_balancer_dns_name: "String100",
    #     status_reason: "String",
    #     kms_key_id: "String",
    #     role_arn: "Arn"
    #   }
    # @return [Types::GetApplicationOutput]
    def get_application(params = {}, options = {})
      request = build_request(:get_application, params)
      request.send_request(options)
    end

    # <p>Returns details about a specific version of a specific application.</p>
    # @param [Hash, Types::GetApplicationVersionInput] params
    # @option params [String] :application_id
    #   <p>The unique identifier of the application.</p>
    # @option params [Integer] :application_version
    #   <p>The specific version of the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "Identifier", # required
    #     application_version: 1, # required
    #   }
    #   options = {}
    #   response = client.get_application_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "EntityName", # required
    #     application_version: 1, # required
    #     description: "EntityDescription",
    #     definition_content: "StringFree65000", # required
    #     status: "ApplicationVersionLifecycle", # required
    #     creation_time: Time.now, # required
    #     status_reason: "String"
    #   }
    # @return [Types::GetApplicationVersionOutput]
    def get_application_version(params = {}, options = {})
      request = build_request(:get_application_version, params)
      request.send_request(options)
    end

    # <p>Gets the details of a specific batch job execution for a specific application.</p>
    # @param [Hash, Types::GetBatchJobExecutionInput] params
    # @option params [String] :application_id
    #   <p>The identifier of the application.</p>
    # @option params [String] :execution_id
    #   <p>The unique identifier of the batch job execution.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "Identifier", # required
    #     execution_id: "Identifier", # required
    #   }
    #   options = {}
    #   response = client.get_batch_job_execution(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     execution_id: "Identifier", # required
    #     application_id: "Identifier", # required
    #     job_id: "String100",
    #     job_name: "String100",
    #     job_user: "String100",
    #     job_type: "BatchJobType",
    #     status: "BatchJobExecutionStatus", # required
    #     start_time: Time.now, # required
    #     end_time: Time.now,
    #     status_reason: "String",
    #     return_code: "String",
    #     batch_job_identifier: {
    #       # One of:
    #       file_batch_job_identifier: {
    #         file_name: "String", # required
    #         folder_path: "String"
    #       },
    #       script_batch_job_identifier: {
    #         script_name: "String", # required
    #       },
    #       s3_batch_job_identifier: {
    #         bucket: "String", # required
    #         key_prefix: "String",
    #         identifier: { # required
    #           # One of:
    #           file_name: "String",
    #           script_name: "String"
    #         }
    #       },
    #       restart_batch_job_identifier: {
    #         execution_id: "Identifier", # required
    #         job_step_restart_marker: { # required
    #           from_step: "String", # required
    #           from_proc_step: "String",
    #           to_step: "String",
    #           to_proc_step: "String",
    #           step_checkpoint: 1,
    #           skip: false
    #         }
    #       }
    #     },
    #     job_step_restart_marker: {
    #       from_step: "String", # required
    #       from_proc_step: "String",
    #       to_step: "String",
    #       to_proc_step: "String",
    #       step_checkpoint: 1,
    #       skip: false
    #     }
    #   }
    # @return [Types::GetBatchJobExecutionOutput]
    def get_batch_job_execution(params = {}, options = {})
      request = build_request(:get_batch_job_execution, params)
      request.send_request(options)
    end

    # <p>Gets the details of a specific data set.</p>
    # @param [Hash, Types::GetDataSetDetailsRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier of the application that this data set is associated with.</p>
    # @option params [String] :data_set_name
    #   <p>The name of the data set.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "Identifier", # required
    #     data_set_name: "String200", # required
    #   }
    #   options = {}
    #   response = client.get_data_set_details(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_set_name: "String200", # required
    #     data_set_org: {
    #       # One of:
    #       vsam: {
    #         encoding: "String20",
    #         record_format: "String20",
    #         compressed: false,
    #         cache_at_startup: false,
    #         primary_key: {
    #           name: "String",
    #           offset: 1, # required
    #           length: 1, # required
    #         },
    #         alternate_keys: [
    #           {
    #             name: "String",
    #             offset: 1, # required
    #             length: 1, # required
    #             allow_duplicates: false
    #           }
    #         ]
    #       },
    #       gdg: {
    #         limit: 1,
    #         roll_disposition: "String50"
    #       },
    #       po: {
    #         format: "String", # required
    #         encoding: "String", # required
    #       },
    #       ps: {
    #         format: "String", # required
    #         encoding: "String", # required
    #       }
    #     },
    #     record_length: 1,
    #     location: "String2000",
    #     blocksize: 1,
    #     creation_time: Time.now,
    #     last_updated_time: Time.now,
    #     last_referenced_time: Time.now,
    #     file_size: 1
    #   }
    # @return [Types::GetDataSetDetailsResponse]
    def get_data_set_details(params = {}, options = {})
      request = build_request(:get_data_set_details, params)
      request.send_request(options)
    end

    # <p>Gets the status of a data set import task initiated with the <a>CreateDataSetExportTask</a> operation.</p>
    # @param [Hash, Types::GetDataSetExportTaskRequest] params
    # @option params [String] :application_id
    #   <p>The application identifier.</p>
    # @option params [String] :task_id
    #   <p>The task identifier returned by the <a>CreateDataSetExportTask</a> operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "Identifier", # required
    #     task_id: "Identifier", # required
    #   }
    #   options = {}
    #   response = client.get_data_set_export_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_id: "Identifier", # required
    #     status: "DataSetTaskLifecycle", # required
    #     summary: {
    #       total: 1, # required
    #       succeeded: 1, # required
    #       failed: 1, # required
    #       pending: 1, # required
    #       in_progress: 1, # required
    #     },
    #     status_reason: "String",
    #     kms_key_arn: "String"
    #   }
    # @return [Types::GetDataSetExportTaskResponse]
    def get_data_set_export_task(params = {}, options = {})
      request = build_request(:get_data_set_export_task, params)
      request.send_request(options)
    end

    # <p>Gets the status of a data set import task initiated with the <a>CreateDataSetImportTask</a> operation.</p>
    # @param [Hash, Types::GetDataSetImportTaskInput] params
    # @option params [String] :application_id
    #   <p>The application identifier.</p>
    # @option params [String] :task_id
    #   <p>The task identifier returned by the <a>CreateDataSetImportTask</a> operation.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "Identifier", # required
    #     task_id: "Identifier", # required
    #   }
    #   options = {}
    #   response = client.get_data_set_import_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     task_id: "Identifier", # required
    #     status: "DataSetTaskLifecycle", # required
    #     summary: {
    #       total: 1, # required
    #       succeeded: 1, # required
    #       failed: 1, # required
    #       pending: 1, # required
    #       in_progress: 1, # required
    #     }
    #   }
    # @return [Types::GetDataSetImportTaskOutput]
    def get_data_set_import_task(params = {}, options = {})
      request = build_request(:get_data_set_import_task, params)
      request.send_request(options)
    end

    # <p>Gets details of a specific deployment with a given deployment identifier.</p>
    # @param [Hash, Types::GetDeploymentInput] params
    # @option params [String] :deployment_id
    #   <p>The unique identifier for the deployment.</p>
    # @option params [String] :application_id
    #   <p>The unique identifier of the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     deployment_id: "Identifier", # required
    #     application_id: "Identifier", # required
    #   }
    #   options = {}
    #   response = client.get_deployment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deployment_id: "Identifier", # required
    #     application_id: "Identifier", # required
    #     environment_id: "Identifier", # required
    #     application_version: 1, # required
    #     status: "DeploymentLifecycle", # required
    #     creation_time: Time.now, # required
    #     status_reason: "String"
    #   }
    # @return [Types::GetDeploymentOutput]
    def get_deployment(params = {}, options = {})
      request = build_request(:get_deployment, params)
      request.send_request(options)
    end

    # <p>Describes a specific runtime environment.</p>
    # @param [Hash, Types::GetEnvironmentInput] params
    # @option params [String] :environment_id
    #   <p>The unique identifier of the runtime environment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "Identifier", # required
    #   }
    #   options = {}
    #   response = client.get_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "EntityName", # required
    #     description: "EntityDescription",
    #     environment_arn: "Arn", # required
    #     environment_id: "Identifier", # required
    #     instance_type: "String20", # required
    #     status: "EnvironmentLifecycle", # required
    #     engine_type: "EngineType", # required
    #     engine_version: "EngineVersion", # required
    #     vpc_id: "String50", # required
    #     subnet_ids: ["String50"], # required
    #     security_group_ids: ["String50"], # required
    #     creation_time: Time.now, # required
    #     storage_configurations: [{
    #       # One of:
    #       efs: {
    #         file_system_id: "String200", # required
    #         mount_point: "String200", # required
    #       },
    #       fsx: {
    #         file_system_id: "String200", # required
    #         mount_point: "String200", # required
    #       }
    #     }],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     high_availability_config: {
    #       desired_capacity: 1, # required
    #     },
    #     publicly_accessible: false,
    #     actual_capacity: 1,
    #     load_balancer_arn: "String",
    #     status_reason: "String",
    #     preferred_maintenance_window: "String50",
    #     pending_maintenance: {
    #       schedule: {
    #         start_time: Time.now,
    #         end_time: Time.now
    #       },
    #       engine_version: "String"
    #     },
    #     kms_key_id: "String",
    #     network_type: "NetworkType"
    #   }
    # @return [Types::GetEnvironmentOutput]
    def get_environment(params = {}, options = {})
      request = build_request(:get_environment, params)
      request.send_request(options)
    end

    # <p>Gets a single sign-on URL that can be used to connect to AWS Blu Insights.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_signed_bluinsights_url(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     signed_bi_url: "String", # required
    #   }
    # @return [Types::GetSignedBluinsightsUrlResponse]
    def get_signed_bluinsights_url(params = {}, options = {})
      request = build_request(:get_signed_bluinsights_url, params)
      request.send_request(options)
    end

    # <p>Returns a list of the application versions for a specific application.</p>
    # @param [Hash, Types::ListApplicationVersionsRequest] params
    # @option params [String] :next_token
    #   <p>A pagination token returned from a previous call to
    #     this operation. This specifies the next item to return. To return to the beginning of the 
    #     list, exclude this parameter.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of application versions to return.</p>
    # @option params [String] :application_id
    #   <p>The unique identifier of the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     application_id: "Identifier", # required
    #   }
    #   options = {}
    #   response = client.list_application_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_versions: [ # required
    #       {
    #         application_version: 1, # required
    #         status: "ApplicationVersionLifecycle", # required
    #         status_reason: "String",
    #         creation_time: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListApplicationVersionsResponse]
    def list_application_versions(params = {}, options = {})
      request = build_request(:list_application_versions, params)
      request.send_request(options)
    end

    # <p>Lists the applications associated with a specific Amazon Web Services account. You can provide the
    #          unique identifier of a specific runtime environment in a query parameter to see all
    #          applications associated with that environment.</p>
    # @param [Hash, Types::ListApplicationsRequest] params
    # @option params [String] :next_token
    #   <p>A pagination token to control the number of applications displayed in the list.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of applications to return.</p>
    # @option params [Array<String>] :names
    #   <p>The names of the applications.</p>
    # @option params [String] :environment_id
    #   <p>The unique identifier of the runtime environment where the applications are
    #            deployed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     names: ["EntityName"],
    #     environment_id: "Identifier"
    #   }
    #   options = {}
    #   response = client.list_applications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     applications: [ # required
    #       {
    #         name: "EntityName", # required
    #         description: "EntityDescription",
    #         application_id: "Identifier", # required
    #         application_arn: "Arn", # required
    #         application_version: 1, # required
    #         status: "ApplicationLifecycle", # required
    #         engine_type: "EngineType", # required
    #         creation_time: Time.now, # required
    #         environment_id: "Identifier",
    #         last_start_time: Time.now,
    #         version_status: "ApplicationVersionLifecycle",
    #         deployment_status: "ApplicationDeploymentLifecycle",
    #         role_arn: "Arn"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListApplicationsResponse]
    def list_applications(params = {}, options = {})
      request = build_request(:list_applications, params)
      request.send_request(options)
    end

    # <p>Lists all the available batch job definitions based on the batch job resources uploaded
    #          during the application creation. You can use the batch job definitions in the list to start
    #          a batch job.</p>
    # @param [Hash, Types::ListBatchJobDefinitionsRequest] params
    # @option params [String] :next_token
    #   <p>A pagination token returned from a previous call to
    #     this operation. This specifies the next item to return. To return to the beginning of the 
    #     list, exclude this parameter.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of batch job definitions to return.</p>
    # @option params [String] :application_id
    #   <p>The identifier of the application.</p>
    # @option params [String] :prefix
    #   <p>If the batch job definition is a FileBatchJobDefinition, the prefix allows you to search
    #            on the file names of FileBatchJobDefinitions.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     application_id: "Identifier", # required
    #     prefix: "String"
    #   }
    #   options = {}
    #   response = client.list_batch_job_definitions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     batch_job_definitions: [{ # required
    #       # One of:
    #       file_batch_job_definition: {
    #         file_name: "String", # required
    #         folder_path: "String"
    #       },
    #       script_batch_job_definition: {
    #         script_name: "String", # required
    #       }
    #     }],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListBatchJobDefinitionsResponse]
    def list_batch_job_definitions(params = {}, options = {})
      request = build_request(:list_batch_job_definitions, params)
      request.send_request(options)
    end

    # <p>Lists historical, current, and scheduled batch job executions for a specific
    #          application.</p>
    # @param [Hash, Types::ListBatchJobExecutionsInput] params
    # @option params [String] :next_token
    #   <p>A pagination token to control the number of batch job executions displayed in the
    #            list.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of batch job executions to return.</p>
    # @option params [String] :application_id
    #   <p>The unique identifier of the application.</p>
    # @option params [Array<String>] :execution_ids
    #   <p>The unique identifier of each batch job execution.</p>
    # @option params [String] :job_name
    #   <p>The name of each batch job execution.</p>
    # @option params [String] :status
    #   <p>The status of the batch job executions.</p>
    # @option params [Time] :started_after
    #   <p>The time after which the batch job executions started.</p>
    # @option params [Time] :started_before
    #   <p>The time before the batch job executions started.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     application_id: "Identifier", # required
    #     execution_ids: ["Identifier"],
    #     job_name: "String100",
    #     status: "BatchJobExecutionStatus",
    #     started_after: Time.now,
    #     started_before: Time.now
    #   }
    #   options = {}
    #   response = client.list_batch_job_executions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     batch_job_executions: [ # required
    #       {
    #         execution_id: "Identifier", # required
    #         application_id: "Identifier", # required
    #         job_id: "String100",
    #         job_name: "String100",
    #         job_type: "BatchJobType",
    #         status: "BatchJobExecutionStatus", # required
    #         start_time: Time.now, # required
    #         end_time: Time.now,
    #         return_code: "String",
    #         batch_job_identifier: {
    #           # One of:
    #           file_batch_job_identifier: {
    #             file_name: "String", # required
    #             folder_path: "String"
    #           },
    #           script_batch_job_identifier: {
    #             script_name: "String", # required
    #           },
    #           s3_batch_job_identifier: {
    #             bucket: "String", # required
    #             key_prefix: "String",
    #             identifier: { # required
    #               # One of:
    #               file_name: "String",
    #               script_name: "String"
    #             }
    #           },
    #           restart_batch_job_identifier: {
    #             execution_id: "Identifier", # required
    #             job_step_restart_marker: { # required
    #               from_step: "String", # required
    #               from_proc_step: "String",
    #               to_step: "String",
    #               to_proc_step: "String",
    #               step_checkpoint: 1,
    #               skip: false
    #             }
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListBatchJobExecutionsOutput]
    def list_batch_job_executions(params = {}, options = {})
      request = build_request(:list_batch_job_executions, params)
      request.send_request(options)
    end

    # <p>Lists all the job steps for a JCL file to restart a batch job. This is only applicable for Micro Focus engine with versions 8.0.6 and above.</p>
    # @param [Hash, Types::ListBatchJobRestartPointsRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier of the application.</p>
    # @option params [String] :execution_id
    #   <p>The unique identifier of the batch job execution.</p>
    # @option params [String] :auth_secrets_manager_arn
    #   <p>The Amazon Web Services Secrets Manager containing user's credentials for authentication and authorization for List Batch Job Restart Points operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "Identifier", # required
    #     execution_id: "Identifier", # required
    #     auth_secrets_manager_arn: "AuthSecretsManagerArn"
    #   }
    #   options = {}
    #   response = client.list_batch_job_restart_points(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     batch_job_steps: [
    #       {
    #         step_number: 1,
    #         step_name: "String",
    #         proc_step_number: 1,
    #         proc_step_name: "String",
    #         step_cond_code: "String",
    #         step_restartable: false,
    #         step_checkpoint: 1,
    #         step_checkpoint_status: "String",
    #         step_checkpoint_time: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListBatchJobRestartPointsResponse]
    def list_batch_job_restart_points(params = {}, options = {})
      request = build_request(:list_batch_job_restart_points, params)
      request.send_request(options)
    end

    # <p>Lists the data set exports for the specified application.</p>
    # @param [Hash, Types::ListDataSetExportHistoryRequest] params
    # @option params [String] :next_token
    #   <p>A pagination token returned from a previous call to
    #     this operation. This specifies the next item to return. To return to the beginning of the 
    #     list, exclude this parameter.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects to return.</p>
    # @option params [String] :application_id
    #   <p>The unique identifier of the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     application_id: "Identifier", # required
    #   }
    #   options = {}
    #   response = client.list_data_set_export_history(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_set_export_tasks: [ # required
    #       {
    #         task_id: "Identifier", # required
    #         status: "DataSetTaskLifecycle", # required
    #         summary: { # required
    #           total: 1, # required
    #           succeeded: 1, # required
    #           failed: 1, # required
    #           pending: 1, # required
    #           in_progress: 1, # required
    #         },
    #         status_reason: "String"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDataSetExportHistoryResponse]
    def list_data_set_export_history(params = {}, options = {})
      request = build_request(:list_data_set_export_history, params)
      request.send_request(options)
    end

    # <p>Lists the data set imports for the specified application.</p>
    # @param [Hash, Types::ListDataSetImportHistoryRequest] params
    # @option params [String] :next_token
    #   <p>A pagination token returned from a previous call to
    #     this operation. This specifies the next item to return. To return to the beginning of the 
    #     list, exclude this parameter.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects to return.</p>
    # @option params [String] :application_id
    #   <p>The unique identifier of the application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     application_id: "Identifier", # required
    #   }
    #   options = {}
    #   response = client.list_data_set_import_history(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_set_import_tasks: [ # required
    #       {
    #         task_id: "Identifier", # required
    #         status: "DataSetTaskLifecycle", # required
    #         summary: { # required
    #           total: 1, # required
    #           succeeded: 1, # required
    #           failed: 1, # required
    #           pending: 1, # required
    #           in_progress: 1, # required
    #         },
    #         status_reason: "String"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDataSetImportHistoryResponse]
    def list_data_set_import_history(params = {}, options = {})
      request = build_request(:list_data_set_import_history, params)
      request.send_request(options)
    end

    # <p>Lists the data sets imported for a specific application. In Amazon Web Services Mainframe Modernization, data sets are
    #          associated with applications deployed on runtime environments. This is known as importing
    #          data sets. Currently, Amazon Web Services Mainframe Modernization can import data sets into catalogs using <a href="https://docs.aws.amazon.com/m2/latest/APIReference/API_CreateDataSetImportTask.html">CreateDataSetImportTask</a>.</p>
    # @param [Hash, Types::ListDataSetsRequest] params
    # @option params [String] :application_id
    #   <p>The unique identifier of the application for which you want to list the associated data
    #            sets.</p>
    # @option params [String] :next_token
    #   <p>A pagination token returned from a previous call to
    #     this operation. This specifies the next item to return. To return to the beginning of the 
    #     list, exclude this parameter.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects to return.</p>
    # @option params [String] :prefix
    #   <p>The prefix of the data set name, which you can use to filter the list of data
    #            sets.</p>
    # @option params [String] :name_filter
    #   <p>Filter dataset name matching the specified pattern. Can use * and % as wild cards.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "Identifier", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     prefix: "String200",
    #     name_filter: "String200"
    #   }
    #   options = {}
    #   response = client.list_data_sets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_sets: [ # required
    #       {
    #         data_set_name: "String200", # required
    #         data_set_org: "String20",
    #         format: "String20",
    #         creation_time: Time.now,
    #         last_updated_time: Time.now,
    #         last_referenced_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDataSetsResponse]
    def list_data_sets(params = {}, options = {})
      request = build_request(:list_data_sets, params)
      request.send_request(options)
    end

    # <p>Returns a list of all deployments of a specific application. A deployment is a
    #          combination of a specific application and a specific version of that application. Each
    #          deployment is mapped to a particular application version.</p>
    # @param [Hash, Types::ListDeploymentsRequest] params
    # @option params [String] :next_token
    #   <p>A pagination token returned from a previous call to
    #     this operation. This specifies the next item to return. To return to the beginning of the 
    #     list, exclude this parameter.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects to return.</p>
    # @option params [String] :application_id
    #   <p>The application identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     application_id: "Identifier", # required
    #   }
    #   options = {}
    #   response = client.list_deployments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     deployments: [ # required
    #       {
    #         deployment_id: "Identifier", # required
    #         application_id: "Identifier", # required
    #         environment_id: "Identifier", # required
    #         application_version: 1, # required
    #         status: "DeploymentLifecycle", # required
    #         creation_time: Time.now, # required
    #         status_reason: "String"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListDeploymentsResponse]
    def list_deployments(params = {}, options = {})
      request = build_request(:list_deployments, params)
      request.send_request(options)
    end

    # <p>Lists the available engine versions.</p>
    # @param [Hash, Types::ListEngineVersionsInput] params
    # @option params [String] :engine_type
    #   <p>The type of target platform.</p>
    # @option params [String] :next_token
    #   <p>A pagination token returned from a previous call to
    #     this operation. This specifies the next item to return. To return to the beginning of the 
    #     list, exclude this parameter.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     engine_type: "EngineType",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_engine_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     engine_versions: [ # required
    #       {
    #         engine_type: "String", # required
    #         engine_version: "String", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListEngineVersionsOutput]
    def list_engine_versions(params = {}, options = {})
      request = build_request(:list_engine_versions, params)
      request.send_request(options)
    end

    # <p>Lists the runtime environments.</p>
    # @param [Hash, Types::ListEnvironmentsRequest] params
    # @option params [String] :next_token
    #   <p>A pagination token to control the number of runtime environments displayed in the
    #            list.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of runtime environments to return.</p>
    # @option params [Array<String>] :names
    #   <p>The names of the runtime environments. Must be unique within the account.</p>
    # @option params [String] :engine_type
    #   <p>The engine type for the runtime environment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     names: ["EntityName"],
    #     engine_type: "EngineType"
    #   }
    #   options = {}
    #   response = client.list_environments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environments: [ # required
    #       {
    #         name: "EntityName", # required
    #         environment_arn: "Arn", # required
    #         environment_id: "Identifier", # required
    #         instance_type: "String20", # required
    #         status: "EnvironmentLifecycle", # required
    #         engine_type: "EngineType", # required
    #         engine_version: "EngineVersion", # required
    #         creation_time: Time.now, # required
    #         network_type: "NetworkType"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListEnvironmentsResponse]
    def list_environments(params = {}, options = {})
      request = build_request(:list_environments, params)
      request.send_request(options)
    end

    # <p>Lists the tags for the specified resource.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Starts an application that is currently stopped.</p>
    # @param [Hash, Types::StartApplicationInput] params
    # @option params [String] :application_id
    #   <p>The unique identifier of the application you want to start.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "Identifier", # required
    #   }
    #   options = {}
    #   response = client.start_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StartApplicationOutput]
    def start_application(params = {}, options = {})
      request = build_request(:start_application, params)
      request.send_request(options)
    end

    # <p>Starts a batch job and returns the unique identifier of this execution of the batch job.
    #          The associated application must be running in order to start the batch job.</p>
    # @param [Hash, Types::StartBatchJobInput] params
    # @option params [String] :application_id
    #   <p>The unique identifier of the application associated with this batch job.</p>
    # @option params [Types::BatchJobIdentifier] :batch_job_identifier
    #   <p>The unique identifier of the batch job.</p>
    # @option params [Hash<String, String>] :job_params
    #   <p>The collection of batch job parameters. For details about limits for keys and values,
    #            see <a href="https://www.ibm.com/docs/en/workload-automation/9.3.0?topic=zos-coding-variables-in-jcl">Coding variables in JCL</a>.</p>
    # @option params [String] :auth_secrets_manager_arn
    #   <p>The Amazon Web Services Secrets Manager containing user's credentials for authentication and authorization for Start Batch Job execution operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "Identifier", # required
    #     batch_job_identifier: { # required
    #       # One of:
    #       file_batch_job_identifier: {
    #         file_name: "String", # required
    #         folder_path: "String"
    #       },
    #       script_batch_job_identifier: {
    #         script_name: "String", # required
    #       },
    #       s3_batch_job_identifier: {
    #         bucket: "String", # required
    #         key_prefix: "String",
    #         identifier: { # required
    #           # One of:
    #           file_name: "String",
    #           script_name: "String"
    #         }
    #       },
    #       restart_batch_job_identifier: {
    #         execution_id: "Identifier", # required
    #         job_step_restart_marker: { # required
    #           from_step: "String", # required
    #           from_proc_step: "String",
    #           to_step: "String",
    #           to_proc_step: "String",
    #           step_checkpoint: 1,
    #           skip: false
    #         }
    #       }
    #     },
    #     job_params: {
    #       "BatchParamKey" => "BatchParamValue"
    #     },
    #     auth_secrets_manager_arn: "AuthSecretsManagerArn"
    #   }
    #   options = {}
    #   response = client.start_batch_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     execution_id: "Identifier", # required
    #   }
    # @return [Types::StartBatchJobOutput]
    def start_batch_job(params = {}, options = {})
      request = build_request(:start_batch_job, params)
      request.send_request(options)
    end

    # <p>Stops a running application.</p>
    # @param [Hash, Types::StopApplicationInput] params
    # @option params [String] :application_id
    #   <p>The unique identifier of the application you want to stop.</p>
    # @option params [Boolean] :force_stop
    #   <p>Stopping an application process can take a long time. Setting this parameter to true
    #            lets you force stop the application so you don't need to wait until the process finishes to
    #            apply another action on the application. The default value is false.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "Identifier", # required
    #     force_stop: false
    #   }
    #   options = {}
    #   response = client.stop_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopApplicationOutput]
    def stop_application(params = {}, options = {})
      request = build_request(:stop_application, params)
      request.send_request(options)
    end

    # <p>Adds one or more tags to the specified resource.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to add to the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceOutput]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes one or more tags from the specified resource.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags to remove.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceOutput]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates an application and creates a new version.</p>
    # @param [Hash, Types::UpdateApplicationInput] params
    # @option params [String] :application_id
    #   <p>The unique identifier of the application you want to update.</p>
    # @option params [String] :description
    #   <p>The description of the application to update.</p>
    # @option params [Integer] :current_application_version
    #   <p>The current version of the application to update.</p>
    # @option params [Types::Definition] :definition
    #   <p>The application definition for this application. You can specify either inline JSON or
    #            an S3 bucket location.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     application_id: "Identifier", # required
    #     description: "EntityDescription",
    #     current_application_version: 1, # required
    #     definition: {
    #       # One of:
    #       s3_location: "String2000",
    #       content: "StringFree65000"
    #     }
    #   }
    #   options = {}
    #   response = client.update_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     application_version: 1, # required
    #   }
    # @return [Types::UpdateApplicationOutput]
    def update_application(params = {}, options = {})
      request = build_request(:update_application, params)
      request.send_request(options)
    end

    # <p>Updates the configuration details for a specific runtime environment.</p>
    # @param [Hash, Types::UpdateEnvironmentInput] params
    # @option params [String] :environment_id
    #   <p>The unique identifier of the runtime environment that you want to update.</p>
    # @option params [Integer] :desired_capacity
    #   <p>The desired capacity for the runtime environment to update. The minimum possible value is 0 and the maximum is 100.</p>
    # @option params [String] :instance_type
    #   <p>The instance type for the runtime environment to update.</p>
    # @option params [String] :engine_version
    #   <p>The version of the runtime engine for the runtime environment.</p>
    # @option params [String] :preferred_maintenance_window
    #   <p>Configures the maintenance window that you want for the runtime environment. The maintenance window must have the format <code>ddd:hh24:mi-ddd:hh24:mi</code> and must be less than 24 hours. The following two examples are valid maintenance windows: <code>sun:23:45-mon:00:15</code> or <code>sat:01:00-sat:03:00</code>. </p>
    #            <p>If you do not provide a value, a random system-generated value will be assigned.</p>
    # @option params [Boolean] :apply_during_maintenance_window
    #   <p>Indicates whether to update the runtime environment during the maintenance window. The
    #            default is false. Currently, Amazon Web Services Mainframe Modernization accepts the <code>engineVersion</code> parameter
    #            only if <code>applyDuringMaintenanceWindow</code> is true. If any parameter other than
    #               <code>engineVersion</code> is provided in <code>UpdateEnvironmentRequest</code>, it will
    #            fail if <code>applyDuringMaintenanceWindow</code> is set to true.</p>
    # @option params [Boolean] :force_update
    #   <p>Forces the updates on the environment. This option is needed if the applications in the environment are not stopped or if there are ongoing application-related activities in the environment.</p>
    #            <p>If you use this option, be aware that it could lead to data corruption in the applications, and that you might need to perform repair and recovery procedures for the applications.</p>
    #            <p>This option is not needed if the attribute being updated is <code>preferredMaintenanceWindow</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     environment_id: "Identifier", # required
    #     desired_capacity: 1,
    #     instance_type: "String20",
    #     engine_version: "EngineVersion",
    #     preferred_maintenance_window: "String",
    #     apply_during_maintenance_window: false,
    #     force_update: false
    #   }
    #   options = {}
    #   response = client.update_environment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     environment_id: "Identifier", # required
    #   }
    # @return [Types::UpdateEnvironmentOutput]
    def update_environment(params = {}, options = {})
      request = build_request(:update_environment, params)
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
      context[:gem_name] = 'aws-sdk-m2'
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
    end
  end
end
