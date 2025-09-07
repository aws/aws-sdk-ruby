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
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/sigv4'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/json_rpc_protocol'

module Aws::OpenSearchServerless
  # An API client for Aws::OpenSearchServerless.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::OpenSearchServerless

    add_plugin(::Aws::OpenSearchServerless::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::SigV4)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)

    # @param options [Hash] Client options
    # @option options [String] :access_key_id
    # @option options [String] :account_id
    # @option options [Boolean] :adaptive_retry_wait_to_fill (true)
    #  When true, the request will sleep until there is sufficient client side capacity to retry
    #  the request. When false, the request will raise a `CapacityNotAvailableError` and will
    #  not retry instead of sleeping.
    # @option options [#resolve(context)] :auth_resolver (AuthResolver.new)
    #  An object that resolves authentication schemes for request signing
    # @option options [Boolean] :convert_params (true)
    #  When `true`, request parameters are coerced into the required types.
    # @option options [#identity] :credentials
    #  The credentials provider used to resolve credentials. Any object that responds to `#identity`
    #  and returns a {Aws::Core::Credentials}.
    # @option options [Boolean] :disable_host_prefix_injection
    #  When `true`, the SDK will not prepend the modeled host prefix to the endpoint.
    # @option options [Boolean] :disable_request_compression
    #  When `true`, the request body will not be compressed for supported operations.
    # @option options [String] :endpoint
    #  Custom Endpoint
    # @option options [Aws::OpenSearchServerless::EndpointProvider] :endpoint_provider
    #  The endpoint provider used to resolve endpoints. Any object that responds to `#resolve(parameters)`.
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
    #  TODO
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
    # @option options [Boolean] :use_dual_stack_endpoint
    #  TODO
    # @option options [Boolean] :use_fips_endpoint
    #  TODO
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>Returns attributes for one or more collections, including the collection endpoint and
    #             the OpenSearch Dashboards endpoint. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-manage.html">Creating and
    #                 managing Amazon OpenSearch Serverless collections</a>.</p>
    # @param [Hash, Types::BatchGetCollectionInput] params
    # @option params [Array<String>] :ids
    #   <p>A list of collection IDs. You can't provide names and IDs in the same request. The ID
    #               is part of the collection endpoint. You can also retrieve it using the <a href="https://docs.aws.amazon.com/opensearch-service/latest/ServerlessAPIReference/API_ListCollections.html">ListCollections</a> API.</p>
    # @option params [Array<String>] :names
    #   <p>A list of collection names. You can't provide names and IDs in the same
    #               request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ids: ["CollectionId"],
    #     names: ["CollectionName"]
    #   }
    #   options = {}
    #   response = client.batch_get_collection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     collection_details: [
    #       {
    #         id: "CollectionId",
    #         name: "CollectionName",
    #         status: "CollectionStatus",
    #         type: "CollectionType",
    #         description: "String",
    #         arn: "String",
    #         kms_key_arn: "String",
    #         standby_replicas: "StandbyReplicas",
    #         created_date: 1,
    #         last_modified_date: 1,
    #         collection_endpoint: "String",
    #         dashboard_endpoint: "String",
    #         failure_code: "String",
    #         failure_message: "String"
    #       }
    #     ],
    #     collection_error_details: [
    #       {
    #         id: "CollectionId",
    #         name: "CollectionName",
    #         error_message: "String",
    #         error_code: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetCollectionOutput]
    def batch_get_collection(params = {}, options = {})
      request = build_request(:batch_get_collection, params)
      request.send_request(options)
    end

    # <p>Returns a list of successful and failed retrievals for the OpenSearch Serverless indexes. For more
    #             information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-lifecycle.html#serverless-lifecycle-list">Viewing data lifecycle policies</a>.</p>
    # @param [Hash, Types::BatchGetEffectiveLifecyclePolicyRequest] params
    # @option params [Array<Types::LifecyclePolicyResourceIdentifier>] :resource_identifiers
    #   <p>The unique identifiers of policy types and resource names.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_identifiers: [ # required
    #       {
    #         type: "LifecyclePolicyType", # required
    #         resource: "ResourceName", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_get_effective_lifecycle_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     effective_lifecycle_policy_details: [
    #       {
    #         type: "LifecyclePolicyType",
    #         resource: "Resource",
    #         policy_name: "PolicyName",
    #         resource_type: "ResourceType",
    #         retention_period: "String",
    #         no_min_retention_period: false
    #       }
    #     ],
    #     effective_lifecycle_policy_error_details: [
    #       {
    #         type: "LifecyclePolicyType",
    #         resource: "Resource",
    #         error_message: "String",
    #         error_code: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetEffectiveLifecyclePolicyResponse]
    def batch_get_effective_lifecycle_policy(params = {}, options = {})
      request = build_request(:batch_get_effective_lifecycle_policy, params)
      request.send_request(options)
    end

    # <p>Returns one or more configured OpenSearch Serverless lifecycle policies. For more information, see
    #                 <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-lifecycle.html#serverless-lifecycle-list">Viewing data lifecycle policies</a>.</p>
    # @param [Hash, Types::BatchGetLifecyclePolicyRequest] params
    # @option params [Array<Types::LifecyclePolicyIdentifier>] :identifiers
    #   <p>The unique identifiers of policy types and policy names.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifiers: [ # required
    #       {
    #         type: "LifecyclePolicyType", # required
    #         name: "PolicyName", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_get_lifecycle_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     lifecycle_policy_details: [
    #       {
    #         type: "LifecyclePolicyType",
    #         name: "PolicyName",
    #         policy_version: "PolicyVersion",
    #         description: "PolicyDescription",
    #         policy: ""null"",
    #         created_date: 1,
    #         last_modified_date: 1
    #       }
    #     ],
    #     lifecycle_policy_error_details: [
    #       {
    #         type: "LifecyclePolicyType",
    #         name: "PolicyName",
    #         error_message: "String",
    #         error_code: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetLifecyclePolicyResponse]
    def batch_get_lifecycle_policy(params = {}, options = {})
      request = build_request(:batch_get_lifecycle_policy, params)
      request.send_request(options)
    end

    # <p>Returns attributes for one or more VPC endpoints associated with the current account.
    #             For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-vpc.html">Access
    #                 Amazon OpenSearch Serverless using an interface endpoint</a>.</p>
    # @param [Hash, Types::BatchGetVpcEndpointInput] params
    # @option params [Array<String>] :ids
    #   <p>A list of VPC endpoint identifiers.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     ids: ["VpcEndpointId"], # required
    #   }
    #   options = {}
    #   response = client.batch_get_vpc_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vpc_endpoint_details: [
    #       {
    #         id: "VpcEndpointId",
    #         name: "VpcEndpointName",
    #         vpc_id: "VpcId",
    #         subnet_ids: ["SubnetId"],
    #         security_group_ids: ["SecurityGroupId"],
    #         status: "VpcEndpointStatus",
    #         created_date: 1,
    #         failure_code: "String",
    #         failure_message: "String"
    #       }
    #     ],
    #     vpc_endpoint_error_details: [
    #       {
    #         id: "VpcEndpointId",
    #         error_message: "String",
    #         error_code: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchGetVpcEndpointOutput]
    def batch_get_vpc_endpoint(params = {}, options = {})
      request = build_request(:batch_get_vpc_endpoint, params)
      request.send_request(options)
    end

    # <p>Creates a data access policy for OpenSearch Serverless. Access policies limit access to collections
    #             and the resources within them, and allow a user to access that data irrespective of the
    #             access mechanism or network source. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-data-access.html">Data
    #                 access control for Amazon OpenSearch Serverless</a>.</p>
    # @param [Hash, Types::CreateAccessPolicyInput] params
    # @option params [String] :type
    #   <p>The type of policy.</p>
    # @option params [String] :name
    #   <p>The name of the policy.</p>
    # @option params [String] :description
    #   <p>A description of the policy. Typically used to store information about the permissions
    #               defined in the policy.</p>
    # @option params [String] :policy
    #   <p>The JSON policy document to use as the content for the policy.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier to ensure idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     type: "AccessPolicyType", # required
    #     name: "PolicyName", # required
    #     description: "PolicyDescription",
    #     policy: "PolicyDocument", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_access_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_policy_detail: {
    #       type: "AccessPolicyType",
    #       name: "PolicyName",
    #       policy_version: "PolicyVersion",
    #       description: "PolicyDescription",
    #       policy: ""null"",
    #       created_date: 1,
    #       last_modified_date: 1
    #     }
    #   }
    # @return [Types::CreateAccessPolicyOutput]
    def create_access_policy(params = {}, options = {})
      request = build_request(:create_access_policy, params)
      request.send_request(options)
    end

    # <p>Creates a new OpenSearch Serverless collection. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-manage.html">Creating and
    #                 managing Amazon OpenSearch Serverless collections</a>.</p>
    # @param [Hash, Types::CreateCollectionInput] params
    # @option params [String] :name
    #   <p>Name of the collection.</p>
    # @option params [String] :type
    #   <p>The type of collection.</p>
    # @option params [String] :description
    #   <p>Description of the collection.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An arbitrary set of tags (key–value pairs) to associate with the OpenSearch Serverless
    #               collection.</p>
    # @option params [String] :standby_replicas
    #   <p>Indicates whether standby replicas should be used for a collection.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier to ensure idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "CollectionName", # required
    #     type: "CollectionType",
    #     description: "String",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     standby_replicas: "StandbyReplicas",
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_collection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     create_collection_detail: {
    #       id: "CollectionId",
    #       name: "CollectionName",
    #       status: "CollectionStatus",
    #       type: "CollectionType",
    #       description: "String",
    #       arn: "String",
    #       kms_key_arn: "String",
    #       standby_replicas: "StandbyReplicas",
    #       created_date: 1,
    #       last_modified_date: 1
    #     }
    #   }
    # @return [Types::CreateCollectionOutput]
    def create_collection(params = {}, options = {})
      request = build_request(:create_collection, params)
      request.send_request(options)
    end

    # <p>Creates an index within an OpenSearch Serverless collection. Unlike other OpenSearch indexes, indexes
    #             created by this API are automatically configured to conduct automatic semantic
    #             enrichment ingestion and search. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-manage.html#serverless-semantic-enrichment">About automatic semantic enrichment</a> in the <i>OpenSearch User
    #                 Guide</i>.</p>
    # @param [Hash, Types::CreateIndexRequest] params
    # @option params [String] :id
    #   <p>The unique identifier of the collection in which to create the index.</p>
    # @option params [String] :index_name
    #   <p>The name of the index to create. Index names must be lowercase and can't begin with
    #               underscores (_) or hyphens (-).</p>
    # @option params [JSON] :index_schema
    #   <p>The JSON schema definition for the index, including field mappings and
    #               settings.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "CollectionId", # required
    #     index_name: "IndexName", # required
    #     index_schema: ""null""
    #   }
    #   options = {}
    #   response = client.create_index(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateIndexResponse]
    def create_index(params = {}, options = {})
      request = build_request(:create_index, params)
      request.send_request(options)
    end

    # <p>Creates a lifecyle policy to be applied to OpenSearch Serverless indexes. Lifecycle policies define
    #             the number of days or hours to retain the data on an OpenSearch Serverless index. For more information,
    #             see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-lifecycle.html#serverless-lifecycle-create">Creating data lifecycle policies</a>.</p>
    # @param [Hash, Types::CreateLifecyclePolicyRequest] params
    # @option params [String] :type
    #   <p>The type of lifecycle policy.</p>
    # @option params [String] :name
    #   <p>The name of the lifecycle policy.</p>
    # @option params [String] :description
    #   <p>A description of the lifecycle policy.</p>
    # @option params [String] :policy
    #   <p>The JSON policy document to use as the content for the lifecycle policy.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     type: "LifecyclePolicyType", # required
    #     name: "PolicyName", # required
    #     description: "PolicyDescription",
    #     policy: "PolicyDocument", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_lifecycle_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     lifecycle_policy_detail: {
    #       type: "LifecyclePolicyType",
    #       name: "PolicyName",
    #       policy_version: "PolicyVersion",
    #       description: "PolicyDescription",
    #       policy: ""null"",
    #       created_date: 1,
    #       last_modified_date: 1
    #     }
    #   }
    # @return [Types::CreateLifecyclePolicyResponse]
    def create_lifecycle_policy(params = {}, options = {})
      request = build_request(:create_lifecycle_policy, params)
      request.send_request(options)
    end

    # <p>Specifies a security configuration for OpenSearch Serverless. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-saml.html">SAML
    #                 authentication for Amazon OpenSearch Serverless</a>.</p>
    # @param [Hash, Types::CreateSecurityConfigInput] params
    # @option params [String] :type
    #   <p>The type of security configuration.</p>
    # @option params [String] :name
    #   <p>The name of the security configuration.</p>
    # @option params [String] :description
    #   <p>A description of the security configuration.</p>
    # @option params [Types::SamlConfigOptions] :saml_options
    #   <p>Describes SAML options in in the form of a key-value map. This field is required if
    #               you specify <code>SAML</code> for the <code>type</code> parameter.</p>
    # @option params [Types::CreateIamIdentityCenterConfigOptions] :iam_identity_center_options
    #   <p>Describes IAM Identity Center options in the form of a key-value map. This field is
    #               required if you specify iamidentitycenter for the type parameter.</p>
    # @option params [Types::IamFederationConfigOptions] :iam_federation_options
    #   <p>Describes IAM federation options in the form of a key-value map. This field is
    #               required if you specify <code>iamFederation</code> for the <code>type</code>
    #               parameter.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier to ensure idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     type: "SecurityConfigType", # required
    #     name: "ConfigName", # required
    #     description: "ConfigDescription",
    #     saml_options: {
    #       metadata: "samlMetadata", # required
    #       user_attribute: "samlUserAttribute",
    #       group_attribute: "samlGroupAttribute",
    #       open_search_serverless_entity_id: "openSearchServerlessEntityId",
    #       session_timeout: 1
    #     },
    #     iam_identity_center_options: {
    #       instance_arn: "IamIdentityCenterInstanceArn", # required
    #       user_attribute: "IamIdentityCenterUserAttribute",
    #       group_attribute: "IamIdentityCenterGroupAttribute"
    #     },
    #     iam_federation_options: {
    #       group_attribute: "iamFederationGroupAttribute",
    #       user_attribute: "iamFederationUserAttribute"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_security_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     security_config_detail: {
    #       id: "SecurityConfigId",
    #       type: "SecurityConfigType",
    #       config_version: "PolicyVersion",
    #       description: "ConfigDescription",
    #       saml_options: {
    #         metadata: "samlMetadata", # required
    #         user_attribute: "samlUserAttribute",
    #         group_attribute: "samlGroupAttribute",
    #         open_search_serverless_entity_id: "openSearchServerlessEntityId",
    #         session_timeout: 1
    #       },
    #       iam_identity_center_options: {
    #         instance_arn: "IamIdentityCenterInstanceArn",
    #         application_arn: "IamIdentityCenterApplicationArn",
    #         application_name: "String",
    #         application_description: "String",
    #         user_attribute: "IamIdentityCenterUserAttribute",
    #         group_attribute: "IamIdentityCenterGroupAttribute"
    #       },
    #       iam_federation_options: {
    #         group_attribute: "iamFederationGroupAttribute",
    #         user_attribute: "iamFederationUserAttribute"
    #       },
    #       created_date: 1,
    #       last_modified_date: 1
    #     }
    #   }
    # @return [Types::CreateSecurityConfigOutput]
    def create_security_config(params = {}, options = {})
      request = build_request(:create_security_config, params)
      request.send_request(options)
    end

    # <p>Creates a security policy to be used by one or more OpenSearch Serverless collections. Security
    #             policies provide access to a collection and its OpenSearch Dashboards endpoint from
    #             public networks or specific VPC endpoints. They also allow you to secure a collection
    #             with a KMS encryption key. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-network.html">Network
    #                 access for Amazon OpenSearch Serverless</a> and <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-encryption.html">Encryption
    #                 at rest for Amazon OpenSearch Serverless</a>.</p>
    # @param [Hash, Types::CreateSecurityPolicyInput] params
    # @option params [String] :type
    #   <p>The type of security policy.</p>
    # @option params [String] :name
    #   <p>The name of the policy.</p>
    # @option params [String] :description
    #   <p>A description of the policy. Typically used to store information about the permissions
    #               defined in the policy.</p>
    # @option params [String] :policy
    #   <p>The JSON policy document to use as the content for the new policy.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier to ensure idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     type: "SecurityPolicyType", # required
    #     name: "PolicyName", # required
    #     description: "PolicyDescription",
    #     policy: "PolicyDocument", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_security_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     security_policy_detail: {
    #       type: "SecurityPolicyType",
    #       name: "PolicyName",
    #       policy_version: "PolicyVersion",
    #       description: "PolicyDescription",
    #       policy: ""null"",
    #       created_date: 1,
    #       last_modified_date: 1
    #     }
    #   }
    # @return [Types::CreateSecurityPolicyOutput]
    def create_security_policy(params = {}, options = {})
      request = build_request(:create_security_policy, params)
      request.send_request(options)
    end

    # <p>Creates an OpenSearch Serverless-managed interface VPC endpoint. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-vpc.html">Access
    #                 Amazon OpenSearch Serverless using an interface endpoint</a>.</p>
    # @param [Hash, Types::CreateVpcEndpointInput] params
    # @option params [String] :name
    #   <p>The name of the interface endpoint.</p>
    # @option params [String] :vpc_id
    #   <p>The ID of the VPC from which you'll access OpenSearch Serverless.</p>
    # @option params [Array<String>] :subnet_ids
    #   <p>The ID of one or more subnets from which you'll access OpenSearch Serverless.</p>
    # @option params [Array<String>] :security_group_ids
    #   <p>The unique identifiers of the security groups that define the ports, protocols, and
    #               sources for inbound traffic that you are authorizing into your endpoint.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier to ensure idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "VpcEndpointName", # required
    #     vpc_id: "VpcId", # required
    #     subnet_ids: ["SubnetId"], # required
    #     security_group_ids: ["SecurityGroupId"],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_vpc_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     create_vpc_endpoint_detail: {
    #       id: "VpcEndpointId",
    #       name: "VpcEndpointName",
    #       status: "VpcEndpointStatus"
    #     }
    #   }
    # @return [Types::CreateVpcEndpointOutput]
    def create_vpc_endpoint(params = {}, options = {})
      request = build_request(:create_vpc_endpoint, params)
      request.send_request(options)
    end

    # <p>Deletes an OpenSearch Serverless access policy. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-data-access.html">Data
    #                 access control for Amazon OpenSearch Serverless</a>.</p>
    # @param [Hash, Types::DeleteAccessPolicyInput] params
    # @option params [String] :type
    #   <p>The type of policy.</p>
    # @option params [String] :name
    #   <p>The name of the policy to delete.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier to ensure idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     type: "AccessPolicyType", # required
    #     name: "PolicyName", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_access_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteAccessPolicyOutput]
    def delete_access_policy(params = {}, options = {})
      request = build_request(:delete_access_policy, params)
      request.send_request(options)
    end

    # <p>Deletes an OpenSearch Serverless collection. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-manage.html">Creating and
    #                 managing Amazon OpenSearch Serverless collections</a>.</p>
    # @param [Hash, Types::DeleteCollectionInput] params
    # @option params [String] :id
    #   <p>The unique identifier of the collection. For example, <code>1iu5usc406kd</code>. The
    #               ID is part of the collection endpoint. You can also retrieve it using the <a href="https://docs.aws.amazon.com/opensearch-service/latest/ServerlessAPIReference/API_ListCollections.html">ListCollections</a> API.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "CollectionId", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_collection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     delete_collection_detail: {
    #       id: "CollectionId",
    #       name: "CollectionName",
    #       status: "CollectionStatus"
    #     }
    #   }
    # @return [Types::DeleteCollectionOutput]
    def delete_collection(params = {}, options = {})
      request = build_request(:delete_collection, params)
      request.send_request(options)
    end

    # <p>Deletes an index from an OpenSearch Serverless collection. Be aware that the index might be
    #             configured to conduct automatic semantic enrichment ingestion and search. For more
    #             information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-manage.html#serverless-semantic-enrichment">About automatic semantic enrichment</a>.</p>
    # @param [Hash, Types::DeleteIndexRequest] params
    # @option params [String] :id
    #   <p>The unique identifier of the collection containing the index to delete.</p>
    # @option params [String] :index_name
    #   <p>The name of the index to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "CollectionId", # required
    #     index_name: "IndexName", # required
    #   }
    #   options = {}
    #   response = client.delete_index(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteIndexResponse]
    def delete_index(params = {}, options = {})
      request = build_request(:delete_index, params)
      request.send_request(options)
    end

    # <p>Deletes an OpenSearch Serverless lifecycle policy. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-lifecycle.html#serverless-lifecycle-delete">Deleting data lifecycle policies</a>.</p>
    # @param [Hash, Types::DeleteLifecyclePolicyRequest] params
    # @option params [String] :type
    #   <p>The type of lifecycle policy.</p>
    # @option params [String] :name
    #   <p>The name of the policy to delete.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier to ensure idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     type: "LifecyclePolicyType", # required
    #     name: "PolicyName", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_lifecycle_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteLifecyclePolicyResponse]
    def delete_lifecycle_policy(params = {}, options = {})
      request = build_request(:delete_lifecycle_policy, params)
      request.send_request(options)
    end

    # <p>Deletes a security configuration for OpenSearch Serverless. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-saml.html">SAML
    #                 authentication for Amazon OpenSearch Serverless</a>.</p>
    # @param [Hash, Types::DeleteSecurityConfigInput] params
    # @option params [String] :id
    #   <p>The security configuration identifier. For SAML the ID will be
    #                   <code>saml/&lt;accountId&gt;/&lt;idpProviderName&gt;</code>. For example,
    #                   <code>saml/123456789123/OKTADev</code>.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier to ensure idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "SecurityConfigId", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_security_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteSecurityConfigOutput]
    def delete_security_config(params = {}, options = {})
      request = build_request(:delete_security_config, params)
      request.send_request(options)
    end

    # <p>Deletes an OpenSearch Serverless security policy.</p>
    # @param [Hash, Types::DeleteSecurityPolicyInput] params
    # @option params [String] :type
    #   <p>The type of policy.</p>
    # @option params [String] :name
    #   <p>The name of the policy to delete.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier to ensure idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     type: "SecurityPolicyType", # required
    #     name: "PolicyName", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_security_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteSecurityPolicyOutput]
    def delete_security_policy(params = {}, options = {})
      request = build_request(:delete_security_policy, params)
      request.send_request(options)
    end

    # <p>Deletes an OpenSearch Serverless-managed interface endpoint. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-vpc.html">Access
    #                 Amazon OpenSearch Serverless using an interface endpoint</a>.</p>
    # @param [Hash, Types::DeleteVpcEndpointInput] params
    # @option params [String] :id
    #   <p>The VPC endpoint identifier.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier to ensure idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "VpcEndpointId", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_vpc_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     delete_vpc_endpoint_detail: {
    #       id: "VpcEndpointId",
    #       name: "VpcEndpointName",
    #       status: "VpcEndpointStatus"
    #     }
    #   }
    # @return [Types::DeleteVpcEndpointOutput]
    def delete_vpc_endpoint(params = {}, options = {})
      request = build_request(:delete_vpc_endpoint, params)
      request.send_request(options)
    end

    # <p>Returns an OpenSearch Serverless access policy. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-data-access.html">Data
    #                 access control for Amazon OpenSearch Serverless</a>.</p>
    # @param [Hash, Types::GetAccessPolicyInput] params
    # @option params [String] :type
    #   <p>Tye type of policy. Currently, the only supported value is <code>data</code>.</p>
    # @option params [String] :name
    #   <p>The name of the access policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     type: "AccessPolicyType", # required
    #     name: "PolicyName", # required
    #   }
    #   options = {}
    #   response = client.get_access_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_policy_detail: {
    #       type: "AccessPolicyType",
    #       name: "PolicyName",
    #       policy_version: "PolicyVersion",
    #       description: "PolicyDescription",
    #       policy: ""null"",
    #       created_date: 1,
    #       last_modified_date: 1
    #     }
    #   }
    # @return [Types::GetAccessPolicyOutput]
    def get_access_policy(params = {}, options = {})
      request = build_request(:get_access_policy, params)
      request.send_request(options)
    end

    # <p>Returns account-level settings related to OpenSearch Serverless.</p>
    # @param [Hash, Types::GetAccountSettingsInput] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_account_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_settings_detail: {
    #       capacity_limits: {
    #         max_indexing_capacity_in_ocu: 1,
    #         max_search_capacity_in_ocu: 1
    #       }
    #     }
    #   }
    # @return [Types::GetAccountSettingsOutput]
    def get_account_settings(params = {}, options = {})
      request = build_request(:get_account_settings, params)
      request.send_request(options)
    end

    # <p>Retrieves information about an index in an OpenSearch Serverless collection, including its schema
    #             definition. The index might be configured to conduct automatic semantic enrichment
    #             ingestion and search. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-manage.html#serverless-semantic-enrichment">About automatic semantic enrichment</a>.</p>
    # @param [Hash, Types::GetIndexRequest] params
    # @option params [String] :id
    #   <p>The unique identifier of the collection containing the index.</p>
    # @option params [String] :index_name
    #   <p>The name of the index to retrieve information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "CollectionId", # required
    #     index_name: "IndexName", # required
    #   }
    #   options = {}
    #   response = client.get_index(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     index_schema: ""null""
    #   }
    # @return [Types::GetIndexResponse]
    def get_index(params = {}, options = {})
      request = build_request(:get_index, params)
      request.send_request(options)
    end

    # <p>Returns statistical information about your OpenSearch Serverless access policies, security
    #             configurations, and security policies.</p>
    # @param [Hash, Types::GetPoliciesStatsInput] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_policies_stats(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_policy_stats: {
    #       data_policy_count: 1
    #     },
    #     security_policy_stats: {
    #       encryption_policy_count: 1,
    #       network_policy_count: 1
    #     },
    #     security_config_stats: {
    #       saml_config_count: 1
    #     },
    #     lifecycle_policy_stats: {
    #       retention_policy_count: 1
    #     },
    #     total_policy_count: 1
    #   }
    # @return [Types::GetPoliciesStatsOutput]
    def get_policies_stats(params = {}, options = {})
      request = build_request(:get_policies_stats, params)
      request.send_request(options)
    end

    # <p>Returns information about an OpenSearch Serverless security configuration. For more information, see
    #                 <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-saml.html">SAML
    #                 authentication for Amazon OpenSearch Serverless</a>.</p>
    # @param [Hash, Types::GetSecurityConfigInput] params
    # @option params [String] :id
    #   <p>The unique identifier of the security configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "SecurityConfigId", # required
    #   }
    #   options = {}
    #   response = client.get_security_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     security_config_detail: {
    #       id: "SecurityConfigId",
    #       type: "SecurityConfigType",
    #       config_version: "PolicyVersion",
    #       description: "ConfigDescription",
    #       saml_options: {
    #         metadata: "samlMetadata", # required
    #         user_attribute: "samlUserAttribute",
    #         group_attribute: "samlGroupAttribute",
    #         open_search_serverless_entity_id: "openSearchServerlessEntityId",
    #         session_timeout: 1
    #       },
    #       iam_identity_center_options: {
    #         instance_arn: "IamIdentityCenterInstanceArn",
    #         application_arn: "IamIdentityCenterApplicationArn",
    #         application_name: "String",
    #         application_description: "String",
    #         user_attribute: "IamIdentityCenterUserAttribute",
    #         group_attribute: "IamIdentityCenterGroupAttribute"
    #       },
    #       iam_federation_options: {
    #         group_attribute: "iamFederationGroupAttribute",
    #         user_attribute: "iamFederationUserAttribute"
    #       },
    #       created_date: 1,
    #       last_modified_date: 1
    #     }
    #   }
    # @return [Types::GetSecurityConfigOutput]
    def get_security_config(params = {}, options = {})
      request = build_request(:get_security_config, params)
      request.send_request(options)
    end

    # <p>Returns information about a configured OpenSearch Serverless security policy. For more information,
    #             see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-network.html">Network
    #                 access for Amazon OpenSearch Serverless</a> and <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-encryption.html">Encryption
    #                 at rest for Amazon OpenSearch Serverless</a>.</p>
    # @param [Hash, Types::GetSecurityPolicyInput] params
    # @option params [String] :type
    #   <p>The type of security policy.</p>
    # @option params [String] :name
    #   <p>The name of the security policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     type: "SecurityPolicyType", # required
    #     name: "PolicyName", # required
    #   }
    #   options = {}
    #   response = client.get_security_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     security_policy_detail: {
    #       type: "SecurityPolicyType",
    #       name: "PolicyName",
    #       policy_version: "PolicyVersion",
    #       description: "PolicyDescription",
    #       policy: ""null"",
    #       created_date: 1,
    #       last_modified_date: 1
    #     }
    #   }
    # @return [Types::GetSecurityPolicyOutput]
    def get_security_policy(params = {}, options = {})
      request = build_request(:get_security_policy, params)
      request.send_request(options)
    end

    # <p>Returns information about a list of OpenSearch Serverless access policies.</p>
    # @param [Hash, Types::ListAccessPoliciesInput] params
    # @option params [String] :type
    #   <p>The type of access policy.</p>
    # @option params [Array<String>] :resource
    #   <p>Resource filters (can be collections or indexes) that policies can apply to.</p>
    # @option params [String] :next_token
    #   <p>If your initial <code>ListAccessPolicies</code> operation returns a
    #                   <code>nextToken</code>, you can include the returned <code>nextToken</code> in
    #               subsequent <code>ListAccessPolicies</code> operations, which returns results in the next
    #               page.</p>
    # @option params [Integer] :max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can
    #               use <code>nextToken</code> to get the next page of results. The default is 20.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     type: "AccessPolicyType", # required
    #     resource: ["Resource"],
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_access_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_policy_summaries: [
    #       {
    #         type: "AccessPolicyType",
    #         name: "PolicyName",
    #         policy_version: "PolicyVersion",
    #         description: "PolicyDescription",
    #         created_date: 1,
    #         last_modified_date: 1
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListAccessPoliciesOutput]
    def list_access_policies(params = {}, options = {})
      request = build_request(:list_access_policies, params)
      request.send_request(options)
    end

    # <p>Lists all OpenSearch Serverless collections. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-manage.html">Creating and
    #                 managing Amazon OpenSearch Serverless collections</a>.</p>
    #          <note>
    #             <p>Make sure to include an empty request body {} if you don't include any collection
    #                 filters in the request.</p>
    #          </note>
    # @param [Hash, Types::ListCollectionsInput] params
    # @option params [Types::CollectionFilters] :collection_filters
    #   <p> A list of filter names and values that you can use for requests.</p>
    # @option params [String] :next_token
    #   <p>If your initial <code>ListCollections</code> operation returns a
    #                   <code>nextToken</code>, you can include the returned <code>nextToken</code> in
    #               subsequent <code>ListCollections</code> operations, which returns results in the next
    #               page.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return. Default is 20. You can use
    #                   <code>nextToken</code> to get the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     collection_filters: {
    #       name: "CollectionName",
    #       status: "CollectionStatus"
    #     },
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_collections(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     collection_summaries: [
    #       {
    #         id: "CollectionId",
    #         name: "CollectionName",
    #         status: "CollectionStatus",
    #         arn: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListCollectionsOutput]
    def list_collections(params = {}, options = {})
      request = build_request(:list_collections, params)
      request.send_request(options)
    end

    # <p>Returns a list of OpenSearch Serverless lifecycle policies. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-lifecycle.html#serverless-lifecycle-list">Viewing data lifecycle policies</a>.</p>
    # @param [Hash, Types::ListLifecyclePoliciesRequest] params
    # @option params [String] :type
    #   <p>The type of lifecycle policy.</p>
    # @option params [Array<String>] :resources
    #   <p>Resource filters that policies can apply to. Currently, the only supported resource
    #               type is <code>index</code>.</p>
    # @option params [String] :next_token
    #   <p>If your initial <code>ListLifecyclePolicies</code> operation returns a
    #                   <code>nextToken</code>, you can include the returned <code>nextToken</code> in
    #               subsequent <code>ListLifecyclePolicies</code> operations, which returns results in the
    #               next page.</p>
    # @option params [Integer] :max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can
    #               use use <code>nextToken</code> to get the next page of results. The default is
    #               10.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     type: "LifecyclePolicyType", # required
    #     resources: ["LifecycleResource"],
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_lifecycle_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     lifecycle_policy_summaries: [
    #       {
    #         type: "LifecyclePolicyType",
    #         name: "PolicyName",
    #         policy_version: "PolicyVersion",
    #         description: "PolicyDescription",
    #         created_date: 1,
    #         last_modified_date: 1
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListLifecyclePoliciesResponse]
    def list_lifecycle_policies(params = {}, options = {})
      request = build_request(:list_lifecycle_policies, params)
      request.send_request(options)
    end

    # <p>Returns information about configured OpenSearch Serverless security configurations. For more
    #             information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-saml.html">SAML
    #                 authentication for Amazon OpenSearch Serverless</a>.</p>
    # @param [Hash, Types::ListSecurityConfigsInput] params
    # @option params [String] :type
    #   <p>The type of security configuration.</p>
    # @option params [String] :next_token
    #   <p>If your initial <code>ListSecurityConfigs</code> operation returns a
    #                   <code>nextToken</code>, you can include the returned <code>nextToken</code> in
    #               subsequent <code>ListSecurityConfigs</code> operations, which returns results in the
    #               next page.</p>
    # @option params [Integer] :max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can
    #               use <code>nextToken</code> to get the next page of results. The default is 20.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     type: "SecurityConfigType", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_security_configs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     security_config_summaries: [
    #       {
    #         id: "SecurityConfigId",
    #         type: "SecurityConfigType",
    #         config_version: "PolicyVersion",
    #         description: "ConfigDescription",
    #         created_date: 1,
    #         last_modified_date: 1
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListSecurityConfigsOutput]
    def list_security_configs(params = {}, options = {})
      request = build_request(:list_security_configs, params)
      request.send_request(options)
    end

    # <p>Returns information about configured OpenSearch Serverless security policies.</p>
    # @param [Hash, Types::ListSecurityPoliciesInput] params
    # @option params [String] :type
    #   <p>The type of policy.</p>
    # @option params [Array<String>] :resource
    #   <p>Resource filters (can be collection or indexes) that policies can apply to. </p>
    # @option params [String] :next_token
    #   <p>If your initial <code>ListSecurityPolicies</code> operation returns a
    #                   <code>nextToken</code>, you can include the returned <code>nextToken</code> in
    #               subsequent <code>ListSecurityPolicies</code> operations, which returns results in the
    #               next page.</p>
    # @option params [Integer] :max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can
    #               use <code>nextToken</code> to get the next page of results. The default is 20.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     type: "SecurityPolicyType", # required
    #     resource: ["Resource"],
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_security_policies(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     security_policy_summaries: [
    #       {
    #         type: "SecurityPolicyType",
    #         name: "PolicyName",
    #         policy_version: "PolicyVersion",
    #         description: "PolicyDescription",
    #         created_date: 1,
    #         last_modified_date: 1
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListSecurityPoliciesOutput]
    def list_security_policies(params = {}, options = {})
      request = build_request(:list_security_policies, params)
      request.send_request(options)
    end

    # <p>Returns the tags for an OpenSearch Serverless resource. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-collection.html">Tagging
    #                 Amazon OpenSearch Serverless collections</a>.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. The resource must be active (not in
    #               the <code>DELETING</code> state), and must be owned by the account ID included in the
    #               request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
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
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Returns the OpenSearch Serverless-managed interface VPC endpoints associated with the current
    #             account. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-vpc.html">Access
    #                 Amazon OpenSearch Serverless using an interface endpoint</a>.</p>
    # @param [Hash, Types::ListVpcEndpointsInput] params
    # @option params [Types::VpcEndpointFilters] :vpc_endpoint_filters
    #   <p>Filter the results according to the current status of the VPC endpoint. Possible
    #               statuses are <code>CREATING</code>, <code>DELETING</code>, <code>UPDATING</code>,
    #                   <code>ACTIVE</code>, and <code>FAILED</code>.</p>
    # @option params [String] :next_token
    #   <p>If your initial <code>ListVpcEndpoints</code> operation returns a
    #                   <code>nextToken</code>, you can include the returned <code>nextToken</code> in
    #               subsequent <code>ListVpcEndpoints</code> operations, which returns results in the next
    #               page. </p>
    # @option params [Integer] :max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can
    #               use <code>nextToken</code> to get the next page of results. The default is 20.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     vpc_endpoint_filters: {
    #       status: "VpcEndpointStatus"
    #     },
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_vpc_endpoints(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     vpc_endpoint_summaries: [
    #       {
    #         id: "VpcEndpointId",
    #         name: "VpcEndpointName",
    #         status: "VpcEndpointStatus"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListVpcEndpointsOutput]
    def list_vpc_endpoints(params = {}, options = {})
      request = build_request(:list_vpc_endpoints, params)
      request.send_request(options)
    end

    # <p>Associates tags with an OpenSearch Serverless resource. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-collection.html">Tagging
    #                 Amazon OpenSearch Serverless collections</a>.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource. The resource must be active (not in
    #               the <code>DELETING</code> state), and must be owned by the account ID included in the
    #               request.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags (key-value pairs) to add to the resource. All tag keys in the request
    #               must be unique.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
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
    # @return [Types::TagResourceOutput]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes a tag or set of tags from an OpenSearch Serverless resource. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-collection.html">Tagging
    #                 Amazon OpenSearch Serverless collections</a>.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to remove tags from. The resource must
    #               be active (not in the <code>DELETING</code> state), and must be owned by the account ID
    #               included in the request.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag or set of tags to remove from the resource. All tag keys in the request must
    #               be unique.</p>
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

    # <p>Updates an OpenSearch Serverless access policy. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-data-access.html">Data
    #                 access control for Amazon OpenSearch Serverless</a>.</p>
    # @param [Hash, Types::UpdateAccessPolicyInput] params
    # @option params [String] :type
    #   <p>The type of policy.</p>
    # @option params [String] :name
    #   <p>The name of the policy.</p>
    # @option params [String] :policy_version
    #   <p>The version of the policy being updated.</p>
    # @option params [String] :description
    #   <p>A description of the policy. Typically used to store information about the permissions
    #               defined in the policy.</p>
    # @option params [String] :policy
    #   <p>The JSON policy document to use as the content for the policy.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier to ensure idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     type: "AccessPolicyType", # required
    #     name: "PolicyName", # required
    #     policy_version: "PolicyVersion", # required
    #     description: "PolicyDescription",
    #     policy: "PolicyDocument",
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_access_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     access_policy_detail: {
    #       type: "AccessPolicyType",
    #       name: "PolicyName",
    #       policy_version: "PolicyVersion",
    #       description: "PolicyDescription",
    #       policy: ""null"",
    #       created_date: 1,
    #       last_modified_date: 1
    #     }
    #   }
    # @return [Types::UpdateAccessPolicyOutput]
    def update_access_policy(params = {}, options = {})
      request = build_request(:update_access_policy, params)
      request.send_request(options)
    end

    # <p>Update the OpenSearch Serverless settings for the current Amazon Web Services account. For more
    #             information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-scaling.html">Managing
    #                 capacity limits for Amazon OpenSearch Serverless</a>.</p>
    # @param [Hash, Types::UpdateAccountSettingsInput] params
    # @option params [Types::CapacityLimits] :capacity_limits
    #   <p>The maximum capacity limits for all OpenSearch Serverless collections, in OpenSearch Compute Units
    #               (OCUs). These limits are used to scale your collections based on the current workload.
    #               For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-scaling.html">Managing
    #                   capacity limits for Amazon OpenSearch Serverless</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     capacity_limits: {
    #       max_indexing_capacity_in_ocu: 1,
    #       max_search_capacity_in_ocu: 1
    #     }
    #   }
    #   options = {}
    #   response = client.update_account_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_settings_detail: {
    #       capacity_limits: {
    #         max_indexing_capacity_in_ocu: 1,
    #         max_search_capacity_in_ocu: 1
    #       }
    #     }
    #   }
    # @return [Types::UpdateAccountSettingsOutput]
    def update_account_settings(params = {}, options = {})
      request = build_request(:update_account_settings, params)
      request.send_request(options)
    end

    # <p>Updates an OpenSearch Serverless collection.</p>
    # @param [Hash, Types::UpdateCollectionInput] params
    # @option params [String] :id
    #   <p>The unique identifier of the collection.</p>
    # @option params [String] :description
    #   <p>A description of the collection.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier to ensure idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "CollectionId", # required
    #     description: "String",
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_collection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     update_collection_detail: {
    #       id: "CollectionId",
    #       name: "CollectionName",
    #       status: "CollectionStatus",
    #       type: "CollectionType",
    #       description: "String",
    #       arn: "String",
    #       created_date: 1,
    #       last_modified_date: 1
    #     }
    #   }
    # @return [Types::UpdateCollectionOutput]
    def update_collection(params = {}, options = {})
      request = build_request(:update_collection, params)
      request.send_request(options)
    end

    # <p>Updates an existing index in an OpenSearch Serverless collection. This operation allows you to modify
    #             the index schema, including adding new fields or changing field mappings. You can also
    #             enable automatic semantic enrichment ingestion and search. For more information, see
    #                 <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-manage.html#serverless-semantic-enrichment">About automatic semantic enrichment</a>.</p>
    # @param [Hash, Types::UpdateIndexRequest] params
    # @option params [String] :id
    #   <p>The unique identifier of the collection containing the index to update.</p>
    # @option params [String] :index_name
    #   <p>The name of the index to update.</p>
    # @option params [JSON] :index_schema
    #   <p>The updated JSON schema definition for the index, including field mappings and
    #               settings. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "CollectionId", # required
    #     index_name: "IndexName", # required
    #     index_schema: ""null""
    #   }
    #   options = {}
    #   response = client.update_index(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateIndexResponse]
    def update_index(params = {}, options = {})
      request = build_request(:update_index, params)
      request.send_request(options)
    end

    # <p>Updates an OpenSearch Serverless access policy. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-lifecycle.html#serverless-lifecycle-update">Updating data lifecycle policies</a>.</p>
    # @param [Hash, Types::UpdateLifecyclePolicyRequest] params
    # @option params [String] :type
    #   <p> The type of lifecycle policy.</p>
    # @option params [String] :name
    #   <p>The name of the policy.</p>
    # @option params [String] :policy_version
    #   <p>The version of the policy being updated.</p>
    # @option params [String] :description
    #   <p>A description of the lifecycle policy.</p>
    # @option params [String] :policy
    #   <p>The JSON policy document to use as the content for the lifecycle policy.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier to ensure idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     type: "LifecyclePolicyType", # required
    #     name: "PolicyName", # required
    #     policy_version: "PolicyVersion", # required
    #     description: "PolicyDescription",
    #     policy: "PolicyDocument",
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_lifecycle_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     lifecycle_policy_detail: {
    #       type: "LifecyclePolicyType",
    #       name: "PolicyName",
    #       policy_version: "PolicyVersion",
    #       description: "PolicyDescription",
    #       policy: ""null"",
    #       created_date: 1,
    #       last_modified_date: 1
    #     }
    #   }
    # @return [Types::UpdateLifecyclePolicyResponse]
    def update_lifecycle_policy(params = {}, options = {})
      request = build_request(:update_lifecycle_policy, params)
      request.send_request(options)
    end

    # <p>Updates a security configuration for OpenSearch Serverless. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-saml.html">SAML
    #                 authentication for Amazon OpenSearch Serverless</a>.</p>
    # @param [Hash, Types::UpdateSecurityConfigInput] params
    # @option params [String] :id
    #   <p>The security configuration identifier. For SAML the ID will be
    #                   <code>saml/&lt;accountId&gt;/&lt;idpProviderName&gt;</code>. For example,
    #                   <code>saml/123456789123/OKTADev</code>.</p>
    # @option params [String] :config_version
    #   <p>The version of the security configuration to be updated. You can find the most recent
    #               version of a security configuration using the <code>GetSecurityPolicy</code>
    #               command.</p>
    # @option params [String] :description
    #   <p>A description of the security configuration.</p>
    # @option params [Types::SamlConfigOptions] :saml_options
    #   <p>SAML options in in the form of a key-value map.</p>
    # @option params [Types::UpdateIamIdentityCenterConfigOptions] :iam_identity_center_options_updates
    #   <p>Describes IAM Identity Center options in the form of a key-value map.</p>
    # @option params [Types::IamFederationConfigOptions] :iam_federation_options
    #   <p>Describes IAM federation options in the form of a key-value map for updating an
    #               existing security configuration. Use this field to modify IAM federation settings for
    #               the security configuration.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier to ensure idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "SecurityConfigId", # required
    #     config_version: "PolicyVersion", # required
    #     description: "ConfigDescription",
    #     saml_options: {
    #       metadata: "samlMetadata", # required
    #       user_attribute: "samlUserAttribute",
    #       group_attribute: "samlGroupAttribute",
    #       open_search_serverless_entity_id: "openSearchServerlessEntityId",
    #       session_timeout: 1
    #     },
    #     iam_identity_center_options_updates: {
    #       user_attribute: "IamIdentityCenterUserAttribute",
    #       group_attribute: "IamIdentityCenterGroupAttribute"
    #     },
    #     iam_federation_options: {
    #       group_attribute: "iamFederationGroupAttribute",
    #       user_attribute: "iamFederationUserAttribute"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_security_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     security_config_detail: {
    #       id: "SecurityConfigId",
    #       type: "SecurityConfigType",
    #       config_version: "PolicyVersion",
    #       description: "ConfigDescription",
    #       saml_options: {
    #         metadata: "samlMetadata", # required
    #         user_attribute: "samlUserAttribute",
    #         group_attribute: "samlGroupAttribute",
    #         open_search_serverless_entity_id: "openSearchServerlessEntityId",
    #         session_timeout: 1
    #       },
    #       iam_identity_center_options: {
    #         instance_arn: "IamIdentityCenterInstanceArn",
    #         application_arn: "IamIdentityCenterApplicationArn",
    #         application_name: "String",
    #         application_description: "String",
    #         user_attribute: "IamIdentityCenterUserAttribute",
    #         group_attribute: "IamIdentityCenterGroupAttribute"
    #       },
    #       iam_federation_options: {
    #         group_attribute: "iamFederationGroupAttribute",
    #         user_attribute: "iamFederationUserAttribute"
    #       },
    #       created_date: 1,
    #       last_modified_date: 1
    #     }
    #   }
    # @return [Types::UpdateSecurityConfigOutput]
    def update_security_config(params = {}, options = {})
      request = build_request(:update_security_config, params)
      request.send_request(options)
    end

    # <p>Updates an OpenSearch Serverless security policy. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-network.html">Network
    #                 access for Amazon OpenSearch Serverless</a> and <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-encryption.html">Encryption
    #                 at rest for Amazon OpenSearch Serverless</a>.</p>
    # @param [Hash, Types::UpdateSecurityPolicyInput] params
    # @option params [String] :type
    #   <p>The type of access policy.</p>
    # @option params [String] :name
    #   <p>The name of the policy.</p>
    # @option params [String] :policy_version
    #   <p>The version of the policy being updated.</p>
    # @option params [String] :description
    #   <p>A description of the policy. Typically used to store information about the permissions
    #               defined in the policy.</p>
    # @option params [String] :policy
    #   <p>The JSON policy document to use as the content for the new policy.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier to ensure idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     type: "SecurityPolicyType", # required
    #     name: "PolicyName", # required
    #     policy_version: "PolicyVersion", # required
    #     description: "PolicyDescription",
    #     policy: "PolicyDocument",
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_security_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     security_policy_detail: {
    #       type: "SecurityPolicyType",
    #       name: "PolicyName",
    #       policy_version: "PolicyVersion",
    #       description: "PolicyDescription",
    #       policy: ""null"",
    #       created_date: 1,
    #       last_modified_date: 1
    #     }
    #   }
    # @return [Types::UpdateSecurityPolicyOutput]
    def update_security_policy(params = {}, options = {})
      request = build_request(:update_security_policy, params)
      request.send_request(options)
    end

    # <p>Updates an OpenSearch Serverless-managed interface endpoint. For more information, see <a href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-vpc.html">Access
    #                 Amazon OpenSearch Serverless using an interface endpoint</a>.</p>
    # @param [Hash, Types::UpdateVpcEndpointInput] params
    # @option params [String] :id
    #   <p>The unique identifier of the interface endpoint to update.</p>
    # @option params [Array<String>] :add_subnet_ids
    #   <p>The ID of one or more subnets to add to the endpoint.</p>
    # @option params [Array<String>] :remove_subnet_ids
    #   <p>The unique identifiers of the subnets to remove from the endpoint.</p>
    # @option params [Array<String>] :add_security_group_ids
    #   <p>The unique identifiers of the security groups to add to the endpoint. Security groups
    #               define the ports, protocols, and sources for inbound traffic that you are authorizing
    #               into your endpoint.</p>
    # @option params [Array<String>] :remove_security_group_ids
    #   <p>The unique identifiers of the security groups to remove from the endpoint.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier to ensure idempotency of the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     id: "VpcEndpointId", # required
    #     add_subnet_ids: ["SubnetId"],
    #     remove_subnet_ids: ["SubnetId"],
    #     add_security_group_ids: ["SecurityGroupId"],
    #     remove_security_group_ids: ["SecurityGroupId"],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.update_vpc_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     update_vpc_endpoint_detail: {
    #       id: "VpcEndpointId",
    #       name: "VpcEndpointName",
    #       status: "VpcEndpointStatus",
    #       subnet_ids: ["SubnetId"],
    #       security_group_ids: ["SecurityGroupId"],
    #       last_modified_date: 1
    #     }
    #   }
    # @return [Types::UpdateVpcEndpointOutput]
    def update_vpc_endpoint(params = {}, options = {})
      request = build_request(:update_vpc_endpoint, params)
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
      context[:gem_name] = 'aws-sdk-opensearchserverless'
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
