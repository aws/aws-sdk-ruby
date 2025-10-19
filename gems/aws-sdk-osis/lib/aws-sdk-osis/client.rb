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
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

module Aws::OSIS
  # An API client for Aws::OSIS.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonOpenSearchIngestionService
    @identifier = :osis

    add_plugin(::Aws::OSIS::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::OSIS::EndpointProvider)
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
    # @option options [lambda] :retry_backoff (Smithy::Client::Retry::EXPONENTIAL_BACKOFF)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
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
    #  to return or errors to raise by calling {Stubs#stub_responses}.
    #  @see Stubs
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

    # <p>Creates an OpenSearch Ingestion pipeline. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html">Creating Amazon OpenSearch
    #     Ingestion pipelines</a>.</p>
    # @param [Hash, Types::CreatePipelineRequest] params
    # @option params [String] :pipeline_name
    #   <p>The name of the OpenSearch Ingestion pipeline to create. Pipeline names are unique across the
    #      pipelines owned by an account within an Amazon Web Services Region.</p>
    # @option params [Integer] :min_units
    #   <p>The minimum pipeline capacity, in Ingestion Compute Units (ICUs).</p>
    # @option params [Integer] :max_units
    #   <p>The maximum pipeline capacity, in Ingestion Compute Units (ICUs).</p>
    # @option params [String] :pipeline_configuration_body
    #   <p>The pipeline configuration in YAML format. The command accepts the pipeline configuration as
    #      a string or within a .yaml file. If you provide the configuration as a string, each new line must
    #      be escaped with <code>\n</code>.</p>
    # @option params [Types::LogPublishingOptions] :log_publishing_options
    #   <p>Key-value pairs to configure log publishing.</p>
    # @option params [Types::VpcOptions] :vpc_options
    #   <p>Container for the values required to configure VPC access for the pipeline. If you don't
    #      specify these values, OpenSearch Ingestion creates the pipeline with a public endpoint.</p>
    # @option params [Types::BufferOptions] :buffer_options
    #   <p>Key-value pairs to configure persistent buffering for the pipeline.</p>
    # @option params [Types::EncryptionAtRestOptions] :encryption_at_rest_options
    #   <p>Key-value pairs to configure encryption for data that is written to a persistent
    #      buffer.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>List of tags to add to the pipeline upon creation.</p>
    # @option params [String] :pipeline_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that grants the pipeline permission to access
    #       Amazon Web Services resources.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_name: "PipelineName", # required
    #     min_units: 1, # required
    #     max_units: 1, # required
    #     pipeline_configuration_body: "PipelineConfigurationBody", # required
    #     log_publishing_options: {
    #       is_logging_enabled: false,
    #       cloud_watch_log_destination: {
    #         log_group: "LogGroup", # required
    #       }
    #     },
    #     vpc_options: {
    #       subnet_ids: ["SubnetId"], # required
    #       security_group_ids: ["SecurityGroupId"],
    #       vpc_attachment_options: {
    #         attach_to_vpc: false, # required
    #         cidr_block: "CidrBlock"
    #       },
    #       vpc_endpoint_management: "CUSTOMER" # One of: ["CUSTOMER", "SERVICE"]
    #     },
    #     buffer_options: {
    #       persistent_buffer_enabled: false, # required
    #     },
    #     encryption_at_rest_options: {
    #       kms_key_arn: "KmsKeyArn", # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     pipeline_role_arn: "PipelineRoleArn"
    #   }
    #   options = {}
    #   response = client.create_pipeline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pipeline: {
    #       pipeline_name: "String",
    #       pipeline_arn: "String",
    #       min_units: 1,
    #       max_units: 1,
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "STARTING", "START_FAILED", "STOPPING", "STOPPED"],
    #       status_reason: {
    #         description: "String"
    #       },
    #       pipeline_configuration_body: "String",
    #       created_at: Time.now,
    #       last_updated_at: Time.now,
    #       ingest_endpoint_urls: ["String"],
    #       log_publishing_options: {
    #         is_logging_enabled: false,
    #         cloud_watch_log_destination: {
    #           log_group: "LogGroup", # required
    #         }
    #       },
    #       vpc_endpoints: [
    #         {
    #           vpc_endpoint_id: "String",
    #           vpc_id: "String",
    #           vpc_options: {
    #             subnet_ids: ["SubnetId"], # required
    #             security_group_ids: ["SecurityGroupId"],
    #             vpc_attachment_options: {
    #               attach_to_vpc: false, # required
    #               cidr_block: "CidrBlock"
    #             },
    #             vpc_endpoint_management: "CUSTOMER" # One of: ["CUSTOMER", "SERVICE"]
    #           }
    #         }
    #       ],
    #       buffer_options: {
    #         persistent_buffer_enabled: false, # required
    #       },
    #       encryption_at_rest_options: {
    #         kms_key_arn: "KmsKeyArn", # required
    #       },
    #       vpc_endpoint_service: "String",
    #       service_vpc_endpoints: [
    #         {
    #           service_name: "OPENSEARCH_SERVERLESS" # One of: ["OPENSEARCH_SERVERLESS"],
    #           vpc_endpoint_id: "String"
    #         }
    #       ],
    #       destinations: [
    #         {
    #           service_name: "String",
    #           endpoint: "String"
    #         }
    #       ],
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       pipeline_role_arn: "PipelineRoleArn"
    #     }
    #   }
    # @return [Types::CreatePipelineResponse]
    def create_pipeline(params = {}, options = {})
      request = build_request(:create_pipeline, params)
      request.send_request(options)
    end

    # <p>Creates a VPC endpoint for an OpenSearch Ingestion pipeline. Pipeline endpoints allow you to
    #    ingest data from your VPC into pipelines that you have access to.</p>
    # @param [Hash, Types::CreatePipelineEndpointRequest] params
    # @option params [String] :pipeline_arn
    #   <p>The Amazon Resource Name (ARN) of the pipeline to create the endpoint for.</p>
    # @option params [Types::PipelineEndpointVpcOptions] :vpc_options
    #   <p>Container for the VPC configuration for the pipeline endpoint, including subnet IDs and
    #      security group IDs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_arn: "PipelineArn", # required
    #     vpc_options: { # required
    #       subnet_ids: ["SubnetId"],
    #       security_group_ids: ["SecurityGroupId"]
    #     }
    #   }
    #   options = {}
    #   response = client.create_pipeline_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pipeline_arn: "PipelineArn",
    #     endpoint_id: "PipelineEndpointId",
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "CREATE_FAILED", "DELETING", "REVOKING", "REVOKED"],
    #     vpc_id: "String"
    #   }
    # @return [Types::CreatePipelineEndpointResponse]
    def create_pipeline_endpoint(params = {}, options = {})
      request = build_request(:create_pipeline_endpoint, params)
      request.send_request(options)
    end

    # <p>Deletes an OpenSearch Ingestion pipeline. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/delete-pipeline.html">Deleting Amazon OpenSearch
    #     Ingestion pipelines</a>.</p>
    # @param [Hash, Types::DeletePipelineRequest] params
    # @option params [String] :pipeline_name
    #   <p>The name of the pipeline to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_name: "PipelineName", # required
    #   }
    #   options = {}
    #   response = client.delete_pipeline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeletePipelineResponse]
    def delete_pipeline(params = {}, options = {})
      request = build_request(:delete_pipeline, params)
      request.send_request(options)
    end

    # <p>Deletes a VPC endpoint for an OpenSearch Ingestion pipeline.</p>
    # @param [Hash, Types::DeletePipelineEndpointRequest] params
    # @option params [String] :endpoint_id
    #   <p>The unique identifier of the pipeline endpoint to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_id: "PipelineEndpointId", # required
    #   }
    #   options = {}
    #   response = client.delete_pipeline_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeletePipelineEndpointResponse]
    def delete_pipeline_endpoint(params = {}, options = {})
      request = build_request(:delete_pipeline_endpoint, params)
      request.send_request(options)
    end

    # <p>Deletes a resource-based policy from an OpenSearch Ingestion resource.</p>
    # @param [Hash, Types::DeleteResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource from which to delete the policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "PipelineArn", # required
    #   }
    #   options = {}
    #   response = client.delete_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteResourcePolicyResponse]
    def delete_resource_policy(params = {}, options = {})
      request = build_request(:delete_resource_policy, params)
      request.send_request(options)
    end

    # <p>Retrieves information about an OpenSearch Ingestion pipeline.</p>
    # @param [Hash, Types::GetPipelineRequest] params
    # @option params [String] :pipeline_name
    #   <p>The name of the pipeline.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_name: "PipelineName", # required
    #   }
    #   options = {}
    #   response = client.get_pipeline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pipeline: {
    #       pipeline_name: "String",
    #       pipeline_arn: "String",
    #       min_units: 1,
    #       max_units: 1,
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "STARTING", "START_FAILED", "STOPPING", "STOPPED"],
    #       status_reason: {
    #         description: "String"
    #       },
    #       pipeline_configuration_body: "String",
    #       created_at: Time.now,
    #       last_updated_at: Time.now,
    #       ingest_endpoint_urls: ["String"],
    #       log_publishing_options: {
    #         is_logging_enabled: false,
    #         cloud_watch_log_destination: {
    #           log_group: "LogGroup", # required
    #         }
    #       },
    #       vpc_endpoints: [
    #         {
    #           vpc_endpoint_id: "String",
    #           vpc_id: "String",
    #           vpc_options: {
    #             subnet_ids: ["SubnetId"], # required
    #             security_group_ids: ["SecurityGroupId"],
    #             vpc_attachment_options: {
    #               attach_to_vpc: false, # required
    #               cidr_block: "CidrBlock"
    #             },
    #             vpc_endpoint_management: "CUSTOMER" # One of: ["CUSTOMER", "SERVICE"]
    #           }
    #         }
    #       ],
    #       buffer_options: {
    #         persistent_buffer_enabled: false, # required
    #       },
    #       encryption_at_rest_options: {
    #         kms_key_arn: "KmsKeyArn", # required
    #       },
    #       vpc_endpoint_service: "String",
    #       service_vpc_endpoints: [
    #         {
    #           service_name: "OPENSEARCH_SERVERLESS" # One of: ["OPENSEARCH_SERVERLESS"],
    #           vpc_endpoint_id: "String"
    #         }
    #       ],
    #       destinations: [
    #         {
    #           service_name: "String",
    #           endpoint: "String"
    #         }
    #       ],
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       pipeline_role_arn: "PipelineRoleArn"
    #     }
    #   }
    # @return [Types::GetPipelineResponse]
    def get_pipeline(params = {}, options = {})
      request = build_request(:get_pipeline, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a specific blueprint for OpenSearch Ingestion. Blueprints are
    #    templates for the configuration needed for a <code>CreatePipeline</code> request. For more
    #    information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html#pipeline-blueprint">Using
    #     blueprints to create a pipeline</a>.</p>
    # @param [Hash, Types::GetPipelineBlueprintRequest] params
    # @option params [String] :blueprint_name
    #   <p>The name of the blueprint to retrieve.</p>
    # @option params [String] :format
    #   <p>The format format of the blueprint to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     blueprint_name: "String", # required
    #     format: "BlueprintFormat"
    #   }
    #   options = {}
    #   response = client.get_pipeline_blueprint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     blueprint: {
    #       blueprint_name: "String",
    #       pipeline_configuration_body: "String",
    #       display_name: "String",
    #       display_description: "String",
    #       service: "String",
    #       use_case: "String"
    #     },
    #     format: "String"
    #   }
    # @return [Types::GetPipelineBlueprintResponse]
    def get_pipeline_blueprint(params = {}, options = {})
      request = build_request(:get_pipeline_blueprint, params)
      request.send_request(options)
    end

    # <p>Returns progress information for the current change happening on an OpenSearch Ingestion
    #    pipeline. Currently, this operation only returns information when a pipeline is being
    #    created.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html#get-pipeline-progress">Tracking the status of pipeline creation</a>.</p>
    # @param [Hash, Types::GetPipelineChangeProgressRequest] params
    # @option params [String] :pipeline_name
    #   <p>The name of the pipeline.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_name: "PipelineName", # required
    #   }
    #   options = {}
    #   response = client.get_pipeline_change_progress(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     change_progress_statuses: [
    #       {
    #         start_time: Time.now,
    #         status: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "COMPLETED", "FAILED"],
    #         total_number_of_stages: 1,
    #         change_progress_stages: [
    #           {
    #             name: "String",
    #             status: "PENDING" # One of: ["PENDING", "IN_PROGRESS", "COMPLETED", "FAILED"],
    #             description: "String",
    #             last_updated_at: Time.now
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::GetPipelineChangeProgressResponse]
    def get_pipeline_change_progress(params = {}, options = {})
      request = build_request(:get_pipeline_change_progress, params)
      request.send_request(options)
    end

    # <p>Retrieves the resource-based policy attached to an OpenSearch Ingestion resource.</p>
    # @param [Hash, Types::GetResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which to retrieve the policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "PipelineArn", # required
    #   }
    #   options = {}
    #   response = client.get_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_arn: "PipelineArn",
    #     policy: "ResourcePolicy"
    #   }
    # @return [Types::GetResourcePolicyResponse]
    def get_resource_policy(params = {}, options = {})
      request = build_request(:get_resource_policy, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of all available blueprints for Data Prepper. For more information, see
    #     <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html#pipeline-blueprint">Using
    #     blueprints to create a pipeline</a>.</p>
    # @param [Hash, Types::ListPipelineBlueprintsRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.list_pipeline_blueprints(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     blueprints: [
    #       {
    #         blueprint_name: "String",
    #         display_name: "String",
    #         display_description: "String",
    #         service: "String",
    #         use_case: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ListPipelineBlueprintsResponse]
    def list_pipeline_blueprints(params = {}, options = {})
      request = build_request(:list_pipeline_blueprints, params)
      request.send_request(options)
    end

    # <p>Lists the pipeline endpoints connected to pipelines in your account.</p>
    # @param [Hash, Types::ListPipelineEndpointConnectionsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of pipeline endpoint connections to return in the response.</p>
    # @option params [String] :next_token
    #   <p>If your initial <code>ListPipelineEndpointConnections</code> operation returns a
    #       <code>nextToken</code>, you can include the returned <code>nextToken</code> in subsequent
    #       <code>ListPipelineEndpointConnections</code> operations, which returns results in the next
    #      page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_pipeline_endpoint_connections(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     pipeline_endpoint_connections: [
    #       {
    #         pipeline_arn: "PipelineArn",
    #         endpoint_id: "PipelineEndpointId",
    #         status: "CREATING" # One of: ["CREATING", "ACTIVE", "CREATE_FAILED", "DELETING", "REVOKING", "REVOKED"],
    #         vpc_endpoint_owner: "AwsAccountId"
    #       }
    #     ]
    #   }
    # @return [Types::ListPipelineEndpointConnectionsResponse]
    def list_pipeline_endpoint_connections(params = {}, options = {})
      request = build_request(:list_pipeline_endpoint_connections, params)
      request.send_request(options)
    end

    # <p>Lists all pipeline endpoints in your account.</p>
    # @param [Hash, Types::ListPipelineEndpointsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of pipeline endpoints to return in the response.</p>
    # @option params [String] :next_token
    #   <p>If your initial <code>ListPipelineEndpoints</code> operation returns a
    #       <code>NextToken</code>, you can include the returned <code>NextToken</code> in subsequent
    #       <code>ListPipelineEndpoints</code> operations, which returns results in the next page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_pipeline_endpoints(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     pipeline_endpoints: [
    #       {
    #         pipeline_arn: "PipelineArn",
    #         endpoint_id: "PipelineEndpointId",
    #         status: "CREATING" # One of: ["CREATING", "ACTIVE", "CREATE_FAILED", "DELETING", "REVOKING", "REVOKED"],
    #         vpc_id: "String",
    #         vpc_options: {
    #           subnet_ids: ["SubnetId"],
    #           security_group_ids: ["SecurityGroupId"]
    #         },
    #         ingest_endpoint_url: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ListPipelineEndpointsResponse]
    def list_pipeline_endpoints(params = {}, options = {})
      request = build_request(:list_pipeline_endpoints, params)
      request.send_request(options)
    end

    # <p>Lists all OpenSearch Ingestion pipelines in the current Amazon Web Services account and Region.
    #    For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/list-pipeline.html">Viewing Amazon OpenSearch
    #     Ingestion pipelines</a>.</p>
    # @param [Hash, Types::ListPipelinesRequest] params
    # @option params [Integer] :max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can use
    #       <code>nextToken</code> to get the next page of results.</p>
    # @option params [String] :next_token
    #   <p>If your initial <code>ListPipelines</code> operation returns a <code>nextToken</code>, you
    #      can include the returned <code>nextToken</code> in subsequent <code>ListPipelines</code>
    #      operations, which returns results in the next page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_pipelines(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     pipelines: [
    #       {
    #         status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "STARTING", "START_FAILED", "STOPPING", "STOPPED"],
    #         status_reason: {
    #           description: "String"
    #         },
    #         pipeline_name: "PipelineName",
    #         pipeline_arn: "PipelineArn",
    #         min_units: 1,
    #         max_units: 1,
    #         created_at: Time.now,
    #         last_updated_at: Time.now,
    #         destinations: [
    #           {
    #             service_name: "String",
    #             endpoint: "String"
    #           }
    #         ],
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::ListPipelinesResponse]
    def list_pipelines(params = {}, options = {})
      request = build_request(:list_pipelines, params)
      request.send_request(options)
    end

    # <p>Lists all resource tags associated with an OpenSearch Ingestion pipeline. For more information,
    #    see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-pipeline.html">Tagging Amazon OpenSearch Ingestion pipelines</a>.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the pipeline to retrieve tags for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "PipelineArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Attaches a resource-based policy to an OpenSearch Ingestion resource. Resource-based
    #    policies grant permissions to principals to perform actions on the resource.</p>
    # @param [Hash, Types::PutResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to attach the policy to.</p>
    # @option params [String] :policy
    #   <p>The resource-based policy document in JSON format.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "PipelineArn", # required
    #     policy: "ResourcePolicy", # required
    #   }
    #   options = {}
    #   response = client.put_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_arn: "PipelineArn",
    #     policy: "ResourcePolicy"
    #   }
    # @return [Types::PutResourcePolicyResponse]
    def put_resource_policy(params = {}, options = {})
      request = build_request(:put_resource_policy, params)
      request.send_request(options)
    end

    # <p>Revokes pipeline endpoints from specified endpoint IDs.</p>
    # @param [Hash, Types::RevokePipelineEndpointConnectionsRequest] params
    # @option params [String] :pipeline_arn
    #   <p>The Amazon Resource Name (ARN) of the pipeline from which to revoke endpoint
    #      connections.</p>
    # @option params [Array<String>] :endpoint_ids
    #   <p>A list of endpoint IDs for which to revoke access to the pipeline.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_arn: "PipelineArn", # required
    #     endpoint_ids: ["PipelineEndpointId"], # required
    #   }
    #   options = {}
    #   response = client.revoke_pipeline_endpoint_connections(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pipeline_arn: "PipelineArn"
    #   }
    # @return [Types::RevokePipelineEndpointConnectionsResponse]
    def revoke_pipeline_endpoint_connections(params = {}, options = {})
      request = build_request(:revoke_pipeline_endpoint_connections, params)
      request.send_request(options)
    end

    # <p>Starts an OpenSearch Ingestion pipeline. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/pipeline--stop-start.html#pipeline--start">Starting an OpenSearch Ingestion pipeline</a>.</p>
    # @param [Hash, Types::StartPipelineRequest] params
    # @option params [String] :pipeline_name
    #   <p>The name of the pipeline to start.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_name: "PipelineName", # required
    #   }
    #   options = {}
    #   response = client.start_pipeline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pipeline: {
    #       pipeline_name: "String",
    #       pipeline_arn: "String",
    #       min_units: 1,
    #       max_units: 1,
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "STARTING", "START_FAILED", "STOPPING", "STOPPED"],
    #       status_reason: {
    #         description: "String"
    #       },
    #       pipeline_configuration_body: "String",
    #       created_at: Time.now,
    #       last_updated_at: Time.now,
    #       ingest_endpoint_urls: ["String"],
    #       log_publishing_options: {
    #         is_logging_enabled: false,
    #         cloud_watch_log_destination: {
    #           log_group: "LogGroup", # required
    #         }
    #       },
    #       vpc_endpoints: [
    #         {
    #           vpc_endpoint_id: "String",
    #           vpc_id: "String",
    #           vpc_options: {
    #             subnet_ids: ["SubnetId"], # required
    #             security_group_ids: ["SecurityGroupId"],
    #             vpc_attachment_options: {
    #               attach_to_vpc: false, # required
    #               cidr_block: "CidrBlock"
    #             },
    #             vpc_endpoint_management: "CUSTOMER" # One of: ["CUSTOMER", "SERVICE"]
    #           }
    #         }
    #       ],
    #       buffer_options: {
    #         persistent_buffer_enabled: false, # required
    #       },
    #       encryption_at_rest_options: {
    #         kms_key_arn: "KmsKeyArn", # required
    #       },
    #       vpc_endpoint_service: "String",
    #       service_vpc_endpoints: [
    #         {
    #           service_name: "OPENSEARCH_SERVERLESS" # One of: ["OPENSEARCH_SERVERLESS"],
    #           vpc_endpoint_id: "String"
    #         }
    #       ],
    #       destinations: [
    #         {
    #           service_name: "String",
    #           endpoint: "String"
    #         }
    #       ],
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       pipeline_role_arn: "PipelineRoleArn"
    #     }
    #   }
    # @return [Types::StartPipelineResponse]
    def start_pipeline(params = {}, options = {})
      request = build_request(:start_pipeline, params)
      request.send_request(options)
    end

    # <p>Stops an OpenSearch Ingestion pipeline. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/pipeline--stop-start.html#pipeline--stop">Stopping
    #     an OpenSearch Ingestion pipeline</a>.</p>
    # @param [Hash, Types::StopPipelineRequest] params
    # @option params [String] :pipeline_name
    #   <p>The name of the pipeline to stop.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_name: "PipelineName", # required
    #   }
    #   options = {}
    #   response = client.stop_pipeline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pipeline: {
    #       pipeline_name: "String",
    #       pipeline_arn: "String",
    #       min_units: 1,
    #       max_units: 1,
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "STARTING", "START_FAILED", "STOPPING", "STOPPED"],
    #       status_reason: {
    #         description: "String"
    #       },
    #       pipeline_configuration_body: "String",
    #       created_at: Time.now,
    #       last_updated_at: Time.now,
    #       ingest_endpoint_urls: ["String"],
    #       log_publishing_options: {
    #         is_logging_enabled: false,
    #         cloud_watch_log_destination: {
    #           log_group: "LogGroup", # required
    #         }
    #       },
    #       vpc_endpoints: [
    #         {
    #           vpc_endpoint_id: "String",
    #           vpc_id: "String",
    #           vpc_options: {
    #             subnet_ids: ["SubnetId"], # required
    #             security_group_ids: ["SecurityGroupId"],
    #             vpc_attachment_options: {
    #               attach_to_vpc: false, # required
    #               cidr_block: "CidrBlock"
    #             },
    #             vpc_endpoint_management: "CUSTOMER" # One of: ["CUSTOMER", "SERVICE"]
    #           }
    #         }
    #       ],
    #       buffer_options: {
    #         persistent_buffer_enabled: false, # required
    #       },
    #       encryption_at_rest_options: {
    #         kms_key_arn: "KmsKeyArn", # required
    #       },
    #       vpc_endpoint_service: "String",
    #       service_vpc_endpoints: [
    #         {
    #           service_name: "OPENSEARCH_SERVERLESS" # One of: ["OPENSEARCH_SERVERLESS"],
    #           vpc_endpoint_id: "String"
    #         }
    #       ],
    #       destinations: [
    #         {
    #           service_name: "String",
    #           endpoint: "String"
    #         }
    #       ],
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       pipeline_role_arn: "PipelineRoleArn"
    #     }
    #   }
    # @return [Types::StopPipelineResponse]
    def stop_pipeline(params = {}, options = {})
      request = build_request(:stop_pipeline, params)
      request.send_request(options)
    end

    # <p>Tags an OpenSearch Ingestion pipeline. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-pipeline.html">Tagging Amazon OpenSearch
    #     Ingestion pipelines</a>.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the pipeline to tag.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The list of key-value tags to add to the pipeline.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "PipelineArn", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
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

    # <p>Removes one or more tags from an OpenSearch Ingestion pipeline. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-pipeline.html">Tagging
    #     Amazon OpenSearch Ingestion pipelines</a>.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the pipeline to remove tags from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys to remove.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     arn: "PipelineArn", # required
    #     tag_keys: ["String"], # required
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

    # <p>Updates an OpenSearch Ingestion pipeline. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/update-pipeline.html">Updating Amazon OpenSearch
    #     Ingestion pipelines</a>.</p>
    # @param [Hash, Types::UpdatePipelineRequest] params
    # @option params [String] :pipeline_name
    #   <p>The name of the pipeline to update.</p>
    # @option params [Integer] :min_units
    #   <p>The minimum pipeline capacity, in Ingestion Compute Units (ICUs).</p>
    # @option params [Integer] :max_units
    #   <p>The maximum pipeline capacity, in Ingestion Compute Units (ICUs)</p>
    # @option params [String] :pipeline_configuration_body
    #   <p>The pipeline configuration in YAML format. The command accepts the pipeline configuration as
    #      a string or within a .yaml file. If you provide the configuration as a string, each new line must
    #      be escaped with <code>\n</code>.</p>
    # @option params [Types::LogPublishingOptions] :log_publishing_options
    #   <p>Key-value pairs to configure log publishing.</p>
    # @option params [Types::BufferOptions] :buffer_options
    #   <p>Key-value pairs to configure persistent buffering for the pipeline.</p>
    # @option params [Types::EncryptionAtRestOptions] :encryption_at_rest_options
    #   <p>Key-value pairs to configure encryption for data that is written to a persistent
    #      buffer.</p>
    # @option params [String] :pipeline_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that grants the pipeline permission to access
    #      Amazon Web Services resources.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_name: "PipelineName", # required
    #     min_units: 1,
    #     max_units: 1,
    #     pipeline_configuration_body: "PipelineConfigurationBody",
    #     log_publishing_options: {
    #       is_logging_enabled: false,
    #       cloud_watch_log_destination: {
    #         log_group: "LogGroup", # required
    #       }
    #     },
    #     buffer_options: {
    #       persistent_buffer_enabled: false, # required
    #     },
    #     encryption_at_rest_options: {
    #       kms_key_arn: "KmsKeyArn", # required
    #     },
    #     pipeline_role_arn: "PipelineRoleArn"
    #   }
    #   options = {}
    #   response = client.update_pipeline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pipeline: {
    #       pipeline_name: "String",
    #       pipeline_arn: "String",
    #       min_units: 1,
    #       max_units: 1,
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATE_FAILED", "UPDATE_FAILED", "STARTING", "START_FAILED", "STOPPING", "STOPPED"],
    #       status_reason: {
    #         description: "String"
    #       },
    #       pipeline_configuration_body: "String",
    #       created_at: Time.now,
    #       last_updated_at: Time.now,
    #       ingest_endpoint_urls: ["String"],
    #       log_publishing_options: {
    #         is_logging_enabled: false,
    #         cloud_watch_log_destination: {
    #           log_group: "LogGroup", # required
    #         }
    #       },
    #       vpc_endpoints: [
    #         {
    #           vpc_endpoint_id: "String",
    #           vpc_id: "String",
    #           vpc_options: {
    #             subnet_ids: ["SubnetId"], # required
    #             security_group_ids: ["SecurityGroupId"],
    #             vpc_attachment_options: {
    #               attach_to_vpc: false, # required
    #               cidr_block: "CidrBlock"
    #             },
    #             vpc_endpoint_management: "CUSTOMER" # One of: ["CUSTOMER", "SERVICE"]
    #           }
    #         }
    #       ],
    #       buffer_options: {
    #         persistent_buffer_enabled: false, # required
    #       },
    #       encryption_at_rest_options: {
    #         kms_key_arn: "KmsKeyArn", # required
    #       },
    #       vpc_endpoint_service: "String",
    #       service_vpc_endpoints: [
    #         {
    #           service_name: "OPENSEARCH_SERVERLESS" # One of: ["OPENSEARCH_SERVERLESS"],
    #           vpc_endpoint_id: "String"
    #         }
    #       ],
    #       destinations: [
    #         {
    #           service_name: "String",
    #           endpoint: "String"
    #         }
    #       ],
    #       tags: [
    #         {
    #           key: "TagKey", # required
    #           value: "TagValue", # required
    #         }
    #       ],
    #       pipeline_role_arn: "PipelineRoleArn"
    #     }
    #   }
    # @return [Types::UpdatePipelineResponse]
    def update_pipeline(params = {}, options = {})
      request = build_request(:update_pipeline, params)
      request.send_request(options)
    end

    # <p>Checks whether an OpenSearch Ingestion pipeline configuration is valid prior to creation. For
    #    more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/creating-pipeline.html">Creating Amazon OpenSearch
    #     Ingestion pipelines</a>.</p>
    # @param [Hash, Types::ValidatePipelineRequest] params
    # @option params [String] :pipeline_configuration_body
    #   <p>The pipeline configuration in YAML format. The command accepts the pipeline configuration as
    #      a string or within a .yaml file. If you provide the configuration as a string, each new line must
    #      be escaped with <code>\n</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pipeline_configuration_body: "PipelineConfigurationBody", # required
    #   }
    #   options = {}
    #   response = client.validate_pipeline(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     is_valid: false,
    #     errors: [
    #       {
    #         message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ValidatePipelineResponse]
    def validate_pipeline(params = {}, options = {})
      request = build_request(:validate_pipeline, params)
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
      context[:gem_name] = 'aws-sdk-osis'
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
