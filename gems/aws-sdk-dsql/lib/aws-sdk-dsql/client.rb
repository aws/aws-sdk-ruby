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
require 'aws-sdk-core/plugins/rest_json_protocol'

module Aws::DSQL
  # An API client for Aws::DSQL.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::DSQL

    add_plugin(::Aws::DSQL::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)

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
    # @option options [Aws::DSQL::EndpointProvider] :endpoint_provider
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
    # @option options [Boolean] :use_fips_endpoint
    #  TODO
    # @option options [Boolean] :validate_params (true)
    #  When `true`, request parameters are validated before sending the request.
    def initialize(*options)
      super
    end

    # <p>The CreateCluster API allows you to create both single-region clusters and multi-Region
    #          clusters. With the addition of the <i>multiRegionProperties</i> parameter,
    #          you can create a cluster with witness Region support and establish peer relationships with
    #          clusters in other Regions during creation.</p>
    #          <note>
    #             <p>Creating multi-Region clusters requires additional IAM permissions beyond those
    #                needed for single-Region clusters, as detailed in the <b>Required permissions</b> section
    #             below.</p>
    #          </note>
    #          <p>
    #             <b>Required permissions</b>
    #          </p>
    #          <dl>
    #             <dt>dsql:CreateCluster</dt>
    #             <dd>
    #                <p>Required to create a cluster.</p>
    #                <p>Resources: <code>arn:aws:dsql:region:account-id:cluster/*</code>
    #                </p>
    #             </dd>
    #             <dt>dsql:TagResource</dt>
    #             <dd>
    #                <p>Permission to add tags to a resource.</p>
    #                <p>Resources: <code>arn:aws:dsql:region:account-id:cluster/*</code>
    #                </p>
    #             </dd>
    #             <dt>dsql:PutMultiRegionProperties</dt>
    #             <dd>
    #                <p>Permission to configure multi-region properties for a cluster.</p>
    #                <p>Resources: <code>arn:aws:dsql:region:account-id:cluster/*</code>
    #                </p>
    #             </dd>
    #             <dt>dsql:AddPeerCluster</dt>
    #             <dd>
    #                <p>When specifying <code>multiRegionProperties.clusters</code>, permission to
    #                   add peer clusters.</p>
    #                <p>Resources:</p>
    #                <ul>
    #                   <li>
    #                      <p>Local cluster: <code>arn:aws:dsql:region:account-id:cluster/*</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>Each peer cluster: exact ARN of each specified peer cluster</p>
    #                   </li>
    #                </ul>
    #             </dd>
    #             <dt>dsql:PutWitnessRegion</dt>
    #             <dd>
    #                <p>When specifying <code>multiRegionProperties.witnessRegion</code>, permission
    #                   to set a witness Region. This permission is checked both in the cluster Region and
    #                   in the witness Region.</p>
    #                <p>Resources: <code>arn:aws:dsql:region:account-id:cluster/*</code>
    #                </p>
    #                <p>Condition Keys: <code>dsql:WitnessRegion</code> (matching the specified witness region)</p>
    #             </dd>
    #          </dl>
    #          <important>
    #             <ul>
    #                <li>
    #                   <p>The witness Region specified in
    #                      <code>multiRegionProperties.witnessRegion</code> cannot be the same as the
    #                   cluster's Region.</p>
    #                </li>
    #             </ul>
    #          </important>
    # @param [Hash, Types::CreateClusterInput] params
    # @option params [Boolean] :deletion_protection_enabled
    #   <p>If enabled, you can't delete your cluster. You must first disable this property before
    #            you can delete your cluster.</p>
    # @option params [String] :kms_encryption_key
    #   <p>The KMS key that encrypts and protects the data on your cluster. You can specify the ARN, ID, or alias of an existing key or have Amazon Web Services create a default key for you.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of key and value pairs to use to tag your cluster.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, the subsequent retries with the
    #            same client token return the result from the original successful request and they have no
    #            additional effect.</p>
    #            <p>If you don't specify a client token, the Amazon Web Services SDK automatically generates
    #            one.</p>
    # @option params [Types::MultiRegionProperties] :multi_region_properties
    #   <p>The configuration settings when creating a multi-Region cluster, including the witness region and linked cluster properties.</p>
    # @example Create Cluster
    #   # Example operation for create_cluster
    #   params = {
    #     deletion_protection_enabled: false,
    #     tags: {
    #       "MyKey" => "MyValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_cluster(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     deletion_protection_enabled: false,
    #     kms_encryption_key: "KmsEncryptionKey",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken",
    #     multi_region_properties: {
    #       witness_region: "Region",
    #       clusters: ["ClusterArn"]
    #     }
    #   }
    #   options = {}
    #   response = client.create_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identifier: "ClusterId", # required
    #     arn: "ClusterArn", # required
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "IDLE", "INACTIVE", "UPDATING", "DELETING", "DELETED", "FAILED", "PENDING_SETUP", "PENDING_DELETE"], # required
    #     creation_time: Time.now, # required
    #     multi_region_properties: {
    #       witness_region: "Region",
    #       clusters: ["ClusterArn"]
    #     },
    #     encryption_details: {
    #       encryption_type: "AWS_OWNED_KMS_KEY" # One of: ["AWS_OWNED_KMS_KEY", "CUSTOMER_MANAGED_KMS_KEY"], # required
    #       kms_key_arn: "KmsKeyArn",
    #       encryption_status: "ENABLED" # One of: ["ENABLED", "UPDATING", "KMS_KEY_INACCESSIBLE", "ENABLING"], # required
    #     },
    #     deletion_protection_enabled: false, # required
    #   }
    # @return [Types::CreateClusterOutput]
    def create_cluster(params = {}, options = {})
      request = build_request(:create_cluster, params)
      request.send_request(options)
    end

    # <p>Deletes a cluster in Amazon Aurora DSQL.</p>
    # @param [Hash, Types::DeleteClusterInput] params
    # @option params [String] :identifier
    #   <p>The ID of the cluster to delete.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully. The subsequent retries with the
    #            same client token return the result from the original successful request and they have no
    #            additional effect.</p>
    #            <p>If you don't specify a client token, the Amazon Web Services SDK automatically generates
    #            one.</p>
    # @example Delete Cluster
    #   # Example operation for delete_cluster
    #   params = {
    #     identifier: "kiqenqglxyl2snyvkvnj2c3s2e"
    #   }
    #   options = {}
    #   response = client.delete_cluster(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "ClusterId", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identifier: "ClusterId", # required
    #     arn: "ClusterArn", # required
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "IDLE", "INACTIVE", "UPDATING", "DELETING", "DELETED", "FAILED", "PENDING_SETUP", "PENDING_DELETE"], # required
    #     creation_time: Time.now, # required
    #   }
    # @return [Types::DeleteClusterOutput]
    def delete_cluster(params = {}, options = {})
      request = build_request(:delete_cluster, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a cluster.</p>
    # @param [Hash, Types::GetClusterInput] params
    # @option params [String] :identifier
    #   <p>The ID of the cluster to retrieve.</p>
    # @example Get Cluster
    #   # Example operation for get_cluster
    #   params = {
    #     identifier: "kiqenqglxyl2snyvkvnj2c3s2e"
    #   }
    #   options = {}
    #   response = client.get_cluster(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "ClusterId", # required
    #   }
    #   options = {}
    #   response = client.get_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identifier: "ClusterId", # required
    #     arn: "ClusterArn", # required
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "IDLE", "INACTIVE", "UPDATING", "DELETING", "DELETED", "FAILED", "PENDING_SETUP", "PENDING_DELETE"], # required
    #     creation_time: Time.now, # required
    #     deletion_protection_enabled: false, # required
    #     multi_region_properties: {
    #       witness_region: "Region",
    #       clusters: ["ClusterArn"]
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     encryption_details: {
    #       encryption_type: "AWS_OWNED_KMS_KEY" # One of: ["AWS_OWNED_KMS_KEY", "CUSTOMER_MANAGED_KMS_KEY"], # required
    #       kms_key_arn: "KmsKeyArn",
    #       encryption_status: "ENABLED" # One of: ["ENABLED", "UPDATING", "KMS_KEY_INACCESSIBLE", "ENABLING"], # required
    #     }
    #   }
    # @return [Types::GetClusterOutput]
    def get_cluster(params = {}, options = {})
      request = build_request(:get_cluster, params)
      request.send_request(options)
    end

    # <p>Retrieves the VPC endpoint service name.</p>
    # @param [Hash, Types::GetVpcEndpointServiceNameInput] params
    # @option params [String] :identifier
    #   <p>The ID of the cluster to retrieve.</p>
    # @example Get VPC Endpoint Service Name
    #   # Example operation for get_vpc_endpoint_service_name
    #   params = {
    #     identifier: "kiqenqglxyl2snyvkvnj2c3s2e"
    #   }
    #   options = {}
    #   response = client.get_vpc_endpoint_service_name(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "ClusterId", # required
    #   }
    #   options = {}
    #   response = client.get_vpc_endpoint_service_name(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     service_name: "ServiceName", # required
    #   }
    # @return [Types::GetVpcEndpointServiceNameOutput]
    def get_vpc_endpoint_service_name(params = {}, options = {})
      request = build_request(:get_vpc_endpoint_service_name, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a list of clusters.</p>
    # @param [Hash, Types::ListClustersInput] params
    # @option params [Integer] :max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can
    #            use nextToken to display the next page of results.</p>
    # @option params [String] :next_token
    #   <p>If your initial ListClusters operation returns a nextToken, you can include the returned
    #            nextToken in following ListClusters operations, which returns results in the next
    #            page.</p>
    # @example List Clusters
    #   # Example operation for list_clusters
    #   params = {
    #     max_results: 20
    #   }
    #   options = {}
    #   response = client.list_clusters(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_clusters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     clusters: [ # required
    #       {
    #         identifier: "ClusterId", # required
    #         arn: "ClusterArn", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListClustersOutput]
    def list_clusters(params = {}, options = {})
      request = build_request(:list_clusters, params)
      request.send_request(options)
    end

    # <p>Lists all of the tags for a resource.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource for which you want to list the tags.</p>
    # @example List Tags For Resource
    #   # Example operation for list_tags_for_resource
    #   params = {
    #     resource_arn: "arn:aws:dsql:us-east-1:111111222222:cluster/kiqenqglxyl2snyvkvnj2c3s2e"
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
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
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Tags a resource with a map of key and value pairs.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource that you want to tag.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of key and value pairs to use to tag your resource.</p>
    # @example Tag Resource
    #   # Example operation for tag_resource
    #   params = {
    #     resource_arn: "arn:aws:dsql:us-east-1:111111222222:cluster/kiqenqglxyl2snyvkvnj2c3s2e",
    #     tags: {
    #       "MyKey" => "MyValue"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    #   response.to_h #=>
    #   {}
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
    # @return [Smithy::Schema::EmptyStructure]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes a tag from a resource.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource from which to remove tags.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The array of keys of the tags that you want to remove.</p>
    # @example Untag Resource
    #   # Example operation for untag_resource
    #   params = {
    #     resource_arn: "arn:aws:dsql:us-east-1:111111222222:cluster/kiqenqglxyl2snyvkvnj2c3s2e",
    #     tag_keys: [
    #       "MyKeyA",
    #       "MyKeyB"
    #     ]
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    #   response.to_h #=>
    #   {}
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
    # @return [Smithy::Schema::EmptyStructure]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>The <i>UpdateCluster</i> API allows you to modify both single-Region and multi-Region cluster configurations. With the <i>multiRegionProperties</i> parameter, you can add or modify witness Region support and manage peer relationships with clusters in other Regions.</p>
    #          <note>
    #             <p>Note that updating multi-region clusters requires additional IAM permissions beyond those needed for standard cluster updates, as detailed in the Permissions section.</p>
    #          </note>
    #          <p>
    #             <b>Required permissions</b>
    #          </p>
    #          <dl>
    #             <dt>dsql:UpdateCluster</dt>
    #             <dd>
    #                <p>Permission to update a DSQL cluster.</p>
    #                <p>Resources: <code>arn:aws:dsql:<i>region</i>:<i>account-id</i>:cluster/<i>cluster-id</i>
    #                   </code>
    #                </p>
    #             </dd>
    #          </dl>
    #          <dl>
    #             <dt>dsql:PutMultiRegionProperties</dt>
    #             <dd>
    #                <p>Permission to configure multi-Region properties for a cluster.</p>
    #                <p>Resources: <code>arn:aws:dsql:<i>region</i>:<i>account-id</i>:cluster/<i>cluster-id</i>
    #                   </code>
    #                </p>
    #             </dd>
    #          </dl>
    #          <dl>
    #             <dt>dsql:GetCluster</dt>
    #             <dd>
    #                <p>Permission to retrieve cluster information.</p>
    #                <p>Resources: <code>arn:aws:dsql:<i>region</i>:<i>account-id</i>:cluster/<i>cluster-id</i>
    #                   </code>
    #                </p>
    #             </dd>
    #             <dt>dsql:AddPeerCluster</dt>
    #             <dd>
    #                <p>Permission to add peer clusters.</p>
    #                <p>Resources:</p>
    #                <ul>
    #                   <li>
    #                      <p>Local cluster: <code>arn:aws:dsql:<i>region</i>:<i>account-id</i>:cluster/<i>cluster-id</i>
    #                         </code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>Each peer cluster: exact ARN of each specified peer cluster</p>
    #                   </li>
    #                </ul>
    #             </dd>
    #             <dt>dsql:RemovePeerCluster</dt>
    #             <dd>
    #                <p>Permission to remove peer clusters. The <i>dsql:RemovePeerCluster</i> permission
    #                   uses a wildcard ARN pattern to simplify permission management during updates.</p>
    #                <p>Resources:
    #                      <code>arn:aws:dsql:*:<i>account-id</i>:cluster/*</code>
    #                </p>
    #             </dd>
    #          </dl>
    #          <dl>
    #             <dt>dsql:PutWitnessRegion</dt>
    #             <dd>
    #                <p>Permission to set a witness Region.</p>
    #                <p>Resources: <code>arn:aws:dsql:<i>region</i>:<i>account-id</i>:cluster/<i>cluster-id</i>
    #                   </code>
    #                </p>
    #                <p>Condition Keys: dsql:WitnessRegion (matching the specified witness
    #                   Region)</p>
    #                <p>
    #                   <b>This permission is checked both in the cluster Region and in the witness
    #                         Region.</b>
    #                </p>
    #             </dd>
    #          </dl>
    #          <important>
    #             <ul>
    #                <li>
    #                   <p>The witness region specified in
    #                      <code>multiRegionProperties.witnessRegion</code> cannot be the same as the
    #                   cluster's Region.</p>
    #                </li>
    #                <li>
    #                   <p>When updating clusters with peer relationships, permissions are checked for both adding and removing peers.</p>
    #                </li>
    #                <li>
    #                   <p>The <code>dsql:RemovePeerCluster</code> permission uses a wildcard ARN pattern to simplify permission management during updates.</p>
    #                </li>
    #             </ul>
    #          </important>
    # @param [Hash, Types::UpdateClusterInput] params
    # @option params [String] :identifier
    #   <p>The ID of the cluster you want to update.</p>
    # @option params [Boolean] :deletion_protection_enabled
    #   <p>Specifies whether to enable deletion protection in your cluster.</p>
    # @option params [String] :kms_encryption_key
    #   <p>The KMS key that encrypts and protects the data on your cluster. You can specify the ARN, ID, or alias of an existing key or have Amazon Web Services create a default key for you.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully. The subsequent retries with the
    #            same client token return the result from the original successful request and they have no
    #            additional effect.</p>
    #            <p>If you don't specify a client token, the Amazon Web Services SDK automatically generates
    #            one.</p>
    # @option params [Types::MultiRegionProperties] :multi_region_properties
    #   <p>The new multi-Region cluster configuration settings to be applied during an update operation.</p>
    # @example Update Cluster
    #   # Example operation for update_cluster
    #   params = {
    #     identifier: "kiqenqglxyl2snyvkvnj2c3s2e",
    #     deletion_protection_enabled: false
    #   }
    #   options = {}
    #   response = client.update_cluster(params, options)
    #   response.to_h #=>
    #   {}
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "ClusterId", # required
    #     deletion_protection_enabled: false,
    #     kms_encryption_key: "KmsEncryptionKey",
    #     client_token: "ClientToken",
    #     multi_region_properties: {
    #       witness_region: "Region",
    #       clusters: ["ClusterArn"]
    #     }
    #   }
    #   options = {}
    #   response = client.update_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identifier: "ClusterId", # required
    #     arn: "ClusterArn", # required
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "IDLE", "INACTIVE", "UPDATING", "DELETING", "DELETED", "FAILED", "PENDING_SETUP", "PENDING_DELETE"], # required
    #     creation_time: Time.now, # required
    #   }
    # @return [Types::UpdateClusterOutput]
    def update_cluster(params = {}, options = {})
      request = build_request(:update_cluster, params)
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
      context[:gem_name] = 'aws-sdk-dsql'
      context[:gem_version] = '2.0.0.pre0'
      Smithy::Client::Request.new(handlers: handlers, context: context)
    end

    private

    def waiters
      {
        cluster_active: Waiters::ClusterActive,
        cluster_not_exists: Waiters::ClusterNotExists
      }
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
