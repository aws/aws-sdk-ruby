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
require 'aws-sdk-core/plugins/json_rpc_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:memorydb)

module Aws::MemoryDB
  # An API client for Aws::MemoryDB.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonMemoryDB
    @identifier = :memorydb

    add_plugin(::Aws::MemoryDB::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::JsonRpcProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::MemoryDB::EndpointProvider)
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

    # <p>Apply the service update to a list of clusters supplied. For more information on service updates and applying them, see <a href="https://docs.aws.amazon.com/MemoryDB/latest/devguide/managing-updates.html#applying-updates">Applying the service updates</a>.</p>
    # @param [Hash, Types::BatchUpdateClusterRequest] params
    # @option params [Array<String>] :cluster_names
    #   <p>The cluster names to apply the updates.</p>
    # @option params [Types::ServiceUpdateRequest] :service_update
    #   <p>The unique ID of the service update</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_names: ["String"], # required
    #     service_update: {
    #       service_update_name_to_apply: "String"
    #     }
    #   }
    #   options = {}
    #   response = client.batch_update_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     processed_clusters: [
    #       {
    #         name: "String",
    #         description: "String",
    #         status: "String",
    #         pending_updates: {
    #           resharding: {
    #             slot_migration: {
    #               progress_percentage: 1.0
    #             }
    #           },
    #           ac_ls: {
    #             acl_to_apply: "ACLName"
    #           },
    #           service_updates: [
    #             {
    #               service_update_name: "String",
    #               status: "available" # One of: ["available", "in-progress", "complete", "scheduled"]
    #             }
    #           ]
    #         },
    #         multi_region_cluster_name: "String",
    #         number_of_shards: 1,
    #         shards: [
    #           {
    #             name: "String",
    #             status: "String",
    #             slots: "String",
    #             nodes: [
    #               {
    #                 name: "String",
    #                 status: "String",
    #                 availability_zone: "String",
    #                 create_time: Time.now,
    #                 endpoint: {
    #                   address: "String",
    #                   port: 1
    #                 }
    #               }
    #             ],
    #             number_of_nodes: 1
    #           }
    #         ],
    #         availability_mode: "singleaz" # One of: ["singleaz", "multiaz"],
    #         cluster_endpoint: {
    #           address: "String",
    #           port: 1
    #         },
    #         node_type: "String",
    #         engine: "String",
    #         engine_version: "String",
    #         engine_patch_version: "String",
    #         parameter_group_name: "String",
    #         parameter_group_status: "String",
    #         security_groups: [
    #           {
    #             security_group_id: "String",
    #             status: "String"
    #           }
    #         ],
    #         subnet_group_name: "String",
    #         tls_enabled: false,
    #         kms_key_id: "String",
    #         arn: "String",
    #         sns_topic_arn: "String",
    #         sns_topic_status: "String",
    #         snapshot_retention_limit: 1,
    #         maintenance_window: "String",
    #         snapshot_window: "String",
    #         acl_name: "ACLName",
    #         auto_minor_version_upgrade: false,
    #         data_tiering: "true" # One of: ["true", "false"],
    #         network_type: "ipv4" # One of: ["ipv4", "ipv6", "dual_stack"],
    #         ip_discovery: "ipv4" # One of: ["ipv4", "ipv6"]
    #       }
    #     ],
    #     unprocessed_clusters: [
    #       {
    #         cluster_name: "String",
    #         error_type: "String",
    #         error_message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchUpdateClusterResponse]
    def batch_update_cluster(params = {}, options = {})
      request = build_request(:batch_update_cluster, params)
      request.send_request(options)
    end

    # <p>Makes a copy of an existing snapshot.</p>
    # @param [Hash, Types::CopySnapshotRequest] params
    # @option params [String] :source_snapshot_name
    #   <p>The name of an existing snapshot from which to make a copy.</p>
    # @option params [String] :target_snapshot_name
    #   <p>A name for the snapshot copy. MemoryDB does not permit overwriting a snapshot, therefore this name must be unique within its context - MemoryDB or an Amazon S3 bucket if exporting.</p>
    # @option params [String] :target_bucket
    #   <p>The Amazon S3 bucket to which the snapshot is exported. This parameter is used only when exporting a snapshot for external access.
    #          
    #          When using this parameter to export a snapshot, be sure MemoryDB has the needed permissions to this S3 bucket. For more information, see 
    #          
    #          <a href="https://docs.aws.amazon.com/MemoryDB/latest/devguide/snapshots-exporting.html">Step 2: Grant MemoryDB Access to Your Amazon S3 Bucket</a>. 
    #          
    #        </p>
    # @option params [String] :kms_key_id
    #   <p>The ID of the KMS key used to encrypt the target snapshot.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_snapshot_name: "String", # required
    #     target_snapshot_name: "String", # required
    #     target_bucket: "TargetBucket",
    #     kms_key_id: "KmsKeyId",
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.copy_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     snapshot: {
    #       name: "String",
    #       status: "String",
    #       source: "String",
    #       kms_key_id: "String",
    #       arn: "String",
    #       cluster_configuration: {
    #         name: "String",
    #         description: "String",
    #         node_type: "String",
    #         engine: "String",
    #         engine_version: "String",
    #         maintenance_window: "String",
    #         topic_arn: "String",
    #         port: 1,
    #         parameter_group_name: "String",
    #         subnet_group_name: "String",
    #         vpc_id: "String",
    #         snapshot_retention_limit: 1,
    #         snapshot_window: "String",
    #         num_shards: 1,
    #         shards: [
    #           {
    #             name: "String",
    #             configuration: {
    #               slots: "String",
    #               replica_count: 1
    #             },
    #             size: "String",
    #             snapshot_creation_time: Time.now
    #           }
    #         ],
    #         multi_region_parameter_group_name: "String",
    #         multi_region_cluster_name: "String"
    #       },
    #       data_tiering: "true" # One of: ["true", "false"]
    #     }
    #   }
    # @return [Types::CopySnapshotResponse]
    def copy_snapshot(params = {}, options = {})
      request = build_request(:copy_snapshot, params)
      request.send_request(options)
    end

    # <p>Creates an Access Control List. For more information, see <a href="https://docs.aws.amazon.com/MemoryDB/latest/devguide/clusters.acls.html">Authenticating users with Access Contol Lists (ACLs)</a>.</p>
    # @param [Hash, Types::CreateACLRequest] params
    # @option params [String] :acl_name
    #   <p>The name of the Access Control List.</p>
    # @option params [Array<String>] :user_names
    #   <p>The list of users that belong to the Access Control List.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     acl_name: "String", # required
    #     user_names: ["UserName"],
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_acl(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     acl: {
    #       name: "String",
    #       status: "String",
    #       user_names: ["UserName"],
    #       minimum_engine_version: "String",
    #       pending_changes: {
    #         user_names_to_remove: ["UserName"],
    #         user_names_to_add: ["UserName"]
    #       },
    #       clusters: ["String"],
    #       arn: "String"
    #     }
    #   }
    # @return [Types::CreateACLResponse]
    def create_acl(params = {}, options = {})
      request = build_request(:create_acl, params)
      request.send_request(options)
    end

    # <p>Creates a cluster. All nodes in the cluster run the same protocol-compliant engine software.</p>
    # @param [Hash, Types::CreateClusterRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of the cluster. This value must be unique as it also serves as the cluster identifier.</p>
    # @option params [String] :node_type
    #   <p>The compute and memory capacity of the nodes in the cluster.</p>
    # @option params [String] :multi_region_cluster_name
    #   <p>The name of the multi-Region cluster to be created.</p>
    # @option params [String] :parameter_group_name
    #   <p>The name of the parameter group associated with the cluster.</p>
    # @option params [String] :description
    #   <p>An optional description of the cluster.</p>
    # @option params [Integer] :num_shards
    #   <p>The number of shards the cluster will contain. The default value is 1. </p>
    # @option params [Integer] :num_replicas_per_shard
    #   <p>The number of replicas to apply to each shard. The default value is 1. The maximum is 5. </p>
    # @option params [String] :subnet_group_name
    #   <p>The name of the subnet group to be used for the cluster.</p>
    # @option params [Array<String>] :security_group_ids
    #   <p>A list of security group names to associate with this cluster.</p>
    # @option params [String] :maintenance_window
    #   <p>Specifies the weekly time range during which maintenance
    #            on the cluster is performed. It is specified as a range in
    #            the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum
    #            maintenance window is a 60 minute period.</p>
    #            <p>Valid values for <code>ddd</code> are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>sun</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>mon</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>tue</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>wed</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>thu</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>fri</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sat</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>sun:23:00-mon:01:30</code>
    #            </p>
    # @option params [Integer] :port
    #   <p>The port number on which each of the nodes accepts connections.</p>
    # @option params [String] :sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Simple Notification Service (SNS) topic to which notifications are sent.</p>
    # @option params [Boolean] :tls_enabled
    #   <p>A flag to enable in-transit encryption on the cluster.</p>
    # @option params [String] :kms_key_id
    #   <p>The ID of the KMS key used to encrypt the cluster.</p>
    # @option params [Array<String>] :snapshot_arns
    #   <p>A list of Amazon Resource Names (ARN) that uniquely identify the RDB snapshot files stored in Amazon S3. The snapshot files are used to populate the new cluster. The Amazon S3 object name in the ARN cannot contain any commas.</p>
    # @option params [String] :snapshot_name
    #   <p>The name of a snapshot from which to restore data into the new cluster. The snapshot status changes to restoring while the new cluster is being created.</p>
    # @option params [Integer] :snapshot_retention_limit
    #   <p>The number of days for which MemoryDB retains automatic snapshots before deleting them. For example, if you set SnapshotRetentionLimit to 5, a snapshot that was taken today is retained for 5 days before being deleted.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags to be added to this resource. Tags are comma-separated key,value pairs (e.g. Key=myKey, Value=myKeyValue. You can include multiple tags as shown following: Key=myKey, Value=myKeyValue Key=mySecondKey, Value=mySecondKeyValue.</p>
    # @option params [String] :snapshot_window
    #   <p>The daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of your shard.</p>
    #            <p>    Example: 05:00-09:00</p>
    #            <p>    If you do not specify this parameter, MemoryDB automatically chooses an appropriate time range.</p>
    # @option params [String] :acl_name
    #   <p>The name of the Access Control List to associate with the cluster.</p>
    # @option params [String] :engine
    #   <p>The name of the engine to be used for the cluster.</p>
    # @option params [String] :engine_version
    #   <p>The version number of the Redis OSS engine to be used for the cluster.</p>
    # @option params [Boolean] :auto_minor_version_upgrade
    #   <p>When set to true, the cluster will automatically receive minor engine version upgrades after launch.</p>
    # @option params [Boolean] :data_tiering
    #   <p>Enables data tiering. Data tiering is only supported for clusters using the r6gd node type. 
    #               This parameter must be set when using r6gd nodes. For more information, see <a href="https://docs.aws.amazon.com/memorydb/latest/devguide/data-tiering.html">Data tiering</a>.</p>
    # @option params [String] :network_type
    #   <p>Specifies the IP address type for the cluster. Valid values are 'ipv4', 'ipv6', or 'dual_stack'. When set to 'ipv4', the cluster will only be accessible via IPv4 addresses. When set to 'ipv6', the cluster will only be accessible via IPv6 addresses. When set to 'dual_stack', the cluster will be accessible via both IPv4 and IPv6 addresses. If not specified, the default is 'ipv4'.</p>
    # @option params [String] :ip_discovery
    #   <p>The mechanism for discovering IP addresses for the cluster discovery protocol. Valid values are 'ipv4' or 'ipv6'. When set to 'ipv4', cluster discovery functions such as cluster slots, cluster shards, and cluster nodes return IPv4 addresses for cluster nodes. When set to 'ipv6', the cluster discovery functions return IPv6 addresses for cluster nodes. The value must be compatible with the NetworkType parameter. If not specified, the default is 'ipv4'.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String", # required
    #     node_type: "String", # required
    #     multi_region_cluster_name: "String",
    #     parameter_group_name: "String",
    #     description: "String",
    #     num_shards: 1,
    #     num_replicas_per_shard: 1,
    #     subnet_group_name: "String",
    #     security_group_ids: ["String"],
    #     maintenance_window: "String",
    #     port: 1,
    #     sns_topic_arn: "String",
    #     tls_enabled: false,
    #     kms_key_id: "String",
    #     snapshot_arns: ["String"],
    #     snapshot_name: "String",
    #     snapshot_retention_limit: 1,
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ],
    #     snapshot_window: "String",
    #     acl_name: "ACLName", # required
    #     engine: "String",
    #     engine_version: "String",
    #     auto_minor_version_upgrade: false,
    #     data_tiering: false,
    #     network_type: "ipv4" # One of: ["ipv4", "ipv6", "dual_stack"],
    #     ip_discovery: "ipv4" # One of: ["ipv4", "ipv6"]
    #   }
    #   options = {}
    #   response = client.create_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       name: "String",
    #       description: "String",
    #       status: "String",
    #       pending_updates: {
    #         resharding: {
    #           slot_migration: {
    #             progress_percentage: 1.0
    #           }
    #         },
    #         ac_ls: {
    #           acl_to_apply: "ACLName"
    #         },
    #         service_updates: [
    #           {
    #             service_update_name: "String",
    #             status: "available" # One of: ["available", "in-progress", "complete", "scheduled"]
    #           }
    #         ]
    #       },
    #       multi_region_cluster_name: "String",
    #       number_of_shards: 1,
    #       shards: [
    #         {
    #           name: "String",
    #           status: "String",
    #           slots: "String",
    #           nodes: [
    #             {
    #               name: "String",
    #               status: "String",
    #               availability_zone: "String",
    #               create_time: Time.now,
    #               endpoint: {
    #                 address: "String",
    #                 port: 1
    #               }
    #             }
    #           ],
    #           number_of_nodes: 1
    #         }
    #       ],
    #       availability_mode: "singleaz" # One of: ["singleaz", "multiaz"],
    #       cluster_endpoint: {
    #         address: "String",
    #         port: 1
    #       },
    #       node_type: "String",
    #       engine: "String",
    #       engine_version: "String",
    #       engine_patch_version: "String",
    #       parameter_group_name: "String",
    #       parameter_group_status: "String",
    #       security_groups: [
    #         {
    #           security_group_id: "String",
    #           status: "String"
    #         }
    #       ],
    #       subnet_group_name: "String",
    #       tls_enabled: false,
    #       kms_key_id: "String",
    #       arn: "String",
    #       sns_topic_arn: "String",
    #       sns_topic_status: "String",
    #       snapshot_retention_limit: 1,
    #       maintenance_window: "String",
    #       snapshot_window: "String",
    #       acl_name: "ACLName",
    #       auto_minor_version_upgrade: false,
    #       data_tiering: "true" # One of: ["true", "false"],
    #       network_type: "ipv4" # One of: ["ipv4", "ipv6", "dual_stack"],
    #       ip_discovery: "ipv4" # One of: ["ipv4", "ipv6"]
    #     }
    #   }
    # @return [Types::CreateClusterResponse]
    def create_cluster(params = {}, options = {})
      request = build_request(:create_cluster, params)
      request.send_request(options)
    end

    # <p>Creates a new multi-Region cluster.</p>
    # @param [Hash, Types::CreateMultiRegionClusterRequest] params
    # @option params [String] :multi_region_cluster_name_suffix
    #   <p>A suffix to be added to the Multi-Region cluster name. Amazon MemoryDB automatically applies a prefix to the Multi-Region cluster Name when it is created. Each Amazon Region has its own prefix. For instance, a Multi-Region cluster Name created in the US-West-1 region will begin with "virxk", along with the suffix name you provide. The suffix guarantees uniqueness of the Multi-Region cluster name across multiple regions.</p>
    # @option params [String] :description
    #   <p>A description for the multi-Region cluster.</p>
    # @option params [String] :engine
    #   <p>The name of the engine to be used for the multi-Region cluster.</p>
    # @option params [String] :engine_version
    #   <p>The version of the engine to be used for the multi-Region cluster.</p>
    # @option params [String] :node_type
    #   <p>The node type to be used for the multi-Region cluster.</p>
    # @option params [String] :multi_region_parameter_group_name
    #   <p>The name of the multi-Region parameter group to be associated with the cluster.</p>
    # @option params [Integer] :num_shards
    #   <p>The number of shards for the multi-Region cluster.</p>
    # @option params [Boolean] :tls_enabled
    #   <p>Whether to enable TLS encryption for the multi-Region cluster.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags to be applied to the multi-Region cluster.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     multi_region_cluster_name_suffix: "String", # required
    #     description: "String",
    #     engine: "String",
    #     engine_version: "String",
    #     node_type: "String", # required
    #     multi_region_parameter_group_name: "String",
    #     num_shards: 1,
    #     tls_enabled: false,
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_multi_region_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     multi_region_cluster: {
    #       multi_region_cluster_name: "String",
    #       description: "String",
    #       status: "String",
    #       node_type: "String",
    #       engine: "String",
    #       engine_version: "String",
    #       number_of_shards: 1,
    #       clusters: [
    #         {
    #           cluster_name: "String",
    #           region: "String",
    #           status: "String",
    #           arn: "String"
    #         }
    #       ],
    #       multi_region_parameter_group_name: "String",
    #       tls_enabled: false,
    #       arn: "String"
    #     }
    #   }
    # @return [Types::CreateMultiRegionClusterResponse]
    def create_multi_region_cluster(params = {}, options = {})
      request = build_request(:create_multi_region_cluster, params)
      request.send_request(options)
    end

    # <p>Creates a new MemoryDB parameter group. A parameter group is a collection of parameters and their values that are applied to all of the nodes in any cluster. For 
    #          more information, see <a href="https://docs.aws.amazon.com/MemoryDB/latest/devguide/parametergroups.html">Configuring engine parameters using parameter groups</a>.
    #          
    #          </p>
    # @param [Hash, Types::CreateParameterGroupRequest] params
    # @option params [String] :parameter_group_name
    #   <p>The name of the parameter group.</p>
    # @option params [String] :family
    #   <p>The name of the parameter group family that the parameter group can be used with.</p>
    # @option params [String] :description
    #   <p>An optional description of the parameter group.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     parameter_group_name: "String", # required
    #     family: "String", # required
    #     description: "String",
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_parameter_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     parameter_group: {
    #       name: "String",
    #       family: "String",
    #       description: "String",
    #       arn: "String"
    #     }
    #   }
    # @return [Types::CreateParameterGroupResponse]
    def create_parameter_group(params = {}, options = {})
      request = build_request(:create_parameter_group, params)
      request.send_request(options)
    end

    # <p>Creates a copy of an entire cluster at a specific moment in time.</p>
    # @param [Hash, Types::CreateSnapshotRequest] params
    # @option params [String] :cluster_name
    #   <p>The snapshot is created from this cluster.</p>
    # @option params [String] :snapshot_name
    #   <p>A name for the snapshot being created.</p>
    # @option params [String] :kms_key_id
    #   <p>The ID of the KMS key used to encrypt the snapshot.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String", # required
    #     snapshot_name: "String", # required
    #     kms_key_id: "String",
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     snapshot: {
    #       name: "String",
    #       status: "String",
    #       source: "String",
    #       kms_key_id: "String",
    #       arn: "String",
    #       cluster_configuration: {
    #         name: "String",
    #         description: "String",
    #         node_type: "String",
    #         engine: "String",
    #         engine_version: "String",
    #         maintenance_window: "String",
    #         topic_arn: "String",
    #         port: 1,
    #         parameter_group_name: "String",
    #         subnet_group_name: "String",
    #         vpc_id: "String",
    #         snapshot_retention_limit: 1,
    #         snapshot_window: "String",
    #         num_shards: 1,
    #         shards: [
    #           {
    #             name: "String",
    #             configuration: {
    #               slots: "String",
    #               replica_count: 1
    #             },
    #             size: "String",
    #             snapshot_creation_time: Time.now
    #           }
    #         ],
    #         multi_region_parameter_group_name: "String",
    #         multi_region_cluster_name: "String"
    #       },
    #       data_tiering: "true" # One of: ["true", "false"]
    #     }
    #   }
    # @return [Types::CreateSnapshotResponse]
    def create_snapshot(params = {}, options = {})
      request = build_request(:create_snapshot, params)
      request.send_request(options)
    end

    # <p>Creates a subnet group. A subnet group is a collection of subnets (typically private) that you can designate for your clusters running in an Amazon Virtual Private Cloud (VPC) environment.
    #          
    #          When you create a cluster in an Amazon VPC, you must specify a subnet group. MemoryDB uses that subnet group to choose a subnet and IP addresses within that subnet to associate with your nodes. 
    #          For more information, see <a href="https://docs.aws.amazon.com/MemoryDB/latest/devguide/subnetgroups.html">Subnets and subnet groups</a>.</p>
    # @param [Hash, Types::CreateSubnetGroupRequest] params
    # @option params [String] :subnet_group_name
    #   <p>The name of the subnet group.</p>
    # @option params [String] :description
    #   <p>A description for the subnet group.</p>
    # @option params [Array<String>] :subnet_ids
    #   <p>A list of VPC subnet IDs for the subnet group.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subnet_group_name: "String", # required
    #     description: "String",
    #     subnet_ids: ["String"], # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_subnet_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subnet_group: {
    #       name: "String",
    #       description: "String",
    #       vpc_id: "String",
    #       subnets: [
    #         {
    #           identifier: "String",
    #           availability_zone: {
    #             name: "String"
    #           },
    #           supported_network_types: ["ipv4" # One of: ["ipv4", "ipv6", "dual_stack"]]
    #         }
    #       ],
    #       arn: "String",
    #       supported_network_types: ["ipv4" # One of: ["ipv4", "ipv6", "dual_stack"]]
    #     }
    #   }
    # @return [Types::CreateSubnetGroupResponse]
    def create_subnet_group(params = {}, options = {})
      request = build_request(:create_subnet_group, params)
      request.send_request(options)
    end

    # <p>Creates a MemoryDB user. For more information, see <a href="https://docs.aws.amazon.com/MemoryDB/latest/devguide/clusters.acls.html">Authenticating users with Access Contol Lists (ACLs)</a>.</p>
    # @param [Hash, Types::CreateUserRequest] params
    # @option params [String] :user_name
    #   <p>The name of the user. This value must be unique as it also serves as the user identifier.</p>
    # @option params [Types::AuthenticationMode] :authentication_mode
    #   <p>Denotes the user's authentication properties, such as whether it requires a password to authenticate.</p>
    # @option params [String] :access_string
    #   <p>Access permissions string used for this user.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "UserName", # required
    #     authentication_mode: { # required
    #       type: "password" # One of: ["password", "iam"],
    #       passwords: ["String"]
    #     },
    #     access_string: "AccessString", # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user: {
    #       name: "String",
    #       status: "String",
    #       access_string: "String",
    #       acl_names: ["ACLName"],
    #       minimum_engine_version: "String",
    #       authentication: {
    #         type: "password" # One of: ["password", "no-password", "iam"],
    #         password_count: 1
    #       },
    #       arn: "String"
    #     }
    #   }
    # @return [Types::CreateUserResponse]
    def create_user(params = {}, options = {})
      request = build_request(:create_user, params)
      request.send_request(options)
    end

    # <p>Deletes an Access Control List. The ACL must first be disassociated from the cluster before it can be deleted. For more information, see <a href="https://docs.aws.amazon.com/MemoryDB/latest/devguide/clusters.acls.html">Authenticating users with Access Contol Lists (ACLs)</a>.</p>
    # @param [Hash, Types::DeleteACLRequest] params
    # @option params [String] :acl_name
    #   <p>The name of the Access Control List to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     acl_name: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_acl(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     acl: {
    #       name: "String",
    #       status: "String",
    #       user_names: ["UserName"],
    #       minimum_engine_version: "String",
    #       pending_changes: {
    #         user_names_to_remove: ["UserName"],
    #         user_names_to_add: ["UserName"]
    #       },
    #       clusters: ["String"],
    #       arn: "String"
    #     }
    #   }
    # @return [Types::DeleteACLResponse]
    def delete_acl(params = {}, options = {})
      request = build_request(:delete_acl, params)
      request.send_request(options)
    end

    # <p>Deletes a cluster. It also deletes all associated nodes and node endpoints.</p>
    #          <note>
    #             <p>
    #                <code>CreateSnapshot</code> permission is required to create a final snapshot. 
    #          Without this permission, the API call will fail with an <code>Access Denied</code> exception.</p>
    #          </note>
    # @param [Hash, Types::DeleteClusterRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of the cluster to be deleted</p>
    # @option params [String] :multi_region_cluster_name
    #   <p>The name of the multi-Region cluster to be deleted.</p>
    # @option params [String] :final_snapshot_name
    #   <p>The user-supplied name of a final cluster snapshot. This is the unique name that identifies the snapshot. MemoryDB creates the snapshot, and then deletes the cluster immediately afterward.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String", # required
    #     multi_region_cluster_name: "String",
    #     final_snapshot_name: "String"
    #   }
    #   options = {}
    #   response = client.delete_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       name: "String",
    #       description: "String",
    #       status: "String",
    #       pending_updates: {
    #         resharding: {
    #           slot_migration: {
    #             progress_percentage: 1.0
    #           }
    #         },
    #         ac_ls: {
    #           acl_to_apply: "ACLName"
    #         },
    #         service_updates: [
    #           {
    #             service_update_name: "String",
    #             status: "available" # One of: ["available", "in-progress", "complete", "scheduled"]
    #           }
    #         ]
    #       },
    #       multi_region_cluster_name: "String",
    #       number_of_shards: 1,
    #       shards: [
    #         {
    #           name: "String",
    #           status: "String",
    #           slots: "String",
    #           nodes: [
    #             {
    #               name: "String",
    #               status: "String",
    #               availability_zone: "String",
    #               create_time: Time.now,
    #               endpoint: {
    #                 address: "String",
    #                 port: 1
    #               }
    #             }
    #           ],
    #           number_of_nodes: 1
    #         }
    #       ],
    #       availability_mode: "singleaz" # One of: ["singleaz", "multiaz"],
    #       cluster_endpoint: {
    #         address: "String",
    #         port: 1
    #       },
    #       node_type: "String",
    #       engine: "String",
    #       engine_version: "String",
    #       engine_patch_version: "String",
    #       parameter_group_name: "String",
    #       parameter_group_status: "String",
    #       security_groups: [
    #         {
    #           security_group_id: "String",
    #           status: "String"
    #         }
    #       ],
    #       subnet_group_name: "String",
    #       tls_enabled: false,
    #       kms_key_id: "String",
    #       arn: "String",
    #       sns_topic_arn: "String",
    #       sns_topic_status: "String",
    #       snapshot_retention_limit: 1,
    #       maintenance_window: "String",
    #       snapshot_window: "String",
    #       acl_name: "ACLName",
    #       auto_minor_version_upgrade: false,
    #       data_tiering: "true" # One of: ["true", "false"],
    #       network_type: "ipv4" # One of: ["ipv4", "ipv6", "dual_stack"],
    #       ip_discovery: "ipv4" # One of: ["ipv4", "ipv6"]
    #     }
    #   }
    # @return [Types::DeleteClusterResponse]
    def delete_cluster(params = {}, options = {})
      request = build_request(:delete_cluster, params)
      request.send_request(options)
    end

    # <p>Deletes an existing multi-Region cluster.</p>
    # @param [Hash, Types::DeleteMultiRegionClusterRequest] params
    # @option params [String] :multi_region_cluster_name
    #   <p>The name of the multi-Region cluster to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     multi_region_cluster_name: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_multi_region_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     multi_region_cluster: {
    #       multi_region_cluster_name: "String",
    #       description: "String",
    #       status: "String",
    #       node_type: "String",
    #       engine: "String",
    #       engine_version: "String",
    #       number_of_shards: 1,
    #       clusters: [
    #         {
    #           cluster_name: "String",
    #           region: "String",
    #           status: "String",
    #           arn: "String"
    #         }
    #       ],
    #       multi_region_parameter_group_name: "String",
    #       tls_enabled: false,
    #       arn: "String"
    #     }
    #   }
    # @return [Types::DeleteMultiRegionClusterResponse]
    def delete_multi_region_cluster(params = {}, options = {})
      request = build_request(:delete_multi_region_cluster, params)
      request.send_request(options)
    end

    # <p>Deletes the specified parameter group. You cannot delete a parameter group if it is associated with any clusters. 
    #          You cannot delete the default parameter groups in your account.</p>
    # @param [Hash, Types::DeleteParameterGroupRequest] params
    # @option params [String] :parameter_group_name
    #   <p>The name of the parameter group to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     parameter_group_name: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_parameter_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     parameter_group: {
    #       name: "String",
    #       family: "String",
    #       description: "String",
    #       arn: "String"
    #     }
    #   }
    # @return [Types::DeleteParameterGroupResponse]
    def delete_parameter_group(params = {}, options = {})
      request = build_request(:delete_parameter_group, params)
      request.send_request(options)
    end

    # <p>Deletes an existing snapshot. When you receive a successful response from this operation, MemoryDB immediately begins deleting the snapshot; you cannot cancel or revert this operation.</p>
    # @param [Hash, Types::DeleteSnapshotRequest] params
    # @option params [String] :snapshot_name
    #   <p>The name of the snapshot to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     snapshot_name: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_snapshot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     snapshot: {
    #       name: "String",
    #       status: "String",
    #       source: "String",
    #       kms_key_id: "String",
    #       arn: "String",
    #       cluster_configuration: {
    #         name: "String",
    #         description: "String",
    #         node_type: "String",
    #         engine: "String",
    #         engine_version: "String",
    #         maintenance_window: "String",
    #         topic_arn: "String",
    #         port: 1,
    #         parameter_group_name: "String",
    #         subnet_group_name: "String",
    #         vpc_id: "String",
    #         snapshot_retention_limit: 1,
    #         snapshot_window: "String",
    #         num_shards: 1,
    #         shards: [
    #           {
    #             name: "String",
    #             configuration: {
    #               slots: "String",
    #               replica_count: 1
    #             },
    #             size: "String",
    #             snapshot_creation_time: Time.now
    #           }
    #         ],
    #         multi_region_parameter_group_name: "String",
    #         multi_region_cluster_name: "String"
    #       },
    #       data_tiering: "true" # One of: ["true", "false"]
    #     }
    #   }
    # @return [Types::DeleteSnapshotResponse]
    def delete_snapshot(params = {}, options = {})
      request = build_request(:delete_snapshot, params)
      request.send_request(options)
    end

    # <p>Deletes a subnet group. You cannot delete a default subnet group or one that is associated with any clusters.</p>
    # @param [Hash, Types::DeleteSubnetGroupRequest] params
    # @option params [String] :subnet_group_name
    #   <p>The name of the subnet group to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subnet_group_name: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_subnet_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subnet_group: {
    #       name: "String",
    #       description: "String",
    #       vpc_id: "String",
    #       subnets: [
    #         {
    #           identifier: "String",
    #           availability_zone: {
    #             name: "String"
    #           },
    #           supported_network_types: ["ipv4" # One of: ["ipv4", "ipv6", "dual_stack"]]
    #         }
    #       ],
    #       arn: "String",
    #       supported_network_types: ["ipv4" # One of: ["ipv4", "ipv6", "dual_stack"]]
    #     }
    #   }
    # @return [Types::DeleteSubnetGroupResponse]
    def delete_subnet_group(params = {}, options = {})
      request = build_request(:delete_subnet_group, params)
      request.send_request(options)
    end

    # <p>Deletes a user. The user will be removed from all ACLs and in turn removed from all clusters.</p>
    # @param [Hash, Types::DeleteUserRequest] params
    # @option params [String] :user_name
    #   <p>The name of the user to delete</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "UserName", # required
    #   }
    #   options = {}
    #   response = client.delete_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user: {
    #       name: "String",
    #       status: "String",
    #       access_string: "String",
    #       acl_names: ["ACLName"],
    #       minimum_engine_version: "String",
    #       authentication: {
    #         type: "password" # One of: ["password", "no-password", "iam"],
    #         password_count: 1
    #       },
    #       arn: "String"
    #     }
    #   }
    # @return [Types::DeleteUserResponse]
    def delete_user(params = {}, options = {})
      request = build_request(:delete_user, params)
      request.send_request(options)
    end

    # <p>Returns a list of ACLs.</p>
    # @param [Hash, Types::DescribeACLsRequest] params
    # @option params [String] :acl_name
    #   <p>The name of the ACL.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    # @option params [String] :next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     acl_name: "String",
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_ac_ls(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ac_ls: [
    #       {
    #         name: "String",
    #         status: "String",
    #         user_names: ["UserName"],
    #         minimum_engine_version: "String",
    #         pending_changes: {
    #           user_names_to_remove: ["UserName"],
    #           user_names_to_add: ["UserName"]
    #         },
    #         clusters: ["String"],
    #         arn: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeACLsResponse]
    def describe_ac_ls(params = {}, options = {})
      request = build_request(:describe_ac_ls, params)
      request.send_request(options)
    end

    # <p>Returns information about all provisioned clusters if no cluster identifier is specified, or about a specific cluster if a cluster name is supplied.</p>
    # @param [Hash, Types::DescribeClustersRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of the cluster.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    # @option params [String] :next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    # @option params [Boolean] :show_shard_details
    #   <p>An optional flag that can be included in the request to retrieve information about the individual shard(s).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String",
    #     max_results: 1,
    #     next_token: "String",
    #     show_shard_details: false
    #   }
    #   options = {}
    #   response = client.describe_clusters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     clusters: [
    #       {
    #         name: "String",
    #         description: "String",
    #         status: "String",
    #         pending_updates: {
    #           resharding: {
    #             slot_migration: {
    #               progress_percentage: 1.0
    #             }
    #           },
    #           ac_ls: {
    #             acl_to_apply: "ACLName"
    #           },
    #           service_updates: [
    #             {
    #               service_update_name: "String",
    #               status: "available" # One of: ["available", "in-progress", "complete", "scheduled"]
    #             }
    #           ]
    #         },
    #         multi_region_cluster_name: "String",
    #         number_of_shards: 1,
    #         shards: [
    #           {
    #             name: "String",
    #             status: "String",
    #             slots: "String",
    #             nodes: [
    #               {
    #                 name: "String",
    #                 status: "String",
    #                 availability_zone: "String",
    #                 create_time: Time.now,
    #                 endpoint: {
    #                   address: "String",
    #                   port: 1
    #                 }
    #               }
    #             ],
    #             number_of_nodes: 1
    #           }
    #         ],
    #         availability_mode: "singleaz" # One of: ["singleaz", "multiaz"],
    #         cluster_endpoint: {
    #           address: "String",
    #           port: 1
    #         },
    #         node_type: "String",
    #         engine: "String",
    #         engine_version: "String",
    #         engine_patch_version: "String",
    #         parameter_group_name: "String",
    #         parameter_group_status: "String",
    #         security_groups: [
    #           {
    #             security_group_id: "String",
    #             status: "String"
    #           }
    #         ],
    #         subnet_group_name: "String",
    #         tls_enabled: false,
    #         kms_key_id: "String",
    #         arn: "String",
    #         sns_topic_arn: "String",
    #         sns_topic_status: "String",
    #         snapshot_retention_limit: 1,
    #         maintenance_window: "String",
    #         snapshot_window: "String",
    #         acl_name: "ACLName",
    #         auto_minor_version_upgrade: false,
    #         data_tiering: "true" # One of: ["true", "false"],
    #         network_type: "ipv4" # One of: ["ipv4", "ipv6", "dual_stack"],
    #         ip_discovery: "ipv4" # One of: ["ipv4", "ipv6"]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeClustersResponse]
    def describe_clusters(params = {}, options = {})
      request = build_request(:describe_clusters, params)
      request.send_request(options)
    end

    # <p>Returns a list of the available Redis OSS engine versions.</p>
    # @param [Hash, Types::DescribeEngineVersionsRequest] params
    # @option params [String] :engine
    #   <p>The name of the engine for which to list available versions.</p>
    # @option params [String] :engine_version
    #   <p>The Redis OSS engine version</p>
    # @option params [String] :parameter_group_family
    #   <p>The name of a specific parameter group family to return details for.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    # @option params [String] :next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    # @option params [Boolean] :default_only
    #   <p>If true, specifies that only the default version of the specified engine or engine and major version combination is to be returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     engine: "String",
    #     engine_version: "String",
    #     parameter_group_family: "String",
    #     max_results: 1,
    #     next_token: "String",
    #     default_only: false
    #   }
    #   options = {}
    #   response = client.describe_engine_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     engine_versions: [
    #       {
    #         engine: "String",
    #         engine_version: "String",
    #         engine_patch_version: "String",
    #         parameter_group_family: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeEngineVersionsResponse]
    def describe_engine_versions(params = {}, options = {})
      request = build_request(:describe_engine_versions, params)
      request.send_request(options)
    end

    # <p>Returns events related to clusters, security groups, and parameter groups. You can obtain events specific to a particular cluster, security group, or parameter group by providing the name as a parameter.
    #          
    #          By default, only the events occurring within the last hour are returned; however, you can retrieve up to 14 days' worth of events if necessary.</p>
    # @param [Hash, Types::DescribeEventsRequest] params
    # @option params [String] :source_name
    #   <p>The identifier of the event source for which events are returned. If not specified, all sources are included in the response.</p>
    # @option params [String] :source_type
    #   <p>The event source to retrieve events for. If no value is specified, all events are returned.</p>
    # @option params [Time] :start_time
    #   <p>The beginning of the time interval to retrieve events for, specified in ISO 8601 format.
    #            
    #            Example: 2017-03-30T07:03:49.555Z</p>
    # @option params [Time] :end_time
    #   <p>The end of the time interval for which to retrieve events, specified in ISO 8601 format.
    #            
    #            Example: 2017-03-30T07:03:49.555Z</p>
    # @option params [Integer] :duration
    #   <p>The number of minutes worth of events to retrieve.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    # @option params [String] :next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     source_name: "String",
    #     source_type: "node" # One of: ["node", "parameter-group", "subnet-group", "cluster", "user", "acl"],
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     duration: 1,
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     events: [
    #       {
    #         source_name: "String",
    #         source_type: "node" # One of: ["node", "parameter-group", "subnet-group", "cluster", "user", "acl"],
    #         message: "String",
    #         date: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::DescribeEventsResponse]
    def describe_events(params = {}, options = {})
      request = build_request(:describe_events, params)
      request.send_request(options)
    end

    # <p>Returns details about one or more multi-Region clusters.</p>
    # @param [Hash, Types::DescribeMultiRegionClustersRequest] params
    # @option params [String] :multi_region_cluster_name
    #   <p>The name of a specific multi-Region cluster to describe.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>A token to specify where to start paginating.</p>
    # @option params [Boolean] :show_cluster_details
    #   <p>Details about the multi-Region cluster.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     multi_region_cluster_name: "String",
    #     max_results: 1,
    #     next_token: "String",
    #     show_cluster_details: false
    #   }
    #   options = {}
    #   response = client.describe_multi_region_clusters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     multi_region_clusters: [
    #       {
    #         multi_region_cluster_name: "String",
    #         description: "String",
    #         status: "String",
    #         node_type: "String",
    #         engine: "String",
    #         engine_version: "String",
    #         number_of_shards: 1,
    #         clusters: [
    #           {
    #             cluster_name: "String",
    #             region: "String",
    #             status: "String",
    #             arn: "String"
    #           }
    #         ],
    #         multi_region_parameter_group_name: "String",
    #         tls_enabled: false,
    #         arn: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeMultiRegionClustersResponse]
    def describe_multi_region_clusters(params = {}, options = {})
      request = build_request(:describe_multi_region_clusters, params)
      request.send_request(options)
    end

    # <p>Returns a list of parameter group descriptions. If a parameter group name is specified, the list contains only the descriptions for that group.</p>
    # @param [Hash, Types::DescribeParameterGroupsRequest] params
    # @option params [String] :parameter_group_name
    #   <p>The name of a specific  parameter group to return details for.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    # @option params [String] :next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     parameter_group_name: "String",
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_parameter_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     parameter_groups: [
    #       {
    #         name: "String",
    #         family: "String",
    #         description: "String",
    #         arn: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeParameterGroupsResponse]
    def describe_parameter_groups(params = {}, options = {})
      request = build_request(:describe_parameter_groups, params)
      request.send_request(options)
    end

    # <p>Returns the detailed parameter list for a particular parameter group.</p>
    # @param [Hash, Types::DescribeParametersRequest] params
    # @option params [String] :parameter_group_name
    #   <p>he name of a specific  parameter group to return details for.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    # @option params [String] :next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     parameter_group_name: "String", # required
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_parameters(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     parameters: [
    #       {
    #         name: "String",
    #         value: "String",
    #         description: "String",
    #         data_type: "String",
    #         allowed_values: "String",
    #         minimum_engine_version: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeParametersResponse]
    def describe_parameters(params = {}, options = {})
      request = build_request(:describe_parameters, params)
      request.send_request(options)
    end

    # <p>Returns information about reserved nodes for this account, or about a specified reserved node.</p>
    # @param [Hash, Types::DescribeReservedNodesRequest] params
    # @option params [String] :reservation_id
    #   <p>The reserved node identifier filter value. Use this parameter to show only the reservation that matches the specified reservation ID.</p>
    # @option params [String] :reserved_nodes_offering_id
    #   <p>The offering identifier filter value. Use this parameter to show only purchased reservations matching the specified offering identifier.</p>
    # @option params [String] :node_type
    #   <p>The node type filter value. Use this parameter to show only those reservations matching the specified  node type. For more information, see <a href="https://docs.aws.amazon.com/memorydb/latest/devguide/nodes.reserved.html#reserved-nodes-supported">Supported node types</a>.</p>
    # @option params [String] :duration
    #   <p>The duration filter value, specified in years or seconds. Use this parameter to show only reservations for this duration.</p>
    # @option params [String] :offering_type
    #   <p>The offering type filter value. Use this parameter to show only the available offerings matching the specified offering type. 
    #            Valid values: "All Upfront"|"Partial Upfront"| "No Upfront"</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a marker is included in the response so that the remaining results can be retrieved.</p>
    # @option params [String] :next_token
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     reservation_id: "String",
    #     reserved_nodes_offering_id: "String",
    #     node_type: "String",
    #     duration: "String",
    #     offering_type: "String",
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_reserved_nodes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     reserved_nodes: [
    #       {
    #         reservation_id: "String",
    #         reserved_nodes_offering_id: "String",
    #         node_type: "String",
    #         start_time: Time.now,
    #         duration: 1,
    #         fixed_price: 1.0,
    #         node_count: 1,
    #         offering_type: "String",
    #         state: "String",
    #         recurring_charges: [
    #           {
    #             recurring_charge_amount: 1.0,
    #             recurring_charge_frequency: "String"
    #           }
    #         ],
    #         arn: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DescribeReservedNodesResponse]
    def describe_reserved_nodes(params = {}, options = {})
      request = build_request(:describe_reserved_nodes, params)
      request.send_request(options)
    end

    # <p>Lists available reserved node offerings.</p>
    # @param [Hash, Types::DescribeReservedNodesOfferingsRequest] params
    # @option params [String] :reserved_nodes_offering_id
    #   <p>The offering identifier filter value. Use this parameter to show only the available offering that matches the specified reservation identifier.</p>
    # @option params [String] :node_type
    #   <p>The node type for the reserved nodes. For more information, see <a href="https://docs.aws.amazon.com/memorydb/latest/devguide/nodes.reserved.html#reserved-nodes-supported">Supported node types</a>.</p>
    # @option params [String] :duration
    #   <p>Duration filter value, specified in years or seconds. Use this parameter to show only reservations for a given duration.</p>
    # @option params [String] :offering_type
    #   <p>The offering type filter value. Use this parameter to show only the available offerings matching the specified offering type. 
    #            Valid values: "All Upfront"|"Partial Upfront"| "No Upfront"</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxRecords value, a marker is included in the response so that the remaining results can be retrieved.</p>
    # @option params [String] :next_token
    #   <p>An optional marker returned from a prior request. Use this marker for pagination of results from this operation. If this parameter is specified, the response includes only records beyond the marker, up to the value specified by MaxRecords.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     reserved_nodes_offering_id: "String",
    #     node_type: "String",
    #     duration: "String",
    #     offering_type: "String",
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_reserved_nodes_offerings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     reserved_nodes_offerings: [
    #       {
    #         reserved_nodes_offering_id: "String",
    #         node_type: "String",
    #         duration: 1,
    #         fixed_price: 1.0,
    #         offering_type: "String",
    #         recurring_charges: [
    #           {
    #             recurring_charge_amount: 1.0,
    #             recurring_charge_frequency: "String"
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeReservedNodesOfferingsResponse]
    def describe_reserved_nodes_offerings(params = {}, options = {})
      request = build_request(:describe_reserved_nodes_offerings, params)
      request.send_request(options)
    end

    # <p>Returns details of the service updates.</p>
    # @param [Hash, Types::DescribeServiceUpdatesRequest] params
    # @option params [String] :service_update_name
    #   <p>The unique ID of the service update to describe.</p>
    # @option params [Array<String>] :cluster_names
    #   <p>The list of cluster names to identify service updates to apply.</p>
    # @option params [Array<String>] :status
    #   <p>The status(es) of the service updates to filter on.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    # @option params [String] :next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     service_update_name: "String",
    #     cluster_names: ["String"],
    #     status: ["available" # One of: ["available", "in-progress", "complete", "scheduled"]],
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_service_updates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     service_updates: [
    #       {
    #         cluster_name: "String",
    #         service_update_name: "String",
    #         release_date: Time.now,
    #         description: "String",
    #         status: "available" # One of: ["available", "in-progress", "complete", "scheduled"],
    #         type: "security-update" # One of: ["security-update"],
    #         engine: "String",
    #         nodes_updated: "String",
    #         auto_update_start_date: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::DescribeServiceUpdatesResponse]
    def describe_service_updates(params = {}, options = {})
      request = build_request(:describe_service_updates, params)
      request.send_request(options)
    end

    # <p>Returns information about cluster snapshots. By default, DescribeSnapshots lists all of your snapshots; it can optionally describe a single snapshot, 
    #          or just the snapshots associated with a particular cluster.</p>
    # @param [Hash, Types::DescribeSnapshotsRequest] params
    # @option params [String] :cluster_name
    #   <p>A user-supplied cluster identifier. If this parameter is specified, only snapshots associated with that specific cluster are described.</p>
    # @option params [String] :snapshot_name
    #   <p>A user-supplied name of the snapshot. If this parameter is specified, only this named snapshot is described.</p>
    # @option params [String] :source
    #   <p>If set to system, the output shows snapshots that were automatically created by MemoryDB. If set to user the output shows snapshots that were manually created. If omitted, the output shows both automatically and manually created snapshots.</p>
    # @option params [String] :next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    # @option params [Boolean] :show_detail
    #   <p>A Boolean value which if true, the shard configuration is included in the snapshot description.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String",
    #     snapshot_name: "String",
    #     source: "String",
    #     next_token: "String",
    #     max_results: 1,
    #     show_detail: false
    #   }
    #   options = {}
    #   response = client.describe_snapshots(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     snapshots: [
    #       {
    #         name: "String",
    #         status: "String",
    #         source: "String",
    #         kms_key_id: "String",
    #         arn: "String",
    #         cluster_configuration: {
    #           name: "String",
    #           description: "String",
    #           node_type: "String",
    #           engine: "String",
    #           engine_version: "String",
    #           maintenance_window: "String",
    #           topic_arn: "String",
    #           port: 1,
    #           parameter_group_name: "String",
    #           subnet_group_name: "String",
    #           vpc_id: "String",
    #           snapshot_retention_limit: 1,
    #           snapshot_window: "String",
    #           num_shards: 1,
    #           shards: [
    #             {
    #               name: "String",
    #               configuration: {
    #                 slots: "String",
    #                 replica_count: 1
    #               },
    #               size: "String",
    #               snapshot_creation_time: Time.now
    #             }
    #           ],
    #           multi_region_parameter_group_name: "String",
    #           multi_region_cluster_name: "String"
    #         },
    #         data_tiering: "true" # One of: ["true", "false"]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeSnapshotsResponse]
    def describe_snapshots(params = {}, options = {})
      request = build_request(:describe_snapshots, params)
      request.send_request(options)
    end

    # <p>Returns a list of subnet group descriptions. If a subnet group name is specified, the list contains only the description of that group.</p>
    # @param [Hash, Types::DescribeSubnetGroupsRequest] params
    # @option params [String] :subnet_group_name
    #   <p>The name of the subnet group to return details for.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    # @option params [String] :next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subnet_group_name: "String",
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_subnet_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "String",
    #     subnet_groups: [
    #       {
    #         name: "String",
    #         description: "String",
    #         vpc_id: "String",
    #         subnets: [
    #           {
    #             identifier: "String",
    #             availability_zone: {
    #               name: "String"
    #             },
    #             supported_network_types: ["ipv4" # One of: ["ipv4", "ipv6", "dual_stack"]]
    #           }
    #         ],
    #         arn: "String",
    #         supported_network_types: ["ipv4" # One of: ["ipv4", "ipv6", "dual_stack"]]
    #       }
    #     ]
    #   }
    # @return [Types::DescribeSubnetGroupsResponse]
    def describe_subnet_groups(params = {}, options = {})
      request = build_request(:describe_subnet_groups, params)
      request.send_request(options)
    end

    # <p>Returns a list of users.</p>
    # @param [Hash, Types::DescribeUsersRequest] params
    # @option params [String] :user_name
    #   <p>The name of the user.</p>
    # @option params [Array<Types::Filter>] :filters
    #   <p>Filter to determine the list of users to return.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of records to include in the response. If more records exist than the specified MaxResults value, a token is included in the response so that the remaining results can be retrieved.</p>
    # @option params [String] :next_token
    #   <p>An optional argument to pass in case the total number of records exceeds the value of MaxResults. If nextToken is returned, there are more results available. The value of nextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. Keep all other arguments unchanged. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "UserName",
    #     filters: [
    #       {
    #         name: "FilterName", # required
    #         values: ["FilterValue"], # required
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.describe_users(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     users: [
    #       {
    #         name: "String",
    #         status: "String",
    #         access_string: "String",
    #         acl_names: ["ACLName"],
    #         minimum_engine_version: "String",
    #         authentication: {
    #           type: "password" # One of: ["password", "no-password", "iam"],
    #           password_count: 1
    #         },
    #         arn: "String"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::DescribeUsersResponse]
    def describe_users(params = {}, options = {})
      request = build_request(:describe_users, params)
      request.send_request(options)
    end

    # <p>Used to failover a shard. This API is designed for testing the behavior of your application in case of MemoryDB failover. It is not designed to be used as a production-level tool for initiating
    #          a failover to overcome a problem you may have with the cluster. Moreover, in certain conditions such as large scale operational events, Amazon may block this API. </p>
    # @param [Hash, Types::FailoverShardRequest] params
    # @option params [String] :cluster_name
    #   <p>The cluster being failed over.</p>
    # @option params [String] :shard_name
    #   <p>The name of the shard.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String", # required
    #     shard_name: "String", # required
    #   }
    #   options = {}
    #   response = client.failover_shard(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       name: "String",
    #       description: "String",
    #       status: "String",
    #       pending_updates: {
    #         resharding: {
    #           slot_migration: {
    #             progress_percentage: 1.0
    #           }
    #         },
    #         ac_ls: {
    #           acl_to_apply: "ACLName"
    #         },
    #         service_updates: [
    #           {
    #             service_update_name: "String",
    #             status: "available" # One of: ["available", "in-progress", "complete", "scheduled"]
    #           }
    #         ]
    #       },
    #       multi_region_cluster_name: "String",
    #       number_of_shards: 1,
    #       shards: [
    #         {
    #           name: "String",
    #           status: "String",
    #           slots: "String",
    #           nodes: [
    #             {
    #               name: "String",
    #               status: "String",
    #               availability_zone: "String",
    #               create_time: Time.now,
    #               endpoint: {
    #                 address: "String",
    #                 port: 1
    #               }
    #             }
    #           ],
    #           number_of_nodes: 1
    #         }
    #       ],
    #       availability_mode: "singleaz" # One of: ["singleaz", "multiaz"],
    #       cluster_endpoint: {
    #         address: "String",
    #         port: 1
    #       },
    #       node_type: "String",
    #       engine: "String",
    #       engine_version: "String",
    #       engine_patch_version: "String",
    #       parameter_group_name: "String",
    #       parameter_group_status: "String",
    #       security_groups: [
    #         {
    #           security_group_id: "String",
    #           status: "String"
    #         }
    #       ],
    #       subnet_group_name: "String",
    #       tls_enabled: false,
    #       kms_key_id: "String",
    #       arn: "String",
    #       sns_topic_arn: "String",
    #       sns_topic_status: "String",
    #       snapshot_retention_limit: 1,
    #       maintenance_window: "String",
    #       snapshot_window: "String",
    #       acl_name: "ACLName",
    #       auto_minor_version_upgrade: false,
    #       data_tiering: "true" # One of: ["true", "false"],
    #       network_type: "ipv4" # One of: ["ipv4", "ipv6", "dual_stack"],
    #       ip_discovery: "ipv4" # One of: ["ipv4", "ipv6"]
    #     }
    #   }
    # @return [Types::FailoverShardResponse]
    def failover_shard(params = {}, options = {})
      request = build_request(:failover_shard, params)
      request.send_request(options)
    end

    # <p>Lists the allowed updates for a multi-Region cluster.</p>
    # @param [Hash, Types::ListAllowedMultiRegionClusterUpdatesRequest] params
    # @option params [String] :multi_region_cluster_name
    #   <p>The name of the multi-Region cluster.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     multi_region_cluster_name: "String", # required
    #   }
    #   options = {}
    #   response = client.list_allowed_multi_region_cluster_updates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scale_up_node_types: ["String"],
    #     scale_down_node_types: ["String"]
    #   }
    # @return [Types::ListAllowedMultiRegionClusterUpdatesResponse]
    def list_allowed_multi_region_cluster_updates(params = {}, options = {})
      request = build_request(:list_allowed_multi_region_cluster_updates, params)
      request.send_request(options)
    end

    # <p>Lists all available node types that you can scale to from your cluster's current node type.
    #          
    #          When you use the UpdateCluster operation to scale your cluster, the value of the NodeType parameter must be one of the node types returned by this operation.</p>
    # @param [Hash, Types::ListAllowedNodeTypeUpdatesRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of the cluster you want to scale. MemoryDB uses the cluster name to identify the current node type being used by this cluster, and from that to create a list of node types
    #            you can scale up to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String", # required
    #   }
    #   options = {}
    #   response = client.list_allowed_node_type_updates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     scale_up_node_types: ["String"],
    #     scale_down_node_types: ["String"]
    #   }
    # @return [Types::ListAllowedNodeTypeUpdatesResponse]
    def list_allowed_node_type_updates(params = {}, options = {})
      request = build_request(:list_allowed_node_type_updates, params)
      request.send_request(options)
    end

    # <p>Lists all tags currently on a named resource. A tag is a key-value pair where the key and value are case-sensitive. You can use tags to categorize and track your MemoryDB resources. For more information, see <a href="https://docs.aws.amazon.com/MemoryDB/latest/devguide/Tagging-Resources.html">Tagging your MemoryDB resources</a>.</p>
    #          <p>When you add or remove tags from multi region clusters, you might not immediately see the latest effective tags in the ListTags API response due to it being eventually consistent specifically for multi region clusters. For more information, see <a href="https://docs.aws.amazon.com/MemoryDB/latest/devguide/Tagging-Resources.html">Tagging your MemoryDB resources</a>.</p>
    #          <p></p>
    # @param [Hash, Types::ListTagsRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which you want the list of tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.list_tags(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tag_list: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsResponse]
    def list_tags(params = {}, options = {})
      request = build_request(:list_tags, params)
      request.send_request(options)
    end

    # <p>Allows you to purchase a reserved  node offering. Reserved nodes are not eligible for cancellation and are non-refundable.</p>
    # @param [Hash, Types::PurchaseReservedNodesOfferingRequest] params
    # @option params [String] :reserved_nodes_offering_id
    #   <p>The ID of the reserved node offering to purchase.</p>
    # @option params [String] :reservation_id
    #   <p>A customer-specified identifier to track this reservation.</p>
    # @option params [Integer] :node_count
    #   <p>The number of node instances to reserve.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     reserved_nodes_offering_id: "String", # required
    #     reservation_id: "String",
    #     node_count: 1,
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.purchase_reserved_nodes_offering(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     reserved_node: {
    #       reservation_id: "String",
    #       reserved_nodes_offering_id: "String",
    #       node_type: "String",
    #       start_time: Time.now,
    #       duration: 1,
    #       fixed_price: 1.0,
    #       node_count: 1,
    #       offering_type: "String",
    #       state: "String",
    #       recurring_charges: [
    #         {
    #           recurring_charge_amount: 1.0,
    #           recurring_charge_frequency: "String"
    #         }
    #       ],
    #       arn: "String"
    #     }
    #   }
    # @return [Types::PurchaseReservedNodesOfferingResponse]
    def purchase_reserved_nodes_offering(params = {}, options = {})
      request = build_request(:purchase_reserved_nodes_offering, params)
      request.send_request(options)
    end

    # <p>Modifies the parameters of a parameter group to the engine or system default value. You can reset specific parameters by submitting a list of parameter names. To reset the entire parameter group, specify the AllParameters and ParameterGroupName parameters.</p>
    # @param [Hash, Types::ResetParameterGroupRequest] params
    # @option params [String] :parameter_group_name
    #   <p>The name of the parameter group to reset.</p>
    # @option params [Boolean] :all_parameters
    #   <p>If true, all parameters in the parameter group are reset to their default values. If false, only the parameters listed by ParameterNames are reset to their default values.</p>
    # @option params [Array<String>] :parameter_names
    #   <p>An array of parameter names to reset to their default values. If AllParameters is true, do not use ParameterNames. If AllParameters is false, you must specify the name of at least one parameter to reset.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     parameter_group_name: "String", # required
    #     all_parameters: false,
    #     parameter_names: ["String"]
    #   }
    #   options = {}
    #   response = client.reset_parameter_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     parameter_group: {
    #       name: "String",
    #       family: "String",
    #       description: "String",
    #       arn: "String"
    #     }
    #   }
    # @return [Types::ResetParameterGroupResponse]
    def reset_parameter_group(params = {}, options = {})
      request = build_request(:reset_parameter_group, params)
      request.send_request(options)
    end

    # <p> Use this operation to add tags to a resource. A tag is a key-value pair where the key and value are case-sensitive. You can use tags to categorize and track all your MemoryDB resources. For more information, see <a href="https://docs.aws.amazon.com/MemoryDB/latest/devguide/Tagging-Resources.html">Tagging your MemoryDB resources</a>.</p>
    #          <p>When you add tags to multi region clusters, you might not immediately see the latest effective tags in the ListTags API response due to it being eventually consistent specifically for multi region clusters. For more information, see <a href="https://docs.aws.amazon.com/MemoryDB/latest/devguide/Tagging-Resources.html">Tagging your MemoryDB resources</a>.</p>
    #          <p>You can specify cost-allocation tags for your MemoryDB resources, Amazon generates a cost allocation report as a comma-separated value 
    #           (CSV) file with your usage and costs aggregated by your tags. You can apply tags that represent business categories 
    #           (such as cost centers, application names, or owners) to organize your costs across multiple services.
    #          
    #          For more information, see <a href="https://docs.aws.amazon.com/MemoryDB/latest/devguide/tagging.html">Using Cost Allocation Tags</a>.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to which the tags are to be added.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags to be added to this resource. A tag is a key-value pair. A tag key must be accompanied by a tag value, although null is accepted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     tags: [ # required
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tag_list: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    # @return [Types::TagResourceResponse]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Use this operation to remove tags on a resource. A tag is a key-value pair where the key and value are case-sensitive. You can use tags to categorize and track all your MemoryDB resources. For more information, see <a href="https://docs.aws.amazon.com/MemoryDB/latest/devguide/Tagging-Resources.html">Tagging your MemoryDB resources</a>.</p>
    #          <p>When you remove tags from multi region clusters, you might not immediately see the latest effective tags in the ListTags API response due to it being eventually consistent specifically for multi region clusters. For more information, see <a href="https://docs.aws.amazon.com/MemoryDB/latest/devguide/Tagging-Resources.html">Tagging your MemoryDB resources</a>.</p>
    #          <p>You can specify cost-allocation tags for your MemoryDB resources, Amazon generates a cost allocation report as a comma-separated value 
    #          (CSV) file with your usage and costs aggregated by your tags. You can apply tags that represent business categories 
    #          (such as cost centers, application names, or owners) to organize your costs across multiple services.
    #          
    #          For more information, see <a href="https://docs.aws.amazon.com/MemoryDB/latest/devguide/tagging.html">Using Cost Allocation Tags</a>.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to which the tags are to be removed.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The list of keys of the tags that are to be removed.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "String", # required
    #     tag_keys: ["String"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tag_list: [
    #       {
    #         key: "String",
    #         value: "String"
    #       }
    #     ]
    #   }
    # @return [Types::UntagResourceResponse]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Changes the list of users that belong to the Access Control List.</p>
    # @param [Hash, Types::UpdateACLRequest] params
    # @option params [String] :acl_name
    #   <p>The name of the Access Control List.</p>
    # @option params [Array<String>] :user_names_to_add
    #   <p>The list of users to add to the Access Control List.</p>
    # @option params [Array<String>] :user_names_to_remove
    #   <p>The list of users to remove from the Access Control List.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     acl_name: "String", # required
    #     user_names_to_add: ["UserName"],
    #     user_names_to_remove: ["UserName"]
    #   }
    #   options = {}
    #   response = client.update_acl(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     acl: {
    #       name: "String",
    #       status: "String",
    #       user_names: ["UserName"],
    #       minimum_engine_version: "String",
    #       pending_changes: {
    #         user_names_to_remove: ["UserName"],
    #         user_names_to_add: ["UserName"]
    #       },
    #       clusters: ["String"],
    #       arn: "String"
    #     }
    #   }
    # @return [Types::UpdateACLResponse]
    def update_acl(params = {}, options = {})
      request = build_request(:update_acl, params)
      request.send_request(options)
    end

    # <p>Modifies the settings for a cluster. You can use this operation to change one or more cluster configuration settings by specifying the settings and the new values.</p>
    # @param [Hash, Types::UpdateClusterRequest] params
    # @option params [String] :cluster_name
    #   <p>The name of the cluster to update.</p>
    # @option params [String] :description
    #   <p>The description of the cluster to update.</p>
    # @option params [Array<String>] :security_group_ids
    #   <p>The SecurityGroupIds to update.</p>
    # @option params [String] :maintenance_window
    #   <p>Specifies the weekly time range during which maintenance
    #            on the cluster is performed. It is specified as a range in
    #            the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum
    #            maintenance window is a 60 minute period.</p>
    #            <p>Valid values for <code>ddd</code> are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>sun</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>mon</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>tue</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>wed</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>thu</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>fri</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sat</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>sun:23:00-mon:01:30</code>
    #            </p>
    # @option params [String] :sns_topic_arn
    #   <p>The SNS topic ARN to update.</p>
    # @option params [String] :sns_topic_status
    #   <p>The status of the Amazon SNS notification topic. Notifications are sent only if the status is active.</p>
    # @option params [String] :parameter_group_name
    #   <p>The name of the parameter group to update.</p>
    # @option params [String] :snapshot_window
    #   <p>The daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of your cluster.</p>
    # @option params [Integer] :snapshot_retention_limit
    #   <p>The number of days for which MemoryDB retains automatic cluster snapshots before deleting them. For example, if you set SnapshotRetentionLimit to 5, a snapshot that was taken today is retained for 5 days before being deleted.</p>
    # @option params [String] :node_type
    #   <p>A valid node type that you want to scale this cluster up or down to.</p>
    # @option params [String] :engine
    #   <p>The name of the engine to be used for the cluster.</p>
    # @option params [String] :engine_version
    #   <p>The upgraded version of the engine to be run on the nodes. You can upgrade to a newer engine version, but you cannot downgrade to an earlier engine version. If you want to use an earlier engine version, you must delete the existing cluster and create it anew with the earlier engine version.</p>
    # @option params [Types::ReplicaConfigurationRequest] :replica_configuration
    #   <p>The number of replicas that will reside in each shard.</p>
    # @option params [Types::ShardConfigurationRequest] :shard_configuration
    #   <p>The number of shards in the cluster.</p>
    # @option params [String] :acl_name
    #   <p>The Access Control List that is associated with the cluster.</p>
    # @option params [String] :ip_discovery
    #   <p>The mechanism for discovering IP addresses for the cluster discovery protocol. Valid values are 'ipv4' or 'ipv6'. When set to 'ipv4', cluster discovery functions such as cluster slots, cluster shards, and cluster nodes will return IPv4 addresses for cluster nodes. When set to 'ipv6', the cluster discovery functions return IPv6 addresses for cluster nodes. The value must be compatible with the NetworkType parameter. If not specified, the default is 'ipv4'.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     cluster_name: "String", # required
    #     description: "String",
    #     security_group_ids: ["String"],
    #     maintenance_window: "String",
    #     sns_topic_arn: "String",
    #     sns_topic_status: "String",
    #     parameter_group_name: "String",
    #     snapshot_window: "String",
    #     snapshot_retention_limit: 1,
    #     node_type: "String",
    #     engine: "String",
    #     engine_version: "String",
    #     replica_configuration: {
    #       replica_count: 1
    #     },
    #     shard_configuration: {
    #       shard_count: 1
    #     },
    #     acl_name: "ACLName",
    #     ip_discovery: "ipv4" # One of: ["ipv4", "ipv6"]
    #   }
    #   options = {}
    #   response = client.update_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     cluster: {
    #       name: "String",
    #       description: "String",
    #       status: "String",
    #       pending_updates: {
    #         resharding: {
    #           slot_migration: {
    #             progress_percentage: 1.0
    #           }
    #         },
    #         ac_ls: {
    #           acl_to_apply: "ACLName"
    #         },
    #         service_updates: [
    #           {
    #             service_update_name: "String",
    #             status: "available" # One of: ["available", "in-progress", "complete", "scheduled"]
    #           }
    #         ]
    #       },
    #       multi_region_cluster_name: "String",
    #       number_of_shards: 1,
    #       shards: [
    #         {
    #           name: "String",
    #           status: "String",
    #           slots: "String",
    #           nodes: [
    #             {
    #               name: "String",
    #               status: "String",
    #               availability_zone: "String",
    #               create_time: Time.now,
    #               endpoint: {
    #                 address: "String",
    #                 port: 1
    #               }
    #             }
    #           ],
    #           number_of_nodes: 1
    #         }
    #       ],
    #       availability_mode: "singleaz" # One of: ["singleaz", "multiaz"],
    #       cluster_endpoint: {
    #         address: "String",
    #         port: 1
    #       },
    #       node_type: "String",
    #       engine: "String",
    #       engine_version: "String",
    #       engine_patch_version: "String",
    #       parameter_group_name: "String",
    #       parameter_group_status: "String",
    #       security_groups: [
    #         {
    #           security_group_id: "String",
    #           status: "String"
    #         }
    #       ],
    #       subnet_group_name: "String",
    #       tls_enabled: false,
    #       kms_key_id: "String",
    #       arn: "String",
    #       sns_topic_arn: "String",
    #       sns_topic_status: "String",
    #       snapshot_retention_limit: 1,
    #       maintenance_window: "String",
    #       snapshot_window: "String",
    #       acl_name: "ACLName",
    #       auto_minor_version_upgrade: false,
    #       data_tiering: "true" # One of: ["true", "false"],
    #       network_type: "ipv4" # One of: ["ipv4", "ipv6", "dual_stack"],
    #       ip_discovery: "ipv4" # One of: ["ipv4", "ipv6"]
    #     }
    #   }
    # @return [Types::UpdateClusterResponse]
    def update_cluster(params = {}, options = {})
      request = build_request(:update_cluster, params)
      request.send_request(options)
    end

    # <p>Updates the configuration of an existing multi-Region cluster.</p>
    # @param [Hash, Types::UpdateMultiRegionClusterRequest] params
    # @option params [String] :multi_region_cluster_name
    #   <p>The name of the multi-Region cluster to be updated.</p>
    # @option params [String] :node_type
    #   <p>The new node type to be used for the multi-Region cluster.</p>
    # @option params [String] :description
    #   <p>A new description for the multi-Region cluster.</p>
    # @option params [String] :engine_version
    #   <p>The new engine version to be used for the multi-Region cluster.</p>
    # @option params [Types::ShardConfigurationRequest] :shard_configuration
    #   <p>A request to configure the sharding properties of a cluster</p>
    # @option params [String] :multi_region_parameter_group_name
    #   <p>The new multi-Region parameter group to be associated with the cluster.</p>
    # @option params [String] :update_strategy
    #   <p>The strategy to use for the update operation. Supported values are "coordinated" or "uncoordinated".</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     multi_region_cluster_name: "String", # required
    #     node_type: "String",
    #     description: "String",
    #     engine_version: "String",
    #     shard_configuration: {
    #       shard_count: 1
    #     },
    #     multi_region_parameter_group_name: "String",
    #     update_strategy: "coordinated" # One of: ["coordinated", "uncoordinated"]
    #   }
    #   options = {}
    #   response = client.update_multi_region_cluster(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     multi_region_cluster: {
    #       multi_region_cluster_name: "String",
    #       description: "String",
    #       status: "String",
    #       node_type: "String",
    #       engine: "String",
    #       engine_version: "String",
    #       number_of_shards: 1,
    #       clusters: [
    #         {
    #           cluster_name: "String",
    #           region: "String",
    #           status: "String",
    #           arn: "String"
    #         }
    #       ],
    #       multi_region_parameter_group_name: "String",
    #       tls_enabled: false,
    #       arn: "String"
    #     }
    #   }
    # @return [Types::UpdateMultiRegionClusterResponse]
    def update_multi_region_cluster(params = {}, options = {})
      request = build_request(:update_multi_region_cluster, params)
      request.send_request(options)
    end

    # <p>Updates the parameters of a parameter group. You can modify up to 20 parameters in a single request by submitting a list parameter name and value pairs.</p>
    # @param [Hash, Types::UpdateParameterGroupRequest] params
    # @option params [String] :parameter_group_name
    #   <p>The name of the parameter group to update.</p>
    # @option params [Array<Types::ParameterNameValue>] :parameter_name_values
    #   <p>An array of parameter names and values for the parameter update. You must supply at least one parameter name and value; subsequent arguments are optional. A maximum of 20 parameters may be updated per request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     parameter_group_name: "String", # required
    #     parameter_name_values: [ # required
    #       {
    #         parameter_name: "String",
    #         parameter_value: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_parameter_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     parameter_group: {
    #       name: "String",
    #       family: "String",
    #       description: "String",
    #       arn: "String"
    #     }
    #   }
    # @return [Types::UpdateParameterGroupResponse]
    def update_parameter_group(params = {}, options = {})
      request = build_request(:update_parameter_group, params)
      request.send_request(options)
    end

    # <p>Updates a subnet group. For more information, see <a href="https://docs.aws.amazon.com/MemoryDB/latest/devguide/ubnetGroups.Modifying.html">Updating a subnet group</a>
    #          </p>
    # @param [Hash, Types::UpdateSubnetGroupRequest] params
    # @option params [String] :subnet_group_name
    #   <p>The name of the subnet group</p>
    # @option params [String] :description
    #   <p>A description of the subnet group</p>
    # @option params [Array<String>] :subnet_ids
    #   <p>The EC2 subnet IDs for the subnet group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subnet_group_name: "String", # required
    #     description: "String",
    #     subnet_ids: ["String"]
    #   }
    #   options = {}
    #   response = client.update_subnet_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subnet_group: {
    #       name: "String",
    #       description: "String",
    #       vpc_id: "String",
    #       subnets: [
    #         {
    #           identifier: "String",
    #           availability_zone: {
    #             name: "String"
    #           },
    #           supported_network_types: ["ipv4" # One of: ["ipv4", "ipv6", "dual_stack"]]
    #         }
    #       ],
    #       arn: "String",
    #       supported_network_types: ["ipv4" # One of: ["ipv4", "ipv6", "dual_stack"]]
    #     }
    #   }
    # @return [Types::UpdateSubnetGroupResponse]
    def update_subnet_group(params = {}, options = {})
      request = build_request(:update_subnet_group, params)
      request.send_request(options)
    end

    # <p>Changes user password(s) and/or access string.</p>
    # @param [Hash, Types::UpdateUserRequest] params
    # @option params [String] :user_name
    #   <p>The name of the user</p>
    # @option params [Types::AuthenticationMode] :authentication_mode
    #   <p>Denotes the user's authentication properties, such as whether it requires a password to authenticate.</p>
    # @option params [String] :access_string
    #   <p>Access permissions string used for this user.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_name: "UserName", # required
    #     authentication_mode: {
    #       type: "password" # One of: ["password", "iam"],
    #       passwords: ["String"]
    #     },
    #     access_string: "AccessString"
    #   }
    #   options = {}
    #   response = client.update_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user: {
    #       name: "String",
    #       status: "String",
    #       access_string: "String",
    #       acl_names: ["ACLName"],
    #       minimum_engine_version: "String",
    #       authentication: {
    #         type: "password" # One of: ["password", "no-password", "iam"],
    #         password_count: 1
    #       },
    #       arn: "String"
    #     }
    #   }
    # @return [Types::UpdateUserResponse]
    def update_user(params = {}, options = {})
      request = build_request(:update_user, params)
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
      context[:gem_name] = 'aws-sdk-memorydb'
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
