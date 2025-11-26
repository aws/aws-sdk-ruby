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
require 'smithy-client/plugins/retry_errors'
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:entityresolution)

module Aws::EntityResolution
  # An API client for Aws::EntityResolution.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSVeniceService
    @identifier = :entityresolution

    add_plugin(::Aws::EntityResolution::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::RetryErrors)
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::EntityResolution::EndpointProvider)
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
    # @option options [#call(attempts)] :retry_backoff (Smithy::Client::Retry::ExponentialBackoff.new)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options :retry_base_delay (2)
    #  The base delay, in seconds, used to calculate the exponential backoff for
    #  retry attempts. This option is ignored if a custom `retry_backoff` is provided.
    #  Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options :retry_max_delay (20)
    #  The maximum delay, in seconds, between retry attempts. This option is ignored
    #  if a custom `retry_backoff` is provided. Used in the `standard` and `adaptive`
    #  retry strategies.
    # @option options [String, Class] :retry_strategy ('standard')
    #  The retry strategy to use when retrying errors. This can be one of the following:
    #  * `standard` - A standardized retry strategy used by the AWS SDKs. This includes support
    #    for retry quotas, which limit the number of unsuccessful retries a client can make.
    #  * `adaptive` - An experimental retry strategy that includes all the functionality of the
    #    `standard` strategy along with automatic client side throttling. This is a provisional
    #    strategy that may change behavior in the future.
    #  * Any instance of a class that implements the following methods:
    #    - `acquire_initial_retry_token(token_scope)`
    #    - `refresh_retry_token(retry_token, error_info)`
    #    - `record_success(retry_token)`
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

    # <p>Adds a policy statement object. To retrieve a list of existing policy statements, use the <code>GetPolicy</code> API.</p>
    # @param [Hash, Types::AddPolicyStatementInput] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the resource that will be accessed by the principal.</p>
    # @option params [String] :statement_id
    #   <p>A statement identifier that differentiates the statement from others in the same policy.</p>
    # @option params [String] :effect
    #   <p>Determines whether the permissions specified in the policy are to be allowed (<code>Allow</code>) or denied (<code>Deny</code>).</p> <important> <p> If you set the value of the <code>effect</code> parameter to <code>Deny</code> for the <code>AddPolicyStatement</code> operation, you must also set the value of the <code>effect</code> parameter in the <code>policy</code> to <code>Deny</code> for the <code>PutPolicy</code> operation.</p> </important>
    # @option params [Array<String>] :action
    #   <p>The action that the principal can use on the resource. </p> <p>For example, <code>entityresolution:GetIdMappingJob</code>, <code>entityresolution:GetMatchingJob</code>.</p>
    # @option params [Array<String>] :principal
    #   <p>The Amazon Web Services service or Amazon Web Services account that can access the resource defined as ARN.</p>
    # @option params [String] :condition
    #   <p>A set of condition keys that you can use in key policies.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "VeniceGlobalArn", # required
    #     statement_id: "StatementId", # required
    #     effect: "Allow" # One of: ["Allow", "Deny"], # required
    #     action: ["StatementAction"], # required
    #     principal: ["StatementPrincipal"], # required
    #     condition: "StatementCondition"
    #   }
    #   options = {}
    #   response = client.add_policy_statement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "VeniceGlobalArn", # required
    #     token: "PolicyToken", # required
    #     policy: "PolicyDocument"
    #   }
    # @return [Types::AddPolicyStatementOutput]
    def add_policy_statement(params = {}, options = {})
      request = build_request(:add_policy_statement, params)
      request.send_request(options)
    end

    # <p>Deletes multiple unique IDs in a matching workflow.</p>
    # @param [Hash, Types::BatchDeleteUniqueIdInput] params
    # @option params [String] :workflow_name
    #   <p>The name of the workflow.</p>
    # @option params [String] :input_source
    #   <p>The input source for the batch delete unique ID operation.</p>
    # @option params [Array<String>] :unique_ids
    #   <p>The unique IDs to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_name: "EntityName", # required
    #     input_source: "String",
    #     unique_ids: ["HeaderSafeUniqueId"], # required
    #   }
    #   options = {}
    #   response = client.batch_delete_unique_id(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "COMPLETED" # One of: ["COMPLETED", "ACCEPTED"], # required
    #     errors: [ # required
    #       {
    #         unique_id: "HeaderSafeUniqueId", # required
    #         error_type: "SERVICE_ERROR" # One of: ["SERVICE_ERROR", "VALIDATION_ERROR"], # required
    #       }
    #     ],
    #     deleted: [ # required
    #       {
    #         unique_id: "HeaderSafeUniqueId", # required
    #       }
    #     ],
    #     disconnected_unique_ids: ["HeaderSafeUniqueId"], # required
    #   }
    # @return [Types::BatchDeleteUniqueIdOutput]
    def batch_delete_unique_id(params = {}, options = {})
      request = build_request(:batch_delete_unique_id, params)
      request.send_request(options)
    end

    # <p>Creates an <code>IdMappingWorkflow</code> object which stores the configuration of the data processing job to be run. Each <code>IdMappingWorkflow</code> must have a unique workflow name. To modify an existing workflow, use the UpdateIdMappingWorkflow API.</p> <important> <p>Incremental processing is not supported for ID mapping workflows. </p> </important>
    # @param [Hash, Types::CreateIdMappingWorkflowInput] params
    # @option params [String] :workflow_name
    #   <p>The name of the workflow. There can't be multiple <code>IdMappingWorkflows</code> with the same name.</p>
    # @option params [String] :description
    #   <p>A description of the workflow.</p>
    # @option params [Array<Types::IdMappingWorkflowInputSource>] :input_source_config
    #   <p>A list of <code>InputSource</code> objects, which have the fields <code>InputSourceARN</code> and <code>SchemaName</code>.</p>
    # @option params [Array<Types::IdMappingWorkflowOutputSource>] :output_source_config
    #   <p>A list of <code>IdMappingWorkflowOutputSource</code> objects, each of which contains fields <code>outputS3Path</code> and <code>KMSArn</code>.</p>
    # @option params [Types::IdMappingTechniques] :id_mapping_techniques
    #   <p>An object which defines the ID mapping technique and any additional configurations.</p>
    # @option params [Types::IdMappingIncrementalRunConfig] :incremental_run_config
    #   <p> The incremental run configuration for the ID mapping workflow.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role. Entity Resolution assumes this role to create resources on your behalf as part of workflow execution.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_name: "EntityName", # required
    #     description: "Description",
    #     input_source_config: [ # required
    #       {
    #         input_source_arn: "InputSourceARN", # required
    #         schema_name: "EntityName",
    #         type: "SOURCE" # One of: ["SOURCE", "TARGET"]
    #       }
    #     ],
    #     output_source_config: [
    #       {
    #         output_s3_path: "S3Path", # required
    #         kms_arn: "KMSArn"
    #       }
    #     ],
    #     id_mapping_techniques: { # required
    #       id_mapping_type: "PROVIDER" # One of: ["PROVIDER", "RULE_BASED"], # required
    #       rule_based_properties: {
    #         rules: [
    #           {
    #             rule_name: "String", # required
    #             matching_keys: ["AttributeName"], # required
    #           }
    #         ],
    #         rule_definition_type: "SOURCE" # One of: ["SOURCE", "TARGET"], # required
    #         attribute_matching_model: "ONE_TO_ONE" # One of: ["ONE_TO_ONE", "MANY_TO_MANY"], # required
    #         record_matching_model: "ONE_SOURCE_TO_ONE_TARGET" # One of: ["ONE_SOURCE_TO_ONE_TARGET", "MANY_SOURCE_TO_ONE_TARGET"], # required
    #       },
    #       provider_properties: {
    #         provider_service_arn: "ProviderServiceArn", # required
    #         provider_configuration: ""null"",
    #         intermediate_source_configuration: {
    #           intermediate_s3_path: "S3Path", # required
    #         }
    #       }
    #     },
    #     incremental_run_config: {
    #       incremental_run_type: "ON_DEMAND" # One of: ["ON_DEMAND"]
    #     },
    #     role_arn: "IdMappingRoleArn",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_id_mapping_workflow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workflow_name: "EntityName", # required
    #     workflow_arn: "IdMappingWorkflowArn", # required
    #     description: "Description",
    #     input_source_config: [ # required
    #       {
    #         input_source_arn: "InputSourceARN", # required
    #         schema_name: "EntityName",
    #         type: "SOURCE" # One of: ["SOURCE", "TARGET"]
    #       }
    #     ],
    #     output_source_config: [
    #       {
    #         output_s3_path: "S3Path", # required
    #         kms_arn: "KMSArn"
    #       }
    #     ],
    #     id_mapping_techniques: { # required
    #       id_mapping_type: "PROVIDER" # One of: ["PROVIDER", "RULE_BASED"], # required
    #       rule_based_properties: {
    #         rules: [
    #           {
    #             rule_name: "String", # required
    #             matching_keys: ["AttributeName"], # required
    #           }
    #         ],
    #         rule_definition_type: "SOURCE" # One of: ["SOURCE", "TARGET"], # required
    #         attribute_matching_model: "ONE_TO_ONE" # One of: ["ONE_TO_ONE", "MANY_TO_MANY"], # required
    #         record_matching_model: "ONE_SOURCE_TO_ONE_TARGET" # One of: ["ONE_SOURCE_TO_ONE_TARGET", "MANY_SOURCE_TO_ONE_TARGET"], # required
    #       },
    #       provider_properties: {
    #         provider_service_arn: "ProviderServiceArn", # required
    #         provider_configuration: ""null"",
    #         intermediate_source_configuration: {
    #           intermediate_s3_path: "S3Path", # required
    #         }
    #       }
    #     },
    #     incremental_run_config: {
    #       incremental_run_type: "ON_DEMAND" # One of: ["ON_DEMAND"]
    #     },
    #     role_arn: "IdMappingRoleArn"
    #   }
    # @return [Types::CreateIdMappingWorkflowOutput]
    def create_id_mapping_workflow(params = {}, options = {})
      request = build_request(:create_id_mapping_workflow, params)
      request.send_request(options)
    end

    # <p>Creates an ID namespace object which will help customers provide metadata explaining their dataset and how to use it. Each ID namespace must have a unique name. To modify an existing ID namespace, use the UpdateIdNamespace API.</p>
    # @param [Hash, Types::CreateIdNamespaceInput] params
    # @option params [String] :id_namespace_name
    #   <p>The name of the ID namespace.</p>
    # @option params [String] :description
    #   <p>The description of the ID namespace.</p>
    # @option params [Array<Types::IdNamespaceInputSource>] :input_source_config
    #   <p>A list of <code>InputSource</code> objects, which have the fields <code>InputSourceARN</code> and <code>SchemaName</code>.</p>
    # @option params [Array<Types::IdNamespaceIdMappingWorkflowProperties>] :id_mapping_workflow_properties
    #   <p>Determines the properties of <code>IdMappingWorflow</code> where this <code>IdNamespace</code> can be used as a <code>Source</code> or a <code>Target</code>.</p>
    # @option params [String] :type
    #   <p>The type of ID namespace. There are two types: <code>SOURCE</code> and <code>TARGET</code>. </p> <p>The <code>SOURCE</code> contains configurations for <code>sourceId</code> data that will be processed in an ID mapping workflow. </p> <p>The <code>TARGET</code> contains a configuration of <code>targetId</code> to which all <code>sourceIds</code> will resolve to.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role. Entity Resolution assumes this role to access the resources defined in this <code>IdNamespace</code> on your behalf as part of the workflow run.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id_namespace_name: "EntityName", # required
    #     description: "Description",
    #     input_source_config: [
    #       {
    #         input_source_arn: "InputSourceARN", # required
    #         schema_name: "EntityName"
    #       }
    #     ],
    #     id_mapping_workflow_properties: [
    #       {
    #         id_mapping_type: "PROVIDER" # One of: ["PROVIDER", "RULE_BASED"], # required
    #         rule_based_properties: {
    #           rules: [
    #             {
    #               rule_name: "String", # required
    #               matching_keys: ["AttributeName"], # required
    #             }
    #           ],
    #           rule_definition_types: ["SOURCE" # One of: ["SOURCE", "TARGET"]],
    #           attribute_matching_model: "ONE_TO_ONE" # One of: ["ONE_TO_ONE", "MANY_TO_MANY"],
    #           record_matching_models: ["ONE_SOURCE_TO_ONE_TARGET" # One of: ["ONE_SOURCE_TO_ONE_TARGET", "MANY_SOURCE_TO_ONE_TARGET"]]
    #         },
    #         provider_properties: {
    #           provider_service_arn: "ProviderServiceArn", # required
    #           provider_configuration: ""null""
    #         }
    #       }
    #     ],
    #     type: "SOURCE" # One of: ["SOURCE", "TARGET"], # required
    #     role_arn: "RoleArn",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_id_namespace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id_namespace_name: "EntityName", # required
    #     id_namespace_arn: "IdNamespaceArn", # required
    #     description: "Description",
    #     input_source_config: [
    #       {
    #         input_source_arn: "InputSourceARN", # required
    #         schema_name: "EntityName"
    #       }
    #     ],
    #     id_mapping_workflow_properties: [
    #       {
    #         id_mapping_type: "PROVIDER" # One of: ["PROVIDER", "RULE_BASED"], # required
    #         rule_based_properties: {
    #           rules: [
    #             {
    #               rule_name: "String", # required
    #               matching_keys: ["AttributeName"], # required
    #             }
    #           ],
    #           rule_definition_types: ["SOURCE" # One of: ["SOURCE", "TARGET"]],
    #           attribute_matching_model: "ONE_TO_ONE" # One of: ["ONE_TO_ONE", "MANY_TO_MANY"],
    #           record_matching_models: ["ONE_SOURCE_TO_ONE_TARGET" # One of: ["ONE_SOURCE_TO_ONE_TARGET", "MANY_SOURCE_TO_ONE_TARGET"]]
    #         },
    #         provider_properties: {
    #           provider_service_arn: "ProviderServiceArn", # required
    #           provider_configuration: ""null""
    #         }
    #       }
    #     ],
    #     type: "SOURCE" # One of: ["SOURCE", "TARGET"], # required
    #     role_arn: "RoleArn",
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::CreateIdNamespaceOutput]
    def create_id_namespace(params = {}, options = {})
      request = build_request(:create_id_namespace, params)
      request.send_request(options)
    end

    # <p>Creates a matching workflow that defines the configuration for a data processing job. The workflow name must be unique. To modify an existing workflow, use <code>UpdateMatchingWorkflow</code>. </p> <important> <p>For workflows where <code>resolutionType</code> is <code>ML_MATCHING</code> or <code>PROVIDER</code>, incremental processing is not supported. </p> </important>
    # @param [Hash, Types::CreateMatchingWorkflowInput] params
    # @option params [String] :workflow_name
    #   <p>The name of the workflow. There can't be multiple <code>MatchingWorkflows</code> with the same name.</p>
    # @option params [String] :description
    #   <p>A description of the workflow.</p>
    # @option params [Array<Types::InputSource>] :input_source_config
    #   <p>A list of <code>InputSource</code> objects, which have the fields <code>InputSourceARN</code> and <code>SchemaName</code>.</p>
    # @option params [Array<Types::OutputSource>] :output_source_config
    #   <p>A list of <code>OutputSource</code> objects, each of which contains fields <code>outputS3Path</code>, <code>applyNormalization</code>, <code>KMSArn</code>, and <code>output</code>.</p>
    # @option params [Types::ResolutionTechniques] :resolution_techniques
    #   <p>An object which defines the <code>resolutionType</code> and the <code>ruleBasedProperties</code>.</p>
    # @option params [Types::IncrementalRunConfig] :incremental_run_config
    #   <p>Optional. An object that defines the incremental run type. This object contains only the <code>incrementalRunType</code> field, which appears as "Automatic" in the console. </p> <important> <p>For workflows where <code>resolutionType</code> is <code>ML_MATCHING</code> or <code>PROVIDER</code>, incremental processing is not supported. </p> </important>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role. Entity Resolution assumes this role to create resources on your behalf as part of workflow execution.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_name: "EntityName", # required
    #     description: "Description",
    #     input_source_config: [ # required
    #       {
    #         input_source_arn: "InputSourceARN", # required
    #         schema_name: "EntityName", # required
    #         apply_normalization: false
    #       }
    #     ],
    #     output_source_config: [ # required
    #       {
    #         output_s3_path: "S3Path", # required
    #         kms_arn: "KMSArn",
    #         output: [ # required
    #           {
    #             name: "AttributeName", # required
    #             hashed: false
    #           }
    #         ],
    #         apply_normalization: false
    #       }
    #     ],
    #     resolution_techniques: { # required
    #       resolution_type: "RULE_MATCHING" # One of: ["RULE_MATCHING", "ML_MATCHING", "PROVIDER"], # required
    #       rule_based_properties: {
    #         rules: [ # required
    #           {
    #             rule_name: "String", # required
    #             matching_keys: ["AttributeName"], # required
    #           }
    #         ],
    #         attribute_matching_model: "ONE_TO_ONE" # One of: ["ONE_TO_ONE", "MANY_TO_MANY"], # required
    #         match_purpose: "IDENTIFIER_GENERATION" # One of: ["IDENTIFIER_GENERATION", "INDEXING"]
    #       },
    #       rule_condition_properties: {
    #         rules: [ # required
    #           {
    #             rule_name: "String", # required
    #             condition: "String", # required
    #           }
    #         ]
    #       },
    #       provider_properties: {
    #         provider_service_arn: "ProviderServiceArn", # required
    #         provider_configuration: ""null"",
    #         intermediate_source_configuration: {
    #           intermediate_s3_path: "S3Path", # required
    #         }
    #       }
    #     },
    #     incremental_run_config: {
    #       incremental_run_type: "IMMEDIATE" # One of: ["IMMEDIATE"]
    #     },
    #     role_arn: "String", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_matching_workflow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workflow_name: "EntityName", # required
    #     workflow_arn: "MatchingWorkflowArn", # required
    #     description: "Description",
    #     input_source_config: [ # required
    #       {
    #         input_source_arn: "InputSourceARN", # required
    #         schema_name: "EntityName", # required
    #         apply_normalization: false
    #       }
    #     ],
    #     output_source_config: [ # required
    #       {
    #         output_s3_path: "S3Path", # required
    #         kms_arn: "KMSArn",
    #         output: [ # required
    #           {
    #             name: "AttributeName", # required
    #             hashed: false
    #           }
    #         ],
    #         apply_normalization: false
    #       }
    #     ],
    #     resolution_techniques: { # required
    #       resolution_type: "RULE_MATCHING" # One of: ["RULE_MATCHING", "ML_MATCHING", "PROVIDER"], # required
    #       rule_based_properties: {
    #         rules: [ # required
    #           {
    #             rule_name: "String", # required
    #             matching_keys: ["AttributeName"], # required
    #           }
    #         ],
    #         attribute_matching_model: "ONE_TO_ONE" # One of: ["ONE_TO_ONE", "MANY_TO_MANY"], # required
    #         match_purpose: "IDENTIFIER_GENERATION" # One of: ["IDENTIFIER_GENERATION", "INDEXING"]
    #       },
    #       rule_condition_properties: {
    #         rules: [ # required
    #           {
    #             rule_name: "String", # required
    #             condition: "String", # required
    #           }
    #         ]
    #       },
    #       provider_properties: {
    #         provider_service_arn: "ProviderServiceArn", # required
    #         provider_configuration: ""null"",
    #         intermediate_source_configuration: {
    #           intermediate_s3_path: "S3Path", # required
    #         }
    #       }
    #     },
    #     incremental_run_config: {
    #       incremental_run_type: "IMMEDIATE" # One of: ["IMMEDIATE"]
    #     },
    #     role_arn: "String", # required
    #   }
    # @return [Types::CreateMatchingWorkflowOutput]
    def create_matching_workflow(params = {}, options = {})
      request = build_request(:create_matching_workflow, params)
      request.send_request(options)
    end

    # <p>Creates a schema mapping, which defines the schema of the input customer records table. The <code>SchemaMapping</code> also provides Entity Resolution with some metadata about the table, such as the attribute types of the columns and which columns to match on.</p>
    # @param [Hash, Types::CreateSchemaMappingInput] params
    # @option params [String] :schema_name
    #   <p>The name of the schema. There can't be multiple <code>SchemaMappings</code> with the same name.</p>
    # @option params [String] :description
    #   <p>A description of the schema.</p>
    # @option params [Array<Types::SchemaInputAttribute>] :mapped_input_fields
    #   <p>A list of <code>MappedInputFields</code>. Each <code>MappedInputField</code> corresponds to a column the source data table, and contains column name plus additional information that Entity Resolution uses for matching.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     schema_name: "EntityName", # required
    #     description: "Description",
    #     mapped_input_fields: [ # required
    #       {
    #         field_name: "AttributeName", # required
    #         type: "NAME" # One of: ["NAME", "NAME_FIRST", "NAME_MIDDLE", "NAME_LAST", "ADDRESS", "ADDRESS_STREET1", "ADDRESS_STREET2", "ADDRESS_STREET3", "ADDRESS_CITY", "ADDRESS_STATE", "ADDRESS_COUNTRY", "ADDRESS_POSTALCODE", "PHONE", "PHONE_NUMBER", "PHONE_COUNTRYCODE", "EMAIL_ADDRESS", "UNIQUE_ID", "DATE", "STRING", "PROVIDER_ID", "IPV4", "IPV6", "MAID"], # required
    #         group_name: "AttributeName",
    #         match_key: "AttributeName",
    #         sub_type: "AttributeName",
    #         hashed: false
    #       }
    #     ],
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_schema_mapping(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     schema_name: "EntityName", # required
    #     schema_arn: "SchemaMappingArn", # required
    #     description: "Description", # required
    #     mapped_input_fields: [ # required
    #       {
    #         field_name: "AttributeName", # required
    #         type: "NAME" # One of: ["NAME", "NAME_FIRST", "NAME_MIDDLE", "NAME_LAST", "ADDRESS", "ADDRESS_STREET1", "ADDRESS_STREET2", "ADDRESS_STREET3", "ADDRESS_CITY", "ADDRESS_STATE", "ADDRESS_COUNTRY", "ADDRESS_POSTALCODE", "PHONE", "PHONE_NUMBER", "PHONE_COUNTRYCODE", "EMAIL_ADDRESS", "UNIQUE_ID", "DATE", "STRING", "PROVIDER_ID", "IPV4", "IPV6", "MAID"], # required
    #         group_name: "AttributeName",
    #         match_key: "AttributeName",
    #         sub_type: "AttributeName",
    #         hashed: false
    #       }
    #     ]
    #   }
    # @return [Types::CreateSchemaMappingOutput]
    def create_schema_mapping(params = {}, options = {})
      request = build_request(:create_schema_mapping, params)
      request.send_request(options)
    end

    # <p>Deletes the <code>IdMappingWorkflow</code> with a given name. This operation will succeed even if a workflow with the given name does not exist.</p>
    # @param [Hash, Types::DeleteIdMappingWorkflowInput] params
    # @option params [String] :workflow_name
    #   <p>The name of the workflow to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_name: "EntityName", # required
    #   }
    #   options = {}
    #   response = client.delete_id_mapping_workflow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message: "String", # required
    #   }
    # @return [Types::DeleteIdMappingWorkflowOutput]
    def delete_id_mapping_workflow(params = {}, options = {})
      request = build_request(:delete_id_mapping_workflow, params)
      request.send_request(options)
    end

    # <p>Deletes the <code>IdNamespace</code> with a given name.</p>
    # @param [Hash, Types::DeleteIdNamespaceInput] params
    # @option params [String] :id_namespace_name
    #   <p>The name of the ID namespace.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id_namespace_name: "EntityName", # required
    #   }
    #   options = {}
    #   response = client.delete_id_namespace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message: "String", # required
    #   }
    # @return [Types::DeleteIdNamespaceOutput]
    def delete_id_namespace(params = {}, options = {})
      request = build_request(:delete_id_namespace, params)
      request.send_request(options)
    end

    # <p>Deletes the <code>MatchingWorkflow</code> with a given name. This operation will succeed even if a workflow with the given name does not exist.</p>
    # @param [Hash, Types::DeleteMatchingWorkflowInput] params
    # @option params [String] :workflow_name
    #   <p>The name of the workflow to be retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_name: "EntityName", # required
    #   }
    #   options = {}
    #   response = client.delete_matching_workflow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message: "String", # required
    #   }
    # @return [Types::DeleteMatchingWorkflowOutput]
    def delete_matching_workflow(params = {}, options = {})
      request = build_request(:delete_matching_workflow, params)
      request.send_request(options)
    end

    # <p>Deletes the policy statement.</p>
    # @param [Hash, Types::DeletePolicyStatementInput] params
    # @option params [String] :arn
    #   <p>The ARN of the resource for which the policy need to be deleted.</p>
    # @option params [String] :statement_id
    #   <p>A statement identifier that differentiates the statement from others in the same policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "VeniceGlobalArn", # required
    #     statement_id: "StatementId", # required
    #   }
    #   options = {}
    #   response = client.delete_policy_statement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "VeniceGlobalArn", # required
    #     token: "PolicyToken", # required
    #     policy: "PolicyDocument"
    #   }
    # @return [Types::DeletePolicyStatementOutput]
    def delete_policy_statement(params = {}, options = {})
      request = build_request(:delete_policy_statement, params)
      request.send_request(options)
    end

    # <p>Deletes the <code>SchemaMapping</code> with a given name. This operation will succeed even if a schema with the given name does not exist. This operation will fail if there is a <code>MatchingWorkflow</code> object that references the <code>SchemaMapping</code> in the workflow's <code>InputSourceConfig</code>.</p>
    # @param [Hash, Types::DeleteSchemaMappingInput] params
    # @option params [String] :schema_name
    #   <p>The name of the schema to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     schema_name: "EntityName", # required
    #   }
    #   options = {}
    #   response = client.delete_schema_mapping(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message: "String", # required
    #   }
    # @return [Types::DeleteSchemaMappingOutput]
    def delete_schema_mapping(params = {}, options = {})
      request = build_request(:delete_schema_mapping, params)
      request.send_request(options)
    end

    # <p>Generates or retrieves Match IDs for records using a rule-based matching workflow. When you call this operation, it processes your records against the workflow's matching rules to identify potential matches. For existing records, it retrieves their Match IDs and associated rules. For records without matches, it generates new Match IDs. The operation saves results to Amazon S3. </p> <p>The processing type (<code>processingType</code>) you choose affects both the accuracy and response time of the operation. Additional charges apply for each API call, whether made through the Entity Resolution console or directly via the API. The rule-based matching workflow must exist and be active before calling this operation.</p>
    # @param [Hash, Types::GenerateMatchIdInput] params
    # @option params [String] :workflow_name
    #   <p> The name of the rule-based matching workflow.</p>
    # @option params [Array<Types::Record>] :records
    #   <p> The records to match.</p>
    # @option params [String] :processing_type
    #   <p>The processing mode that determines how Match IDs are generated and results are saved. Each mode provides different levels of accuracy, response time, and completeness of results.</p> <p>If not specified, defaults to <code>CONSISTENT</code>.</p> <p> <code>CONSISTENT</code>: Performs immediate lookup and matching against all existing records, with results saved synchronously. Provides highest accuracy but slower response time.</p> <p> <code>EVENTUAL</code> (shown as <i>Background</i> in the console): Performs initial match ID lookup or generation immediately, with record updates processed asynchronously in the background. Offers faster initial response time, with complete matching results available later in S3. </p> <p> <code>EVENTUAL_NO_LOOKUP</code> (shown as <i>Quick ID generation</i> in the console): Generates new match IDs without checking existing matches, with updates processed asynchronously. Provides fastest response time but should only be used for records known to be unique. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_name: "EntityName", # required
    #     records: [ # required
    #       {
    #         input_source_arn: "InputSourceARN", # required
    #         unique_id: "UniqueId", # required
    #         record_attribute_map: { # required
    #           "String" => "String"
    #         }
    #       }
    #     ],
    #     processing_type: "CONSISTENT" # One of: ["CONSISTENT", "EVENTUAL", "EVENTUAL_NO_LOOKUP"]
    #   }
    #   options = {}
    #   response = client.generate_match_id(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     match_groups: [ # required
    #       {
    #         records: [ # required
    #           {
    #             input_source_arn: "InputSourceARN", # required
    #             record_id: "String", # required
    #           }
    #         ],
    #         match_id: "String", # required
    #         match_rule: "String", # required
    #       }
    #     ],
    #     failed_records: [ # required
    #       {
    #         input_source_arn: "InputSourceARN", # required
    #         unique_id: "String", # required
    #         error_message: "ErrorMessage", # required
    #       }
    #     ]
    #   }
    # @return [Types::GenerateMatchIdOutput]
    def generate_match_id(params = {}, options = {})
      request = build_request(:generate_match_id, params)
      request.send_request(options)
    end

    # <p>Returns the status, metrics, and errors (if there are any) that are associated with a job.</p>
    # @param [Hash, Types::GetIdMappingJobInput] params
    # @option params [String] :workflow_name
    #   <p>The name of the workflow.</p>
    # @option params [String] :job_id
    #   <p>The ID of the job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_name: "EntityNameOrIdMappingWorkflowArn", # required
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.get_id_mapping_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId", # required
    #     status: "RUNNING" # One of: ["RUNNING", "SUCCEEDED", "FAILED", "QUEUED"], # required
    #     start_time: Time.now, # required
    #     end_time: Time.now,
    #     metrics: {
    #       input_records: 1,
    #       total_records_processed: 1,
    #       records_not_processed: 1,
    #       delete_records_processed: 1,
    #       total_mapped_records: 1,
    #       total_mapped_source_records: 1,
    #       total_mapped_target_records: 1,
    #       unique_records_loaded: 1,
    #       new_mapped_records: 1,
    #       new_mapped_source_records: 1,
    #       new_mapped_target_records: 1,
    #       new_unique_records_loaded: 1,
    #       mapped_records_removed: 1,
    #       mapped_source_records_removed: 1,
    #       mapped_target_records_removed: 1
    #     },
    #     error_details: {
    #       error_message: "ErrorMessage"
    #     },
    #     output_source_config: [
    #       {
    #         role_arn: "RoleArn", # required
    #         output_s3_path: "S3Path", # required
    #         kms_arn: "KMSArn"
    #       }
    #     ],
    #     job_type: "BATCH" # One of: ["BATCH", "INCREMENTAL", "DELETE_ONLY"]
    #   }
    # @return [Types::GetIdMappingJobOutput]
    def get_id_mapping_job(params = {}, options = {})
      request = build_request(:get_id_mapping_job, params)
      request.send_request(options)
    end

    # <p>Returns the <code>IdMappingWorkflow</code> with a given name, if it exists.</p>
    # @param [Hash, Types::GetIdMappingWorkflowInput] params
    # @option params [String] :workflow_name
    #   <p>The name of the workflow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_name: "EntityName", # required
    #   }
    #   options = {}
    #   response = client.get_id_mapping_workflow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workflow_name: "EntityName", # required
    #     workflow_arn: "IdMappingWorkflowArn", # required
    #     description: "Description",
    #     input_source_config: [ # required
    #       {
    #         input_source_arn: "InputSourceARN", # required
    #         schema_name: "EntityName",
    #         type: "SOURCE" # One of: ["SOURCE", "TARGET"]
    #       }
    #     ],
    #     output_source_config: [
    #       {
    #         output_s3_path: "S3Path", # required
    #         kms_arn: "KMSArn"
    #       }
    #     ],
    #     id_mapping_techniques: { # required
    #       id_mapping_type: "PROVIDER" # One of: ["PROVIDER", "RULE_BASED"], # required
    #       rule_based_properties: {
    #         rules: [
    #           {
    #             rule_name: "String", # required
    #             matching_keys: ["AttributeName"], # required
    #           }
    #         ],
    #         rule_definition_type: "SOURCE" # One of: ["SOURCE", "TARGET"], # required
    #         attribute_matching_model: "ONE_TO_ONE" # One of: ["ONE_TO_ONE", "MANY_TO_MANY"], # required
    #         record_matching_model: "ONE_SOURCE_TO_ONE_TARGET" # One of: ["ONE_SOURCE_TO_ONE_TARGET", "MANY_SOURCE_TO_ONE_TARGET"], # required
    #       },
    #       provider_properties: {
    #         provider_service_arn: "ProviderServiceArn", # required
    #         provider_configuration: ""null"",
    #         intermediate_source_configuration: {
    #           intermediate_s3_path: "S3Path", # required
    #         }
    #       }
    #     },
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     incremental_run_config: {
    #       incremental_run_type: "ON_DEMAND" # One of: ["ON_DEMAND"]
    #     },
    #     role_arn: "IdMappingRoleArn",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetIdMappingWorkflowOutput]
    def get_id_mapping_workflow(params = {}, options = {})
      request = build_request(:get_id_mapping_workflow, params)
      request.send_request(options)
    end

    # <p>Returns the <code>IdNamespace</code> with a given name, if it exists.</p>
    # @param [Hash, Types::GetIdNamespaceInput] params
    # @option params [String] :id_namespace_name
    #   <p>The name of the ID namespace.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id_namespace_name: "EntityNameOrIdNamespaceArn", # required
    #   }
    #   options = {}
    #   response = client.get_id_namespace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id_namespace_name: "EntityName", # required
    #     id_namespace_arn: "IdNamespaceArn", # required
    #     description: "Description",
    #     input_source_config: [
    #       {
    #         input_source_arn: "InputSourceARN", # required
    #         schema_name: "EntityName"
    #       }
    #     ],
    #     id_mapping_workflow_properties: [
    #       {
    #         id_mapping_type: "PROVIDER" # One of: ["PROVIDER", "RULE_BASED"], # required
    #         rule_based_properties: {
    #           rules: [
    #             {
    #               rule_name: "String", # required
    #               matching_keys: ["AttributeName"], # required
    #             }
    #           ],
    #           rule_definition_types: ["SOURCE" # One of: ["SOURCE", "TARGET"]],
    #           attribute_matching_model: "ONE_TO_ONE" # One of: ["ONE_TO_ONE", "MANY_TO_MANY"],
    #           record_matching_models: ["ONE_SOURCE_TO_ONE_TARGET" # One of: ["ONE_SOURCE_TO_ONE_TARGET", "MANY_SOURCE_TO_ONE_TARGET"]]
    #         },
    #         provider_properties: {
    #           provider_service_arn: "ProviderServiceArn", # required
    #           provider_configuration: ""null""
    #         }
    #       }
    #     ],
    #     type: "SOURCE" # One of: ["SOURCE", "TARGET"], # required
    #     role_arn: "RoleArn",
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetIdNamespaceOutput]
    def get_id_namespace(params = {}, options = {})
      request = build_request(:get_id_namespace, params)
      request.send_request(options)
    end

    # <p>Returns the corresponding Match ID of a customer record if the record has been processed in a rule-based matching workflow.</p> <p>You can call this API as a dry run of an incremental load on the rule-based matching workflow.</p>
    # @param [Hash, Types::GetMatchIdInput] params
    # @option params [String] :workflow_name
    #   <p>The name of the workflow.</p>
    # @option params [Hash<String, String>] :record
    #   <p>The record to fetch the Match ID for.</p>
    # @option params [Boolean] :apply_normalization
    #   <p>Normalizes the attributes defined in the schema in the input data. For example, if an attribute has an <code>AttributeType</code> of <code>PHONE_NUMBER</code>, and the data in the input table is in a format of 1234567890, Entity Resolution will normalize this field in the output to (123)-456-7890.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_name: "EntityName", # required
    #     record: { # required
    #       "String" => "String"
    #     },
    #     apply_normalization: false
    #   }
    #   options = {}
    #   response = client.get_match_id(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     match_id: "String",
    #     match_rule: "String"
    #   }
    # @return [Types::GetMatchIdOutput]
    def get_match_id(params = {}, options = {})
      request = build_request(:get_match_id, params)
      request.send_request(options)
    end

    # <p>Returns the status, metrics, and errors (if there are any) that are associated with a job.</p>
    # @param [Hash, Types::GetMatchingJobInput] params
    # @option params [String] :workflow_name
    #   <p>The name of the workflow.</p>
    # @option params [String] :job_id
    #   <p>The ID of the job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_name: "EntityName", # required
    #     job_id: "JobId", # required
    #   }
    #   options = {}
    #   response = client.get_matching_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId", # required
    #     status: "RUNNING" # One of: ["RUNNING", "SUCCEEDED", "FAILED", "QUEUED"], # required
    #     start_time: Time.now, # required
    #     end_time: Time.now,
    #     metrics: {
    #       input_records: 1,
    #       total_records_processed: 1,
    #       records_not_processed: 1,
    #       delete_records_processed: 1,
    #       match_i_ds: 1
    #     },
    #     error_details: {
    #       error_message: "ErrorMessage"
    #     },
    #     output_source_config: [
    #       {
    #         role_arn: "RoleArn", # required
    #         output_s3_path: "S3Path", # required
    #         kms_arn: "KMSArn"
    #       }
    #     ]
    #   }
    # @return [Types::GetMatchingJobOutput]
    def get_matching_job(params = {}, options = {})
      request = build_request(:get_matching_job, params)
      request.send_request(options)
    end

    # <p>Returns the <code>MatchingWorkflow</code> with a given name, if it exists.</p>
    # @param [Hash, Types::GetMatchingWorkflowInput] params
    # @option params [String] :workflow_name
    #   <p>The name of the workflow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_name: "EntityName", # required
    #   }
    #   options = {}
    #   response = client.get_matching_workflow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workflow_name: "EntityName", # required
    #     workflow_arn: "MatchingWorkflowArn", # required
    #     description: "Description",
    #     input_source_config: [ # required
    #       {
    #         input_source_arn: "InputSourceARN", # required
    #         schema_name: "EntityName", # required
    #         apply_normalization: false
    #       }
    #     ],
    #     output_source_config: [ # required
    #       {
    #         output_s3_path: "S3Path", # required
    #         kms_arn: "KMSArn",
    #         output: [ # required
    #           {
    #             name: "AttributeName", # required
    #             hashed: false
    #           }
    #         ],
    #         apply_normalization: false
    #       }
    #     ],
    #     resolution_techniques: { # required
    #       resolution_type: "RULE_MATCHING" # One of: ["RULE_MATCHING", "ML_MATCHING", "PROVIDER"], # required
    #       rule_based_properties: {
    #         rules: [ # required
    #           {
    #             rule_name: "String", # required
    #             matching_keys: ["AttributeName"], # required
    #           }
    #         ],
    #         attribute_matching_model: "ONE_TO_ONE" # One of: ["ONE_TO_ONE", "MANY_TO_MANY"], # required
    #         match_purpose: "IDENTIFIER_GENERATION" # One of: ["IDENTIFIER_GENERATION", "INDEXING"]
    #       },
    #       rule_condition_properties: {
    #         rules: [ # required
    #           {
    #             rule_name: "String", # required
    #             condition: "String", # required
    #           }
    #         ]
    #       },
    #       provider_properties: {
    #         provider_service_arn: "ProviderServiceArn", # required
    #         provider_configuration: ""null"",
    #         intermediate_source_configuration: {
    #           intermediate_s3_path: "S3Path", # required
    #         }
    #       }
    #     },
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     incremental_run_config: {
    #       incremental_run_type: "IMMEDIATE" # One of: ["IMMEDIATE"]
    #     },
    #     role_arn: "String", # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetMatchingWorkflowOutput]
    def get_matching_workflow(params = {}, options = {})
      request = build_request(:get_matching_workflow, params)
      request.send_request(options)
    end

    # <p>Returns the resource-based policy.</p>
    # @param [Hash, Types::GetPolicyInput] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which the policy need to be returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "VeniceGlobalArn", # required
    #   }
    #   options = {}
    #   response = client.get_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "VeniceGlobalArn", # required
    #     token: "PolicyToken", # required
    #     policy: "PolicyDocument"
    #   }
    # @return [Types::GetPolicyOutput]
    def get_policy(params = {}, options = {})
      request = build_request(:get_policy, params)
      request.send_request(options)
    end

    # <p>Returns the <code>ProviderService</code> of a given name.</p>
    # @param [Hash, Types::GetProviderServiceInput] params
    # @option params [String] :provider_name
    #   <p>The name of the provider. This name is typically the company name.</p>
    # @option params [String] :provider_service_name
    #   <p>The ARN (Amazon Resource Name) of the product that the provider service provides.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     provider_name: "EntityName", # required
    #     provider_service_name: "ProviderServiceArn", # required
    #   }
    #   options = {}
    #   response = client.get_provider_service(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     provider_name: "EntityName", # required
    #     provider_service_name: "EntityName", # required
    #     provider_service_display_name: "ProviderServiceDisplayName", # required
    #     provider_service_type: "ASSIGNMENT" # One of: ["ASSIGNMENT", "ID_MAPPING"], # required
    #     provider_service_arn: "ProviderServiceArn", # required
    #     provider_configuration_definition: ""null"",
    #     provider_id_name_space_configuration: {
    #       description: "String",
    #       provider_target_configuration_definition: ""null"",
    #       provider_source_configuration_definition: ""null""
    #     },
    #     provider_job_configuration: ""null"",
    #     provider_endpoint_configuration: { # required
    #       # One of:
    #       marketplace_configuration: {
    #         data_set_id: "String", # required
    #         revision_id: "String", # required
    #         asset_id: "String", # required
    #         listing_id: "String", # required
    #       }
    #     },
    #     anonymized_output: false, # required
    #     provider_entity_output_definition: ""null"", # required
    #     provider_intermediate_data_access_configuration: {
    #       aws_account_ids: ["AwsAccountId"],
    #       required_bucket_actions: ["String"]
    #     },
    #     provider_component_schema: {
    #       schemas: [
    #         ["String"]
    #       ],
    #       provider_schema_attributes: [
    #         {
    #           field_name: "AttributeName", # required
    #           type: "NAME" # One of: ["NAME", "NAME_FIRST", "NAME_MIDDLE", "NAME_LAST", "ADDRESS", "ADDRESS_STREET1", "ADDRESS_STREET2", "ADDRESS_STREET3", "ADDRESS_CITY", "ADDRESS_STATE", "ADDRESS_COUNTRY", "ADDRESS_POSTALCODE", "PHONE", "PHONE_NUMBER", "PHONE_COUNTRYCODE", "EMAIL_ADDRESS", "UNIQUE_ID", "DATE", "STRING", "PROVIDER_ID", "IPV4", "IPV6", "MAID"], # required
    #           sub_type: "AttributeName",
    #           hashing: false
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetProviderServiceOutput]
    def get_provider_service(params = {}, options = {})
      request = build_request(:get_provider_service, params)
      request.send_request(options)
    end

    # <p>Returns the SchemaMapping of a given name.</p>
    # @param [Hash, Types::GetSchemaMappingInput] params
    # @option params [String] :schema_name
    #   <p>The name of the schema to be retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     schema_name: "EntityName", # required
    #   }
    #   options = {}
    #   response = client.get_schema_mapping(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     schema_name: "EntityName", # required
    #     schema_arn: "SchemaMappingArn", # required
    #     description: "Description",
    #     mapped_input_fields: [ # required
    #       {
    #         field_name: "AttributeName", # required
    #         type: "NAME" # One of: ["NAME", "NAME_FIRST", "NAME_MIDDLE", "NAME_LAST", "ADDRESS", "ADDRESS_STREET1", "ADDRESS_STREET2", "ADDRESS_STREET3", "ADDRESS_CITY", "ADDRESS_STATE", "ADDRESS_COUNTRY", "ADDRESS_POSTALCODE", "PHONE", "PHONE_NUMBER", "PHONE_COUNTRYCODE", "EMAIL_ADDRESS", "UNIQUE_ID", "DATE", "STRING", "PROVIDER_ID", "IPV4", "IPV6", "MAID"], # required
    #         group_name: "AttributeName",
    #         match_key: "AttributeName",
    #         sub_type: "AttributeName",
    #         hashed: false
    #       }
    #     ],
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     has_workflows: false, # required
    #   }
    # @return [Types::GetSchemaMappingOutput]
    def get_schema_mapping(params = {}, options = {})
      request = build_request(:get_schema_mapping, params)
      request.send_request(options)
    end

    # <p>Lists all ID mapping jobs for a given workflow.</p>
    # @param [Hash, Types::ListIdMappingJobsInput] params
    # @option params [String] :workflow_name
    #   <p>The name of the workflow to be retrieved.</p>
    # @option params [String] :next_token
    #   <p>The pagination token from the previous API call.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects returned per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_name: "EntityNameOrIdMappingWorkflowArn", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_id_mapping_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     jobs: [
    #       {
    #         job_id: "JobId", # required
    #         status: "RUNNING" # One of: ["RUNNING", "SUCCEEDED", "FAILED", "QUEUED"], # required
    #         start_time: Time.now, # required
    #         end_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListIdMappingJobsOutput]
    def list_id_mapping_jobs(params = {}, options = {})
      request = build_request(:list_id_mapping_jobs, params)
      request.send_request(options)
    end

    # <p>Returns a list of all the <code>IdMappingWorkflows</code> that have been created for an Amazon Web Services account.</p>
    # @param [Hash, Types::ListIdMappingWorkflowsInput] params
    # @option params [String] :next_token
    #   <p>The pagination token from the previous API call.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects returned per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_id_mapping_workflows(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workflow_summaries: [
    #       {
    #         workflow_name: "EntityName", # required
    #         workflow_arn: "IdMappingWorkflowArn", # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListIdMappingWorkflowsOutput]
    def list_id_mapping_workflows(params = {}, options = {})
      request = build_request(:list_id_mapping_workflows, params)
      request.send_request(options)
    end

    # <p>Returns a list of all ID namespaces.</p>
    # @param [Hash, Types::ListIdNamespacesInput] params
    # @option params [String] :next_token
    #   <p>The pagination token from the previous API call.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of <code>IdNamespace</code> objects returned per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_id_namespaces(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id_namespace_summaries: [
    #       {
    #         id_namespace_name: "EntityName", # required
    #         id_namespace_arn: "IdNamespaceArn", # required
    #         description: "Description",
    #         id_mapping_workflow_properties: [
    #           {
    #             id_mapping_type: "PROVIDER" # One of: ["PROVIDER", "RULE_BASED"], # required
    #           }
    #         ],
    #         type: "SOURCE" # One of: ["SOURCE", "TARGET"], # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListIdNamespacesOutput]
    def list_id_namespaces(params = {}, options = {})
      request = build_request(:list_id_namespaces, params)
      request.send_request(options)
    end

    # <p>Lists all jobs for a given workflow.</p>
    # @param [Hash, Types::ListMatchingJobsInput] params
    # @option params [String] :workflow_name
    #   <p>The name of the workflow to be retrieved.</p>
    # @option params [String] :next_token
    #   <p>The pagination token from the previous API call.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects returned per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_name: "EntityName", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_matching_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     jobs: [
    #       {
    #         job_id: "JobId", # required
    #         status: "RUNNING" # One of: ["RUNNING", "SUCCEEDED", "FAILED", "QUEUED"], # required
    #         start_time: Time.now, # required
    #         end_time: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListMatchingJobsOutput]
    def list_matching_jobs(params = {}, options = {})
      request = build_request(:list_matching_jobs, params)
      request.send_request(options)
    end

    # <p>Returns a list of all the <code>MatchingWorkflows</code> that have been created for an Amazon Web Services account.</p>
    # @param [Hash, Types::ListMatchingWorkflowsInput] params
    # @option params [String] :next_token
    #   <p>The pagination token from the previous API call.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects returned per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_matching_workflows(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workflow_summaries: [
    #       {
    #         workflow_name: "EntityName", # required
    #         workflow_arn: "MatchingWorkflowArn", # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         resolution_type: "RULE_MATCHING" # One of: ["RULE_MATCHING", "ML_MATCHING", "PROVIDER"], # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListMatchingWorkflowsOutput]
    def list_matching_workflows(params = {}, options = {})
      request = build_request(:list_matching_workflows, params)
      request.send_request(options)
    end

    # <p>Returns a list of all the <code>ProviderServices</code> that are available in this Amazon Web Services Region.</p>
    # @param [Hash, Types::ListProviderServicesInput] params
    # @option params [String] :next_token
    #   <p>The pagination token from the previous API call.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects returned per page.</p>
    # @option params [String] :provider_name
    #   <p>The name of the provider. This name is typically the company name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     provider_name: "EntityName"
    #   }
    #   options = {}
    #   response = client.list_provider_services(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     provider_service_summaries: [
    #       {
    #         provider_service_arn: "ProviderServiceArn", # required
    #         provider_name: "EntityName", # required
    #         provider_service_display_name: "ProviderServiceDisplayName", # required
    #         provider_service_name: "EntityName", # required
    #         provider_service_type: "ASSIGNMENT" # One of: ["ASSIGNMENT", "ID_MAPPING"], # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListProviderServicesOutput]
    def list_provider_services(params = {}, options = {})
      request = build_request(:list_provider_services, params)
      request.send_request(options)
    end

    # <p>Returns a list of all the <code>SchemaMappings</code> that have been created for an Amazon Web Services account.</p>
    # @param [Hash, Types::ListSchemaMappingsInput] params
    # @option params [String] :next_token
    #   <p>The pagination token from the previous API call.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects returned per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_schema_mappings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     schema_list: [
    #       {
    #         schema_name: "EntityName", # required
    #         schema_arn: "SchemaMappingArn", # required
    #         created_at: Time.now, # required
    #         updated_at: Time.now, # required
    #         has_workflows: false, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListSchemaMappingsOutput]
    def list_schema_mappings(params = {}, options = {})
      request = build_request(:list_schema_mappings, params)
      request.send_request(options)
    end

    # <p>Displays the tags associated with an Entity Resolution resource. In Entity Resolution, <code>SchemaMapping</code>, and <code>MatchingWorkflow</code> can be tagged.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource for which you want to view tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "VeniceGlobalArn", # required
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

    # <p>Updates the resource-based policy.</p>
    # @param [Hash, Types::PutPolicyInput] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which the policy needs to be updated.</p>
    # @option params [String] :token
    #   <p>A unique identifier for the current revision of the policy.</p>
    # @option params [String] :policy
    #   <p>The resource-based policy.</p> <important> <p>If you set the value of the <code>effect</code> parameter in the <code>policy</code> to <code>Deny</code> for the <code>PutPolicy</code> operation, you must also set the value of the <code>effect</code> parameter to <code>Deny</code> for the <code>AddPolicyStatement</code> operation.</p> </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "VeniceGlobalArn", # required
    #     token: "PolicyToken",
    #     policy: "PolicyDocument", # required
    #   }
    #   options = {}
    #   response = client.put_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "VeniceGlobalArn", # required
    #     token: "PolicyToken", # required
    #     policy: "PolicyDocument"
    #   }
    # @return [Types::PutPolicyOutput]
    def put_policy(params = {}, options = {})
      request = build_request(:put_policy, params)
      request.send_request(options)
    end

    # <p>Starts the <code>IdMappingJob</code> of a workflow. The workflow must have previously been created using the <code>CreateIdMappingWorkflow</code> endpoint.</p>
    # @param [Hash, Types::StartIdMappingJobInput] params
    # @option params [String] :workflow_name
    #   <p>The name of the ID mapping job to be retrieved.</p>
    # @option params [Array<Types::IdMappingJobOutputSource>] :output_source_config
    #   <p>A list of <code>OutputSource</code> objects.</p>
    # @option params [String] :job_type
    #   <p> The job type for the ID mapping job.</p> <p>If the <code>jobType</code> value is set to <code>INCREMENTAL</code>, only new or changed data is processed since the last job run. This is the default value if the <code>CreateIdMappingWorkflow</code> API is configured with an <code>incrementalRunConfig</code>.</p> <p>If the <code>jobType</code> value is set to <code>BATCH</code>, all data is processed from the input source, regardless of previous job runs. This is the default value if the <code>CreateIdMappingWorkflow</code> API isn't configured with an <code>incrementalRunConfig</code>.</p> <p>If the <code>jobType</code> value is set to <code>DELETE_ONLY</code>, only deletion requests from <code>BatchDeleteUniqueIds</code> are processed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_name: "EntityNameOrIdMappingWorkflowArn", # required
    #     output_source_config: [
    #       {
    #         role_arn: "RoleArn", # required
    #         output_s3_path: "S3Path", # required
    #         kms_arn: "KMSArn"
    #       }
    #     ],
    #     job_type: "BATCH" # One of: ["BATCH", "INCREMENTAL", "DELETE_ONLY"]
    #   }
    #   options = {}
    #   response = client.start_id_mapping_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId", # required
    #     output_source_config: [
    #       {
    #         role_arn: "RoleArn", # required
    #         output_s3_path: "S3Path", # required
    #         kms_arn: "KMSArn"
    #       }
    #     ],
    #     job_type: "BATCH" # One of: ["BATCH", "INCREMENTAL", "DELETE_ONLY"]
    #   }
    # @return [Types::StartIdMappingJobOutput]
    def start_id_mapping_job(params = {}, options = {})
      request = build_request(:start_id_mapping_job, params)
      request.send_request(options)
    end

    # <p>Starts the <code>MatchingJob</code> of a workflow. The workflow must have previously been created using the <code>CreateMatchingWorkflow</code> endpoint.</p>
    # @param [Hash, Types::StartMatchingJobInput] params
    # @option params [String] :workflow_name
    #   <p>The name of the matching job to be retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_name: "EntityName", # required
    #   }
    #   options = {}
    #   response = client.start_matching_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     job_id: "JobId", # required
    #   }
    # @return [Types::StartMatchingJobOutput]
    def start_matching_job(params = {}, options = {})
      request = build_request(:start_matching_job, params)
      request.send_request(options)
    end

    # <p>Assigns one or more tags (key-value pairs) to the specified Entity Resolution resource. Tags can help you organize and categorize your resources. You can also use them to scope user permissions by granting a user permission to access or change only resources with certain tag values. In Entity Resolution, <code>SchemaMapping</code> and <code>MatchingWorkflow</code> can be tagged. Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters. You can use the <code>TagResource</code> action with a resource that already has tags. If you specify a new tag key, this tag is appended to the list of tags associated with the resource. If you specify a tag key that is already associated with the resource, the new tag value that you specify replaces the previous value for that tag.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource for which you want to view tags.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "VeniceGlobalArn", # required
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

    # <p>Removes one or more tags from the specified Entity Resolution resource. In Entity Resolution, <code>SchemaMapping</code>, and <code>MatchingWorkflow</code> can be tagged.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource for which you want to untag.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The list of tag keys to remove from the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "VeniceGlobalArn", # required
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

    # <p>Updates an existing <code>IdMappingWorkflow</code>. This method is identical to CreateIdMappingWorkflow, except it uses an HTTP <code>PUT</code> request instead of a <code>POST</code> request, and the <code>IdMappingWorkflow</code> must already exist for the method to succeed.</p> <important> <p>Incremental processing is not supported for ID mapping workflows. </p> </important>
    # @param [Hash, Types::UpdateIdMappingWorkflowInput] params
    # @option params [String] :workflow_name
    #   <p>The name of the workflow.</p>
    # @option params [String] :description
    #   <p>A description of the workflow.</p>
    # @option params [Array<Types::IdMappingWorkflowInputSource>] :input_source_config
    #   <p>A list of <code>InputSource</code> objects, which have the fields <code>InputSourceARN</code> and <code>SchemaName</code>.</p>
    # @option params [Array<Types::IdMappingWorkflowOutputSource>] :output_source_config
    #   <p>A list of <code>OutputSource</code> objects, each of which contains fields <code>outputS3Path</code> and <code>KMSArn</code>.</p>
    # @option params [Types::IdMappingTechniques] :id_mapping_techniques
    #   <p>An object which defines the ID mapping technique and any additional configurations.</p>
    # @option params [Types::IdMappingIncrementalRunConfig] :incremental_run_config
    #   <p> The incremental run configuration for the update ID mapping workflow.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role. Entity Resolution assumes this role to access Amazon Web Services resources on your behalf.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_name: "EntityName", # required
    #     description: "Description",
    #     input_source_config: [ # required
    #       {
    #         input_source_arn: "InputSourceARN", # required
    #         schema_name: "EntityName",
    #         type: "SOURCE" # One of: ["SOURCE", "TARGET"]
    #       }
    #     ],
    #     output_source_config: [
    #       {
    #         output_s3_path: "S3Path", # required
    #         kms_arn: "KMSArn"
    #       }
    #     ],
    #     id_mapping_techniques: { # required
    #       id_mapping_type: "PROVIDER" # One of: ["PROVIDER", "RULE_BASED"], # required
    #       rule_based_properties: {
    #         rules: [
    #           {
    #             rule_name: "String", # required
    #             matching_keys: ["AttributeName"], # required
    #           }
    #         ],
    #         rule_definition_type: "SOURCE" # One of: ["SOURCE", "TARGET"], # required
    #         attribute_matching_model: "ONE_TO_ONE" # One of: ["ONE_TO_ONE", "MANY_TO_MANY"], # required
    #         record_matching_model: "ONE_SOURCE_TO_ONE_TARGET" # One of: ["ONE_SOURCE_TO_ONE_TARGET", "MANY_SOURCE_TO_ONE_TARGET"], # required
    #       },
    #       provider_properties: {
    #         provider_service_arn: "ProviderServiceArn", # required
    #         provider_configuration: ""null"",
    #         intermediate_source_configuration: {
    #           intermediate_s3_path: "S3Path", # required
    #         }
    #       }
    #     },
    #     incremental_run_config: {
    #       incremental_run_type: "ON_DEMAND" # One of: ["ON_DEMAND"]
    #     },
    #     role_arn: "IdMappingRoleArn"
    #   }
    #   options = {}
    #   response = client.update_id_mapping_workflow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workflow_name: "EntityName", # required
    #     workflow_arn: "IdMappingWorkflowArn", # required
    #     description: "Description",
    #     input_source_config: [ # required
    #       {
    #         input_source_arn: "InputSourceARN", # required
    #         schema_name: "EntityName",
    #         type: "SOURCE" # One of: ["SOURCE", "TARGET"]
    #       }
    #     ],
    #     output_source_config: [
    #       {
    #         output_s3_path: "S3Path", # required
    #         kms_arn: "KMSArn"
    #       }
    #     ],
    #     id_mapping_techniques: { # required
    #       id_mapping_type: "PROVIDER" # One of: ["PROVIDER", "RULE_BASED"], # required
    #       rule_based_properties: {
    #         rules: [
    #           {
    #             rule_name: "String", # required
    #             matching_keys: ["AttributeName"], # required
    #           }
    #         ],
    #         rule_definition_type: "SOURCE" # One of: ["SOURCE", "TARGET"], # required
    #         attribute_matching_model: "ONE_TO_ONE" # One of: ["ONE_TO_ONE", "MANY_TO_MANY"], # required
    #         record_matching_model: "ONE_SOURCE_TO_ONE_TARGET" # One of: ["ONE_SOURCE_TO_ONE_TARGET", "MANY_SOURCE_TO_ONE_TARGET"], # required
    #       },
    #       provider_properties: {
    #         provider_service_arn: "ProviderServiceArn", # required
    #         provider_configuration: ""null"",
    #         intermediate_source_configuration: {
    #           intermediate_s3_path: "S3Path", # required
    #         }
    #       }
    #     },
    #     incremental_run_config: {
    #       incremental_run_type: "ON_DEMAND" # One of: ["ON_DEMAND"]
    #     },
    #     role_arn: "IdMappingRoleArn"
    #   }
    # @return [Types::UpdateIdMappingWorkflowOutput]
    def update_id_mapping_workflow(params = {}, options = {})
      request = build_request(:update_id_mapping_workflow, params)
      request.send_request(options)
    end

    # <p>Updates an existing ID namespace.</p>
    # @param [Hash, Types::UpdateIdNamespaceInput] params
    # @option params [String] :id_namespace_name
    #   <p>The name of the ID namespace.</p>
    # @option params [String] :description
    #   <p>The description of the ID namespace.</p>
    # @option params [Array<Types::IdNamespaceInputSource>] :input_source_config
    #   <p>A list of <code>InputSource</code> objects, which have the fields <code>InputSourceARN</code> and <code>SchemaName</code>.</p>
    # @option params [Array<Types::IdNamespaceIdMappingWorkflowProperties>] :id_mapping_workflow_properties
    #   <p>Determines the properties of <code>IdMappingWorkflow</code> where this <code>IdNamespace</code> can be used as a <code>Source</code> or a <code>Target</code>.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role. Entity Resolution assumes this role to access the resources defined in this <code>IdNamespace</code> on your behalf as part of a workflow run.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id_namespace_name: "EntityName", # required
    #     description: "Description",
    #     input_source_config: [
    #       {
    #         input_source_arn: "InputSourceARN", # required
    #         schema_name: "EntityName"
    #       }
    #     ],
    #     id_mapping_workflow_properties: [
    #       {
    #         id_mapping_type: "PROVIDER" # One of: ["PROVIDER", "RULE_BASED"], # required
    #         rule_based_properties: {
    #           rules: [
    #             {
    #               rule_name: "String", # required
    #               matching_keys: ["AttributeName"], # required
    #             }
    #           ],
    #           rule_definition_types: ["SOURCE" # One of: ["SOURCE", "TARGET"]],
    #           attribute_matching_model: "ONE_TO_ONE" # One of: ["ONE_TO_ONE", "MANY_TO_MANY"],
    #           record_matching_models: ["ONE_SOURCE_TO_ONE_TARGET" # One of: ["ONE_SOURCE_TO_ONE_TARGET", "MANY_SOURCE_TO_ONE_TARGET"]]
    #         },
    #         provider_properties: {
    #           provider_service_arn: "ProviderServiceArn", # required
    #           provider_configuration: ""null""
    #         }
    #       }
    #     ],
    #     role_arn: "RoleArn"
    #   }
    #   options = {}
    #   response = client.update_id_namespace(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id_namespace_name: "EntityName", # required
    #     id_namespace_arn: "IdNamespaceArn", # required
    #     description: "Description",
    #     input_source_config: [
    #       {
    #         input_source_arn: "InputSourceARN", # required
    #         schema_name: "EntityName"
    #       }
    #     ],
    #     id_mapping_workflow_properties: [
    #       {
    #         id_mapping_type: "PROVIDER" # One of: ["PROVIDER", "RULE_BASED"], # required
    #         rule_based_properties: {
    #           rules: [
    #             {
    #               rule_name: "String", # required
    #               matching_keys: ["AttributeName"], # required
    #             }
    #           ],
    #           rule_definition_types: ["SOURCE" # One of: ["SOURCE", "TARGET"]],
    #           attribute_matching_model: "ONE_TO_ONE" # One of: ["ONE_TO_ONE", "MANY_TO_MANY"],
    #           record_matching_models: ["ONE_SOURCE_TO_ONE_TARGET" # One of: ["ONE_SOURCE_TO_ONE_TARGET", "MANY_SOURCE_TO_ONE_TARGET"]]
    #         },
    #         provider_properties: {
    #           provider_service_arn: "ProviderServiceArn", # required
    #           provider_configuration: ""null""
    #         }
    #       }
    #     ],
    #     type: "SOURCE" # One of: ["SOURCE", "TARGET"], # required
    #     role_arn: "RoleArn",
    #     created_at: Time.now, # required
    #     updated_at: Time.now, # required
    #   }
    # @return [Types::UpdateIdNamespaceOutput]
    def update_id_namespace(params = {}, options = {})
      request = build_request(:update_id_namespace, params)
      request.send_request(options)
    end

    # <p>Updates an existing matching workflow. The workflow must already exist for this operation to succeed.</p> <important> <p>For workflows where <code>resolutionType</code> is <code>ML_MATCHING</code> or <code>PROVIDER</code>, incremental processing is not supported. </p> </important>
    # @param [Hash, Types::UpdateMatchingWorkflowInput] params
    # @option params [String] :workflow_name
    #   <p>The name of the workflow to be retrieved.</p>
    # @option params [String] :description
    #   <p>A description of the workflow.</p>
    # @option params [Array<Types::InputSource>] :input_source_config
    #   <p>A list of <code>InputSource</code> objects, which have the fields <code>InputSourceARN</code> and <code>SchemaName</code>.</p>
    # @option params [Array<Types::OutputSource>] :output_source_config
    #   <p>A list of <code>OutputSource</code> objects, each of which contains fields <code>outputS3Path</code>, <code>applyNormalization</code>, <code>KMSArn</code>, and <code>output</code>.</p>
    # @option params [Types::ResolutionTechniques] :resolution_techniques
    #   <p>An object which defines the <code>resolutionType</code> and the <code>ruleBasedProperties</code>.</p>
    # @option params [Types::IncrementalRunConfig] :incremental_run_config
    #   <p>Optional. An object that defines the incremental run type. This object contains only the <code>incrementalRunType</code> field, which appears as "Automatic" in the console. </p> <important> <p>For workflows where <code>resolutionType</code> is <code>ML_MATCHING</code> or <code>PROVIDER</code>, incremental processing is not supported. </p> </important>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role. Entity Resolution assumes this role to create resources on your behalf as part of workflow execution.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     workflow_name: "EntityName", # required
    #     description: "Description",
    #     input_source_config: [ # required
    #       {
    #         input_source_arn: "InputSourceARN", # required
    #         schema_name: "EntityName", # required
    #         apply_normalization: false
    #       }
    #     ],
    #     output_source_config: [ # required
    #       {
    #         output_s3_path: "S3Path", # required
    #         kms_arn: "KMSArn",
    #         output: [ # required
    #           {
    #             name: "AttributeName", # required
    #             hashed: false
    #           }
    #         ],
    #         apply_normalization: false
    #       }
    #     ],
    #     resolution_techniques: { # required
    #       resolution_type: "RULE_MATCHING" # One of: ["RULE_MATCHING", "ML_MATCHING", "PROVIDER"], # required
    #       rule_based_properties: {
    #         rules: [ # required
    #           {
    #             rule_name: "String", # required
    #             matching_keys: ["AttributeName"], # required
    #           }
    #         ],
    #         attribute_matching_model: "ONE_TO_ONE" # One of: ["ONE_TO_ONE", "MANY_TO_MANY"], # required
    #         match_purpose: "IDENTIFIER_GENERATION" # One of: ["IDENTIFIER_GENERATION", "INDEXING"]
    #       },
    #       rule_condition_properties: {
    #         rules: [ # required
    #           {
    #             rule_name: "String", # required
    #             condition: "String", # required
    #           }
    #         ]
    #       },
    #       provider_properties: {
    #         provider_service_arn: "ProviderServiceArn", # required
    #         provider_configuration: ""null"",
    #         intermediate_source_configuration: {
    #           intermediate_s3_path: "S3Path", # required
    #         }
    #       }
    #     },
    #     incremental_run_config: {
    #       incremental_run_type: "IMMEDIATE" # One of: ["IMMEDIATE"]
    #     },
    #     role_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.update_matching_workflow(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     workflow_name: "EntityName", # required
    #     description: "Description",
    #     input_source_config: [ # required
    #       {
    #         input_source_arn: "InputSourceARN", # required
    #         schema_name: "EntityName", # required
    #         apply_normalization: false
    #       }
    #     ],
    #     output_source_config: [ # required
    #       {
    #         output_s3_path: "S3Path", # required
    #         kms_arn: "KMSArn",
    #         output: [ # required
    #           {
    #             name: "AttributeName", # required
    #             hashed: false
    #           }
    #         ],
    #         apply_normalization: false
    #       }
    #     ],
    #     resolution_techniques: { # required
    #       resolution_type: "RULE_MATCHING" # One of: ["RULE_MATCHING", "ML_MATCHING", "PROVIDER"], # required
    #       rule_based_properties: {
    #         rules: [ # required
    #           {
    #             rule_name: "String", # required
    #             matching_keys: ["AttributeName"], # required
    #           }
    #         ],
    #         attribute_matching_model: "ONE_TO_ONE" # One of: ["ONE_TO_ONE", "MANY_TO_MANY"], # required
    #         match_purpose: "IDENTIFIER_GENERATION" # One of: ["IDENTIFIER_GENERATION", "INDEXING"]
    #       },
    #       rule_condition_properties: {
    #         rules: [ # required
    #           {
    #             rule_name: "String", # required
    #             condition: "String", # required
    #           }
    #         ]
    #       },
    #       provider_properties: {
    #         provider_service_arn: "ProviderServiceArn", # required
    #         provider_configuration: ""null"",
    #         intermediate_source_configuration: {
    #           intermediate_s3_path: "S3Path", # required
    #         }
    #       }
    #     },
    #     incremental_run_config: {
    #       incremental_run_type: "IMMEDIATE" # One of: ["IMMEDIATE"]
    #     },
    #     role_arn: "String", # required
    #   }
    # @return [Types::UpdateMatchingWorkflowOutput]
    def update_matching_workflow(params = {}, options = {})
      request = build_request(:update_matching_workflow, params)
      request.send_request(options)
    end

    # <p>Updates a schema mapping.</p> <note> <p>A schema is immutable if it is being used by a workflow. Therefore, you can't update a schema mapping if it's associated with a workflow. </p> </note>
    # @param [Hash, Types::UpdateSchemaMappingInput] params
    # @option params [String] :schema_name
    #   <p>The name of the schema. There can't be multiple <code>SchemaMappings</code> with the same name.</p>
    # @option params [String] :description
    #   <p>A description of the schema.</p>
    # @option params [Array<Types::SchemaInputAttribute>] :mapped_input_fields
    #   <p>A list of <code>MappedInputFields</code>. Each <code>MappedInputField</code> corresponds to a column the source data table, and contains column name plus additional information that Entity Resolution uses for matching.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     schema_name: "EntityName", # required
    #     description: "Description",
    #     mapped_input_fields: [ # required
    #       {
    #         field_name: "AttributeName", # required
    #         type: "NAME" # One of: ["NAME", "NAME_FIRST", "NAME_MIDDLE", "NAME_LAST", "ADDRESS", "ADDRESS_STREET1", "ADDRESS_STREET2", "ADDRESS_STREET3", "ADDRESS_CITY", "ADDRESS_STATE", "ADDRESS_COUNTRY", "ADDRESS_POSTALCODE", "PHONE", "PHONE_NUMBER", "PHONE_COUNTRYCODE", "EMAIL_ADDRESS", "UNIQUE_ID", "DATE", "STRING", "PROVIDER_ID", "IPV4", "IPV6", "MAID"], # required
    #         group_name: "AttributeName",
    #         match_key: "AttributeName",
    #         sub_type: "AttributeName",
    #         hashed: false
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_schema_mapping(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     schema_name: "EntityName", # required
    #     schema_arn: "SchemaMappingArn", # required
    #     description: "Description",
    #     mapped_input_fields: [ # required
    #       {
    #         field_name: "AttributeName", # required
    #         type: "NAME" # One of: ["NAME", "NAME_FIRST", "NAME_MIDDLE", "NAME_LAST", "ADDRESS", "ADDRESS_STREET1", "ADDRESS_STREET2", "ADDRESS_STREET3", "ADDRESS_CITY", "ADDRESS_STATE", "ADDRESS_COUNTRY", "ADDRESS_POSTALCODE", "PHONE", "PHONE_NUMBER", "PHONE_COUNTRYCODE", "EMAIL_ADDRESS", "UNIQUE_ID", "DATE", "STRING", "PROVIDER_ID", "IPV4", "IPV6", "MAID"], # required
    #         group_name: "AttributeName",
    #         match_key: "AttributeName",
    #         sub_type: "AttributeName",
    #         hashed: false
    #       }
    #     ]
    #   }
    # @return [Types::UpdateSchemaMappingOutput]
    def update_schema_mapping(params = {}, options = {})
      request = build_request(:update_schema_mapping, params)
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
      context[:gem_name] = 'aws-sdk-entityresolution'
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
