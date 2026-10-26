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
require 'aws-sdk-core/rest_json'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:dsql)

module Aws::DSQL
  # An API client for Aws::DSQL.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::DSQL
    @identifier = :dsql

    add_plugin(::Aws::DSQL::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::DSQL::EndpointProvider)
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
    #  Supported protocols: +:rest_json+ (defaults to +:rest_json+).
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

    # <p>The CreateCluster API allows you to create both single-Region clusters and multi-Region clusters. With the addition of the <i>multiRegionProperties</i> parameter, you can create a cluster with witness Region support and establish peer relationships with clusters in other Regions during creation.</p> <note> <p>Creating multi-Region clusters requires additional IAM permissions beyond those needed for single-Region clusters, as detailed in the <b>Required permissions</b> section below.</p> </note> <p> <b>Required permissions</b> </p> <dl> <dt>dsql:CreateCluster</dt> <dd> <p>Required to create a cluster.</p> <p>Resources: <code>arn:aws:dsql:region:account-id:cluster/*</code> </p> </dd> <dt>dsql:TagResource</dt> <dd> <p>Permission to add tags to a resource.</p> <p>Resources: <code>arn:aws:dsql:region:account-id:cluster/*</code> </p> </dd> <dt>dsql:PutMultiRegionProperties</dt> <dd> <p>Permission to configure multi-Region properties for a cluster.</p> <p>Resources: <code>arn:aws:dsql:region:account-id:cluster/*</code> </p> </dd> <dt>dsql:AddPeerCluster</dt> <dd> <p>When specifying <code>multiRegionProperties.clusters</code>, permission to add peer clusters.</p> <p>Resources:</p> <ul> <li> <p>Local cluster: <code>arn:aws:dsql:region:account-id:cluster/*</code> </p> </li> <li> <p>Each peer cluster: exact ARN of each specified peer cluster</p> </li> </ul> </dd> <dt>dsql:PutWitnessRegion</dt> <dd> <p>When specifying <code>multiRegionProperties.witnessRegion</code>, permission to set a witness Region. This permission is checked both in the cluster Region and in the witness Region.</p> <p>Resources: <code>arn:aws:dsql:region:account-id:cluster/*</code> </p> <p>Condition Keys: <code>dsql:WitnessRegion</code> (matching the specified witness region)</p> </dd> </dl> <important> <ul> <li> <p>The witness Region specified in <code>multiRegionProperties.witnessRegion</code> cannot be the same as the cluster's Region.</p> </li> </ul> </important>
    # @param [Hash, Types::CreateClusterInput] params
    # @option params [Boolean] :deletion_protection_enabled
    #   <p>If enabled, you can't delete your cluster. You must first disable this property before you can delete your cluster.</p>
    # @option params [String] :kms_encryption_key
    #   <p>The KMS key that encrypts and protects the data on your cluster. You can specify the ARN, ID, or alias of an existing key or have Amazon Web Services create a default key for you.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of key and value pairs to use to tag your cluster.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Idempotency ensures that an API request completes only once. With an idempotent request, if the original request completes successfully, the subsequent retries with the same client token return the result from the original successful request and they have no additional effect.</p> <p>If you don't specify a client token, the Amazon Web Services SDK automatically generates one.</p>
    # @option params [Types::MultiRegionProperties] :multi_region_properties
    #   <p>The configuration settings when creating a multi-Region cluster, including the witness region and linked cluster properties.</p>
    # @option params [String] :policy
    #   <p>An optional resource-based policy document in JSON format that defines access permissions for the cluster.</p>
    # @option params [Boolean] :bypass_policy_lockout_safety_check
    #   <p>An optional field that controls whether to bypass the lockout prevention check. When set to true, this parameter allows you to apply a policy that might lock you out of the cluster. Use with caution.</p>
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
    #     },
    #     policy: "PolicyDocument",
    #     bypass_policy_lockout_safety_check: false
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
    #     endpoint: "Endpoint"
    #   }
    # @return [Types::CreateClusterOutput]
    def create_cluster(params = {}, options = {})
      request = build_request(:create_cluster, params)
      request.send_request(options)
    end

    # <p>Creates a new change data capture (CDC) stream for a cluster. The stream captures database changes and delivers them to the specified target destination.</p> <p> <b>Required permissions</b> </p> <dl> <dt>dsql:CreateStream</dt> <dd> <p>Permission to create a new stream.</p> <p>Resources: <code>arn:aws:dsql:region:account-id:cluster/cluster-id</code> </p> </dd> <dt>iam:PassRole</dt> <dd> <p>Permission to pass the IAM role specified in the target definition to the service.</p> <p>Resources: ARN of the IAM role specified in <code>targetDefinition.kinesis.roleArn</code> </p> </dd> <dt>kms:Decrypt</dt> <dd> <p>Required when the cluster uses a customer managed KMS key (CMK). Permission to decrypt data using the cluster's CMK.</p> <p>Resources: ARN of the KMS key used by the cluster</p> </dd> </dl>
    # @param [Hash, Types::CreateStreamInput] params
    # @option params [String] :cluster_identifier
    #   <p>The ID of the cluster for which to create the stream.</p>
    # @option params [Types::TargetDefinition] :target_definition
    #   <p>The target destination configuration for the stream. Contains Kinesis stream configuration including stream ARN and IAM role ARN.</p>
    # @option params [String] :ordering
    #   <p>The ordering mode for the stream. Determines how change events are ordered when delivered to the target.</p>
    # @option params [String] :format
    #   <p>The format of the stream records.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>A map of key and value pairs to use to tag your stream.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Idempotency ensures that an API request completes only once. With an idempotent request, if the original request completes successfully, the subsequent retries with the same client token return the result from the original successful request and they have no additional effect.</p> <p>If you don't specify a client token, the Amazon Web Services SDK automatically generates one.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "ClusterId", # required
    #     target_definition: { # required
    #       # One of:
    #       kinesis: {
    #         stream_arn: "KinesisStreamArn", # required
    #         role_arn: "RoleArn", # required
    #       }
    #     },
    #     ordering: "UNORDERED" # One of: ["UNORDERED"], # required
    #     format: "JSON" # One of: ["JSON"], # required
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster_identifier: "ClusterId", # required
    #     stream_identifier: "StreamId", # required
    #     arn: "StreamArn", # required
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "DELETED", "FAILED", "IMPAIRED"], # required
    #     creation_time: Time.now, # required
    #     ordering: "UNORDERED" # One of: ["UNORDERED"], # required
    #     format: "JSON" # One of: ["JSON"], # required
    #   }
    # @return [Types::CreateStreamOutput]
    def create_stream(params = {}, options = {})
      request = build_request(:create_stream, params)
      request.send_request(options)
    end

    # <p>Deletes a cluster in Amazon Aurora DSQL.</p>
    # @param [Hash, Types::DeleteClusterInput] params
    # @option params [String] :identifier
    #   <p>The ID of the cluster to delete.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Idempotency ensures that an API request completes only once. With an idempotent request, if the original request completes successfully. The subsequent retries with the same client token return the result from the original successful request and they have no additional effect.</p> <p>If you don't specify a client token, the Amazon Web Services SDK automatically generates one.</p>
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

    # <p>Deletes the resource-based policy attached to a cluster. This removes all access permissions defined by the policy, reverting to default access controls.</p>
    # @param [Hash, Types::DeleteClusterPolicyInput] params
    # @option params [String] :identifier
    #   <p>The ID of the cluster.</p>
    # @option params [String] :expected_policy_version
    #   <p>The expected version of the policy to delete. This parameter ensures that you're deleting the correct version of the policy and helps prevent accidental deletions.</p>
    # @option params [String] :client_token
    #   <p>Idempotency token so a request is only processed once.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "ClusterId", # required
    #     expected_policy_version: "PolicyVersion",
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_cluster_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_version: "PolicyVersion", # required
    #   }
    # @return [Types::DeleteClusterPolicyOutput]
    def delete_cluster_policy(params = {}, options = {})
      request = build_request(:delete_cluster_policy, params)
      request.send_request(options)
    end

    # <p>Deletes a stream from a cluster.</p>
    # @param [Hash, Types::DeleteStreamInput] params
    # @option params [String] :cluster_identifier
    #   <p>The ID of the cluster containing the stream to delete.</p>
    # @option params [String] :stream_identifier
    #   <p>The ID of the stream to delete.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Idempotency ensures that an API request completes only once. With an idempotent request, if the original request completes successfully, the subsequent retries with the same client token return the result from the original successful request and they have no additional effect.</p> <p>If you don't specify a client token, the Amazon Web Services SDK automatically generates one.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "ClusterId", # required
    #     stream_identifier: "StreamId", # required
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.delete_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster_identifier: "ClusterId", # required
    #     stream_identifier: "StreamId", # required
    #     arn: "StreamArn", # required
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "DELETED", "FAILED", "IMPAIRED"], # required
    #     creation_time: Time.now, # required
    #   }
    # @return [Types::DeleteStreamOutput]
    def delete_stream(params = {}, options = {})
      request = build_request(:delete_stream, params)
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
    #     },
    #     endpoint: "Endpoint"
    #   }
    # @return [Types::GetClusterOutput]
    def get_cluster(params = {}, options = {})
      request = build_request(:get_cluster, params)
      request.send_request(options)
    end

    # <p>Retrieves the resource-based policy document attached to a cluster. This policy defines the access permissions and conditions for the cluster.</p>
    # @param [Hash, Types::GetClusterPolicyInput] params
    # @option params [String] :identifier
    #   <p>The ID of the cluster to retrieve the policy from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "ClusterId", # required
    #   }
    #   options = {}
    #   response = client.get_cluster_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy: "PolicyDocument", # required
    #     policy_version: "PolicyVersion", # required
    #   }
    # @return [Types::GetClusterPolicyOutput]
    def get_cluster_policy(params = {}, options = {})
      request = build_request(:get_cluster_policy, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a stream.</p>
    # @param [Hash, Types::GetStreamInput] params
    # @option params [String] :cluster_identifier
    #   <p>The ID of the cluster containing the stream to retrieve.</p>
    # @option params [String] :stream_identifier
    #   <p>The ID of the stream to retrieve.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "ClusterId", # required
    #     stream_identifier: "StreamId", # required
    #   }
    #   options = {}
    #   response = client.get_stream(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster_identifier: "ClusterId", # required
    #     stream_identifier: "StreamId", # required
    #     arn: "StreamArn", # required
    #     status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "DELETED", "FAILED", "IMPAIRED"], # required
    #     creation_time: Time.now, # required
    #     ordering: "UNORDERED" # One of: ["UNORDERED"], # required
    #     format: "JSON" # One of: ["JSON"], # required
    #     target_definition: {
    #       # One of:
    #       kinesis: {
    #         stream_arn: "KinesisStreamArn", # required
    #         role_arn: "RoleArn", # required
    #       }
    #     },
    #     status_reason: {
    #       error: "KINESIS_THROUGHPUT_EXCEEDED" # One of: ["KINESIS_THROUGHPUT_EXCEEDED", "KINESIS_STREAM_NOT_FOUND", "ROLE_ACCESS_DENIED", "KINESIS_ACCESS_DENIED", "KINESIS_KMS_ACCESS_DENIED", "KINESIS_OVERSIZE_RECORD", "CLUSTER_CMK_INACCESSIBLE", "INTERNAL_ERROR"], # required
    #       updated_at: Time.now, # required
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetStreamOutput]
    def get_stream(params = {}, options = {})
      request = build_request(:get_stream, params)
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
    #     cluster_vpc_endpoint: "ClusterVpcEndpoint"
    #   }
    # @return [Types::GetVpcEndpointServiceNameOutput]
    def get_vpc_endpoint_service_name(params = {}, options = {})
      request = build_request(:get_vpc_endpoint_service_name, params)
      request.send_request(options)
    end

    # <p>Retrieves information about a list of clusters.</p>
    # @param [Hash, Types::ListClustersInput] params
    # @option params [Integer] :max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can use nextToken to display the next page of results.</p>
    # @option params [String] :next_token
    #   <p>If your initial ListClusters operation returns a nextToken, you can include the returned nextToken in following ListClusters operations, which returns results in the next page.</p>
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

    # <p>Retrieves information about a list of streams for a cluster.</p>
    # @param [Hash, Types::ListStreamsInput] params
    # @option params [String] :cluster_identifier
    #   <p>The ID of the cluster for which to list streams.</p>
    # @option params [Integer] :max_results
    #   <p>An optional parameter that specifies the maximum number of results to return. You can use nextToken to display the next page of results. Default: 10.</p>
    # @option params [String] :next_token
    #   <p>If your initial ListStreams operation returns a nextToken, you can include the returned nextToken in following ListStreams operations, which returns results in the next page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_identifier: "ClusterId", # required
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.list_streams(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "NextToken",
    #     streams: [ # required
    #       {
    #         cluster_identifier: "ClusterId", # required
    #         stream_identifier: "StreamId", # required
    #         arn: "StreamArn", # required
    #         creation_time: Time.now, # required
    #         status: "CREATING" # One of: ["CREATING", "ACTIVE", "DELETING", "DELETED", "FAILED", "IMPAIRED"], # required
    #       }
    #     ]
    #   }
    # @return [Types::ListStreamsOutput]
    def list_streams(params = {}, options = {})
      request = build_request(:list_streams, params)
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

    # <p>Attaches a resource-based policy to a cluster. This policy defines access permissions and conditions for the cluster, allowing you to control which principals can perform actions on the cluster.</p>
    # @param [Hash, Types::PutClusterPolicyInput] params
    # @option params [String] :identifier
    #   <p>The ID of the cluster.</p>
    # @option params [String] :policy
    #   <p>The resource-based policy document to attach to the cluster. This should be a valid JSON policy document that defines permissions and conditions.</p>
    # @option params [Boolean] :bypass_policy_lockout_safety_check
    #   <p>A flag that allows you to bypass the policy lockout safety check. When set to true, this parameter allows you to apply a policy that might lock you out of the cluster. Use with caution.</p>
    # @option params [String] :expected_policy_version
    #   <p>The expected version of the current policy. This parameter ensures that you're updating the correct version of the policy and helps prevent concurrent modification conflicts.</p>
    # @option params [String] :client_token
    #   <p>Idempotency token so a request is only processed once.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "ClusterId", # required
    #     policy: "PolicyDocument", # required
    #     bypass_policy_lockout_safety_check: false,
    #     expected_policy_version: "PolicyVersion",
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.put_cluster_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     policy_version: "PolicyVersion", # required
    #   }
    # @return [Types::PutClusterPolicyOutput]
    def put_cluster_policy(params = {}, options = {})
      request = build_request(:put_cluster_policy, params)
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

    # <p>The <i>UpdateCluster</i> API allows you to modify both single-Region and multi-Region cluster configurations. With the <i>multiRegionProperties</i> parameter, you can add or modify witness Region support and manage peer relationships with clusters in other Regions.</p> <note> <p>Note that updating multi-Region clusters requires additional IAM permissions beyond those needed for standard cluster updates, as detailed in the Permissions section.</p> </note> <p> <b>Required permissions</b> </p> <dl> <dt>dsql:UpdateCluster</dt> <dd> <p>Permission to update a DSQL cluster.</p> <p>Resources: <code>arn:aws:dsql:<i>region</i>:<i>account-id</i>:cluster/<i>cluster-id</i> </code> </p> </dd> </dl> <dl> <dt>dsql:PutMultiRegionProperties</dt> <dd> <p>Permission to configure multi-Region properties for a cluster.</p> <p>Resources: <code>arn:aws:dsql:<i>region</i>:<i>account-id</i>:cluster/<i>cluster-id</i> </code> </p> </dd> </dl> <dl> <dt>dsql:GetCluster</dt> <dd> <p>Permission to retrieve cluster information.</p> <p>Resources: <code>arn:aws:dsql:<i>region</i>:<i>account-id</i>:cluster/<i>cluster-id</i> </code> </p> </dd> <dt>dsql:AddPeerCluster</dt> <dd> <p>Permission to add peer clusters.</p> <p>Resources:</p> <ul> <li> <p>Local cluster: <code>arn:aws:dsql:<i>region</i>:<i>account-id</i>:cluster/<i>cluster-id</i> </code> </p> </li> <li> <p>Each peer cluster: exact ARN of each specified peer cluster</p> </li> </ul> </dd> <dt>dsql:RemovePeerCluster</dt> <dd> <p>Permission to remove peer clusters. When you list peer clusters in <code>multiRegionProperties.clusters</code>, you need this permission for each current peer cluster that your list omits.</p> <p>Resources:</p> <ul> <li> <p>Each removed peer cluster: exact ARN of each removed peer cluster, in its own Region</p> </li> </ul> </dd> </dl> <dl> <dt>dsql:PutWitnessRegion</dt> <dd> <p>Permission to set a witness Region.</p> <p>Resources: <code>arn:aws:dsql:<i>region</i>:<i>account-id</i>:cluster/<i>cluster-id</i> </code> </p> <p>Condition Keys: dsql:WitnessRegion (matching the specified witness Region)</p> <p> <b>This permission is checked both in the cluster Region and in the witness Region.</b> </p> </dd> </dl> <important> <ul> <li> <p>The witness Region specified in <code>multiRegionProperties.witnessRegion</code> cannot be the same as the cluster's Region.</p> </li> <li> <p>When you list peer clusters in <code>multiRegionProperties.clusters</code>, you need <code>dsql:AddPeerCluster</code> for every peer cluster in your request. You need <code>dsql:RemovePeerCluster</code> only for the peer clusters that the update removes.</p> </li> </ul> </important>
    # @param [Hash, Types::UpdateClusterInput] params
    # @option params [String] :identifier
    #   <p>The ID of the cluster you want to update.</p>
    # @option params [Boolean] :deletion_protection_enabled
    #   <p>Specifies whether to enable deletion protection in your cluster.</p>
    # @option params [String] :kms_encryption_key
    #   <p>The KMS key that encrypts and protects the data on your cluster. You can specify the ARN, ID, or alias of an existing key or have Amazon Web Services create a default key for you.</p> <p>To switch to the key owned by Amazon Web Services, specify the reserved value <code>AWS_OWNED_KMS_KEY</code>.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the request. Idempotency ensures that an API request completes only once. With an idempotent request, if the original request completes successfully. The subsequent retries with the same client token return the result from the original successful request and they have no additional effect.</p> <p>If you don't specify a client token, the Amazon Web Services SDK automatically generates one.</p>
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
        cluster_not_exists: Waiters::ClusterNotExists,
        stream_active: Waiters::StreamActive,
        stream_not_exists: Waiters::StreamNotExists
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

      # @api private
      def protocols
        {
          rest_json: Aws::Core::RestJson
        }
      end
    end
  end
end
